; Interchange the contents of registers DE and HL using the XCHG instruction

LXI D, 9500H  ; Load the immediate value 9500H into register pair DE
LXI H, 9420H  ; Load the immediate value 9420H into register pair HL
XCHG          ; Exchange the contents of register pairs DE and HL

; End of the code
