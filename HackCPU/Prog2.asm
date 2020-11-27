// Designed by Sai Teja @ Team 11 

//  if(a>b) then c=a-b else c=b-a


      @16       // 16 refers to mem. location 16
      D=M      // D=a 
      @17       // 17 refers to mem. location 17
      D=D-M    // D=a-b
      @ELSE
      D;JLE    // If (a-b)<=0 goto ELSE
      @18       // 18 refers to mem. location 18
      M=D      // c=a-b
      @END-IF
      0;JMP    // goto END-IF
 (ELSE)
      @18
      M=-D     // c=b-a
 (END-IF)

 (END)
      @END
      0;JMP    // the infinite loop is a standard way to "terminate" the execution of a Hack program.
