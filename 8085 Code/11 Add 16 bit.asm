; Add two 16-bit numbers 1234H and ABCDH stored in BC and DE registers, respectively. Store sum and carry in consecutive memory locations starting from 9700H.

        LXI B, 1234H   ; Load the first 16-bit number 1234H into register pair BC
        LXI D, ABCDH   ; Load the second 16-bit number ABCDH into register pair DE
        MOV A, C       ; Move the low byte of the first number (1234H) to accumulator A
        ADD E          ; Add the low byte of the second number (ABCDH) to accumulator A
        MOV L, A       ; Move the result (sum) to register L
        MVI C, 00H     ; Clear the carry flag
        MOV A, B       ; Move the high byte of the first number (1234H) to accumulator A
        ADD D          ; Add the high byte of the second number (ABCDH) to accumulator A
        JNC loop       ; Jump to loop if no carry
        INR C          ; Increment carry if carry occurred
loop:   MOV H, A       ; Move the result (sum) to register H

        SHLD 9700H     ; Store the sum in memory location 9700H (low byte) and 9701H (high byte)
        MOV A, C       ; Move the carry to accumulator A
        STA 9702H      ; Store the carry in memory location 9702H

; End of the code
