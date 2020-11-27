/*
 * @Sathvik Team11
 *
 * Test file for ALU8
 * 
 * Testcases for 
 *
 * NOP
 * AND
 * OR
 * XOR
 * Unsigned Addition without overflow
 * Unsigned Addition with overflow
 * Signed Addition without OverFlow
 * Signed Addition with OverFlow
 * Unsigned Subtraction without overflow
 * Signed Subtraction without overflow
 * Signed Subtraction with overflow
 * Unsigned Multiplication without OverFlow
 * UnSigned Multiplication with OverFlow
 * Signed Multiplication without OverFlow
 * Signed Multiplication with OverFlow
 */
load ALU8.hdl,
output-file ALU8.out,
output-list x%B1.8.1 x%D1.8.1 y%B1.8.1 y%D1.8.1 opcode%B1.3.1 S%B1.1.1 z%B1.8.1 z%D1.8.1 EQ%B1.1.1 OF%B1.1.1;

// NOP
set x %B01010010 , set y %B10100101  , set opcode %B000   , set S 0  ,
eval,
output;

// AND
set x %B10011011  , set y %B10101110  , set opcode %B001   , set S 0 ,
eval,
output;

// OR
set x %B01010010   , set y %B10010101  , set opcode  %B010  , set S 0 ,
eval,
output;

// XOR
set x %B10011010    , set y  %B10010110 , set opcode  %B011  , set S 0 ,
eval,
output;

// Unsigned addtion without overflow
// 102 (01100110) + 34(00100010) = 136(10001000)
set x %B01100110, set y %B00100010 , set opcode %B100 , set S 0,
eval , 
output;

// Unsigned addtion with overflow
// 140(10001100) + 155(10011011) =  295(Out of range)
set x %B10001100, set y %B10011011 , set opcode %B100 , set S 0,
eval , 
output;

// Signed addition without overflow
// 125 + (-32) = 93
set x %B01111101, set y %B11100000 , set opcode %B100 , set S 1,
eval , 
output;

// signed addition with overflow 
// -100 + (-100) = -200 ( out of bounds )
set x %B10011100, set y %B10011100 , set opcode %B100 , set S 1,
eval , 
output;


// Unsigned Subtraction without overflow
// 210 - 101 = 109(01101101)
set x %B11010010, set y %B01100101 , set opcode %B101 , set S 0,
eval , 
output;


// Unsigned Subtraction with overflow is not possible

// Signed Subtraction without overflow
// 93 - (-34) = 127(01111111)
set x %B01011101, set y %B11011110 , set opcode %B101 , set S 1,
eval , 
output;

// Signed Subtraction with overflow
// 65 - (-100) = 165( out of bounds )
set x %B01000001, set y %B10011100 , set opcode %B101 , set S 1,
eval , 
output;

// Unsigned Multiplication without overflow
// 14 * 16 = 224(11100000)
set x %B00001110, set y %B00010000 , set opcode %B110 , set S 0,
eval , 
output;


// UnSigned Multiplication with overflow
// 55 * 55 = 3025(out of bounds)
set x %B00110111, set y %B00110111 , set opcode %B110 , set S 0,
eval , 
output;


// Signed Multiplication without overflow
// 63 * (-2) = -126(10000010)
set x %B00111111, set y %B11111110 , set opcode %B111 , set S 1,
eval , 
output;


// signed Multiplication with overflow
// -45 * (-27) = 1215( out of bounds )
set x %B11010011, set y %B11100101 , set opcode %B111 , set S 1,
eval ,  
output;








