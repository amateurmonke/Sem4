; For the given matrix arranged in row major order, find the index of an element
; if coordinates of a matrix is given and also find the address of the indexed element.
; Use MLA instruction

.DATA
A: .WORD 1, 2, 3, 4, 5, 6, 7, 8, 9

.TEXT
    LDR r0, =A
    MOV r1, #1 ; Coordinate i
    MOV r2, #2 ; Coordinate j

    MOV r6, #3 ; No. of columns in matrix(m)
    MLA r3, r1, r6, r2 ; Index = i*m + j
    MOV r4, r3

loop:
    MOV r5, r0 ; Address of indexed element
    ADD r0, r0, #4
    SUBS r4, r4, #1
    BNE loop

    SWI 0x11

