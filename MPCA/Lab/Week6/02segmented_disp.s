.data
digits:
    .byte  0xED, 0x60, 0xCE, 0xFA, 0x63, 0xAB, 0xAF, 0xE0
    .byte  0xEF, 0xE3, 0xE7, 0x2F, 0x8D, 0x6E, 0x8F, 0x87

.text
    MOV R0, #0        
    MOV R2, #0        

click:
    SWI 0x202         
    CMP R0, #1        
    BEQ asc
    CMP R0, #2        
    BEQ desc
    B click    

asc:
    LDR R5, =16       
    LDR R1, =digits   

ascend:
    LDRB R0, [R1], #1 
    SWI 0x200         
    BL delay
    SUBS R5, R5, #1   
    BNE ascend
    B click

desc:
    LDR R5, =16
    ADD R1, R1, #15   

descend:
    LDRB R0, [R1], #-1 
    SWI 0x200
    BL delay
    SUBS R5, R5, #1
    BNE descend
    B click

delay:
    LDR R4, =64000

loog:
    SUBS R4, R4, #1
    BNE loog
    BX LR

