
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov AH,5
mov AL,8
mov BH,2

add AH,BH
sub AL,AH
mov BH,AL


ret




