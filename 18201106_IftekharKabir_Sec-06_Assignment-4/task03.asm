org 100h

MOV CX,40
MOV AH,2
MOV DL,'*'

STAR:   INT 21H
        LOOP STAR
       
       
ENDP
 