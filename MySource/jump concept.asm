
.model small
.stack 100h
.data
a db 'Jmp concept$'
b db 'I love my country$'
c db 'hello world$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    jmp m
    
    n:
    mov ah,9
    lea dx,b
    int 21h 
    jmp exit 
    
    m:
    mov ah,9
    lea dx,c
    int 21h
    jmp n
         
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
   

