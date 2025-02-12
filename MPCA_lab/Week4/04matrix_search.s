; For the given matrix arranged in Column major order, find the
; index of an element if coordinates of a matrix is given and also find the address of the indexed
; element. (Using MLA instruction)
; Index for the column major = y*(no of rows) + x

.data
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9

.text
    LDR r0, =A

    MOV r1, #3
    MOV r2, #3

    MOV r3, #0
    MOV r4, #1

    MLA r5, r4, r1, r3
    MOV r6, r5, LSL #2
    ADD r0, r0, r6

    SWI 0x11

