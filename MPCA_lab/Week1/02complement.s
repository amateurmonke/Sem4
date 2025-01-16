; Perform 2's complement using only MOV and RSB
;     r1 = 5
;     r2 = 0

    MOV r1, #5 ; Input r1
    MOV r2, #0
    RSB r3, r1, r2
    
    SWI 0x11
