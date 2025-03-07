; Find sum of all numbers in an array

.DATA
A: .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ; Array A
SUM: .word 0 ; Sum of array elements

.TEXT
    LDR r1, =A ; Load array to r1 from memory.
    ; This is similar to how arrays work in C as in the register holds a pointer to the first element in the array
    ; and it can be incremented to access the next element.
    LDR r2, =SUM ; Load sum to r2 from memory.
    MOV r4, #0 ; Initialize sum.
    MOV r5, #1 ; Initialize loop counter. Similar to 'i' in a C for loop

loop:
    LDR r3, [r1] ; Get value pointed to by r1 i.e an element from the array
    ADD r4, r4, r3 ; Add array element and store in r4.
    ADD r1, r1, #4 ; Increment r1 to point to the next element. Add 4 as each integer occupies 4 bytes.
    ADD r5, r5, #1 ; Increment loop counter
    CMP r5, #11 ; Check loop condition. r5 < 11 (i < 11).
    BNE loop ; If r5 != 11, goto loop and execute again

    STR r4, [r2] ; Store sum at r4 into memory at r2
    SWI 0x11 ; Terminate program

