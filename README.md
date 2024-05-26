### 8085 Instructions Table

| **Instruction**  | **Mnemonic** | **Use**                                                                | **Example**                                                                         |
| ---------------------- | ------------------ | ---------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| **Load/Store**   |                    |                                                                              |                                                                                           |
| Load Accumulator       | `LDA`            | Load data from a specified memory address into the accumulator.              | `LDA 2500H`– Loads the accumulator with the content at memory address 2500H.           |
| Store Accumulator      | `STA`            | Store the content of the accumulator into a specified memory address.        | `STA 2500H`– Stores the accumulator content at memory address 2500H.                   |
| Move Immediate         | `MVI`            | Move immediate data into a register or memory.                               | `MVI A, 32H`– Moves 32H into the accumulator.                                          |
| Load Immediate         | `LXI`            | Load a register pair with immediate data.                                    | `LXI H, 3050H`– Loads 3050H into register pair HL.                                     |
| **Arithmetic**   |                    |                                                                              |                                                                                           |
| Add                    | `ADD`            | Add the content of a register to the accumulator.                            | `ADD B`– Adds the content of register B to the accumulator.                            |
| Add with Carry         | `ADC`            | Add the content of a register and the carry flag to the accumulator.         | `ADC B`– Adds the content of register B and the carry flag to the accumulator.         |
| Subtract               | `SUB`            | Subtract the content of a register from the accumulator.                     | `SUB B`– Subtracts the content of register B from the accumulator.                     |
| Subtract with Borrow   | `SBB`            | Subtract the content of a register and the borrow flag from the accumulator. | `SBB B`– Subtracts the content of register B and the borrow flag from the accumulator. |
| Increment              | `INR`            | Increment the content of a register by 1.                                    | `INR A`– Increments the content of the accumulator by 1.                               |
| Decrement              | `DCR`            | Decrement the content of a register by 1.                                    | `DCR A`– Decrements the content of the accumulator by 1.                               |
| **Logical**      |                    |                                                                              |                                                                                           |
| Logical AND            | `ANA`            | Perform logical AND operation between the accumulator and a register.        | `ANA B`– ANDs the content of register B with the accumulator.                          |
| Logical OR             | `ORA`            | Perform logical OR operation between the accumulator and a register.         | `ORA B`– ORs the content of register B with the accumulator.                           |
| Logical XOR            | `XRA`            | Perform logical XOR operation between the accumulator and a register.        | `XRA B`– XORs the content of register B with the accumulator.                          |
| Compare                | `CMP`            | Compare the content of a register with the accumulator.                      | `CMP B`– Compares the content of register B with the accumulator.                      |
| Complement Accumulator | `CMA`            | Complement (invert) all the bits of the accumulator.                         | `CMA`– Inverts all bits in the accumulator.                                            |
| **Branching**    |                    |                                                                              |                                                                                           |
| Jump                   | `JMP`            | Jump to a specified memory address unconditionally.                          | `JMP 2500H`– Jumps to memory address 2500H.                                            |
| Jump if Zero           | `JZ`             | Jump to a specified memory address if the zero flag is set.                  | `JZ 2500H`– Jumps to memory address 2500H if zero flag is set.                         |
| Jump if Not Zero       | `JNZ`            | Jump to a specified memory address if the zero flag is not set.              | `JNZ 2500H`– Jumps to memory address 2500H if zero flag is not set.                    |
| Call                   | `CALL`           | Call a subroutine at a specified memory address.                             | `CALL 2500H`– Calls subroutine at memory address 2500H.                                |
| Return                 | `RET`            | Return from a subroutine.                                                    | `RET`– Returns to the next instruction after the call.                                 |
| **Control**      |                    |                                                                              |                                                                                           |
| Set Carry              | `STC`            | Set the carry flag.                                                          | `STC`– Sets the carry flag to 1.                                                       |
| Clear Carry            | `CMC`            | Complement the carry flag.                                                   | `CMC`– Inverts the carry flag.                                                         |
| No Operation           | `NOP`            | No operation (used for timing adjustments).                                  | `NOP`– Does nothing for 1 machine cycle.                                               |



