; Check if a number is even or odd. Write 0 to r0 if it is even, else write FF to r0

    MOV r1, #5 ; Input r1
    MOV r2, #1
    ANDS r2, r1, r2
    CMP r2, #0
    BEQ even
    BNE odd

even:
    MOV r0, #0
    SWI 0x11

odd:
    MOV r0, #0xFF
    SWI 0x11

