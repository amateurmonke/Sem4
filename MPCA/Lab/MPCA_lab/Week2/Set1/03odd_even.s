; Seperate the odd and even numbers into 2 arrays

.DATA
A: .WORD 10, 50, 41, 55, 30, 20, 11, 5, 100, 77
LOCA: .WORD 0, 0, 0, 0, 0, 0
LOCB: .WORD 0, 0, 0, 0, 0, 0

.TEXT
    LDR r0, =A
    LDR r1, =LOCA
    LDR r2, =LOCB
    
    MOV r3, #10 ; Loop counter

loop:
    LDR r4, [r0], #4
    TST r4, #1
    STREQ r4, [r1], #4 ; Store in LOCA if even
    STRNE r4, [r2], #4 ; Store in LOCB if odd

    SUBS r3, r3, #1
    BNE loop

    SWI 0x11

