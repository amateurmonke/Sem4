; USE EA, ED, FA and FD to store and load from stack
; Working:
; Empty => Store then go to next address
;          Go to next address then Load
; Full => Go to next address then Store
;         Load then go to next address

.DATA
S: .WORD

.TEXT
    LDR r13, =S ; User stack pointer r13

    MOV r0, #4
    MOV r1, #5
    MOV r2, #6

    STMEA r13!, {r0, r1, r2} ; Change modes here
    LDMEA r13!, {r3, r4, r5}

    SWI 0x11

