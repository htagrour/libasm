section .text

global ft_strlen

ft_strlen:
    xor rax , rax; len = 0
    _loop:
        cmp byte [rdi + rax], 0; if str(len) = '\0'
        jz _end
        inc rax
        jmp _loop
_end:
    ret