; Sample assembly language program for 8086 microprocessor
; This program displays a character on the screen

.model small
.stack 100h
.data
    char db 'A' ; Character to display

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Load the character to display
    mov ah, 02h  ; BIOS interrupt for displaying a character
    mov dl, char ; Load the character into DL

    ; Call BIOS interrupt to display the character
    int 21h

    ; End of program
    mov ax, 4C00h
    int 21h
main endp
end main
