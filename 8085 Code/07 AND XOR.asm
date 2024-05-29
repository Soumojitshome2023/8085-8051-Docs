; Perform AND and XOR operations on two data bytes stored in general-purpose registers and store the results in memory locations 8500H and 8501H

MVI B, 20H    ; Load the data byte 20H into register B
MOV A, B      ; Move the data from register B to accumulator A
MVI C, 21H    ; Load the data byte 21H into register C
ANA C         ; Perform the AND operation between the data in accumulator A and register C
STA 8500H     ; Store the result of the AND operation in memory location 8500H
MOV A, B      ; Move the data from register B to accumulator A
XRA C         ; Perform the XOR operation between the data in accumulator A and register C
STA 8501H     ; Store the result of the XOR operation in memory location 8501H

; End of the code
