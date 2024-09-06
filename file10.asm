;Program to print an array using loop.

Dosseg
.model small
.stack 100h
.data
arr db 'UniversityOfKarachi'

.code
main proc
mov ax,@data
mov ds,ax
lea si,arr                     ;START LOCATION ADDRESS OF FIRST CHARACTER
mov cx,19
X1:                            ;LABEL OF LOOP
mov dx,[si]                    ;ACCESS VALUE FROM THIS ADDRESS
mov ah,2 
int 21h
inc si
Loop X1

mov ah,4ch                     ;END THE PROGRAM
int 21h
main endp
end main































