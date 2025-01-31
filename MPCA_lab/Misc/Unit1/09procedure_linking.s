.DATA
A: .WORD 0

.TEXT
    LDR r7, =A
    MOV r1, #25
    MOV r2, #25

    STMFD r13!, {r1, r2}
    BL link
    
    STR r0, [r7]
    SWI 0x11

link:
    LDMFD r13!, {r4, r5}
    ADD r0, r4, r5
    BX r14


