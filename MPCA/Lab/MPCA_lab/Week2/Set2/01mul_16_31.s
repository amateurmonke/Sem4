; Multiply 31 and 16 without using MUL

    MOV r0, #31
    MOV r0, r0, LSL #4

    SWI 0x11

