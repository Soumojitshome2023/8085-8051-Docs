;Interchange the values of two registers

; Initial values of registers B and C
MVI B, 09H  ; Load immediate value 09H into register B
MVI C, 11H  ; Load immediate value 11H into register C


; Interchange the values of registers B and C
MOV A, B    ; Copy the value in register B to register A (A = 09H)
MOV B, C    ; Copy the value in register C to register B (B = 11H)
MOV C, A    ; Copy the value in register A (initially from B) to register C (C = 09H)

; End of the code