| **Instruction**          | **Mnemonic** | **Use**                                                                | **Example**                                               |
| ------------------------------ | ------------------ | ---------------------------------------------------------------------------- | --------------------------------------------------------------- |
| **Data Transfer**        |                    |                                                                              |                                                                 |
| Load Accumulator               | `LDA`            | Load data from a specified memory address into the accumulator.              | `LDA 2500H`– Load content from 2500H to A.                   |
| Store Accumulator              | `STA`            | Store the content of the accumulator into a specified memory address.        | `STA 2500H`– Store content of A to 2500H.                    |
| Move Immediate                 | `MVI`            | Move immediate data into a register or memory.                               | `MVI A, 32H`– Move 32H to A.                                 |
| Load Immediate                 | `LXI`            | Load a register pair with immediate data.                                    | `LXI H, 3050H`– Load 3050H into HL pair.                     |
| Move                           | `MOV`            | Move data between registers or between memory and register.                  | `MOV A, B`– Move content of B to A.                          |
| Load Accumulator Direct        | `LDAX`           | Load data from memory into the accumulator indirectly.                       | `LDAX B`– Load content of memory pointed by BC pair to A.    |
| Store Accumulator Direct       | `STAX`           | Store data from the accumulator into memory indirectly.                      | `STAX D`– Store content of A into memory pointed by DE pair. |
| Exchange Registers             | `XCHG`           | Exchange the contents of HL and DE register pairs.                           | `XCHG`– HL pair content is exchanged with DE pair.           |
| **Arithmetic**           |                    |                                                                              |                                                                 |
| Add                            | `ADD`            | Add the content of a register to the accumulator.                            | `ADD B`– Add content of B to A.                              |
| Add with Carry                 | `ADC`            | Add the content of a register and the carry flag to the accumulator.         | `ADC B`– Add content of B and carry flag to A.               |
| Subtract                       | `SUB`            | Subtract the content of a register from the accumulator.                     | `SUB B`– Subtract content of B from A.                       |
| Subtract with Borrow           | `SBB`            | Subtract the content of a register and the borrow flag from the accumulator. | `SBB B`– Subtract content of B and borrow flag from A.       |
| Increment                      | `INR`            | Increment the content of a register or memory by 1.                          | `INR A`– Increment content of A by 1.                        |
| Decrement                      | `DCR`            | Decrement the content of a register or memory by 1.                          | `DCR A`– Decrement content of A by 1.                        |
| Add Immediate                  | `ADI`            | Add immediate data to the accumulator.                                       | `ADI 05H`– Add 05H to A.                                     |
| Add with Carry Immediate       | `ACI`            | Add immediate data and carry flag to the accumulator.                        | `ACI 05H`– Add 05H and carry flag to A.                      |
| Subtract Immediate             | `SUI`            | Subtract immediate data from the accumulator.                                | `SUI 05H`– Subtract 05H from A.                              |
| Subtract with Borrow Immediate | `SBI`            | Subtract immediate data and borrow flag from the accumulator.                | `SBI 05H`– Subtract 05H and borrow flag from A.              |
| **Logical**              |                    |                                                                              |                                                                 |
| Logical AND                    | `ANA`            | Perform logical AND operation between the accumulator and a register.        | `ANA B`– AND content of B with A.                            |
| Logical OR                     | `ORA`            | Perform logical OR operation between the accumulator and a register.         | `ORA B`– OR content of B with A.                             |
| Logical XOR                    | `XRA`            | Perform logical XOR operation between the accumulator and a register.        | `XRA B`– XOR content of B with A.                            |
| Compare                        | `CMP`            | Compare the content of a register with the accumulator.                      | `CMP B`– Compare content of B with A.                        |
| Complement Accumulator         | `CMA`            | Complement (invert) all the bits of the accumulator.                         | `CMA`– Invert all bits in A.                                 |
| Rotate Accumulator Left        | `RLC`            | Rotate all bits of the accumulator left.                                     | `RLC`– Rotate A left.                                        |
| Rotate Accumulator Right       | `RRC`            | Rotate all bits of the accumulator right.                                    | `RRC`– Rotate A right.                                       |
| Rotate Left through Carry      | `RAL`            | Rotate all bits of the accumulator left through the carry flag.              | `RAL`– Rotate A left through carry.                          |
| Rotate Right through Carry     | `RAR`            | Rotate all bits of the accumulator right through the carry flag.             | `RAR`– Rotate A right through carry.                         |
| **Branching**            |                    |                                                                              |                                                                 |
| Jump                           | `JMP`            | Jump to a specified memory address unconditionally.                          | `JMP 2500H`– Jump to 2500H.                                  |
| Jump if Zero                   | `JZ`             | Jump to a specified memory address if the zero flag is set.                  | `JZ 2500H`– Jump to 2500H if zero flag is set.               |
| Jump if Not Zero               | `JNZ`            | Jump to a specified memory address if the zero flag is not set.              | `JNZ 2500H`– Jump to 2500H if zero flag is not set.          |
| Jump if Carry                  | `JC`             | Jump to a specified memory address if the carry flag is set.                 | `JC 2500H`– Jump to 2500H if carry flag is set.              |
| Jump if No Carry               | `JNC`            | Jump to a specified memory address if the carry flag is not set.             | `JNC 2500H`– Jump to 2500H if carry flag is not set.         |
| Jump if Minus                  | `JM`             | Jump to a specified memory address if the sign flag is set.                  | `JM 2500H`– Jump to 2500H if sign flag is set.               |
| Jump if Positive               | `JP`             | Jump to a specified memory address if the sign flag is not set.              | `JP 2500H`– Jump to 2500H if sign flag is not set.           |
| Jump if Parity Even            | `JPE`            | Jump to a specified memory address if parity is even.                        | `JPE 2500H`– Jump to 2500H if parity is even.                |
| Jump if Parity Odd             | `JPO`            | Jump to a specified memory address if parity is odd.                         | `JPO 2500H`– Jump to 2500H if parity is odd.                 |
| Call                           | `CALL`           | Call a subroutine at a specified memory address.                             | `CALL 2500H`– Call subroutine at 2500H.                      |
| Return                         | `RET`            | Return from a subroutine.                                                    | `RET`– Return from subroutine.                               |
| Return if Zero                 | `RZ`             | Return from a subroutine if the zero flag is set.                            | `RZ`– Return if zero flag is set.                            |
| Return if Not Zero             | `RNZ`            | Return from a subroutine if the zero flag is not set.                        | `RNZ`– Return if zero flag is not set.                       |
| Return if Carry                | `RC`             | Return from a subroutine if the carry flag is set.                           | `RC`– Return if carry flag is set.                           |
| Return if No Carry             | `RNC`            | Return from a subroutine if the carry flag is not set.                       | `RNC`– Return if carry flag is not set.                      |
| Return if Minus                | `RM`             | Return from a subroutine if the sign flag is set.                            | `RM`– Return if sign flag is set.                            |
| Return if Positive             | `RP`             | Return from a subroutine if the sign flag is not set.                        | `RP`– Return if sign flag is not set.                        |
| Return if Parity Even          | `RPE`            | Return from a subroutine if parity is even.                                  | `RPE`– Return if parity is even.                             |
| Return if Parity Odd           | `RPO`            | Return from a subroutine if parity is odd.                                   | `RPO`– Return if parity is odd.                              |
| **Control**              |                    |                                                                              |                                                                 |
| Set Carry                      | `STC`            | Set the carry flag.                                                          | `STC`– Set carry flag to 1.                                  |
| Complement Carry               | `CMC`            | Complement (invert) the carry flag.                                          | `CMC`– Invert carry flag.                                    |
| No Operation                   | `NOP`            | No operation (used for timing adjustments).                                  | `NOP`– No operation.                                         |
| Halt                           | `HLT`            | Halt the processor.                                                          | `HLT`– Halt the processor.                                   |
| Enable Interrupts              | `EI`             | Enable interrupts.                                                           | `EI`– Enable interrupts.                                     |
| Disable Interrupts             | `DI`             | Disable interrupts.                                                          | `DI`– Disable interrupts.                                    |
| **Input/Output**         |                    |                                                                              |                                                                 |
| Input                          | `IN`             | Read data from a specified input port into the accumulator.                  | `IN 01H`– Read data from port 01H into A.                    |
| Output                         | `OUT`            | Send data from the accumulator to a specified output port.                   | `OUT 01H`– Send data from A to port 01H.                     |





