; Find the sum of only the negative numbers from the array

.DATA
Array:.WORD 1, 2, 3, 4, -1, 5, -2, -3, 6, 0
negsum:.WORD

.TEXT
    LDR r0, =Array
    LDR r1, =negsum

    MOV r2, #10 ; Loop variable
    MOV r3, #0 ; Sum

loop:
    LDR r4, [r0], #4
    CMP r4, #0 ; Check if negative
    ADDLT r3, r3, r4
    
    SUBS r2, r2, #1
    BNE loop

    STR r3, [r1]
    SWI 0x11

