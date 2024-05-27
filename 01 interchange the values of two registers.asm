; Initial values of registers A and B

MVI B, 09H  ; Load initial value for register A
MVI C, 11H  ; Load initial value for register B

; Interchange the values of registers A and B

MOV A, B    ; Store the value of A in register C
MOV B, C    ; Move the value of B to A
MOV C, A    ; Move the value of C (initially A) to B

; End of the code
