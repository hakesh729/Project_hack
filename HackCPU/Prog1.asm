// Designed by Sai Teja @ Team 11
//    d = a + b - c

      
      @16      // 16 refers to mem. location 16
      D=M      // D=a
      @17      // 17 refers to mem. location 17
      D=D+M    // D=a+b
      @18      // 18 refers to mem. location 18
      D=D-M    // D=a+b-c
      @19      // 19 refers to mem. location 19
      M=D      // d=a+b-c

 (END)
      @END
      0;JMP   // the infinite loop is a standard way to "terminate" the execution of a Hack program.

 

