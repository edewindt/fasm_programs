format ELF executable

segment readable executable
entry main
main:
    mov ebx, 1 ; move 1 into ebx register for exit code
    mov ecx, 4 ; move 4 into ecx register
labl:
    add ebx, ebx ; adding ebx value to itself doubling it
    dec ecx ; decrement value in ecx register by 1
    cmp ecx, 0 ; compare ecx value and 0
    jg labl ; if ecx value is greater than 0 jump to labl label
    mov eax, 1 ; if ecx value is not greater than 0 move 1 into eax register for sys_exit sycall code
    int 0x80 ; syscall
