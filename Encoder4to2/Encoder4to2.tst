load Encoder4to2.hdl,
output-file Encoder4to2.out,
compare-to Encoder4to2.cmp,
output-list x0%B3.1.3 x1%B3.1.3 x2%B3.1.3 x3%B3.1.3 y1%B3.1.3 y0%B3.1.3;

set x0 0, set x1 0, set x2 0, set x3 0, // invalid test case
eval, output;

set x0 1, set x1 0, set x2 0, set x3 0,
eval, output;

set x0 0, set x1 1, set x2 0, set x3 0,
eval, output;

set x0 0, set x1 0, set x2 1, set x3 0,
eval, output;

set x0 0, set x1 0, set x2 0, set x3 1,
eval, output;

set x0 1, set x1 1, set x2 1, set x3 1, // invalid test case
eval, output;
