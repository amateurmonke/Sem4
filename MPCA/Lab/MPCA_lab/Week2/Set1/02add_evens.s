; Find the sum of all the even elements from the array

.DATA
A: .WORD 15, 10, 12, 13, 9, 45, 16, 8, 25, 33
evensum: .WORD

.TEXT
    LDR r0, =A
    LDR r1, =evensum

    MOV r3, #10 ; Loop counter
    MOV r4, #0 ; Sum

loop:
    LDR r2, [r0], #4
    TST r2, #1 ; Check if even
    ADDEQ r4, r4, r2

    SUBS r3, r3, #1
    BNE loop

    STR r4, [r1]
    SWI 0x11

