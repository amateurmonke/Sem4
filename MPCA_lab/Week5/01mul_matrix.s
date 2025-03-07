; Perform matrix multiplication

.data
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
B: .word 1, 1, 2, 2, 3, 3, 4, 4, 5
C: .word

.text
    LDR R0, =A
    LDR R1, =B
    LDR R2, =C
    MOV R10, #3

    MOV R3, #0

outer:
    CMP R3, R10
    BGE end
    MOV R4, #0

middle:
    CMP R4, R10
    BGE next
    MOV R9, #0
    MOV R8, #0

inner:
    CMP R8, R10
    BGE store

    MUL R5, R3, R10
    ADD R5, R5, R8
    MOV R5, R5, LSL #2
    LDR R6, [R0, R5]

    MUL R7, R8, R10
    ADD R7, R7, R4
    MOV R7, R7, LSL #2
    LDR R11, [R1, R7]

    MLA R9, R6, R11, R9
    ADD R8, R8, #1
    B inner

store:
    MUL R5, R3, R10
    ADD R5, R5, R4
    MOV R5, R5, LSL #2
    STR R9, [R2, R5]

    ADD R4, R4, #1
    B middle

next:
    ADD R3, R3, #1
    B outer

end:
    SWI 0x11

