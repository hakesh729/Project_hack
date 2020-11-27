load CSA.hdl,
output-file CSA.out,
output-list a%B1.16.1 b%B1.16.1 c%B1.16.1 carry%B1.16.1 sum%B1.16.1;

// 10 + 20 = 30
set a %B0000000000000000, set b %B0000000000001010, set c %B0000000000010100,
eval, output;

// 65,535 + 65,534 + 65,532 = 196,610(out of bound)
set a %B1111111111111111, set b %B1111111111111110, set c %B1111111111111100,
eval, output;

// 43,690 + 21,485 + 65535 = 131,070(out of bound)
set a %B1010101010101010, set b %B0101010101010101, set c %B1111111111111111,
eval, output;

// 65,280 + 43,971 + 58,063 = 167,314
set a %B1111111100000000, set b %B1010101111000011, set c %B1110001011001111,
eval, output; 

// 15 + 100 + 49,155 = 49,270
set a %B0000000000001111, set b %B0000000001100100, set c %B1100000000000011,
eval, output;