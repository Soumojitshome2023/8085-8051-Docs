; Exchange the locations of two numbers stored in 9500H and 9501H

LDA 9500H   ; Load the value from memory location 9500H into the accumulator (A)
MOV B, A    ; Move the value from the accumulator (A) to register B (B = value at 9500H)
LDA 9501H   ; Load the value from memory location 9501H into the accumulator (A)
STA 9500H   ; Store the value in the accumulator (A) into memory location 9500H (9500H = value at 9501H)
MOV A, B    ; Move the value from register B (which is the original value of 9500H) to the accumulator (A)
STA 9501H   ; Store the value in the accumulator (A) into memory location 9501H (9501H = original value at 9500H)

; End of the code
