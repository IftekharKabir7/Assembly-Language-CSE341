
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include "emu8086.inc"
.MODEL SMALL
.STACK 100H    
.DATA

 a db "Enter a digit: $" 
 b db "Odd$"
 c db "Even$"

.CODE

	MAIN PROC

	MOV AX, @DATA
	MOV DS, AX 

		mov ah, 9
		lea dx, a
		int 21h 

 
		mov ah, 1   
		int 21h     
		sub al, 48
		mov bl, al

		mov ah, 2
		mov dl, 0Dh
		int 21h 
		mov dl, 0Ah
		int 21h  

		mov al, bl
		mov ah, 0
		mov bl, 2
		div bl
		cmp ah, 0
		je  IF

		mov ah, 9
		lea dx, b
		int 21h
		jmp END

		IF:  
		mov ah, 9
		lea dx, c
		int 21h

		END:
		MOV AX, 4C00H
		INT 21H

	MAIN ENDP
END MAIN

ret




