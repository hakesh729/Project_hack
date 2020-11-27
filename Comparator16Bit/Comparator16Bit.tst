load Comparator16Bit.hdl,
output-file Comparator16Bit.out,
output-list x%B1.16.1 y%B1.16.1 z%B1.1.1;

set x %B1110101011111111, set y %B1010101010101010,
eval, output;

set x %B1111111100000000, set y %B1111111100000000,
eval, output;