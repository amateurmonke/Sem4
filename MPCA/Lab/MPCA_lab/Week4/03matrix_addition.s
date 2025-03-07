; Perform 3*3 matrix addition

.data
A: .word 10, 20, 30, 40, 50, 60, 70, 80, 90
B: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
RES: .word 0, 0, 0, 0, 0, 0, 0, 0, 0

.text
    LDR r0, =A
    LDR r1, =B
    LDR r2, =RES

    MOV r3, #9

loop:
    LDR r4, [r0], #4
    LDR r5, [r1], #4

    ADD r6, r4, r5
    STR r6, [r2], #4

    SUBS r3, r3, #1
    BNE loop

    SWI 0x11

