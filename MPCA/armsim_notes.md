````md
# ARM Assembly Notes

## Comments

- Semicolon (`;`) is used to add comments.

## Data Representation

- Junk value -> `81818181`
- `1 nibble` -> `4 bits`
- `1 full word = 32 bits = 8 nibbles`
- `1008 + 4 = 1012 -> 100C (Hexa)`
- `4096 + 12 = 4108`

## Instructions

### SUB & SUBS

- `SUB R3, R0, R1` → `R3 = R0 - R1` (Does not set Z flag even if result is 0)
- `SUBS R3, R0, R1` → Sets `Z` to `1` if result is `0`
- **Adding `S` flag enables setting `Z` and `C` flags**

### CMP

- `CMP R0, R1` → Performs `R0 - R1`, result is not stored, but flag bits are set/reset
- Example:
  ```assembly
  R0 = 5, R1 = 5
  R0 - R1 = 0 -> N=0, Z=1, V=0, C=0
  ```
````

### MVN & CMN

- **Move Negate (MVN)** → 1's complement (flips bits)
  ```assembly
  MVN R0, #5  ; R0 now contains -6
  ```
- **Compare Negate (CMN)**
  ```assembly
  CMN R3, R1 -> R3 - (-R1) -> R3 + R1
  ```
  - If result is 0, `Z` and `C` flags set to 0.

## Hexadecimal

- Use `0x` before a hex number.
- `0xFFFFFFFF` → Negative
- `0x0FFFFFFF` → Positive
- If first bit is `0` → Positive; `F` → Negative

## ADD, ADDS, ADC

- `ADDS` → Sets carry flag when there's a carry.
- `ADC` → ADD with Carry (requires `ADDS` before to set carry bit)

## Directives

- `.TEXT` → Non-executable (for assembler to define data types & variables)
- `.CODE` → Executable (for assembler to execute instructions)
- `.WORD` → Initializes data and reserves required memory
- `.END` → Marks the physical end of assembler

## Load & Store Instructions

- `LDR` → Load register
- `STR` → Store register
- **Memory locations cannot be specified in multiple instructions**
- **Only `LDR` and `STR` can use memory locations**
- **Memory location always on right and operand on left in `LDR` & `STR`**

## Branch Instructions

- `BEQ` → Branch if equal (`Z = 1`)
- `BNE` → Branch if not equal
- `B` → Unconditional Branch
- `BCC` → Branch if Carry Clear
- `BCS` → Branch if Carry Set

## Shift and Rotate Instructions

### LSL & LSR

- `LSL R1, #1` → Logical Shift Left (Multiply by 2)
- `LSR R1, #1` → Logical Shift Right (Divide by 2)

### ASR & ROR

- `ASR R1, #1` → Arithmetic Shift Right (Retains sign bit)
- `ROR R1, #1` → Rotate Right

## Stack Operations

- `PUSH` → Store register values onto the stack
- `POP` → Retrieve register values from the stack

## ARM Registers

- `R0 - R12` → General-purpose registers
- `R13 (SP)` → Stack Pointer
- `R14 (LR)` → Link Register
- `R15 (PC)` → Program Counter

## Flag Bits

- **N (Negative)** → Set if result is negative
- **Z (Zero)** → Set if result is zero
- **C (Carry)** → Set if carry occurs in an addition or subtraction
- **V (Overflow)** → Set if signed overflow occurs

## BL and Link Register

- `BL` (Branch with Link) → Calls a subroutine
- Stores return address in `LR` (R14)

## Function Call in Assembly

```assembly
BL FUNC  ; Calls FUNC and stores return address in LR
...
FUNC:
    ...
    MOV PC, LR  ; Return to caller
```

## Stack Frame

- Push registers before modifying them in a function
- Pop them before returning

## Loop Implementation

```assembly
LOOP:
    CMP R0, #0
    BEQ END_LOOP
    SUBS R0, R0, #1
    B LOOP
END_LOOP:
```

```

```
