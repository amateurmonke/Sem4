; Generate fibonacci series of n numbers and store it in a memory location

.DATA
series: .WORD

.TEXT
    LDR r0, =series
    MOV r1, #15 ; Input n

    MOV r2, #0 ; First number of the series
    MOV r3, #1 ; Second number of the series
    STR r2, [r0], #4
    STR r3, [r0], #4
    SUB r1, r1, #2 ; Two numbers stored

loop:
    ADD r4, r2, r3 ; Calculate next number and store
    STR r4, [r0], #4

    MOV r2, r3
    MOV r3, r4

    SUBS r1, r1, #1
    BNE loop

    SWI 0x11

