/*ParityGCBit8...Tests ParityGCBit8 chip in ParityGCBit8.hdl 
    ie.,Detect 1 bit error (either in Data bits or Parity Bits) and give output(Z) as 1 if any One bit Errors
    else Z = 0 (For multi errors  Z =0 or Z =1)
    
    For sake comparisions We Included orginal data bits x7 to x0 along with y7 to y0 (received data bits) to get where is error(either parity bit or 
    data bit error).
    
    Data sent by Transmitter : x7 to x0(8 bit) data bits and corresponding parity bit
    Data Received by receiver : y7 to y0(8 bit) and Pg
    
    NOTE : Pg is set manually because it can have error when transmitted
            ie.,Pg may or may not equal to x7 o x6 o x5 ... x0(where o = xor)
*/     

load ParityGCBit8.hdl,
output-file ParityGCBit8.out,
output-list x7%B3.1.3  x6%B3.1.3   x5%B3.1.3   x4%B3.1.3   
            x3%B3.1.3  x2%B3.1.3   x1%B3.1.3   x0%B3.1.3
            Pg%B3.1.3
            y7%B3.1.3  y6%B3.1.3   y5%B3.1.3   y4%B3.1.3   
            y3%B3.1.3  y2%B3.1.3   y1%B3.1.3   y0%B3.1.3
            Pc%B3.1.3
            Z%B3.1.3;


//First Two Cases of Every Combination have error(only 1 bit) either in parity bit or Data bit
//Second one dont have any error            

/* COMBINATION 1 */

set x7 0,set x6 0,set x5 0,set x4 0,set x3 0,set x2 0,set x1 0,set x0 0,set Pg 1,
set y7 0,set y6 0,set y5 0,set y4 0,set y3 0,set y2 0,set y1 0,set y0 0,eval,output;

set x7 0,set x6 0,set x5 0,set x4 0,set x3 0,set x2 0,set x1 0,set x0 0,set Pg 0,
set y7 0,set y6 0,set y5 0,set y4 1,set y3 0,set y2 0,set y1 0,set y0 0,eval,output;

set x7 0,set x6 0,set x5 0,set x4 0,set x3 0,set x2 0,set x1 0,set x0 0,set Pg 0,
set y7 0,set y6 0,set y5 0,set y4 0,set y3 0,set y2 0,set y1 0,set y0 0,eval,output;



/* COMBINATION 2 */

set x7 1,set x6 0,set x5 0,set x4 0,set x3 0,set x2 0,set x1 0,set x0 0,set Pg 0,
set y7 1,set y6 0,set y5 0,set y4 0,set y3 0,set y2 0,set y1 0,set y0 0,eval,output;

set x7 1,set x6 0,set x5 0,set x4 0,set x3 0,set x2 0,set x1 0,set x0 0,set Pg 1,
set y7 1,set y6 0,set y5 0,set y4 0,set y3 1,set y2 0,set y1 0,set y0 0,eval,output;

set x7 1,set x6 0,set x5 0,set x4 0,set x3 0,set x2 0,set x1 0,set x0 0,set Pg 1,
set y7 1,set y6 0,set y5 0,set y4 0,set y3 0,set y2 0,set y1 0,set y0 0,eval,output;



/* COMBINATION 3 */

set x7 1,set x6 0,set x5 1,set x4 1,set x3 0,set x2 1,set x1 0,set x0 0,set Pg 1,
set y7 1,set y6 0,set y5 1,set y4 1,set y3 0,set y2 1,set y1 0,set y0 0,eval,output;

set x7 1,set x6 0,set x5 0,set x4 1,set x3 1,set x2 0,set x1 1,set x0 0,set Pg 0,
set y7 1,set y6 0,set y5 0,set y4 1,set y3 1,set y2 0,set y1 1,set y0 1,eval,output;

set x7 1,set x6 1,set x5 0,set x4 0,set x3 1,set x2 0,set x1 0,set x0 1,set Pg 0,
set y7 1,set y6 1,set y5 0,set y4 0,set y3 1,set y2 0,set y1 0,set y0 1,eval,output;


/* COMBINATION 4 */

set x7 1,set x6 0,set x5 1,set x4 1,set x3 0,set x2 1,set x1 1,set x0 0,set Pg 1,
set y7 0,set y6 0,set y5 1,set y4 1,set y3 0,set y2 1,set y1 1,set y0 0,eval,output;

set x7 1,set x6 0,set x5 0,set x4 0,set x3 1,set x2 1,set x1 1,set x0 1,set Pg 0,
set y7 1,set y6 0,set y5 0,set y4 0,set y3 1,set y2 1,set y1 1,set y0 1,eval,output;

set x7 1,set x6 1,set x5 1,set x4 0,set x3 1,set x2 1,set x1 0,set x0 1,set Pg 0,
set y7 1,set y6 1,set y5 1,set y4 0,set y3 1,set y2 1,set y1 0,set y0 1,eval,output;


