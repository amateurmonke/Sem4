; Subtract if two numbers are equal else add

    MOV r0, #5 ; Input r0 and r1
    MOV r1, #5
    CMP r0, r1
    SUBEQ r2, r0, r1
    ADDNE r2, r0, r1

    SWI 0x11

