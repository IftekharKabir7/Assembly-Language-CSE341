include "emu8086.inc"
.MODEL SMALL
.STACK 100H
.DATA

 ab db 0ah,0dh,"Not Divisible$"
 cd db 0ah,0dh,"Divisible$"

.CODE
MAIN PROC             

    MOV BX,@data
    MOV ds,BX
    
    print "Number betwn 1-9: " 
    
    MOV BH,1
    
    INT 21h
   
    
    MOV BL,3
    
    DIV BL
    
    CMP BH,0h
    
    JE IF
    JNE ELSE
    
    IF:
    
        MOV BH,9h
        LEA DX,ab
        INT 21h
        JMP EXIT
        
    ELSE:
    
        MOV BH,9h
        LEA DX,cd
        INT 21h
                
    EXIT:
    
        MOV BH,4Ch
        INT 21h
        
    MAIN ENDP
    END MAIN