/*DecodeBit.tst:Tests DecoderBit2 chip in DecoderBit2.hdl with  all possible inputs and activates 1 activate output line */

load DecoderBit2.hdl,
output-file DecoderBit2.out,
compare-to DecoderBit2.cmp,
output-list x1%B3.1.3
            x0%B3.1.3
            y3%B3.1.3
            y2%B3.1.3
            y1%B3.1.3
            y0%B3.1.3;

set x1 0, set x0 0, eval, output;   //Output is only y3 = 1 and others are zeros
set x1 0, set x0 1, eval, output;   //only y2 = 1
set x1 1, set x0 0, eval, output;   //only y1 = 1     
set x1 1, set x0 1, eval, output;   //only y0 = 1

