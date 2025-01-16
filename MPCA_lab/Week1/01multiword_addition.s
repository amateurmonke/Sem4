; Addition of two programs of size 
;    a) 64 bit
;    b) 128 bit
; Save the result in a register and reuse

; a
    MOV r0, #255 
    MOV r2, #150 
    MOV r1, #11
    MOV r3, #51
    ADDS r4, r0, r2
    ADC r5, r1, r3 ; 64 bit num r5r4

; b
    MOV r6, #255 
    MOV r8, #231 
    MOV r7, #111
    MOV r9, #22
    ADDS r6, r6, r8
    ADCS r7, r7, r9 ; 64 bit num r7r6

    ADDS r10, r4, r6
    ADC r11, r5, r7 ; 128 bit num r5r4r7r6

    SWI 0x11

