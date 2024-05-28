# 8085 Instructions Table

| **Instruction**                | **Mnemonic** | **Use**                                                                                                                                                                                                                                                                                                        | **Example**                                                        |
| ------------------------------ | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| **Data Transfer**              |              |                                                                                                                                                                                                                                                                                                                |                                                                    |
| Load Accumulator               | `LDA`        | Load data from a specified memory address into the accumulator.                                                                                                                                                                                                                                                | `LDA 2500H`– Load content from 2500H to A.                         |
| Store Accumulator              | `STA`        | Store the content of the accumulator into a specified memory address.                                                                                                                                                                                                                                          | `STA 2500H`– Store content of A to 2500H.                          |
| Move Immediate                 | `MVI`        | Move immediate data into a register or memory.                                                                                                                                                                                                                                                                 | `MVI A, 32H`– Move 32H to A.                                       |
| Load Immediate                 | `LXI`        | Load a register pair with immediate data.                                                                                                                                                                                                                                                                      | `LXI H, 3050H`– Load 3050H into HL pair.                           |
| Move                           | `MOV`        | Move data between registers or between memory and register.                                                                                                                                                                                                                                                    | `MOV A, B`– Move content of B to A.                                |
| Load Accumulator Direct        | `LDAX`       | Load data from memory into the accumulator indirectly.                                                                                                                                                                                                                                                         | `LDAX B`– Load content of memory pointed by BC pair to A.          |
| Store Accumulator Direct       | `STAX`       | Store data from the accumulator into memory indirectly.                                                                                                                                                                                                                                                        | `STAX D`– Store content of A into memory pointed by DE pair.       |
| Exchange Registers             | `XCHG`       | Exchange the contents of HL and DE register pairs.                                                                                                                                                                                                                                                             | `XCHG`– HL pair content is exchanged with DE pair.                 |
| Store HL Direct                | `SHLD`       | Store the contents of the HL register pair into a specified memory address and the next address.                                                                                                                                                                                                               | `SHLD 2500H` – Store H in 2500H, L in 2501H.                       |
| Move Memory to Accumulator     | `MOV A, M`   | Move the value at the memory location pointed by HL register pair to the accumulator.                                                                                                                                                                                                                          | `MOV A, M` – Move value from address pointed by HL to A.           |
| Move Accumulator to Memory     | `MOV M, C`   | Move the contents of register C to the memory location pointed by the HL register pair.                                                                                                                                                                                                                        | `MOV M, C` – Move content of C to memory pointed by HL.            |
| **Arithmetic**                 |              |                                                                                                                                                                                                                                                                                                                |                                                                    |
| Add                            | `ADD`        | Add the content of a register to the accumulator.                                                                                                                                                                                                                                                              | `ADD B`– Add content of B to A.                                    |
| Add with Carry                 | `ADC`        | Add the content of a register and the carry flag to the accumulator.                                                                                                                                                                                                                                           | `ADC B`– Add content of B and carry flag to A.                     |
| Subtract                       | `SUB`        | Subtract the content of a register from the accumulator.                                                                                                                                                                                                                                                       | `SUB B`– Subtract content of B from A.                             |
| Subtract with Borrow           | `SBB`        | Subtract the content of a register and the borrow flag from the accumulator.                                                                                                                                                                                                                                   | `SBB B`– Subtract content of B and borrow flag from A.             |
| Increment                      | `INR`        | Increment the content of a register or memory by 1.                                                                                                                                                                                                                                                            | `INR A`– Increment content of A by 1.                              |
| Increment Memory               | `INR M`      | Increment the content of the memory location pointed by HL by one.                                                                                                                                                                                                                                             | `INR M` – Increment memory pointed by HL by 1                      |
| Decrement                      | `DCR`        | Decrement the content of a register or memory by 1.                                                                                                                                                                                                                                                            | `DCR A`– Decrement content of A by 1.                              |
| Decrement Memory               | `DCR M`      | Decrement the content of the memory location pointed by HL by one.                                                                                                                                                                                                                                             | `DCR M` – Decrement memory pointed by HL by 1                      |
| Add Immediate                  | `ADI`        | Add immediate data to the accumulator.                                                                                                                                                                                                                                                                         | `ADI 05H`– Add 05H to A.                                           |
| Decrement Pair                 | `DCX`        | Decrement the contents of a 16-bit register pair by one.                                                                                                                                                                                                                                                       | `DCX H` – Decrement content of HL pair.                            |
| Increment Pair                 | `INX`        | Increment the contents of a 16-bit register pair by one.                                                                                                                                                                                                                                                       | `INX D` – Increment content of DE pair.                            |
| Add with Carry Immediate       | `ACI`        | Add immediate data and carry flag to the accumulator.                                                                                                                                                                                                                                                          | `ACI 05H`– Add 05H and carry flag to A.                            |
| Subtract Immediate             | `SUI`        | Subtract immediate data from the accumulator.                                                                                                                                                                                                                                                                  | `SUI 05H`– Subtract 05H from A.                                    |
| Subtract with Borrow Immediate | `SBI`        | Subtract immediate data and borrow flag from the accumulator.                                                                                                                                                                                                                                                  | `SBI 05H`– Subtract 05H and borrow flag from A.                    |
| Add Memory to Accumulator      | `ADD M`      | Add the value at the memory location pointed by HL register pair to the accumulator.                                                                                                                                                                                                                           | `ADD M` – Add value from address pointed by HL to A.               |
| Double Add                     | `DAD`        | Add the contents of a register pair to the HL register pair.                                                                                                                                                                                                                                                   | `DAD B` – Add BC to HL.                                            |
| **Logical**                    |              |                                                                                                                                                                                                                                                                                                                |                                                                    |
| Compare Immediate              | `CPI`        | Compare the content of the accumulator with an immediate 8-bit data.<br />If the accumulator is smaller than, equal to, or larger than the immediate value in the CPI instruction:<br />1. If smaller: Carry flag (CY) is set.<br />2. If equal: Zero flag (Z) is set.<br />3. If larger: Neither flag is set. | `CPI 3AH` – Compare A with 3AH.                                    |
| Logical XOR Immediate          | `XRI`        | Perform logical XOR operation between the accumulator and an immediate 8-bit data.                                                                                                                                                                                                                             | `XRI 3AH` – XOR A with 3AH.                                        |
| Logical AND                    | `ANA`        | Perform logical AND operation between the accumulator and a register.                                                                                                                                                                                                                                          | `ANA B`– AND content of B with A.                                  |
| Logical AND with Memory        | `ANA M`      | Perform a logical AND operation between the accumulator and the content of the memory location pointed by HL.                                                                                                                                                                                                  | `ANA M` – Perform logical AND between A and memory at HL.          |
| Logical AND Immediate          | `ANI`        | Perform logical AND operation between the accumulator and an immediate 8-bit data.                                                                                                                                                                                                                             | `ANI 3AH` – AND A with 3AH.                                        |
| Logical OR                     | `ORA`        | Perform logical OR operation between the accumulator and a register.                                                                                                                                                                                                                                           | `ORA B`– OR content of B with A.                                   |
| Logical OR with Immediate      | `ORI`        | Perform a logical OR operation between the accumulator and an immediate value.                                                                                                                                                                                                                                 | `ORI 0FH` – Perform logical OR between A and immediate value 0FH.  |
| Logical XOR                    | `XRA`        | Perform logical XOR operation between the accumulator and a register.<br />After XRA Cy=0, Ac=0                                                                                                                                                                                                                | `XRA B`– XOR content of B with A.                                  |
| Logical XOR with Memory        | `XRA M`      | Perform a logical XOR operation between the accumulator and the content of the memory location pointed by HL.                                                                                                                                                                                                  | `XRA M` – Perform logical XOR between A and memory at HL.          |
| Logical XOR with Immediate     | `XRI`        | Perform a logical XOR operation between the accumulator and an immediate value.                                                                                                                                                                                                                                | `XRI 0FH` – Perform logical XOR between A and immediate value 0FH. |
| Compare                        | `CMP`        | Compare the content of a register with the accumulator.                                                                                                                                                                                                                                                        | `CMP B`– Compare content of B with A.                              |
| Complement Accumulator         | `CMA`        | Complement (invert) all the bits of the accumulator.                                                                                                                                                                                                                                                           | `CMA`– Invert all bits in A.                                       |
| Rotate Accumulator Left        | `RLC`        | Rotate all bits of the accumulator left.                                                                                                                                                                                                                                                                       | `RLC`– Rotate A left.                                              |
| Rotate Accumulator Right       | `RRC`        | Rotate all bits of the accumulator right.                                                                                                                                                                                                                                                                      | `RRC`– Rotate A right.                                             |
| Rotate Left through Carry      | `RAL`        | Rotate all bits of the accumulator left through the carry flag.                                                                                                                                                                                                                                                | `RAL`– Rotate A left through carry.                                |
| Rotate Right through Carry     | `RAR`        | Rotate all bits of the accumulator right through the carry flag.                                                                                                                                                                                                                                               | `RAR`– Rotate A right through carry.                               |
| **Branching**                  |              |                                                                                                                                                                                                                                                                                                                |                                                                    |
| Jump                           | `JMP`        | Jump to a specified memory address unconditionally.                                                                                                                                                                                                                                                            | `JMP 2500H`– Jump to 2500H.                                        |
| Jump if Zero                   | `JZ`         | Jump to a specified memory address if the zero flag is set.                                                                                                                                                                                                                                                    | `JZ 2500H`– Jump to 2500H if zero flag is set.                     |
| Jump if Not Zero               | `JNZ`        | Jump to a specified memory address if the zero flag is not set.                                                                                                                                                                                                                                                | `JNZ 2500H`– Jump to 2500H if zero flag is not set.                |
| Jump if Carry                  | `JC`         | Jump to a specified memory address if the carry flag is set.                                                                                                                                                                                                                                                   | `JC 2500H`– Jump to 2500H if carry flag is set.                    |
| Jump if No Carry               | `JNC`        | Jump to a specified memory address if the carry flag is not set.                                                                                                                                                                                                                                               | `JNC 2500H`– Jump to 2500H if carry flag is not set.               |
| Jump if Minus                  | `JM`         | Jump to a specified memory address if the sign flag is set.                                                                                                                                                                                                                                                    | `JM 2500H`– Jump to 2500H if sign flag is set.                     |
| Jump if Positive               | `JP`         | Jump to a specified memory address if the sign flag is not set.                                                                                                                                                                                                                                                | `JP 2500H`– Jump to 2500H if sign flag is not set.                 |
| Jump if Parity Even            | `JPE`        | Jump to a specified memory address if parity is even.                                                                                                                                                                                                                                                          | `JPE 2500H`– Jump to 2500H if parity is even.                      |
| Jump if Parity Odd             | `JPO`        | Jump to a specified memory address if parity is odd.                                                                                                                                                                                                                                                           | `JPO 2500H`– Jump to 2500H if parity is odd.                       |
| Call                           | `CALL`       | Call a subroutine at a specified memory address.                                                                                                                                                                                                                                                               | `CALL 2500H`– Call subroutine at 2500H.                            |
| Return                         | `RET`        | Return from a subroutine.                                                                                                                                                                                                                                                                                      | `RET`– Return from subroutine.                                     |
| Return if Zero                 | `RZ`         | Return from a subroutine if the zero flag is set.                                                                                                                                                                                                                                                              | `RZ`– Return if zero flag is set.                                  |
| Return if Not Zero             | `RNZ`        | Return from a subroutine if the zero flag is not set.                                                                                                                                                                                                                                                          | `RNZ`– Return if zero flag is not set.                             |
| Return if Carry                | `RC`         | Return from a subroutine if the carry flag is set.                                                                                                                                                                                                                                                             | `RC`– Return if carry flag is set.                                 |
| Return if No Carry             | `RNC`        | Return from a subroutine if the carry flag is not set.                                                                                                                                                                                                                                                         | `RNC`– Return if carry flag is not set.                            |
| Return if Minus                | `RM`         | Return from a subroutine if the sign flag is set.                                                                                                                                                                                                                                                              | `RM`– Return if sign flag is set.                                  |
| Return if Positive             | `RP`         | Return from a subroutine if the sign flag is not set.                                                                                                                                                                                                                                                          | `RP`– Return if sign flag is not set.                              |
| Return if Parity Even          | `RPE`        | Return from a subroutine if parity is even.                                                                                                                                                                                                                                                                    | `RPE`– Return if parity is even.                                   |
| Return if Parity Odd           | `RPO`        | Return from a subroutine if parity is odd.                                                                                                                                                                                                                                                                     | `RPO`– Return if parity is odd.                                    |
| **Control**                    |              |                                                                                                                                                                                                                                                                                                                |                                                                    |
| Set Carry                      | `STC`        | Set the carry flag.                                                                                                                                                                                                                                                                                            | `STC`– Set carry flag to 1.                                        |
| Complement Carry               | `CMC`        | Complement (invert) the carry flag.                                                                                                                                                                                                                                                                            | `CMC`– Invert carry flag.                                          |
| No Operation                   | `NOP`        | No operation (used for timing adjustments).                                                                                                                                                                                                                                                                    | `NOP`– No operation.                                               |
| Halt                           | `HLT`        | Halt the processor.                                                                                                                                                                                                                                                                                            | `HLT`– Halt the processor.                                         |
| Enable Interrupts              | `EI`         | Enable interrupts.                                                                                                                                                                                                                                                                                             | `EI`– Enable interrupts.                                           |
| Disable Interrupts             | `DI`         | Disable interrupts.                                                                                                                                                                                                                                                                                            | `DI`– Disable interrupts.                                          |
| **Input/Output**               |              |                                                                                                                                                                                                                                                                                                                |                                                                    |
| Input                          | `IN`         | Read data from a specified input port into the accumulator.                                                                                                                                                                                                                                                    | `IN 01H`– Read data from port 01H into A.                          |
| Output                         | `OUT`        | Send data from the accumulator to a specified output port.                                                                                                                                                                                                                                                     | `OUT 01H`– Send data from A to port 01H.                           |

