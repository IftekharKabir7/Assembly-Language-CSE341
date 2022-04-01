org 100h

MOV bl, 0
MOV dl, 2


      n:
      MOV ah, 01h
      INT 21h
      CMP al, 13   
      JE  e  
      MOV ah, 0  
      SUB al, 30h   
      MOV cl, al
      MOV al, bl 
        
      MUL dl      
      ADD al, cl   
      MOV bl, al

      JMP n    
      e: 

      MOV ah,2
      MOV dl,0ah
      INT 21h  
      
      MOV dl, 0dh
      INT 21h
      
      MOV dl,bl
      ADD dl,30h
      MOV ah, 02h
      INT 21h

ret






