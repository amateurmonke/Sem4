.DATA
A: .ASCIZ "Hello, World!"

.TEXT
    LDR r0, =A
    SWI 0x02 ; Print string on stdout

    SWI 0x11

