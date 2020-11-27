/*  2-bit 4-to-1 multiplexer:  For each of the four sources, all the 4 combinations of 2-bit data */

load Mux4Way2Bit.hdl,
output-file Mux4Way2Bit.out,
output-list x0%B3.2.3 x1%B3.2.3 x2%B3.2.3 x3%B3.2.3 s1%B3.1.3 s0%B3.1.3 y%B3.2.3;

// All possible combinations of data in x0
set x0 0, set x1 0, set x2 0, set x3 0, set s1 0, set s0 0;
eval, output;

set x0 1, set x1 0, set x2 0, set x3 0, set s1 0, set s0 0;
eval, output;

set x0 2, set x1 0, set x2 0, set x3 0, set s1 0, set s0 0;
eval, output;

set x0 3, set x1 0, set x2 0, set x3 0, set s1 0, set s0 0;
eval, output;


// All possible combinations of data in x1
set x0 0, set x1 0, set x2 0, set x3 0, set s1 0, set s0 1;
eval, output;

set x0 0, set x1 1, set x2 0, set x3 0, set s1 0, set s0 1;
eval, output;

set x0 0, set x1 2, set x2 0, set x3 0, set s1 0, set s0 1;
eval, output;

set x0 0, set x1 3, set x2 0, set x3 0, set s1 0, set s0 1;
eval, output;


// All possible combinations of data in x2
set x0 0, set x1 0, set x2 0, set x3 0, set s1 1, set s0 0;
eval, output;

set x0 0, set x1 0, set x2 1, set x3 0, set s1 1, set s0 0;
eval, output;

set x0 0, set x1 0, set x2 2, set x3 0, set s1 1, set s0 0;
eval, output;

set x0 0, set x1 0, set x2 3, set x3 0, set s1 1, set s0 0;
eval, output;


// All possible combinations of data in x3
set x0 0, set x1 0, set x2 0, set x3 0, set s1 1, set s0 1;
eval, output;

set x0 0, set x1 0, set x2 0, set x3 1, set s1 1, set s0 1;
eval, output;

set x0 0, set x1 0, set x2 0, set x3 2, set s1 1, set s0 1;
eval, output;

set x0 0, set x1 0, set x2 0, set x3 3, set s1 1, set s0 1;
eval, output;


