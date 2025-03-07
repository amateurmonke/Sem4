; Search for a given string in the given text

.data
A: .asciz "PES2UG23CS928"
B: .asciz "CS"

.text
    LDR r0, =A
    LDR r1, =B

    MOV r2, #2
    MOV r3, #13

    MOV r4, #-1
    SUB r5, r3, r2

outer:
    CMP r4, r5
    BEQ check

    MOV r6, #0
    ADD r4, r4, #1

inner:
    CMP r6, r2
    BEQ check

    ADD r7, r4, r6
    LDRB r8, [r0, r7]
    LDRB r9, [r1, r6]

    CMP r8, r9
    ADDEQ r6, r6, #1
    BEQ inner
    BNE outer

check:
    CMP r6, r2
    BNE notFound
    CMPEQ r4, r5
    BLT found
    BGE notFound

notFound:
    MOV r10, #-1
    SWI 0x11

found:
    MOV r10, r4
    SWI 0x11

