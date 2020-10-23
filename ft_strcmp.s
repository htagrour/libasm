global ft_strcmp

section .text

ft_strcmp:
	push rbp			;Function prologue, saving the stack status before function call
	mov rbp, rsp		;~
	mov rax, 0x0		;Function output set to 0
	jmp loop			;Jump to loop

loop_content:
	sub al, dl			;Subtract byte al with dl
	cmp al, 0x0			;Compare al with 0
	jne end				;If not equal then jump to end

loop:
	inc rdi					;Incrementing rdi and rsi
	inc rsi
	mov al, byte [rdi-1]	;Moving 1 byte [ie. word] from each string to al and dl
	mov dl, byte [rsi-1]
	cmp al, 0x0				;Check if al or dl is end of line and jump to end if so
	je is_end
	cmp dl, 0x0
	je is_end
	jmp loop_content		;Otherwise jump to loop_content

is_end:
	sub al, dl

end:
	movsx rax, al		;Expand the byte output to 64 bit
	mov rsp, rbp		;From here on epilogue
	pop rbp
	ret
