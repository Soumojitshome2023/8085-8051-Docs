; Exchange upper and lower nibble of a data byte stored in 8600h, store result at location 8620h

MOV DPTR, #8600h     ; Load the address 8600h into the data pointer register.
MOVX A, @DPTR        ; Move the content of the memory location pointed by DPTR to the accumulator A.
SWAP A               ; Swap the upper and lower nibbles of the data stored in accumulator A.
MOV DPTR, #8620h     ; Load the address 8620h into the data pointer register.
MOVX @DPTR, A        ; Move the content of the accumulator A to the memory location pointed by DPTR.
LCALL00BBh           ; Call a subroutine located at memory address 00BBh. 
