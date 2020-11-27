// load the program and setup

load Computer.hdl,
output-file Prog2.out,
output-list RAM64[16]%D2.6.2 RAM64[17]%D2.6.2 RAM64[18]%D2.6.2;

ROM32K load Prog2.hack,



// TESTCASE 1 :: c = |8-16|


set RAM64[16] 8, 
set RAM64[17] 16;
repeat 12{
   tick,tock;
}
output;


set reset 1,      // Reset the Computer
tick,             // Run the clock in order to commit the Program
tock;             // Counter (PC, a sequential chip) to the new reset value



// TESTCASE 2 :: c = |16384-8192|

set reset 0,      // "De-reset" the computer (committed in next tick-tock)


set RAM64[16] 16384, 
set RAM64[17] 8192;
repeat 12{
   tick,tock;
}
output;


set reset 1,         // Reset the Computer
tick,                // Run the clock in order to commit the Program
tock;                // Counter (PC, a sequential chip) to the new reset value



// TESTCASE 3 :: c = |1-1|

set reset 0,            // "De-reset" the computer (committed in next tick-tock)


set RAM64[16] 1, 
set RAM64[17] 1;
repeat 12{
   tick,tock;
}
output;
