; Seperate the positive and negative numbers

.DATA
A: .WORD 1, 2, 3, 4, -1, 5, -2, -3, 6, 0
POS: .WORD 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
NEG: .WORD 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.TEXT
    LDR r0, =A
    LDR r1, =POS
    LDR r2, =NEG
    MOV r3, #10

loop:
    LDR r4, [r0], #4
    CMP r4, #0
    STRGE r4, [r1], #4
    STRLT r4, [r2], #4

    SUBS r3, r3, #1
    BNE loop

    SWI 0x11

