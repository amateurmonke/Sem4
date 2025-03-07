; Perform C = A + B

.DATA
A: .WORD 0x12345678
B: .WORD 0x11111111
C: .WORD 0x00000000

.TEXT
    LDR r1, =A
    LDR r2, =B
    LDR r6, =C

    LDR r3, [r1]
    LDR r4, [r2]

    ADD r5, r3, r4

    STR r5, [r6]
    SWI 0x11

