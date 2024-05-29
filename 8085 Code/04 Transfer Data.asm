; Transfer one data byte from memory location 9000H to 9001H using direct addressing

LDA 9000H  ; Load the value from memory location 9000H into the accumulator A
STA 9001H  ; Store the value in the accumulator A into memory location 9001H

; End of the code



; Transfer one data byte from memory location 9000H to 9001H using indirect addressing

LXI D, 9000H   ; Load the immediate value 9000H into register pair DE
LXI B, 9001H   ; Load the immediate value 9001H into register pair BC
LDAX D         ; Load the value from the memory location pointed to by DE (9000H) into the accumulator A
STAX B         ; Store the value in the accumulator A into the memory location pointed to by BC (9001H)

; End of the code

