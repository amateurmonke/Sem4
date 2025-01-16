; Find factorial of num in r0 and store in r1

    MOV r0, #5 ; Input r0
    MOV r1, #1

loop:
    MUL r1, r0, r1
    SUB r0, r0, #1
    CMP r0, #1
    BNE loop

    SWI 0x11

