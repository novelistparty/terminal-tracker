ticks = | 7 9
frames = 660
MACRO b
 cutoff           = 100 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5 +-0.5
 filter           = 1
 panning          = -0.1
 pulsewidth       = 0.3
 pulsewidthsweep  = 10
 release          = 0.1
 wave             = 0
MACRO boom
 attack           = 0.002
 cutoff           = 1.8
 decay            = 0.17
 filter           = 1
 offset           = 60 14 10 5 1 -2 0 -1 -2
 panning          = 0
 pulsewidth       = 0.5
 sustain          = 1 1 1 1 1 1 0
 volume           = 1 1.5
 wave             = 4 1
MACRO hat
 decay            = 0.07
 filter           = 0
 panning          = 0.1
 pulsewidth       = 0.5
 sustain          = 0
 volume           = 0.9
 wave             = 3 0
MACRO hat_ < hat
 panning          = -0.1
 volume           = 0.6
MACRO kick
 attack           = 0.002
 cutoff           = 40
 decay            = 0.2
 filter           = 1
 offset           = 60 12 8 3 0 -2 0 -1 -2
 panning          = 0
 pulsewidth       = 0.5
 sustain          = 1 1 1 1 1 0
 volume           = 1 1.5
 wave             = 4 1
MACRO kick2 < kick
 panning          = 0.4
MACRO kick_ < kick
 panning          = 0.4
MACRO p
 attack           = 1
 decay            = 7
 sustain          = 0.1
 volume           = 0.4
MACRO p-a < pad
 panning          = 0.1
MACRO p-b < pad
 panning          = 0.3
MACRO p-c < pad
 panning          = -0.3
MACRO p-d < pad
 panning          = -0.1
MACRO pad
 attack           = 0.05
 decay            = 7
 pulsewidth       = 0
 pulsewidthsweep  = 0.5
 release          = 0.2
 sustain          = 0.1
 volume           = 0.4
 wave             = 1
MACRO sn
 attack           = 0.002
 cutoff           = 80
 decay            = 0.5
 filter           = 1
 offset           = 40 12 0 70
 panning          = -0.05
 puslewidth       = 0.5
 sustain          = 1 1 0
 volume           = 1
 wave             = 4 0 0 4
MACRO sn2 < sn
 cutoff           = 60
 decay            = 0.35
 offset           = 0 -2 60
 panning          = 0.2
 pulsewidth       = 0.5
 volume           = 1.2
 wave             = 3 2 3
MACRO sn_ < sn
 panning          = 0.1
 volume           = 0.5
MACRO snare
 attack           = 0.002
 cutoff           = 80
 decay            = 0.5
 filter           = 1
 offset           = 40 12 0 70
 panning          = -0.05
 puslewidth       = 0.5
 sustain          = 1 1 0
 volume           = 1
 wave             = 4 0 0 4
TABLE
 drm-01......... ............... bass-01........ pa-01.......... pb-01.......... pc-01.......... pd-01..........
 drm-01......... ............... bass-01........ pa-01.......... pb-01.......... pc-01.......... pd-01..........
 ...............
 drm-01......... ............... bass-02........ pa-02.......... pb-02.......... pc-02.......... pd-02..........
 drm-01......... ............... bass-02........ pa-02.......... pb-02.......... pc-02.......... pd-02..........
PATTERN bass-01
 G#1 b.... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 G#1 b.... .....
 G#2 b.... .....
 G#1 b.... .....
 F#1 b.... .....
 G#1 b.... .....
 G#2 b.... .....
 ... ..... .....
 F#2 b.... .....
 E-1 b.... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 E-1 b.... .....
 E-2 b.... .....
 E-1 b.... .....
 D-1 b.... .....
 E-1 b.... .....
 E-2 b.... .....
 ... ..... .....
 D-2 b.... .....
