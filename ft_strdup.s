section.text:
    global ft_strdup
    extern ft_strcpy
    extern ft_strlen
    extern malloc

ft_strdup:
    cmp rdi , 0
    jz _error
    call ft_strlen
    push rdi
    mov rdi ,rax
    inc rdi
    call malloc
    cmp rax, 0
    jz _error
    pop rdi
    mov rsi, rdi
    mov rdi, rax
    call ft_strcpy
    ret
_error:
    mov rax, 0
    ret