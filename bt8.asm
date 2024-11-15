.model small
.stack 100h
.data
    tb db 'Nhap chuoi bat ky: $'
    chuoi DB 80,0,80 dup('$')  
    nhap DB 10,13,'$'
    
.code

main proc
    mov ax,@data
    mov ds,ax
             
    mov ah,09h
    lea dx,tb
    int 21h
    
    mov ah,0ah
    lea dx,chuoi
    int 21h
    xor cx,cx         ;xoa thanh ghi de dem so ky tu
    lea si,[chuoi+2]    ;tro thanh ghi si vao vi tri dau sau 2b
lap:
    cmp [si],'a'    ;kiem tra neu la 'a'hoac chu thuong khac
    jge Xuly        ;nhay toi xu ly de chuyen thanh INHOA 
    cmp [si],'$'    ;neu la $ jump A
    je A
    cmp [si],0Dh
    je B
    inc si          ;tang con tro
    inc cx          ;dem ky tu
    jmp lap         ;quay lai vong lap
Xuly:
    sub [si],20h     ;neu la kytu thuong chuyen chu hoa = cach -32 trong ma ascii
    inc si           ;tang si va cx den kytu tiep theo va dem
    inc cx
    jmp lap
A:
    mov [si],'$'     ;gap $ ket thuc chuoi = $
B:
    mov ah,09h
    lea dx,nhap       ;in tb chuoi
    int 21h
    
    mov ah,09h          ;in chuoi da chuyen doi thanh INHOA
    lea dx,[chuoi+2]
    int 21h
   

    mov ah,4ch
    int 21h                ;end chuong trinh
    main endp
end main