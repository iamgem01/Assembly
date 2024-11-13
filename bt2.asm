.model small      ; xay dung bo nho toi da 64kb cho data va ma
.stack 100h       ; 100h = 256b

.data 
      noti1 db 10,13, 'Hay go 1 phim: $'
      noti2 db 10,13, 'Ky tu nhan duoc la: $'
       
       
.code
main proc
    mov ax, @data   ; gan gt goc vao ax
    mov ds, ax      ; khoi tao thanh ghi ds   
    

    mov ah, 09h
    lea dx, noti1     ; in dong thong bao 1
    int 21h

    mov ah, 01h
    int 21h         ; nhap ky tu vao al  
    
    mov bl,al

    mov ah, 09h
    lea dx, noti2     ; in dong thong bao 2
    int 21h

    mov dl, bl      ; gan dl = al (ky tu vua nhap)  
    
    
    mov ah, 02h
    int 21h         ; hien thi ky tu trong dl

    mov ah, 4Ch
    int 21h         ; ket thuc chuong trinh
    
main endp
end main
