% Include alldifferent, "global.mzn" for all.

include "alldifferent.mzn";

var 0..9: S;
var 0..9: E;
var 0..9: N;
var 0..9: D;
var 0..9: M;
var 0..9: O;
var 0..9: R;
var 0..9: Y;

constraint 
alldifferent([S,E,N,D,M,O,R,Y]) 
/\            1000 * S + 100 * E + 10 * N + 1 * D 
+             1000 * M + 100 * O + 10 * R + 1 * E 
= 10000 * M + 1000 * O + 100 * N + 10 * E + 1 * Y
/\ S > 0
/\ M > 0;

solve satisfy;
output [show([S,E,N,D,M,O,R,Y])];
