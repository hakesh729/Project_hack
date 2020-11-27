/*
 * @Sathvik Team11
 *
 * Test file for FP16
 * 
 * Testcases for 
 *
 * Two pairs of numbers of the same sign
 *
 * Two pairs of numbers of the opposite sign
 *
 * One pair of numbers for which the product of mantissas, Pm, is greater than 2.0
 *
 * One pair of numbers for which the product of mantissas, Pm, is between 1.0 and 2.0 
 */

 load FPMUL16.hdl,
 output-file FPMUL16.out,
 output-list X%B1.16.1 Y%B1.16.1 Z%B1.16.1;

 //-1.75 * 2^85  *  -1.25 * 2^-19 = 2.1875 * 2^66 ( 0 11000010 0001100 )  
 set X %B1110101001100000, set Y %B1011011000100000,
 eval,
 output;

 //1.2890625 * 2^38  *  1.6640625 * 2^-43 = 2.140625 * 2^-5 (0 01111011 0001001)
 set X %B0101001010100101, set Y %B0010101001010101,
 eval,
 output;

 //-1.625 * 2^80  *  1.5 * 2^10 = -2.4375 * 2^90 (1 11011010 0011100) 
 set X %B1110011111010000, set Y %B0100010011000000,
 eval,
 output;

 //1.75 * 2^81  *  -1.5625 * 2^20 = -2.734375 * 2^101 (1 11100101 0101111)
 set X %B0110100001100000, set Y %B1100100111001000,
 eval,
 output;

 //1.1328125 * 2^-63  *  1.1015625 * 2^50 =  1.2421875 * 2^-13 (0 01110010 0011111)
 set X %B0010000000010001, set Y %B0101100010001101,
 eval,
 output; 

 //1.875 * 2^-63  *  1.96875 * 2^50 = 3.6875 * 2^-13 (0 01110011 1101100)
 set X %B0010000001110000, set Y %B0101100011111100,
 eval,
 output;