; Check parity of a given number
;    Number of 1s even in binary representation => Even parity
;    Number of 1s odd in binary representation => Odd parity

    MOV r0, #3 ; Input
    MOV r1, #0 ; r1 = 0 => Even parity, r1 = 1 => Odd parity

loop:
    EOR r1, r1, #1 ; Invert r1
    SUB r2, r0, #1
    ANDS r0, r0, r2
    BNE loop

    SWI 0x11

