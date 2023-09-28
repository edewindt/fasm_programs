format ELF executable

segment readable executable
entry main
main:
    mov ecx, 99
    mov ebx, 42
    mov eax, 1
    cmp ecx, 100
    jl skip
    mov ebx, 13
skip:
    int 0x80