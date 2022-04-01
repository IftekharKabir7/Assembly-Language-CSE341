.MODEL SMALL                                                                      
.STACK 100H
.DATA
  
    MAIN PROC 
           
           
    mov ax, DATA
    mov ds, ax
    mov es, ax

    ; ADD YOUR CODE HERE
             
             
    mov bl,2
    
                    
    mov ah,1
    int 21h   
    
    mov ch,al
    sub ch,30h
      
  
      
    
    mov ah,1
    int 21h      
    
    mov dh,al
    sub dh,30h
    
      
    
    START: 
    mov ah,0
    cmp ch,dh
    jg EXIT  
    
    mov al,ch
    div bl 
    cmp ah,0
    je PRINT  
    
    add CH,1
    jmp START
             
             
    PRINT: 
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    mov cl,ch
    mov dl,cl 
    add dl,30h
    mov ah,02h
    int 21h 
    
    add ch,1
    jmp START
    
                    
                    
    EXIT:
       
    
    
    
    
     MAIN ENDP
     END MAIN 