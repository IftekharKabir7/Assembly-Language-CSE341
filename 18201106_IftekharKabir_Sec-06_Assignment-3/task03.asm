
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include "emu8086.inc"
	MAIN PROC

	MOV AX, @DATA
	MOV DS, AX   


		mov ah, 1   
		int 21h
		mov bl, al

		mov ah, 1   
		int 21h
		mov cl, al 

		mov ah, 1   
		int 21h
		mov bh, al 

		mov al, bl
 
		cmp al, cl
		JGE Else1
		mov al, 0
		jmp End

		Else1:
		cmp cl, bh
		JGE Else2
		mov cl, 0
		jmp End

		Else2:
		mov bh, 0 

		
		End:
		MOV AX, 4C00H
		INT 21H

	MAIN ENDP
END MAIN

ret




