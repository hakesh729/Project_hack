// load the program and setup

load Computer.hdl,
output-file Prog1.out,
output-list RAM64[16]%D2.6.2 RAM64[17]%D2.6.2 RAM64[18]%D2.6.2 RAM64[19]%D2.6.2;

ROM32K load Prog1.hack,


//TESTCASE 1 :: d = 8 + 16 - 4


set RAM64[16] 8, 
set RAM64[17] 16, 
set RAM64[18] 4;
repeat 8{
   tick,tock;
}
output;


set reset 1,      // Reset the Computer
tick,             // Run the clock in order to commit the Program
tock;             // Counter (PC, a sequential chip) to the new reset value


//TESTCASE 2 ::  d = 32767 + 1 - 2

set reset 0,      // "De-reset" the computer (committed in next tick-tock)


set RAM64[16] 32767,
set RAM64[17] 1,
set RAM64[18] 2;
repeat 8{
   tick,tock;
}
output;


set reset 1,         // Reset the Computer
tick,                // Run the clock in order to commit the Program
tock;                // Counter (PC, a sequential chip) to the new reset value


//TESTCASE 3 ::  d = 21845 + 10922 - 31


set reset 0,            // "De-reset" the computer (committed in next tick-tock)


set RAM64[16] 21845,
set RAM64[17] 10922,
set RAM64[18] 31;
repeat 8{
   tick,tock;
}
output;

