include 'emu8086.inc'
.model small
.stack

.data



array1 0ah,0dh,db 4 dup(?)
array2 0ah,0dh,db 4 dup(?)
.code

main proc
    
    mov ax,@data
    mov ds,ax   
    
    mov cx,4
    mov si,offset array1
    
    print 'Enter first value: '
    
    l1:
    mov ah,01h
    int 21h
    
    mov [si],al
    inc si
    loop l1
    
    mov cx,4
    mov di,offset array2
    
    print 'Enter two value: '
    
    l2:
    mov ah,01h
    int 21h
    
    mov [di],al
    inc di
    loop l2
    
    ;for sum
    
    mov si,offset array1
    mov di,offset array2
    
    mov cx,4 
    
    ;lp:
    
    ;mov al,[si]
    ;mov bl,[di]
    
    ;add cl,al
    ;add cl,bl
    
    ;inc si
    ;inc di 
    
    ;loop lp
    
    ;for palindrome
    mov si,offset array1
    mov di,offset array2
    
    mov cx,4
    
    loop1:
    
    mov al,[si]
    mov bl,[di]
    
    cmp al,bl
    
    jne notsame
    
    inc si
    inc di
    
    loop loop1
    
    print 'Palindrome'
    mov ah,04ch
    int 21h
    
    notsame:
    print 'Not palindrome'
    mov ah,04h
    int 21h
    
    main endp
end main