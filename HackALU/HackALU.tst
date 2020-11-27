/*
 * (@sathvik @Team11)
 * Test file for HackALU
 * 
 *
 * All the 16 test cases possible are covered
 */
load HackALU.hdl,
output-file HackALU.out,
output-list x%B1.16.1  y%B1.16.1  zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 out%B1.16.1  zr%B1.1.1 ng%B1.1.1 ;


// zx  1 |  nx  0 |  zy  1 | ny 0 |  f  1 | no 0 | out 0000 0000 0000 0000 | zr  1 | ng 0  | f( x, y ) = 0 
set x %B1010101000101010  , set y %B1010101000101010 , set zx %B1 , set nx %B0, set zy %B1 , set ny %B0 , set f %B1  , set no %B0 ,
eval , 
output;

// zx  1 |  nx 1 |  zy 1 | ny  1|  f 1 | no 1 | out 0000 0000 0000 0001 | zr 0  | ng 0 | f( x, y ) = 1
set x %B1010101000101010  , set y %B1010101000001010 , set zx %B1 , set nx %B1 , set zy %B1 , set ny %B1 , set f %B1  , set no %B1 ,
eval , 
output;

// zx  1 |  nx 1 |  zy 1 | ny  0|  f 1 | no 0 | out  1111 1111 1111 1111 | zr 0  | ng 1 | f( x, y ) = -1
set x %B1010101000101010  , set y %B1010100000101010 , set zx %B1 , set nx %B1 , set zy %B1 , set ny %B0 , set f %B1  , set no %B0 ,
eval , 
output;

// zx  0 |  nx 0 |  zy 1 | ny 1 |  f  0 | no 0 | out 1010 0101 0010 1001   | zr  0 | ng 1 | f( x, y ) = x
set x %B1010010100101001  , set y %B1010100000101010 , set zx %B0 , set nx %B0, set zy %B1 , set ny %B1 , set f %B0  , set no %B0 ,
eval , 
output;

// zx 1   |  nx 1 |  zy 0 | ny 0 |  f  0 | no  0 | out 0101 0001 0010 0101  | zr  0 | ng 0  | f( x, y ) = y
set x %B0010001100100001  , set y %B0101000100100101 , set zx %B1 , set nx %B1, set zy %B0 , set ny %B0 , set f %B0  , set no %B0 ,
eval , 
output;

// zx  0 |  nx 0 |  zy 1 | ny 1 |  f 0  | no  1 | out 1101 1010 1101 1010  | zr  0 | ng 1  | f( x, y ) = !x
set x %B0010010100100101  , set y %B0101010101011101 , set zx %B0 , set nx %B0, set zy %B1 , set ny %B1 , set f %B0  , set no %B1 ,
eval , 
output;

// zx  1 |  nx 1 |  zy 0 | ny 0 |  f 0  | no 1  | out 1010 1010 1010 0010   | zr  0 | ng 1  | f( x, y ) = !y
set x %B0010010100100101  , set y %B0101010101011101 , set zx %B1 , set nx %B1, set zy %B0 , set ny %B0 , set f %B0  , set no %B1 ,
eval , 
output;

// zx  0 |  nx 0 |  zy 1 | ny 1 |  f  1 | no  1| out 1010 1101 0111 1011  | zr 0  | ng 1  | f( x, y ) = -x
set x %B0101001010000101  , set y %B0101010100100000 , set zx %B0 , set nx %B0 , set zy %B1 , set ny %B1 , set f %B1  , set no %B1 ,
eval , 
output;

// zx  1 |  nx  1|  zy 0 | ny 0 |  f 1  | no 1  | out 1010 1010 1110 0000  | zr 0  | ng  1 | f( x, y ) = -y
set x %B0101001010000101  , set y %B0101010100100000 , set zx %B1 , set nx %B1, set zy %B0 , set ny %B0 , set f %B1  , set no %B1 ,
eval , 
output;

// zx 0  |  nx 1 |  zy 1 | ny 1 |  f  1 | no 1  | out  01010101 01011110 | zr  0 | ng  0 | f( x, y ) = x +1
set x %B0101010101011101  , set y %B1010100000101010 , set zx %B0 , set nx %B1, set zy %B1 , set ny %B1 , set f %B1  , set no %B1 ,
eval , 
output;

// zx 1  |  nx 1 |  zy 0 | ny 1 |  f  1 | no 1 | out  1000 1010 0101 0011 | zr 0  | ng  1 | f( x, y ) = y +1
set x %B0101011001011101 , set y %B1000101001010010 , set zx %B1 , set nx %B1, set zy %B0 , set ny %B1 , set f %B1  , set no %B1 ,
eval , 
output;

// zx 0  |  nx 0 |  zy 1 | ny  1|  f  1 | no 0  | out 10100001 01010000   | zr 0  | ng  1 | f( x, y ) = x - 1
set x %B1010000101010001  , set y %B0101010101011101 , set zx %B0 , set nx %B0, set zy %B1 , set ny %B1 , set f %B1  , set no %B0 ,
eval , 
output;

// zx 1  |  nx 1 |  zy 0 | ny 0 |  f 1  | no 0  | out 0101 0001 0010 1001  | zr   | ng   | f( x, y ) = y-1
set x %B0101010100100000  , set y %B0101000100101010 , set zx %B1 , set nx %B1, set zy %B0 , set ny %B0 , set f %B1  , set no %B0 ,
eval , 
output;

// zx 0  |  nx 0 |  zy 0 | ny  0|  f 1  | no 0  | out   1100 1101 0011 1000 | zr 0  | ng 1  | f( x, y ) = x + y
set x %B1111110000011000  , set y %B1101000100100000 , set zx %B0 , set nx %B0 , set zy %B0 , set ny %B0 , set f %B1  , set no %B0 ,
eval , 
output;

// zx  0 |  nx 1 |  zy 0 | ny 0 |  f  1 | no  1 | out 0000 0000 0000 0000  | zr 0  | ng  0 | f( x, y ) = x - y
set x %B0101010100010010  , set y %B0101010100010010 , set zx %B0 , set nx %B1, set zy %B0 , set ny %B0 , set f %B1  , set no %B1 ,
eval , 
output;


// zx 0  |  nx 0 |  zy 0 | ny 1 |  f  1 | no  1 | out 0110 1111 0010 1000  | zr  0 | ng 0  | f( x, y ) = y - x
set x %B1100010101101000  , set y %B0011010010010000 , set zx %B0 , set nx %B0, set zy %B0 , set ny %B1 , set f %B1  , set no %B1 ,
eval , 
output;


// zx 0  |  nx 0 |  zy 0 | ny 0 |  f  0 | no  0 | out 0000 0000 0101 0001  | zr  0 | ng 0 | f( x, y ) = x & y
set x %B1010000101010001  , set y %B0101011001011101 , set zx %B0 , set nx %B0, set zy %B0 , set ny %B0 , set f %B0  , set no %B0,
eval , 
output;


// zx  0 |  nx 1 |  zy 0 | ny 1 |  f  0 | no  1 | out 0100 1111 1111 0111  | zr  0 | ng 0  | f( x, y ) = x | y
set x %B0100101010100101  , set y %B0100010101010111 , set zx %B0 , set nx %B1, set zy %B0 , set ny %B1 , set f %B0  , set no %B1 ,
eval , 
output;

