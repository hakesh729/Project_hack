/*  8-bit comparator testcases:  2 sets of input operands that are the same and 2 sets of input operands that are different. */

load Comparator8Bit.hdl,
output-file Comparator8Bit.out,
output-list x%B3.8.3 y%B3.8.3 z%B3.1.3;

set x 0, set y 0,
eval, output;

set x 1, set y 1,
eval, output;

set x 2, set y 3,
eval, output;

set x 0, set y 255,
eval, output;