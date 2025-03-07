; Perform NOT operation using only bitwise logical operands

    MOV r0, #0b1011 ; Input r0
    EOR r2, r0, #0b1111

    SWI 0x11

