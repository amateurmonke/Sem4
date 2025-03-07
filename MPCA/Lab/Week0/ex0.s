    MOV r2, #10
    MOV r3, #2
    MUL r1, r2, r3

    SWI 0X6b ;Software Interrupt: Print to console
    SWI 0X11 ;Software Interrupt: Exit program

