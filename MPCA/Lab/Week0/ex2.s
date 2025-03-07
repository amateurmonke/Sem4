    ;2. AND, OR, EOR(Exclusive OR)
    ;    r0 = 5
    ;    r1 = 6


    MOV r0, #5
    MOV r1, #6
    AND r2, r0, r1
    ORR r3, r0, r1
    EOR r4, r0, r1

    SWI 0X11
