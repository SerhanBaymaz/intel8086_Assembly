org 100h
;Serhan Baymaz

MOV CH,0
MOV CL,N
MOV SI,0
MOV AH,1


mainLoop:  

CMP AH,1
JE sifirYaz
CMP AH,2
JE birYaz  
JMP isEven
JMP doEven
ENDloop:
LOOP mainLoop

ret 

sifirYaz:
MOV myArray[SI],0
INC SI
INC AH
DEC CL  
jmp mainLoop

birYaz: 
MOV myArray[SI],1
INC SI 
INC AH
DEC CL   
jmp mainLoop 


isEven:
MOV DL,AH  
MOV AL,AH 
MOV AH,0
MOV BL,2
DIV BL
CMP AH,0
JE doEven
JNE doOdd

doEven:
MOV AH,DL       

MOV BX,SI
DEC BX
MOV DH,myArray[BX] ;dh is Fn-1 now
DEC BX
MOV DL,myArray[BX] ;dl is Fn-2 now
ADD DH,DL
MOV myArray[SI],DH 
INC SI  
INC AH
JMP ENDloop

doOdd:
MOV AH,DL
MOV BX,SI
DEC BX
MOV DH,myArray[BX]
DEC BX
MOV DL,myArray[BX] 
SUB DH,DL
MOV myArray[SI],DH
INC SI 
INC AH
JMP ENDloop

N DB 20H




;the code which are below is for printing error message to screen.
PrintError:

MOV CX,COUNT
LEA SI, MESSAGE
MOV AH, 0Eh
; it will prints the value of AL, to the screen.
printIt:
LODSB
INT 10h
loop printIt

ret 



MESSAGE db 'Error. N must between 14<N<26'
COUNT = ($-MESSAGE)  
myArray DB 21 DUP(?) 