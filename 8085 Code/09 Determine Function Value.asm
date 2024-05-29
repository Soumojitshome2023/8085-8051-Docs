; Write an ALP to determine F = X'y + Xy' on two data bytes which are stored in general purpose registers. Store the result in memory location 8600H.



MVI B, 0AH       ; Load the first data byte into register B
MVI C, 0BH       ; Load the second data byte into register C
MOV A, B         ; Move the data from register B to accumulator A
CMA              ; Take the one's complement of the data in the accumulator A (X')
ANA C            ; Perform logical AND between X' and Y
MOV D, A         ; Move the result into register D
MOV A, C         ; Move the data from register C to accumulator A
CMA              ; Take the one's complement of the data in the accumulator A (Y')
ANA B            ; Perform logical AND between X and Y'
ORA D            ; Perform logical OR between (X' AND Y) and (X AND Y')
STA 8600H        ; Store the result in memory location 8600H