---

### How to Use This Table

1. **Instruction** : The type of operation you want to perform (e.g., load, store, arithmetic).
2. **Mnemonic** : The shorthand representation used in assembly language (e.g., `LDA`, `ADD`).
3. **Use** : A brief description of what the instruction does.
4. **Example** : A simple example of how the instruction is used in a program.

# 8085 Microprocessor Instructions

This document provides a comprehensive summary of the instructions for the 8085 microprocessor. Each instruction includes its mnemonic, a brief description of its use, and an example.

## Data Transfer Instructions

- **LDA**: Load data from a specified memory address into the accumulator.

  - **Example**: `LDA 2500H` – Load content from 2500H to A.
- **STA**: Store the content of the accumulator into a specified memory address.

  - **Example**: `STA 2500H` – Store content of A to 2500H.
- **MVI**: Move immediate data into a register or memory.

  - **Example**: `MVI A, 32H` – Move 32H to A.

## Arithmetic Instructions

- **ADD**: Add the content of a register to the accumulator.

  - **Example**: `ADD B` – Add content of B to A.
- **SUB**: Subtract the content of a register from the accumulator.

  - **Example**: `SUB B` – Subtract content of B from A.

## Logical Instructions

- **ANA**: Perform logical AND operation between the accumulator and a register.

  - **Example**: `ANA B` – AND content of B with A.
