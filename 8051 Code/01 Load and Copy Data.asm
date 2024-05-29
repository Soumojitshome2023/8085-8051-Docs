; Load (40) base 10 to 'A' and Copy Data of A at location 8700

MOV A, #28           ; Load the decimal value 40 (28h) into accumulator register A.
MOV DPTR, #8700      ; Load the memory address 8700 into the data pointer register.
MOVX @DPTR, A         ; Copy the content of accumulator A to the memory location pointed by the data pointer.

LCALL00BBh          ; Call a subroutine located at memory address 00BBh. 
