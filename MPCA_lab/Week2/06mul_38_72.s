; Multiply 38 and 72 without using MUL

    MOV r0, #38
    MOV r1, r0, LSL #6
    MOV r2, r0, LSL #3
    ADD r3, r1, r2

    SWI 0x11

