; Sum of all BCD digits of a given 32 bit number
; i.e. 788 = 0111 1000 1000  => Sum = 7 + 8 + 8 = 23

.TEXT
    LDR r1, =0x788 ; i.e 0000 0000 0000 0000 0000 0111 1000 1000 in 32 bit BCD
    MOV r2, #0 ; Final sum
    MOV r3, #8 ; Loop counter. Use 8 as 8 blocks of 4 bits in given 32 bit number

loop:
    AND r4, r1, #0b1111 ; Get last digit by making all other digits 0
    ADD r2, r2, r4
    MOV r1, r1, LSR #4 ; Remove last 4 bits

    SUBS r3, r3, #1
    BNE loop
    
    SWI 0x11
