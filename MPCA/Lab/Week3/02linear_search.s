; Search for an element in an array of Half words(16 bit) using Linear search

.DATA
A: .HWORD 1, 2, 3, 4, 5, 6, 7, 8, 9

.TEXT
    LDR r0, =A
    MOV r1, #4
    MOV r2, #-1

loop:
    ADD r2, r2, #1
    LDRH r3, [r0] ; Load half word
    ADD r0, r0, #2 ; Increment half word array pointer
    CMP r1, r3
    BNE loop

    SWI 0x11

