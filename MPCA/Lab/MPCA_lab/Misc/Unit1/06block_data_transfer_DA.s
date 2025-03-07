.DATA
A: .WORD 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000
B: .WORD 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.TEXT
    LDR r0, =A
    ADD r0, r0, #36

    LDR r11, =B

    LDMDA r0!, {r1-r10}
    STMDA r11!, {r1-r10}

    SWI 0x11

