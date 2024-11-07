; Sample assembly language program for 8086 microprocessor
; This program multiplies two numbers and stores the result

.model small
.stack 100h
.data
    num1 dw 3    ; First number
    num2 dw 4    ; Second number
    result dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load first number into ax
    mov ax, num1

    ; Multiply ax by second number
    mov bx, num2
    mul bx

    ; Store result
    mov result, ax

    ; End of program
    mov ax, 4C00h
    int 21h
main endp
end main
