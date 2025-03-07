; Find the largest of all the BCD digits of a given 32-bit number.
; Eg: If R1=17845374 the largest digit is 8

.text
    LDR r1, =0x17845374
    MOV r2, #0
    MOV r3, #8

loop:
    AND r4, r1, #0b1111
    MOV r1, r1, LSR #4
    CMP r4, r2
    MOVGT r2, r4

    SUBS r3, r3, #1
    BNE loop

    SWI 0x11

