; Multiply 32 and 50 without using MUL

    MOV r0, #50
    MOV r0, r0, LSL #5

    SWI 0x11

