// load the program and setup

load Computer.hdl,
output-file Prog3.out,
output-list RAM64[17]%D2.6.2;

// Output the sum 1+2+...+99 to the out file

ROM32K load Prog3.hack,


// Find sum of 1 + 2 +...+ 99


repeat 1396{
   tick,tock;
}
output;

