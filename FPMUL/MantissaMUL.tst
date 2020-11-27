load MantissaMUL.hdl,
output-file MantissaMUL.out,
output-list a%B1.8.1 a%D1.8.1 b%D1.8.1 b%B1.8.1 out%B1.16.1 out%D1.16.1;


//170(10101010) * 187(10111011) = 31,790(01111100 00101110)
set a %B10101010 , set b %B10111011 ,
eval,
output;

//139(10001011) * 138(10001010) = 19182(01001010 11101110)
set a %B10001011 , set b %B10001010 , 
eval,
output;

