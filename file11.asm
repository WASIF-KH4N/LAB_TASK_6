;Program to input string and print it.

Dosseg
.model small
.stack 100h
.data
var_1 db 75 dup('$')    ;RESERVED 75 SIZED OF ARRAY
                        ;$,$,$,$,$,$,$,$...........
                        ;EACH DOLLAR SIGN IS REPLACE BY THE USER INPUT
.code
main proc
mov ax,@data
mov ds,ax
lea si,var_1

J1:
mov ah,1
int 21h
cmp al,13               ;COMPARING ASCII ENTER KEY UNTIL IT BECOMES TRUE
je program              ;IF ENTER KEY IS PRESS THEN JUMP LABEL ELSE RUN BELOW
mov [si],al
inc si
jmp J1                  ;UNCONDITION JUMP TO INPUT LABEL AGAIN TO ASK MORE CHARACTER TO SAVED
program:

lea dx,var_1
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main























