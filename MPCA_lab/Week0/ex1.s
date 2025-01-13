    ;1. Perform Add and subtract
    ;    r0 = 10
    ;    r1 = 20

    MOV r0, #10
    MOV r1, #20
    ADD r2, r0, r1
    SUB r3, r1, r0

    SWI 0X6b
    SWI 0X11

