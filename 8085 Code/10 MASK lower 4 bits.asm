; MASK lower 4 bits of an 8-bit number stored at memory location 9000H, store result in register D

LDA 9000H   ; Load the 8-bit number from memory location 9000H into the accumulator
ANI F0H     ; Mask the lower 4 bits by performing a logical AND operation with F0H
MOV D, A    ; Move the result into register D

; End of the code
