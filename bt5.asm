.model small
.stack 100h
.data
       nhap db 'Saisir un mot-cle: $'  
       matin db 10,13, 'Bonne journee!$'
       soir db 10,13,'Bonne soiree!$'
       nuit db 10,13,'Bonne nuit!$'
       mot db ?
.code
   main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,nhap
    int 21h
    
    mov ah,01h
    int 21h
    mov mot,al
    
    cmp mot,'S'
    JE a
    cmp mot,'s'
    JE a 
    
    cmp mot,'T'
    JE b
    cmp mot,'t'
    JE b
    
    cmp mot,'C'
    JE c
    cmp mot,'c'
    JE c
    
a:
    mov ah,09h
    lea dx,matin
    int 21h
    jmp exit
b:  
    mov ah,09h
    lea dx,soir
    int 21h
    jmp exit
c:  
    mov ah,09h
    lea dx,nuit
    int 21h
    jmp exit
exit:
    mov ah,4ch  
    int 21h
main endp
end main
     