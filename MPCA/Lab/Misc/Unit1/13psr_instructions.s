    MOVS r1, #-10
    MRS r0, CPSR ; Move value to Register r0 from Status register CPSR
    AND r0, r0, #0
    MSR CPSR_F, r0 ; Move value to Flags of Status register CPSR from Register r0

    SWI 0x11

