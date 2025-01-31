; Given 2 arrays A and B, multiply their corresponding elements and find the sum of the results using MUL
;    A = [a1, a2, a3]
;    B = [b1, b2, b3]
;    Convolution result = (a1 * b1) + (a2 * b2) + (a3 * b3)

.DATA
A: .WORD 1, 2, 3, 4, 5
B: .WORD 6, 7, 8, 9, 10

.TEXT
    LDR r0, =A
    LDR r1, =B

    MOV r5, #0 ; Final sum
    MOV r6, #5 ; Loop counter

loop:
    LDR r2, [r0], #4
    LDR r3, [r1], #4

    MUL r4, r2, r3
    ADD r5, r4, r5

    SUBS r6, r6, #1
    BNE loop

    SWI 0x11

