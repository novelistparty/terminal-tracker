#include <string.h>
#include <set>

#include <pegtl.hh>

#include "tune.h"
#include "patternwin.h"


namespace peg {
using namespace pegtl;
	struct Padding : star<space> {};
	template <class R> using padded = seq<R, Padding>;

	struct Name : identifier {};


	struct Number : seq<
		opt<one<'-'>>,
		plus<digit>,
		opt<
			one<'.'>,
			plus<digit> > > {};

	struct Pipe : one<'|'> {};
	struct Add : one<'+'> {};

	struct Node : seq<
		opt<padded<Add>>,
		padded<Number> > {};

	struct Loop;
	struct NodeOrLoop : sor<Loop,Node> {};

	struct LoopCount : plus<digit> {};
	struct LoopEnd : one<')'> {};
	struct Loop : seq<
			padded<one<'('>>,
			padded<LoopCount>,
			padded<one<'|'>>,
			plus<NodeOrLoop>,
			padded<LoopEnd>> {};

	struct Envelope : sor<
		seq<NodeOrLoop, Envelope>,
		seq<Pipe, Padding, plus<NodeOrLoop>>,
		success > {};

	struct MacroLine : seq<
		Padding,
		padded<Name>,
		padded<one<'='>>,
		padded<Envelope>,
		eof > {};


	struct MacroLineState {
		bool delta = false;
		std::string name;
		::Envelope env;
		struct EnvLoop {
			int count;
			std::vector<::Envelope::Node> nodes;
		};
		std::vector<EnvLoop> loops;
	};

	template<typename Rule> struct MacroAction : pegtl::nothing<Rule> {};

	template<> struct MacroAction<Name> {
		static void apply(const pegtl::input& in, MacroLineState& state) {
			state.name = in.string();
		}
	};

	template<> struct MacroAction<LoopCount> {
		static void apply(const pegtl::input& in, MacroLineState& state) {
//			printf("LoopCount %s\n", in.string().c_str());
			state.loops.push_back({ std::stoi(in.string()) });
		}
	};
	template<> struct MacroAction<LoopEnd> {
		static void apply(const pegtl::input& in, MacroLineState& state) {
			auto& nodes = state.loops.size() > 1 ?
				state.loops[state.loops.size() - 2].nodes :
				state.env.nodes;

			auto& back = state.loops.back();
			while (back.count--) {
				nodes.insert(nodes.end(), back.nodes.begin(), back.nodes.end());
			}
			state.loops.pop_back();


//			printf("LoopEnd %s\n", in.string().c_str());
		}
	};

	template<> struct MacroAction<Add> {
		static void apply(const pegtl::input& in, MacroLineState& state) {
			state.delta = true;
		}
	};
	template<> struct MacroAction<Number> {
		static void apply(const pegtl::input& in, MacroLineState& state) {
//			printf("Number %s\n", in.string().c_str());
			auto& nodes = state.loops.size() ? state.loops.back().nodes : state.env.nodes;
			nodes.push_back({std::stof(in.string()), state.delta});
			state.delta = false;
		}
	};
	template<> struct MacroAction<Pipe> {
		static void apply(const pegtl::input& in, MacroLineState& state) {
			state.env.loop = state.env.nodes.size();
		}
	};

};


static std::vector<std::string> split(const char* s) {
	std::vector<std::string> res;
	for (;;) {
		s += strspn(s, " \n\t");
		int l = strcspn(s, " \n\t");
		if (l == 0) break;
		res.emplace_back(s, s + l);
		s += l;
	}
	return res;
}

static std::string& strip_dots(std::string& w) {
	while (!w.empty() && w.back() == '.') w.pop_back();
	return w;
}


