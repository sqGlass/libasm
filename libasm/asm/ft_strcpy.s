global	_ft_strcpy


section .text
_ft_strcpy:
		mov		rax, 0

.loop:
        cmp     byte [rsi + rax], 0
        je      .return
        mov     dl, byte [rsi + rax]
        mov     [rdi + rax], dl
		inc		rax
        jmp     .loop

.return:
        mov     dl, 0
        mov     [rdi + rax], dl
		mov		rax, rdi
        ret

