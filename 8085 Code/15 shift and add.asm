;multiply two 8-bit numbers shift and add method


LXI H, 8000H      ; Point to the first operand
MOV E, M          ; Load the first operand into register E
MVI D, 00H        ; Clear register D
INX H             ; Point to the next memory location
MOV A, M          ; Load the next operand into register A
MVI C, 08H        ; Initialize counter with 08H
LXI H, 0000H      ; Clear the HL register pair

LOOP: 
RRC              ; Rotate the accumulator content to the right
JNC SKIP         ; If carry flag is 0, jump to SKIP
DAD D            ; Add DE to HL

SKIP: 
XCHG             ; Exchange DE and HL
DAD H            ; Add HL to HL (HL = HL * 2)
XCHG             ; Exchange DE and HL back
DCR C            ; Decrement counter C
JNZ LOOP         ; If zero flag is not set, jump to LOOP

SHLD 8050H        ; Store the result from HL to memory location 8050H
