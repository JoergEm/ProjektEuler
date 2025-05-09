(*
Mathematica 14.2.1
0001multiples_of_3_or_5.wl
Copyright 2025 @GitHub JoergEm
This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*)


summe= Total[Select[Range[999], Mod[#, 3] == 0 || Mod[#, 5] == 0 &]];
Print[summe];