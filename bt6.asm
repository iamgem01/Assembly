.model small
.stack 100h
.data
    
    nhap db 'Nhap ky tu: $'
    space db 10,13,' $'  
    kytu db ?
.code
   main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,nhap
    int 21h
    
    mov ah,01h
    int 21h 
    mov kytu,al
   
E:  
    mov dl,kytu              
    cmp kytu,'z'
    JNG Show
    JG  Exit
Show:
     mov ah,02h
     int 21h
     inc dl
     mov kytu,dl

     
     mov ah,02h
     mov dl,space
     int 21h
     
     jmp E
     
Exit: 
     mov ah,4ch
     int 21h  
     
 main endp
   end main
     
    