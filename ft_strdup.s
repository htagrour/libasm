section.text:
    global _ft_strdup
    extern _ft_strcpy
    extern _ft_strlen
    extern _malloc

_ft_strdup:
    cmp rdi , 0
    jz _error
    call _ft_strlen
    push rdi
    mov rdi ,rax
    inc rdi
    call _malloc
    cmp rax, 0
    jz _error
    pop rdi
    mov rsi, rdi
    mov rdi, rax
    call _ft_strcpy
    ret
_error:
    mov rax, 0
    ret