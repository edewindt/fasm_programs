format ELF executable

segment readable executable
entry main
main:
    mov ecx, 99 ; place 99 -> ecx register
    mov ebx, 42 ; place 42 into ebx register for exit code
    mov eax, 1 ; sys_exit syscall code
    cmp ecx, 100 ; compare ecx value (99) with 100
    jl skip ; if ecx was less than 100, jump to skip label
    mov ebx, 13 ; if ecx was more than 100 then we place 13 into ebx register for exit code
skip:
    int 0x80 ; syscall