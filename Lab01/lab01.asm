
ORG 100h 
  
MOV CL,N    ;we define CLow for count.
    
MOV DI,2000H ;Destination index will point the 2000H in memory.
MOV DS,DI    ;Let data segment 2000H.

MOV DL,01H   ;we will start counting with 01h.
MOV AX,0     ;after the loop , our answer will occur in AX. Answer will be = {n.(n+1)/2}decimal.
             ;Let's consider that AX as a SUM.


MYLOOP:          
    ;in this loop we want to store all numbers(1,2,3,4...254,255) in the memory.
    ;After the storing data, last memory adress will be 20FE, value will be-> 255 in decimal = FF in hexadecimal.
    MOV [DI],DL   ; it will add our numbers one-by-one to memory.                              
    ADD AX,DX     ;SUM++
    INC DL        ;i++
    INC DI        ;memoryAdress++
    
   
LOOP MYLOOP

MOV [2100h],AX  ;result = SUM
RET

N DB 255