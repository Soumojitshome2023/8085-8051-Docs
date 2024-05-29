; Write an assembly code to subtract two data bytes stored in memory locations starting from D600H. Store the result in memory location B000H.


LDA D600H    ; Load the data byte from memory location D600H into the accumulator
MOV B, A     ; Move the data from accumulator A to register B
LDA D601H    ; Load the data byte from memory location D601H into the accumulator
SUB B        ; Subtract the data in register B from the accumulator A
STA B000H    ; Store the result in the memory location B000H

; End of the code
