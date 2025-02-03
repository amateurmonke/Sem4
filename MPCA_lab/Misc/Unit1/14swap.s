.data
A: .word 10

.text
    LDR r2, =A
    MOV r1, #5
    SWP r3, r1, [r2] ; Move value in r2 to r3 and move value of r1 to r2

    SWI 0x11

