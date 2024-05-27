; Exchange locations of two numbers stored in 9500H and 9501H

LDA 9500H
MOV B,A
LDA 9501H
STA 9500H
MOV A,B
STA 9501H