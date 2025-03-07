.DATA
A: .WORD 0

.TEXT
    LDR r7, =A
    MOV r1, #11
    MOV r2, #10
    MOV r3, #2

    STMFD r13!, {r1, r2, r3}
    BL add

    STR r0, [r7]
    SWI 0x11

add:
    LDMFD r13!, {r4, r5, r6}
    ADD r0, r4, r5
    STMFD r13!, {r0, r6, LR}
    BL mul

mul:
    LDMFD r13!, {r4, r5, LR}
    MUL r0, r4, r5
    BX LR

