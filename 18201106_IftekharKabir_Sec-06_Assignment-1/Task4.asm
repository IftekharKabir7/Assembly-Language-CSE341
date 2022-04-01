
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

   
    mov al,5
    add al,6
    
    mov bl,4
    add bl,1
    
    mul bl
    
    mov bl,3
    div bl
        
    mov cx,ax
    
    mov al,6
    mov bl,5
    mul bl
    
    add cl,2
    add cl,1
    
    sub cl,al
    
; add your code here

ret




