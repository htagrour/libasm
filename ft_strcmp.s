section .text

global _ft_strcmp

_ft_strcmp:
        mov r8, 0
        _loop:
            mov dl, byte [rdi + r8]
            cmp dl ,0
            jz _null
            cmp byte [rsi + r8], 0
            jz _null
            cmp dl, byte [rsi + r8]
            jb _inf
            jg _sup
            inc r8
            jmp _loop
_inf:
    mov rax, -1
    ret
_sup:
    mov rax, 1
    ret
_null:
    cmp dl, byte [rsi + r8]
    jb _inf
    jg _sup
    mov rax, 0
    ret