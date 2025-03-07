; Find length of a given string

.data
A: .asciz "PES2UG23CS928"

.text
    LDR r0, =A
    MOV r1, #-1

loop:
    LDRB r2, [r0], #1
    ADD r1, r1, #1
    
    CMP r2, #0
    BNE loop

    SWI 0x11

