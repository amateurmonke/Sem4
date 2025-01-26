; Find maximum element from the given array

.DATA
A: .WORD 10, 50, 41, 55, 30, 20, 11, 5, 100, 77

.TEXT
    LDR r0, =A
    MOV r1, #10 ; Loop variable
    LDR r2, [r0], #4 ; Assume first element is max element

loop:
    LDR r3, [r0], #4
    CMP r3, r2
    MOVGT r2, r3 ; Update max element if next element greater than current element

    SUB r1, r1, #1
    CMP r1, #1
    BNE loop

    SWI 0x11

