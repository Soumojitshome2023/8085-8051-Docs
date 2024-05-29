; Transfer Block of 16 bit Data which are stored from 9500h into a new location 9600h

        LXI B, 9500H   ; Load the source address into register pair BC
        LXI D, 9600H   ; Load the destination address into register pair DE
        MVI L, 10H     ; Set the loop counter to 10H (16 in decimal)
loop:   LDAX B         ; Load the 16-bit data from the memory location pointed by BC into accumulator A
        STAX D         ; Store the 16-bit data from accumulator A into the memory location pointed by DE
        INX B          ; Increment the source address
        INX D          ; Increment the destination address
        DCR L          ; Decrement the loop counter
        JNZ loop       ; Jump back to loop if the loop counter is not zero


; End of the code
