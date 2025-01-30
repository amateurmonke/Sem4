; Find remainder of 10 when divided by 3

.DATA
A: .WORD 10
B: .WORD 3

.TEXT
    LDR r0, =A
    LDR r1, =B

    LDR r2, [r0]
    LDR r3, [r1]
    MOV r4, #0

loop:
    ADD r4, r4, #1
    MUL r5, r3, r4 ; Find multiples of the divisor
    CMP r2, r5 ; Check if the dividend is greater than the current multiple
    BGT loop ; Exit loop if current multiple is greater

    SUB r4, r4, #1
    MUL r5, r3, r4 ; Find the multiple just before exiting loop
    SUB r6, r2, r5 ; Find remainder

    SWI 0x11

