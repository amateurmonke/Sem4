; Find GCD of two numbers

    MOV r0, #15 ; r0 and r1 are input values
    MOV r1, #5
    CMP r0, r1
    BEQ end
    BGT great
    BLT less

great:
    SUB r0, r0, r1
    CMP r0, r1
    BEQ end
    BGT great
    BLT less

less:
    SUB r1, r1, r0
    CMP r0, r1
    BEQ end
    BGT great
    BLT less

end:
    SWI 0x11

