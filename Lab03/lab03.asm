
org 100h

CALL STORE
CALL MULT_STORE
                                 


PROC STORE   
    mov [2000h],3344h 
    mov [2002h],1122h
    mov [2004h],7788h
    mov [2006h],5566h  
    RET
    ;We have stored two 32-bit numbers in memory.   
ENDP STORE                                 
                                 
                                 

PROC MULT_STORE       
    
    mov [2008h],ax
    mov [200Ah],dx
    
    mov ax,[2002h]
    mov bx,[2004h]
    mul bx      
    add [200Ah],ax
    adc [200Ch],dx
    adc [200Eh],0
    
    mov ax,[2000h]
    mov bx,[2006h] 
    mul bx
    add [200Ah],ax
    adc [200Ch],dx 
    ;We have read numbers and multiply them.
            
            
            
    RET        
        
        
ENDP MULT_STORE

       
       
   


