section.text:

	global ft_write

ft_write:
	push r8
	push r9
	cmp rsi, byte 0x0
	jz _error
	mov r8, rsi
	mov r9, rdx
	mov rsi, 0x0
	mov rax, 5
	syscall
	cmp rax, 9
	jz _error
	mov rsi, r8
	mov rdx, r9
	mov rax, 1
	syscall
	pop r8
	pop r9
	ret

_error:
	mov rax, -1 ; return -1 because error
	pop r8
	pop r9
	ret