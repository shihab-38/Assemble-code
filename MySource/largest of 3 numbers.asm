
.model small
.stack 100h

.data 
aa db 'Input 3 numbers: $'
bb db 10,13,'Largest number is: $'
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,aa
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
      
      mov ah,9
      lea dx,bb
      int 21h
      
    cmp bl,bh
    jg a
    
    b:
    cmp bh,cl
    jg c
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    c:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    a:
    cmp bl,cl
    jg d
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    d:
    mov ah,2
    mov dl,bl
    int 21h
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main



