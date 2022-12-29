
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov bl,2
mov cx,number
sub cx,2


loop1:  
mov ax,number ; copy cx to ax. We do that for don't change the cx.
div bl        ; ax = ax/bx
cmp ah,0      ; if ah == 0,  goto exit  (we compared ah because ah has remainder)
jz  exit
inc bl        ; if ah!=0 , increment the denominator.

loop loop1





prime:
mov isprime,1

exit:
ret

number dw 13
isprime db 0


ret




