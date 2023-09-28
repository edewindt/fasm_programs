format ELF executable
segment readable writable
    msg db "Hello, World!", 10
    len = $ - msg

segment readable executable
entry main
main:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
