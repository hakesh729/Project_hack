/*DeMux8way2bit.tst test DeMux8way2bit.hdl file with all possible select line combinations
which invokes respective output line 

NOTE : As for 2 bit Data Transfer,set x in Decimal in range 0 to 3 (inclusive)
        Final representation will be in binary 
        Ex : For 2 bit Data input x = 11 , For testing purpose set x as 3.
*/
load DeMux8way2bit.hdl,
output-file DeMux8way2bit.out,

output-list x%B3.2.3
            s2 s1 s0
            y7%B3.2.3 y6%B3.2.3 y5%B3.2.3 y4%B3.2.3
            y3%B3.2.3 y2%B3.2.3 y1%B3.2.3 y0%B3.2.3;
             
//Testing with all possible select line combinations
set x 2,set s2 0,set s1 0,set s0 0,eval,output;
set x 1,set s2 0,set s1 0,set s0 1,eval,output;
set x 0,set s2 0,set s1 1,set s0 0,eval,output;
set x 3,set s2 0,set s1 1,set s0 1,eval,output;
set x 1,set s2 1,set s1 0,set s0 0,eval,output;
set x 3,set s2 1,set s1 0,set s0 1,eval,output;
set x 2,set s2 1,set s1 1,set s0 0,eval,output;
set x 0,set s2 1,set s1 1,set s0 1,eval,output;