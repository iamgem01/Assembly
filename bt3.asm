  .model small    ; khai bao bo nho
  .stack 100h     ;khai bao kich thuoc 256b
  .data    
        tb1 db 10,13,'Hay go 1 phim: $'    ;db  byte, dw word, dd doubleword, equ khai bao hang
        tb2 db 10,13,'Ky tu ke truoc: $'
        tb3 db 10,13,'Ky tu ke sau: $'
        kytu db ?
        
  .code 
     main proc
        mov ax,@data     ;khoi tao ds
        mov ds,ax
        
        mov ah,9h         ;in ra tb1 voi ham 09/21h
        mov dx,offset tb1
        int 21h     
        
        mov ah,1h
        int 21h
        mov kytu,al 
        
        
        mov ah,9h
        lea dx,tb2      
        int 21h
        
        mov dl,kytu
        dec dl 
        cmp dl,32
        jl wrap_prev
        jmp print_prev
 wrap_prev:
        mov dl,126
 print_prev: 
        mov ah,2h
        int 21h
                 
                 
        mov ah,9h
        lea dx,tb3
        int 21h
        
        mov dl,kytu
        inc dl
        cmp dl,126
        jg wrap_next
        jmp print_next 
 wrap_next:
        mov dl,32
 print_next:  
        mov ah,2h
        int 21h  
        
        
        mov ah,4Ch
        int 21h
        
     main endp
     end main
        
        
        
        
        
        
        
        
 
        
        
  