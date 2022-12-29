
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov bx,2
mov cx,2
mov ax,number


loop2:
;if counter's square < number, then increment he counter
;if counter's square == number, then isSquare1
;if counter's square > number , then exit.
mul cx
cmp ax,bx
jz exit
inc bx
inc cx 

loop loop2



square:
mov issquare,1

exit:
ret

number dw 26
issquare db 0


ret
