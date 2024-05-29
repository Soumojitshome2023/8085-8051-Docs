; Compare Two Strings starting from memory locations 8091h and 8061h, with the length stored in 8060h.
; If both strings are the same, store 00h in 8070h; otherwise, store ffh.

LXI H, 8091H    ; Load the starting address of the first string into HL register pair
LXI B, 8061H    ; Load the starting address of the second string into BC register pair
LDA 8060H       ; Load the length of the strings from memory location 8060h into accumulator A
MOV D, A        ; Move the length of the strings to register D
loop:           ; Loop to compare the strings
    LDAX B       ; Load a byte from the second string into accumulator A
    CMP M        ; Compare it with the byte from the first string
    JNZ next     ; Jump to next if they are not equal
    INX H        ; Move to the next byte in the first string
    INX B        ; Move to the next byte in the second string
    DCR D        ; Decrement the length counter
    JNZ loop     ; Continue looping if there are more bytes to compare
    MVI A, 00H   ; If all bytes are the same, store 00h in memory location 8070h
    STA 8070H
    JMP end      ; Jump to the end of the program
next:            ; Store ffh in memory location 8070h if strings are different
    MVI A, FFH
    STA 8070H
end:             ; End of the program
