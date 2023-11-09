
.model small
.stack 100h
.data
m db 'I love my country $'
.code

main proc
    ; 1-> single key input
    ; 2-> single key output
    ; 2-> character string output
    
    mov ax,@data   ; name of the data segment
    mov ds,ax
    
    mov ah,9
    lea dx,m ; load effective address
    int 21h
             
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    



