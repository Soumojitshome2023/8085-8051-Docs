Write an assembly code to find the square of a number using a lookup table available in memory with the address starting at 9500H.

Lookup Table:
9500H: 00H (Square of 0)
9501H: 01H (Square of 1)
9502H: 04H (Square of 2)
9503H: 09H (Square of 3)
9504H: 10H (Square of 4)
9505H: 19H (Square of 5)
9506H: 24H (Square of 6)
9507H: 31H (Square of 7)
9508H: 40H (Square of 8)
9509H: 51H (Square of 9)



; Assume the number to be squared is stored in memory location 9045H
; Result should be stored in memory location 8070H

LXI H, 9500H     ; Load the base address of the lookup table into HL register pair
LXI D, 9045H     ; Load the memory location containing the number to be squared into DE register pair
LDAX D           ; Load the number to be squared from memory location 9045H into the accumulator
MOV L, A         ; Move the number from accumulator A to the L register
MOV A, M         ; Load the square of the number from the lookup table into the accumulator
STA 8070H        ; Store the result (square) in memory location 8070H

; End of the code

