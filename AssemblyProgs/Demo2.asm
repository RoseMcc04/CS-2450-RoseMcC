    .orig x3000         ; load the program to memory location x3000
    LD R0, A            ; load the value stored at A to register 0
    LD R1, B            ; load the value stored at B to register 1
    NOT R2, R1          ; invert R1 and store in R2 for making R2 = -R1
    ADD R2, R2, #1      ; add 1 to R2 for making R2 = -R1
    ADD R2, R2, R0      ; R2 <- R0 - R1
    BRN L1              ; jump to L1 if R1 > R0
    OUT                 ; print R0 since it was larger
    BRNZP END           ; jump to the end of the program
L1  ADD R0, R1, #0      ; move R1 to R0
    OUT                 ; print R1 since it was larger
END HALT                ; halt the program
A   .fill 35            ; var A is in this memory location
B   .fill 36            ; var B is in this memory location
    .end