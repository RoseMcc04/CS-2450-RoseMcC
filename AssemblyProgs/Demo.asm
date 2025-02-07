    .orig x3000
    LEA R6, C
    LD R0, A
    HALT
A   .fill 65
B   .fill 66
C   .BLKW 5
D   .fill 68
    .end