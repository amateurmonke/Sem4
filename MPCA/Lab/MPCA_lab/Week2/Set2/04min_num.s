; Find the smallest number from the given array

.DATA
A: .WORD 10, 50, 41, 55, 30, 20, 11, 5, 100, 77

.TEXT
    LDR r0, =A
    MOV r1, #10 ; Loop counter
    LDR r2, [r0], #4 ; Assume first element is min element

loop:
    LDR r3, [r0], #4
    CMP r3, r2
    MOVLT r2, r3 ; Update min element if next element lesser than current element

    SUB r1, r1, #1
    CMP r1, #1
    BNE loop

    SWI 0x11

