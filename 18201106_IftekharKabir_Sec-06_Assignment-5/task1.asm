DATA SEGMENT 
    
MSG1 DB 10,13,'ENTER A STRING :- $'
MSG2 DB 10,13,'UPPER CASE : $' 

P1 LABEL BYTE
M1 DB 0FFH
L1 DB ?
P11 DB 0FFH DUP ('$')
DATA ENDS  

display macro MSG  
    
mov ah,9
lea dx,MSG
int 21H
endm     

code segment   
    
assume cs:code,ds:data  

START:
mov ax,data
mov ds,ax    

DISPLAY MSG1
lea dx,P1
mov ah,0AH
int 21H      

DISPLAY MSG2

lea si,P11
mov cl,L1
mov ch,0       

CHECK:
cmp [si],61h
jb done
cmp [si],5bh

dpr: sub [si],20h
done: inc si
loop check       

DISPLAY P11
mov ah,4ch
int 21h          

code ends
end start