- **CMA**: Complement (invert) all the bits of the accumulator.

  - **Example**: `CMA` – Invert all bits in A.

## Branching Instructions

- **JMP**: Jump to a specified memory address unconditionally.

  - **Example**: `JMP 2500H` – Jump to 2500H.
- **CALL**: Call a subroutine at a specified memory address.

  - **Example**: `CALL 2500H` – Call subroutine at 2500H.

## Control Instructions

- **STC**: Set the carry flag.

  - **Example**: `STC` – Set carry flag to 1.
- **NOP**: No operation (used for timing adjustments).

  - **Example**: `NOP` – No operation.

---

# Intel 8085 Microprocessor Architecture Overview


The Intel 8085 microprocessor is a widely used 8-bit microprocessor introduced by Intel in 1976. It was one of the earliest microprocessors to gain widespread adoption and played a significant role in the development of early personal computing and embedded systems.


### Registers
- Accumulator (A)
- General Purpose Registers (B, C, D, E, H, L)
- Stack Pointer (SP)
- Program Counter (PC)
- Flags (Sign, Zero, Auxiliary Carry, Parity, Carry)

### Arithmetic and Logic Unit (ALU)
- Performs arithmetic and logic operations.

### Control Unit
- Decodes instructions and generates control signals.

### Memory
- 16-bit address bus, allowing access to 64KB of memory.
- Organized into 8KB segments.

### Instruction Set
- Includes data movement, arithmetic, logic, branching, and I/O operations.

### Interrupts
- Supports five interrupts: TRAP, RST 7.5, RST 6.5, RST 5.5, INTR.

### Serial I/O Ports
- SOD (Serial Output Data) and SID (Serial Input Data).

### Control Signals
- Manage data flow between components.

### Bus Structure
- 8-bit data bus and 16-bit address bus.

## Modes of Operation
- Minimum Mode
- Maximum Mode

## Requirements
- +5V DC power supply
- Single-phase clock signal


---


<iframe width="560" height="315" src="https://www.youtube.com/embed/98Q2UwiFB70?si=TE-BG2ulZ2JmZCdA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

# 8085 Microprocessor Commands

## Kuruganti Shorthand Notation

1.  Downloading Command :  `L0000` Enter
2.  Assembly Program Checking : `D8000` Enter
3.  Run the Program :  `G8000` Enter
4.  Register Check - R(Register Name) :  `RB` Enter
5.  Memory location checking and Data entry Command - M(Memory Address) :  `M9500` Enter

---