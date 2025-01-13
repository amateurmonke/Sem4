    ;3. Add everything
    ;    r0 = 5
    ;    r1 = 6
    ;    r2 = 7
    ;    r3 = 6
    ;    r4 = 15

    MOV R0, #5
    MOV R1, #6
    MOV R2, #7
    MOV R3, #6
    MOV R4, #15
    ADD R5, R0, R1
    ADD R5, R5, R2
    ADD R5, R5, R3
    ADD R5, R5, R4

    SWI 0X6b
    SWI 0X11

