setcion.text:
    global ft_strcpy

ft_strcpy:
        cmp rdi, 0
        jz _error
        cmp rsi , 0
        jz _error
        mov r8, -1
        _loop:
            inc r8
            mov dl, byte [rsi + r8]
            cmp dl, 0
            jz _end
            mov byte [rdi + r8], dl
            jmp _loop
_error:
    mov rax, 0
    ret
_end:
    mov rax, rdi
    ret