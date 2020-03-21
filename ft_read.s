setction.text:
    global ft_read
    extern fstat
ft_read:
    cmp rdi , 0
    jb _error
    cmp rdx, 0
    jb _error
    mov rax, 0x5
    syscall
    cmp rax, -9
    jz _error
    mov rax, 0x0
    syscall
    ret
_error:
    mov rax, -1
    ret