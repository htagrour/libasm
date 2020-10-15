setction.text:
    global ft_read
    extern ___error
ft_read:
    push rbp
    call __error
    pop rbp
    mov rax, 0x2000003
    syscall
    jc _error
    ret
_error:
    mov rax, -1
    ret
