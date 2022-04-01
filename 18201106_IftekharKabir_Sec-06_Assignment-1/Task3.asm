
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov AL,6
mov BL,2
div BL

mov DL,3
mul DL

ret




