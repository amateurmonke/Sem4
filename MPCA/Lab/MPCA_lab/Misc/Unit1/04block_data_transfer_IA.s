.DATA
A: .WORD 100, 200, 300, 400, 500, 600, 700, 800
B: .WORD 0, 0, 0, 0, 0, 0, 0, 0

.TEXT
    LDR r0, =A
    LDR r7, =B

    LDMIA r0!, {r1, r8, r9, r11}
    STMIA r7!, {r8, r9, r11, r1}

    SWI 0x11

