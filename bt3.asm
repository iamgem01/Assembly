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
        lea dx,tb1
        int 21h     
        
        mov ah,1h
        int 21h
        mov kytu,al 
        
        
        mov ah,9h
        lea dx,tb2      
        int 21h 
        dec kytu 
        
        mov ah,2h
        mov dl,kytu
        int 21h
        add kytu,2
                 
                 
        mov ah,9h
        lea dx,tb3
        int 21h    
        
        mov ah,2h
        mov dl,kytu
        int 21h
       
        
        mov ah,4Ch
        int 21h
        
     main endp
     end main
        
        
        
        
        
        
        
        
 
        
        
  