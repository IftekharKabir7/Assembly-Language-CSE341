
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

    a db "Enter First Character: $"
    b db "Enter Second Character: $"
    c db "Enter Third Character: $"
.CODE      

MAIN PROC

    mov AX,@DATA
    mov DS,AX



    lea DX,a 
    mov AH,9
    int 21h     
    
 
    mov ah,1
    int 21h
    mov bh,AL 

    mov AH,2 
    mov DL,0DH
    int 21h
    mov DL,0AH 
    int 21h
             
             
             
    lea DX,b 
    mov AH,9
    int 21h
    mov ah,1
    int 21h
    mov BL,AL
    
    mov AH,2 
    mov DL,0DH
    int 21h
    mov DL,0AH 
    int 21h

    lea DX,c
    mov AH,9
    int 21h

    mov ah,1
    int 21h
    mov dh,AL

    mov AH,2 
    mov DL,0DH
    int 21h
    mov DL,0AH 
    int 21h 

    mov dl,dh
    mov ah,2 
    int 21h

    mov AH,2 
    mov DL,0DH
    int 21h
    mov DL,0AH 
    int 21h 

    mov dl,BL
    mov ah,2 
    int 21h


    mov AH,2 
    mov DL,0DH
    int 21h
    mov DL,0AH 
    int 21h 



    mov dl,bh
    mov ah,2 
    int 21h




    mov AX,4c00H
    int 21H     
    
    MAIN ENDP
    END MAIN

ret




