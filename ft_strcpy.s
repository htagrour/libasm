section .text
global _ft_strcpy

_ft_strcpy:
        mov r8, -1
        _loop:
            inc r8
            mov dl, byte [rsi + r8]
            cmp dl, 0
            jz _end
            mov byte [rdi + r8], dl
            jmp _loop
_end:
    mov rax, rdi
    ret