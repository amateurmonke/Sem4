; Reverse the elements stored in location A with location B

.data
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
B: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.text
    LDR r0, =A
    LDR r1, =B

    ADD r1, r1, #36
    MOV r2, #10

loop:
    LDR r3, [r0], #4
    STR r3, [r1], #-4
    
    SUBS r2, r2, #1
    BNE loop

    SWI 0x11

