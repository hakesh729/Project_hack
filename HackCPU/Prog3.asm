// Designed by Sai Teja @ Team 11

//  Adds 1 + 2 +....+ 99



// C code 

// int i = 1
// int sum = 0
// while (i < 100)
//    { 
//       sum = sum + i;
//       i = i + 1;
//    }



       @16    // 16 refers to mem. location 16
       M=1    // i=1
       @17    // 17 refers to mem. location 17
       M=0    // sum=0
  (LOOP)
       @16
       D=M    // D=i
       @100
       D=D-A  // D=i-100
       @END
       D;JEQ  // If (i-100)=0 goto END
       @16
       D=M    // D=i
       @17
       M=D+M  // sum=sum+i
       @16
       M=M+1  // i=i+1
       @LOOP
       0;JMP  // goto LOOP
  (END)
       @END
       0;JMP  // The infinite loop is a standard way to "terminate" the execution of a Hack program

 