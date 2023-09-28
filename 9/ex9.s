format ELF executable

segment readable writable
    msg db "Testing %i...", 0x0a,0x00

segment readable executable
entry main
extern printf

main:
    push ebp
    mov ebp, esp
    push 123
    push msg
    ccall printf
    mov eax, 0
    mov esp, ebp
    pop ebp
    ret
