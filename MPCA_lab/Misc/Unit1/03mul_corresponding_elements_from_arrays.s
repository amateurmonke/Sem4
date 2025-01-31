.DATA
A: .word 1, 3, 5
B: .word 2, 4, 6
C: .word

.TEXT
    LDR r5, =A
    LDR r6, =B
    LDR r7, =C

    MOV r3, #3 ; Loop counter 'i'

loop:
    LDR r1, [r5], #4 ; Post indexing
    LDR r2, [r6], #4
    MUL r4, r1, r2

    STR r4, [r7], #4

    SUB r3, r3, #1
    CMP r3, #0
    BNE loop

    SWI 0x11

