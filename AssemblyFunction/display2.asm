; Sample assembly language program for 8086 microprocessor
; This program displays a string on the screen

.model small
.stack 100h
.data
    message db 'Hello, World!', '$' ; String to display, terminated with '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load the address of the string
    lea dx, message

    ; Call BIOS interrupt to display the string
    mov ah, 09h  ; BIOS interrupt for displaying a string
    int 21h

    ; End of program
    mov ax, 4C00h
    int 21h
main endp
end main