### How to Use This Table

1. **Instruction** : The type of operation you want to perform (e.g., load, store, arithmetic).
2. **Mnemonic** : The shorthand representation used in assembly language (e.g., `LDA`, `ADD`).
3. **Use** : A brief description of what the instruction does.
4. **Example** : A simple example of how the instruction is used in a program.

# 8085 Microprocessor Instructions

This document provides a summary of the key instructions for the 8085 microprocessor. Each instruction includes its mnemonic, a brief description of its use, and an example.

## Load and Store Instructions

- **LDA**: Load data from a specified memory address into the accumulator.

  - **Example**: `LDA 2500H` – Loads the accumulator with the content at memory address 2500H.
- **STA**: Store the content of the accumulator into a specified memory address.

  - **Example**: `STA 2500H` – Stores the accumulator content at memory address 2500H.

## Arithmetic Instructions

- **ADD**: Add the content of a register to the accumulator.

  - **Example**: `ADD B` – Adds the content of register B to the accumulator.
- **SUB**: Subtract the content of a register from the accumulator.

  - **Example**: `SUB B` – Subtracts the content of register B from the accumulator.

## Logical Instructions

- **ANA**: Perform logical AND operation between the accumulator and a register.

  - **Example**: `ANA B` – ANDs the content of register B with the accumulator.
- **CMA**: Complement (invert) all the bits of the accumulator.

  - **Example**: `CMA` – Inverts all bits in the accumulator.

## Branching Instructions

- **JMP**: Jump to a specified memory address unconditionally.

  - **Example**: `JMP 2500H` – Jumps to memory address 2500H.
- **CALL**: Call a subroutine at a specified memory address.

  - **Example**: `CALL 2500H` – Calls subroutine at memory address 2500H.

## Control Instructions

- **STC**: Set the carry flag.

  - **Example**: `STC` – Sets the carry flag to 1.
- **NOP**: No operation (used for timing adjustments).

  - **Example**: `NOP` – Does nothing for 1 machine cycle.



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
