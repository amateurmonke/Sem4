; Selection sort

.data
A: .word 3, 2, 10, 1, 5, 8, 7, 4, 9, 6
N: .word 10

.text
    LDR r0,=A
    LDR r1,=N
    LDR r1,[r1]
    SUB r7,r1,#1
    MOV r2,#0

outer:
    LDR r3,[r0]
    ADD r4,r0,#4
    ADD r5,r2,#1

inner:
    LDR r6,[r4]
    
    CMP r6,r3
    SWPLT r3,r3,[r4]
    
    STR r3,[r0]
    ADD r4,r4,#4
    ADD r5,r5,#1

    CMP r5,r1
    BLT inner

    ADD r0,r0,#4
    ADD r2,r2,#1

    CMP r2,r7
    BLT outer

    SWI 0x11

