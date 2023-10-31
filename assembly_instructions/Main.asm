﻿SUB R0, R15, R15
ADD R2, R0, #0x80
STR R2, [R0, #0x800]
ADD R3, R0, #2
SUBS R3, R3, #1
LDR R1, [R0, #0x800]
BNE #0x10
ANDS R2, R1, #0x0F
BEQ #0x0C
ANDSNE R2, R1, #0x01
STRNE R0, [R0, #0x800]
BNE #0x58
ANDSEQ R2, R1, #0x02
STRNE R0, [R0, #0x800]
BNE #0x84
ANDSEQ R2, R1, #0x04
STRNE R0, [R0, #0x800]
BNE #0xB0
ANDSEQ R2, R1, #0x08
STRNE R0, [R0, #0x800]
BNE #0xDC
B #0x04
AND R2, R1, #0x01 ;inicio de Selección 1
STR R2, [R0, #0x800]
ADD R3, R0, #2
SUBS R3, R3, #1
LDR R1, [R0, #0x800]
BNE #0x64
ANDS R2,R1, #0x10
BEQ #0x108
ANDSNE R2, R1, #0x01
BEQ #0x04
BNE #0x60 
AND R2, R1, #0x02 ;inicio de seleccion 2
STR R2, [R0, #0x800]
ADD R3, R0, #2
SUBS R3, R3, #1
LDR R1, [R0, #0x800]
BNE #0x90
ANDS R2, R1, #0x10
BEQ #0x154
ANDSNE R2, R1, #0x02
BEQ #0x04
BNE #0x8C
AND R2, R1, #0x04 ;inicio de seleccion 3
STR R2, [R0, #0x800]
ADD R3, R0, #2
SUBS R3, R3, #1
LDR R1, [R0, #0x800]
BNE #0xBC
ANDS R2, R1, #0x10
BEQ #0x1F4
ANDSNE R2, R1, #0x04
BEQ #0x04
BNE #0xB8
AND R2, R1, #0x08 ;inicio de seleccion 4
STR R2, [R0, #0x800]
ADD R3, R0, #2
SUBS R3, R3, #1
LDR R1, [R0, #0x800]
BNE #0xE8
ANDS R2, R1, #0x10
BEQ #0x240
ANDSNE R2, R1, #0x08
BEQ #0x04
BNE #0xE4 
ldr r5, [r0, #4] ;inicio de secuencia1
add r7, r0, #8
add r8,r0,#8
ldr r9, [r7]
str r9, [r0, #0x800]
add r6,r0,r5
subs r6, r6, #1
bne #0x120
add r7, r7, #4
subs r8,r8,#1
addeq r7,r0,#8
addeq r8,r8,#8
ADD R3,R0,#0x2
SUBS R3,R3,#1   
LDR R1,[R0,#0x800]
BNE #0x13C
ANDS R1,R1,#0x01
BEQ #0x4
BNE #0x114
ADD R4, R0, #7  ;inicio de secuencia 2
ADD R8, R0, #0 
ADD R6, R0, #0x80 
STR R6, [R0, #0x800]
ADD R5, R0, #6 
ADD R7, R0, #1   
SUBS R5, R5, R8  
BEQ #0x180   
SUBS R5, R5, #1  
ADD R7, R7, R7   
BNE #0x174
ADD R8, R8, #1
SUB R6, R6, R7   
LDR R9, [R0, #0x4] 
SUBS R9, R9, #1
BNE #0x18C
SUBS R4, R4, #1  
BNE #0x160
STR R6, [R0, 0x800] 
ADD R4, R0, #7 
ADD R3,R0,#0x2
SUBS R3,R3,#1   
LDR R1,[R0,#0x800]
BNE #0x1A8
ANDS R1,R1,#0x02
BEQ #0x4
ADD R6, R6, R6 
LDR R9, [R0, #0x4] 
SUBS R9, R9, #1
BNE #0x1C4
STR R6, [R0, 0x800] 
SUBS R4, R4, #1 
BNE #0x1BC
ADD R3,R0,#0x2
SUBS R3,R3,#1   
LDR R1,[R0,#0x800]
BNE #0x1DC
ANDS R1,R1,#0x02
BEQ #0x4
BNE #0x154
ldr r5, [r0, #4] ;inicio de secuencia3
add r7, r0, #44
add r8,r0,#15
ldr r9, [r7]
str r9, [r0, #0x800]
add r6,r0,r5
subs r6, r6, #1
bne #0x20C
add r7, r7, #4
subs r8,r8,#1
addeq r7,r0,#44
addeq r8,r8,#15
ADD R3,R0,#0x2 
SUBS R3,R3,#1   
LDR R1,[R0,#0x800]
BNE #0x228
ANDS R1,R1,#0x04
BEQ #0x4
BNE #0x200
ADD R9,R0,#1 ;inicio de secuencia4
ADD R2,R0,#2
ADD R10,R0,#8
ADD R5,R0,#0
ADD R6,R0,#1
ADD R7,R0,#2
ADD R8,R0,#7
ADD R9,R0,R6
ADD R2,R0,R7
ADD R6,R9,R2
ADD R7,R2,R2
STR R9,[R0,0x800] 
ADD R9,R9,R2        
ADD R2,R2,R2
LDR R4,[R0,#0x4]
SUBS R4,R4,#1
LDR R1,[R0,0x800]
BNE #0x27C
ANDS R1,R1,#0x08
BEQ #0x04   
ADD R5,R5,#1
SUBS R10,R10,#1
BNE #0x26C
SUB R10,R5,#1
ADD R5,R0,#0
SUBS R8,R8,#1
BNE #0x25C
b #0x240