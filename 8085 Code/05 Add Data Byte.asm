; Add two data bytes stored in general purpose registers and store the result in a memory location

MVI B, 67H  ; Load the first data byte into register B
MVI C, 12H   ; Load the second data byte into register C
MOV A, B       ; Move the value from register B to accumulator A
ADD C          ; Add the value in register C to the accumulator A
STA ABCOH     ; Store the result in the memory location specified by 'result'

; End of the code
