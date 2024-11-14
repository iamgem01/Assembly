.model small
.stack 100h
.data 
       tb1 db 10,13,'Ten ban la: $' 
       tb2 db 10,13,'Xin chao $' 
       ten db 80,0,80 dup('$')
       
       
.code
main proc 
    
    mov ax,@data
    mov ds,ax   
    
    mov ah,09h
    lea dx,tb1
    int 21h
    
    mov ah,0ah
    lea dx,ten
    int 21h 
    
    
    mov ah,09h
    lea dx,tb2
    int 21h 
    
    lea dx,ten+2
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main
              
    
   
