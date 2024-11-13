.model small ;xay dung bo nho toi da 64kb cho data va ma
.stack 100h   ;100h = 256b
.data 
      noti1 db 13,'Hay go 1 phim: $' 
      noti2 db 13,10, 'Ky tu nhan duoc la: $'
      bien  db ?



.code
main proc
    mov ax,@data  ;  gan gt goc vao ax 
    mov ds,ax    ; khoi tao thanh ghi ds
    
    mov ah,09h 
    lea dx,noti1    ;gan dia chi goc vao ax
    int 21h        ;in dong thong bao 1
    
    mov ah,01h
    int 21h  
    
    
    mov bien,al      ;ngung den khi nhap al
    
    mov ah,09h
    lea dx, noti2     ;in dong thong bao 2
    int 21h
    
    mov dl,bien         ;gan dl = bien     
    
    mov ah,02h
    int 21h            ;hien ra ki tu dl
    
    mov ah,4Ch
    int 21h             ;end chuong trinh
    
main endp
end main