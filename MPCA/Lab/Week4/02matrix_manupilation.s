; Generate a square given matrix with A
; If i == j then A[i][j] = 5
; Otherwise A[i][j] = 0
; (Note:Any size of matrix can be given as input)
; Considering 4X4 matrix
; Example : 5 0 0 0
;           0 5 0 0
;           0 0 5 0
;           0 0 0 0

; Before:
; A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16
; After:
; A: .word 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5

.data
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16

.text
    LDR r0, =A

    MOV r1, #0 ; i
    MOV r2, #0 ; j
    MOV r3, #5 ; To store 5
    MOV r4, #0 ; To store 0

inner:
    CMP r1, r2
    STREQ r3, [r0], #4
    STRNE r4, [r0], #4

    ADD r2, r2, #1
    CMP r2, #4
    BNE inner
    BEQ outer

outer:
    MOV r2, #0

    ADD r1, r1, #1
    CMP r1, #4
    BNE inner

    SWI 0x11

