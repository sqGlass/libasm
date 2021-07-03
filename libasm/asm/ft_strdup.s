global	_ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text
_ft_strdup:
            call _ft_strlen
           ;mov rsi, rdi
            push rdi
            inc rax
            mov rdi, rax
            call _malloc
            cmp	rax, 0
            je  .return
            pop rsi
            mov rdi, rax
            call _ft_strcpy
            ret

.return:
            pop rdi
			ret