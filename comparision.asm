dosseg
.model small
.stack 100h
.data
s1 db 'No1 is Greater than No2$'
s2 db 'No1 is Less than No2$'
s3 db 'Enter No1:$'
s4 db 'Enter No2:$'

.code
main proc
mov ax,@data
mov ds,ax

;printing enter no1
mov ah,9
mov dx,offset s3
int 21h

;taking no1 input
mov ah,1
int 21h
mov cl,al

;for next line
mov ah,2
mov dl,10
int 21h

;printing enter no2
mov ah,9
mov dx,offset s4
int 21h

;taking no2 input
mov ah,1
int 21h
mov bl,al

;for next line
mov ah,2
mov dl,10
int 21h

cmp cl,bl
jg L1
jl L2

L1:
mov ah,9
mov dx,offset s1
int 21h
jmp L3

L2:
mov ah,9
mov dx,offset s2
int 21h

L3:
mov ah,4ch
int 21h

main endp
end