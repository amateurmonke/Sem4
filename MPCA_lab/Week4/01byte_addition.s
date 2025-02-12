; Add n numbers bytewise.

.data
A: .byte 1, 2, 3, 4, 5, 6
SUM: .word 0

.text
    LDR r0, =A
    LDR r1, =SUM

    MOV r2, #6
    MOV r3, #0

loop:
    LDRB r4, [r0], #1
    ADD r3, r3, r4

    SUBS r2, r2, #1
    BNE loop

    STR r3, [r1]
    SWI 0x11

