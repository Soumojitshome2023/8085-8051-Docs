; Load decimal value 40 into accumulator 'A' and copy its content to register 'R3'

MOV A, #28      ; Load the decimal value 40 (28h) into accumulator register A.
MOV R3, A      ; Copy the content of accumulator A to register R3.
LCALL00BBh    ; Call a subroutine located at memory address 00BBh.
