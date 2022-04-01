org 100h  

.DATA
ANS DW ?
.CODE    

MOV AX,@DATA
MOV DS,AX      

  MOV CX,20
  MOV AX,0
  MOV DX,100
   
   RESULT:
    ADD AX,DX
    SUB DX,5
    MOV ANS,AX
    LOOP RESULT 
    
END MAIN