load Mux4Way8Bit.hdl,
output-file Mux4Way8Bit.out,
output-list x0%B1.8.1 x1%B1.8.1 x2%B1.8.1 x3%B1.8.1 s1%B1.1.1 s0%B1.1.1 y%B1.8.1;

set x0 %B11111111, set x1 %B00000000, set x2 %B00000000, set x3 %B00000000, set s1 0, set s0 0,
eval, output;

set x0 %B00000000, set x1 %B00001001, set x2 %B00000000, set x3 %B00000000, set s1 0, set s0 1,
eval, output;

set x0 %B00000000, set x1 %B00000000, set x2 %B10101000, set x3 %B00000000, set s1 1, set s0 0,
eval, output;

set x0 %B00000000, set x1 %B00000000, set x2 %B00000000, set x3 %B01010011, set s1 1, set s0 1,
eval, output;