; Sample assembly language program for 8086 microprocessor
; This program adds two numbers and stores the result

.model small
.stack 100h
.data
    num1 dw 10h ; First number
    num2 dw 20h ; Second number
    result dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load first number into ax
    mov ax, num1

    ; Add second number to ax
    add ax, num2

    ; Store result
    mov result, ax

    ; End of program
    mov ax, 4C00h
    int 21h
main endp
end main
