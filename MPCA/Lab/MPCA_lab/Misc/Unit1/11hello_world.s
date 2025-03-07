.DATA
A: .ASCIZ "Hello, World!"

.TEXT
    LDR r1, =A
    
loop:
    LDRB r0, [r1], #1 ; Load byte
    CMP r0, #0
    SWINE 0x00 ; Print single char
    BNE loop

    SWI 0x11

