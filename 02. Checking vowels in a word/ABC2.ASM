dosseg
.model small
.stack 100h
.data
s1 db 'elephant$'
s2 db 10 dup('$')
s3 db 'Vowels in word are: $'

.code
main proc

mov ax,@data
mov ds,ax

lea si,s1
lea di,s2

l1:
mov bl,[si]
cmp bl,'$'
je endd

isA:
cmp bl,'a'
je found
jne isE

isE:
cmp bl,'e'
je found
jne isI

isI:
cmp bl,'i'
je found
jne isO

isO:
cmp bl,'o'
je found
jne isU

isU:
cmp bl,'u'
je found
jne l2

found:
mov [di],bl
inc di

l2:
inc si
jmp l1

endd:
mov ah,9
mov dx,offset s3
int 21h

mov ah,9
lea dx,s2
int 21h


mov ah,4ch
int 21h

main endp
end

