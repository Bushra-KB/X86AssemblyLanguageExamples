; Sample assembly language program for 8086 microprocessor
; This program divides two numbers and stores the quotient and remainder

.model small
.stack 100h
.data
    num1 dw 10   ; Dividend
    num2 dw 3    ; Divisor
    quotient dw ?
    remainder dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load dividend into ax
    mov ax, num1

    ; Load divisor into bx
    mov bx, num2

    ; Perform division
    xor dx, dx    ; Clear dx before division
    div bx

    ; Store quotient and remainder
    mov quotient, ax
    mov remainder, dx

    ; End of program
    mov ax, 4C00h
    int 21h
main endp
end main
