
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h

.data

string db 'mouli'  

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset string
    
    mov cx,10                                                         ;1st e ekta string nwa hyece then string er pottek charecter k stack e rakh
    
    loop1:                                                             ;e rakha hyece pore seigulo k pop up kore r ek jaygay rekhe seita print
    mov bx,[si]
    push bx                                                           ;kora hyece
    inc si
    loop loop1
    
    mov cx,10
    
    loop2:
    pop dx
    mov ah,02h
    int 21h
    loop loop2
    
    main endp
end main