bool load_tune(Tune& tune, const char* name) {
	FILE* f = fopen(name, "r");
	if (!f) return false;

	Pattern* pat = nullptr;
	Macro* macro = nullptr;
	char s[1<<10];
	int mode = 0;
	int line_nr = 0;

	while (fgets(s, sizeof(s), f)) {
		line_nr++;

		auto words = split(s);

		// comments
		if (words.empty()) continue;
		if (words[0][0] == '#') continue;

		// table line
		if (mode == 't') {
			if (!isspace(s[0])) mode = 0;
			else {
				tune.table.push_back({});
				for (int i = 0; i < std::min<int>(CHANNEL_COUNT, words.size()); i++) {
					tune.table.back()[i] = strip_dots(words[i]);
				}
				continue;
			}
		}

		// pattern line
		if (mode == 'p') {
			if (!isspace(s[0]) || words.empty()) mode = 0;
			else {
				pat->push_back({});
				auto& row = pat->back();
				for (int i = 0; i < std::min<int>(MACROS_PER_ROW + 1, words.size()); i++) {
					auto& w = words[i];

					if (i == 0) {
						if (w == "===") row.note = -1;
						else if (w == "...") row.note = 0;
						else {
							if (w.size() != 3 ||
								w[0] < 'A' || w[0] > 'G' ||
								(w[1] != '-' && w[1] != '#') ||
								w[2] < '0' || w[2] > '9') {
								goto FAIL;
							}
							row.note = std::string("CCDDEFFGGAAB").find(w[0]) + 1;
							row.note += w[1] == '#';
							row.note += (w[2] - '0') * 12;
						}
					}
					else row.macros[i - 1] = strip_dots(w);
				}
				continue;
			}
		}


		// macro line
		if (mode == 'm') {
			if (!isspace(s[0]) || words.empty()) mode = 0;
			else {
				peg::MacroLineState state;
				if (!pegtl::parse<peg::MacroLine,peg::MacroAction>(s, "", state)) goto FAIL;
//				printf(".\n", state.env.nodes.size());
				macro->envs[state.name] = state.env;
				continue;
			}
		}



		if (words.size() == 1 && words[0] == "TABLE") {
			mode = 't';
			tune.table.clear();
			continue;
		}

		if (words.size() == 2 && words[0] == "PATTERN") {
			pat = &tune.patterns[words[1]];
			pat->clear();
			mode = 'p';
			continue;
		}

		if (words.size() >= 2 && words[0] == "MACRO") {
			macro = &tune.macros[words[1]];
			macro->envs.clear();
			macro->parents.clear();
			if (words.size() > 2) {
				if (words[2] != "<") goto FAIL;
				// parents
				for (int i = 3; i < (int) words.size(); i++) {
					macro->parents.push_back(words[i]);
				}
			}
			mode = 'm';
			continue;
		}

		peg::MacroLineState state;
		if (pegtl::parse<peg::MacroLine,peg::MacroAction>(s, "", state)) {
			if (state.name == "frames") {
				if (state.env.nodes.size() != 1
				||	state.env.loop != -1) goto FAIL;
				tune.frames_per_tick = state.env.nodes[0].value;
			}
			else if (state.name == "ticks") tune.ticks_per_row = state.env;
			else tune.envs[state.name] = state.env;
			continue;
		}


		goto FAIL;
	}
	fclose(f);
	if (tune.table.empty()) tune.table.push_back({});
	return true;

FAIL:
	fclose(f);
	if (tune.table.empty()) tune.table.push_back({});
	return false;
}



static void write_env(FILE* f, const Envelope& env) {
	int i = 0;
	for (auto& node : env.nodes) {
		if (i++ == env.loop) fprintf(f, " |");
		fprintf(f, " ");
		if (node.delta) fprintf(f, "+");

		// strip float
		char line[64];
		char* p = line + sprintf(line, "%.7f", node.value) - 1;
		while (*p == '0') {
			*p = '\0';
			p--;
		}
		if (*p == '.') *p = '\0';
		fprintf(f, "%s", line);
	}
}


bool save_tune(const Tune& tune, const char* name, bool all) {
	FILE* f = fopen(name, "w");
	if (!f) return false;

	if (all) {

		// timing
		fprintf(f, "ticks =");
		write_env(f, tune.ticks_per_row);
		fprintf(f, "\nframes = %d\n", tune.frames_per_tick);

		// global stuff
		for (auto& p : tune.envs) {
			fprintf(f, "%-16s =", p.first.c_str());
			write_env(f, p.second);
			fprintf(f, "\n");
		}

		// macros
		for (auto& p : tune.macros) {
			fprintf(f, "MACRO %s", p.first.c_str());
			auto& macro = p.second;
			if (!macro.parents.empty()) {
				fprintf(f, " <");
				for (auto& p : macro.parents) fprintf(f, " %s", p.c_str());
			}
			fprintf(f, "\n");
			for (auto& p : macro.envs) {
				fprintf(f, " %-16s =", p.first.c_str());
				write_env(f, p.second);
				fprintf(f, "\n");
			}
		}
	}

	fprintf(f, "TABLE\n");
	for (auto& line : tune.table) {
		int limit = line.size();
		while (limit > 1 && line[limit - 1] == "") limit--;
		for (int c = 0; c < limit; c++) {
			fprintf(f, " ");
			fprintf(f, "%s", line[c].c_str());
			for (int i = line[c].size(); i < PatternWin::CHAN_CHAR_WIDTH; i++) fprintf(f, ".");
		}
		fprintf(f, "\n");
	}

	for (auto& p : tune.patterns) {
		fprintf(f, "PATTERN %s\n", p.first.c_str());
		for (auto& row : p.second) {
			fprintf(f, " ");
			if (row.note > 0) {
				fprintf(f, "%c%c%X",
					"CCDDEFFGGAAB"[(row.note - 1) % 12],
					"-#-#--#-#-#-"[(row.note - 1) % 12],
					(row.note - 1) / 12);
			}
			else if (row.note == -1) fprintf(f, "===");
			else fprintf(f, "...");

			for (auto& m : row.macros) {
				fprintf(f, " %s", m.c_str());
				for (int i = m.size(); i < PatternWin::MACRO_CHAR_WIDTH; i++) fprintf(f, ".");
			}
			fprintf(f, "\n");
		}
	}

	fclose(f);
	return true;
}


void strip_tune(Tune& tune) {
	std::set<std::string> pattern_set;

	for (auto& line : tune.table) {
		for (auto& p : line) pattern_set.insert(p);
	}

	for (auto& p : tune.patterns) {
		if (pattern_set.count(p.first) == 0) tune.patterns.erase(p.first);
	}
}



