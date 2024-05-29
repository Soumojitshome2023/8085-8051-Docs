; Exchange the upper and lower nibbles of a data byte and store the result in internal location 40h

MOV R0, #40h    ; Load the address 40h into register R0.
MOV A, @R0      ; Move the content of the memory location pointed by R0 to the accumulator A.
SWAP A          ; Swap the upper and lower nibbles of the data stored in accumulator A.
MOV @R0, A      ; Move the content of the accumulator A to the memory location pointed by R0.
LCALL00BBh     ; Call a subroutine located at memory address 00BBh.
