org 100h
.data
a db ?
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov al,5
    mov cl,4
    mov bl,al
    sub bl,1
    
    L:
    mul bl
    sub bl,1
    loop L
    
    mov a,al
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main



