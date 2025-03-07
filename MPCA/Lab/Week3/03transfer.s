; Copy a block 128 bytes of data from location A to location B if the rate of data transfer rate is 16 byte
; For the same transfer the block with auto-indexing.

.DATA
    A: .WORD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32
    B: .WORD 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.TEXT
    LDR r0, =A
    LDR r1, =B
    MOV r6, #0

loop:
    LDMIA r0!, {r2 - r5}
    STMIA r1!, {r2 - r5}
    ADD r6, r6, #1
    CMP r6, #8
    BNE loop

    SWI 0x11

