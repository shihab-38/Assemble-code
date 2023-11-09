
.model small
.stack 100h
.data

.code

main proc
   mov al,7
   mov bl,2
   
   div bl
   mov bx,ax
   
   ;print 'R :'
   mov dl,bh
   add dl,48
   mov ah,2
   int 21h
   
   mov dl,10
   mov ah,2
   int 21h
   mov dl,13
   mov ah,2
   int 21h
   
   ;print 'Q:'
   mov dl,bl
   add dl,48
   mov ah,2
   int 21h
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main



