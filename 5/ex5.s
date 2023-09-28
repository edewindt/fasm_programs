format ELF executable

segment readable writable
    addr db "yellow",10 ; define yellow string with \n ASCII value at the end

segment readable executable
entry main
main:
    mov [addr], byte 'H' ; move H into the first byte of the adress addr
    mov [addr+5], byte '!' ; move ! into the last byte, the first byte + 5, (pointer arithmetic)
    mov eax, 4 ; sys_write syscall code
    mov ebx, 1 ; stdout file descriptor
    mov ecx, addr ; move addr value into ecx register
    mov edx, 7 ; the length of yellow string
    int 0x80 ; syscall for stdout and syswrite
    mov eax, 1 ; syscall number for sys_exit
    mov ebx, 0 ; move 0 into the ebx register for exit code 0
    int 0x80 ; syscall
