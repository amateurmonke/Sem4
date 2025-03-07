; Swap the first and last letters of the given string and print as "The swapped string is: <swapped string>"

.data
A: .asciz "dog"
swap: .asciz "\nThe swapped string is: "

.text
    LDR r0, =A
    SWI 0x02

    MOV r1, #3
    SUB r2, r1, #1

    LDRB r3, [r0]
    LDRB r4, [r0, r2]

    STRB r3, [r0, r2]
    STRB r4, [r0]

    LDR r0, =swap
    SWI 0x02
    LDR r0, =A
    SWI 0x02

    SWI 0x11

