
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL

.STACK 100H

.DATA

 output db "The Result is $"
       
.CODE
MAIN PROC


MOV AX,@DATA
MOV DS,AX


mov ah,1
int 21h

mov cl,al 
sub cl,30h

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL, 0DH
INT 21H

mov ah,1
int 21h

sub al,30H


add aL,cL
mov ah,0
mov cL,aL
mul cl

mov dl,10
div dl
mov cl,ah 

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL, 0DH
INT 21H

lea dx,output
mov ah,9h
int 21h

mov dl,cl
add dl,30h
mov ah,02
int 21h
    
MAIN ENDP
   END MAIN

ret




