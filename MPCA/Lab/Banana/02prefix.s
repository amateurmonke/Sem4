; Evaluate given prefix expression

.data
A: .asciz "-+5+9"

.text
    LDR r0, =A
    MOV r1, #0

findEnd:
    LDRB r2, [r0], #1
    ADD r1, r1, #1
    BNEZ r2,  findEnd

    SUB r0, r0, #2
    SUB r1, r1, #1

loop:
    LDRB r2, [r0], #-1

    CMP r2, #'+'
    BEQ add

    CMP r2, #'-'
    BEQ sub

num:
    SUB r2, r2, #'0'
    STMEA r13!, {r2}
    B con

add:
    LDMEA r13!, {r3, r4}
    ADD r3, r4, r3 
    STMEA r13!, {r3}
    B con

sub:
    LDMEA r13!, {r3, r4}
    SUB r3, r4, r3
    STMEA r13!, {r3}
    B con

con:
    SUBS r1, r1, #1 
    BNE loop

    LDMEA r13!, {r1}
    MOV r0, #1

    SWI 0x6b
    SWI 0x11

