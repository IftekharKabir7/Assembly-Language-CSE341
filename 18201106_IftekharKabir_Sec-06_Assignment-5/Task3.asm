
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h  

array db 100 dup('$')
.code   


MAIN PROC   
    
  MOV AX,@DATA
  MOV DS,AX
  
  MOV BL,0
  MOV SI,OFFSET ARRAY
  
  
  
  A:
  
  MOV AH,1
  INT 21H    
  
  CMP AL,13
  JE B        
  
  MOV [SI],AL
  INC SI     
  
  INC BL
  JMP A
  
  B:
  MOV CL,BL 
  
  C:
  DEC SI
  MOV DX,[SI]
  MOV AH,2
  INT 21H  
  
  LOOP C 
  
  MOV AH, 4CH
  INT 21H
  
      

    
MAIN ENDP
END MAIN

ret




