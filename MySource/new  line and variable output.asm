.model small
.stack 100h
.data
msg db 5
msg1 db ?  ;define byte
.code

main proc
    mov ax,@data  ;initialization of data segment
    mov ds,ax
        
    mov ah,2   
    add msg,48
    mov dl,msg
    int 21h 
    
    mov ah,1
    int 21h
    mov msg1,al
    
    ;printing new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,msg1
    int 21h  
    
    exit: 
    mov ah,4ch
    int 21h
    main endp  
    
end main
    
    
    
    




