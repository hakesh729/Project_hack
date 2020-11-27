//Tests the Signed 8 Bit Mutliplication using csa (SMuL8)
load SMuL8.hdl,
output-file SMuL8.out,

output-list a%B1.8.1 b%B1.8.1 out%B1.8.1 OF%B1.1.1;

//Non overflow cases.(-128 to 127 range)
set a %B00000101,set b %B00011001,eval,output;              //5 * 25 = 125
set a %B00000101,set b %B11100111,eval,output;              //5 * (-25) = -125
set a %B11111011,set b %B00011001,eval,output;              //(-5) * 25 = -125
set a %B11111011,set b %B11100111, eval, output;            //(-5) * (-25) = 125

//Overflowing cases 
set a %B00010000,set b %B00001000,eval,output;              //16 * 8 = 128 > 127
set a %B00001111,set b %B11110111,eval,output;              //15 * -9 = -135 < -128