PATTERN bass-02
 === ..... .....
 ... ..... .....
 C#2 b.... .....
 ... ..... .....
 === ..... .....
 C#2 b.... .....
 ... ..... .....
 === ..... .....
 C#2 b.... .....
 === ..... .....
 C#2 b.... .....
 C#2 b.... .....
 B-2 b.... .....
 C#3 b.... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 ... ..... .....
 C#2 b.... .....
 ... ..... .....
 === ..... .....
 C#2 b.... .....
 ... ..... .....
 === ..... .....
 C#2 b.... .....
 === ..... .....
 C#2 b.... .....
 C#2 b.... .....
 C#3 b.... .....
 B-2 b.... .....
 G#2 b.... .....
 F#2 b.... .....
 === ..... .....
 ... ..... .....
 G#1 b.... .....
 ... ..... .....
 === ..... .....
 G#1 b.... .....
 ... ..... .....
 === ..... .....
 G#1 b.... .....
 === ..... .....
 G#1 b.... .....
 G#1 b.... .....
 F#2 b.... .....
 G#2 b.... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 ... ..... .....
 G#1 b.... .....
 ... ..... .....
 === ..... .....
 G#1 b.... .....
 ... ..... .....
 === ..... .....
 G#1 b.... .....
 === ..... .....
 G#1 b.... .....
 G#1 b.... .....
 G#2 b.... .....
 F#2 b.... .....
 C#2 b.... .....
 D#2 b.... .....
PATTERN drm-01
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 C-2 kick. .....
 C-2 kick. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
PATTERN pa-01
 G#3 p-a.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 G#3 p-a.. .....
 ... ..... .....
 ... ..... .....
 G#3 p-a.. .....
 ... ..... .....
 ... ..... .....
 G#3 p-a.. .....
 ... ..... .....
 G-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 G-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 G-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 G-3 p-a.. .....
 ... ..... .....
PATTERN pa-02
 === ..... .....
 ... ..... .....
 E-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 E-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 E-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 E-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 E-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 E-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 B-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 B-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-a.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
PATTERN pb-01
 B-3 p-b.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-b.. .....
 ... ..... .....
PATTERN pb-02
 === ..... .....
 ... ..... .....
 G#3 p-b.. .....
 ... ..... .....
 ... ..... .....
 G#3 p-b.. .....
 ... ..... .....
 ... ..... .....
 G#3 p-b.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 G#3 p-b.. .....
 ... ..... .....
 ... ..... .....
 G#3 p-b.. .....
 ... ..... .....
 ... ..... .....
 G#3 p-b.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 D#4 p-b.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-b.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-b.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 D#4 p-b.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-b.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-b.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
PATTERN pc-01
 D#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 D#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-c.. .....
 ... ..... .....
 D-4 p-c.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 D-4 p-c.. .....
 ... ..... .....
 ... ..... .....
 D-4 p-c.. .....
 ... ..... .....
 ... ..... .....
 D-4 p-c.. .....
 ... ..... .....
PATTERN pc-02
 === ..... .....
 ... ..... .....
 B-3 p-c.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-c.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-c.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 B-3 p-c.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-c.. .....
 ... ..... .....
 ... ..... .....
 B-3 p-c.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 F#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 === ..... .....
 ... ..... .....
 F#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
PATTERN pd-01
 F#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
 ... ..... .....
 F#4 p-c.. .....
 ... ..... .....
PATTERN pd-02
 G#3 p-d.. .....
 ... ..... .....
 D#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 D#4 p-d.. .....
 C#4 p-d.. .....
 B-3 p-d.. .....
 C#4 p-d.. .....
 G#3 p-d.. .....
 ... ..... .....
 D#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 D#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 D#4 p-d.. .....
 C#4 p-d.. .....
 F#4 p-d.. .....
 D#4 p-d.. .....
 B-3 p-d.. .....
 ... ..... .....
 A#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 A#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 A#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 A#4 p-d.. .....
 G#4 p-d.. .....
 C#4 p-d.. .....
 D#4 p-d.. .....
 B-3 p-d.. .....
 ... ..... .....
 A#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 A#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 A#4 p-d.. .....
 ... ..... .....
 ... ..... .....
 ... ..... .....
 A#4 p-d.. .....
 B-3 p-d.. .....
 G#4 p-d.. .....
 A#4 p-d.. .....
