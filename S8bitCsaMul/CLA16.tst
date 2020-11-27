load CLA16.hdl,
output-file CLA16.out,
output-list S%B1.1.1 x%B1.16.1 y%B1.16.1 c0%B1.1.1 out%B1.16.1 OF%B1.1.1;

//1.  A pair of unsigned integer operands for addition without resulting in overflow
// 20432 + 10345 = 30777
set x %B0100111111010000 , set y %B0010100001101001 , set c0 0 , set S 0,
eval,
output;

//2. A pair of unsigned integer operands for addition resulting in overflow
// 40000 + 30000 = 70000 ( out of bound)
set x %B1001110001000000 , set y %B0111010100110000 , set c0 0 , set S 0,
eval,
output;

//3. A pair of unsigned integer operands for subtraction with a valid output
// 40000 - 30000 = 10000 
set x %B1001110001000000 , set y %B0111010100110000 , set c0 1 , set S 0,
eval,
output;

//4. A pair of positive integers without overflow
// 220  + 320
set x %B0000000011011100 , set y %B0000000101000000 , set c0 0, set S 1,
eval,
output;

//5. A Pair of positive integers resulting in overflow
//24000  + 13000 (out of bounds)
set x %B0101110111000000 , set y %B0011001011001000 , set c0 0, set S 1,
eval,
output;

//6. A paif of negative integers for addition without resulting in overflow
// -1000 + -12000  
set x %B1111110000011000 , set y %B1101000100100000 , set c0 0, set S 1,
eval,
output;

//7. A Pair of negative integers for addition resulting in overflow
// -10000 + (-29000)    (out of bounds)
set x %B1101100011110000 , set y %B1000111010111000 , set c0 0, set S 1,
eval ,
output;

//8. A pair of operands of opposite sign for addition. There is no overflow for this condition
//12345 + (-10000) 
set x %B0011000000111001 , set y %B1101100011110000, set c0 0, set S 1,
eval,
output;

//9. A pair of operands of  opposite sign for subtraction without resulting in overflow
// 13456 - (-15000) 
set x %B0011010010010000 , set y %B1100010101101000 , set c0 1,  set S 1,
eval,
output;

//10. A pair of operands of  opposite sign for subtraction resulting in overflow
// 18456 - (-17000)  (out of bounds)
set x %B0100100000011000 , set y %B1011110110011000 , set c0 1,  set S 1,
eval,
output;