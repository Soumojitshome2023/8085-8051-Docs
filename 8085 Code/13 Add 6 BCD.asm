; Add 6 BCD numbers stored from memory location 8500h, store BCD sum and number of times carry generated into memory locations 9000 and 9001

LXI H, 8500H    ; Load the starting address of BCD numbers into HL register pair
MVI C, 06H      ; Initialize loop counter with 6 (number of BCD numbers)
MVI B, 00H      ; Initialize carry count register with 0
MOV A, M        ; Load the first BCD number from memory into accumulator A
INX H           ; Move to the next memory location
back:           ; Loop to add BCD numbers
    ADD M       ; Add the BCD number from memory to accumulator A
    JNC loop    ; Jump to loop if no carry generated
    INR B       ; Increment carry count register
loop:
    DCR C       ; Decrement loop counter
    INX H       ; Move to the next memory location
    JNZ back    ; Jump back to back if loop counter is not zero
STA 9000H       ; Store BCD sum in memory location 9000
MOV A, B        ; Move carry count from register B to accumulator A
STA 9001H       ; Store number of times carry generated in memory location 9001

; End of the code
