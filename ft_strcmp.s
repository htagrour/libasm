section .text

global ft_strcmp

ft_strcmp:
        mov rax, -1
        _loop:
            mov dl, byte [rdi + rax]
            cmp dl ,0
            jz _null
            cmp byte [rsi + rax], 0
            jz _null
            cmp dl, byte [rsi + rax]
            jb _inf
            jg _sup
            jmp _loop
_inf:
    mov rax, -1
    ret
_sup:
    mov rax, 1
    ret
_null:
    cmp dl, byte [rsi + rax]
    jb _inf
    jg _sup
_equ:
    mov rax, 0
    ret