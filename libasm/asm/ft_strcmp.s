global	_ft_strcmp

section .text
_ft_strcmp:
        mov     rax, 0
        mov     rcx, 0

.loop:
        cmp     byte [rsi], 0
        je      .return
        cmp     byte [rdi], 0
        je      .return
        mov     dl,  byte [rdi]
        add     rcx, rdx
        mov     dl,  byte [rsi]
        sub     rcx, rdx
        jnz     .return2
        inc     rdi
        inc     rsi
        jmp     .loop 



.return:
        mov     dl,  byte [rdi]
        add     rcx, rdx
        mov     dl,  byte [rsi]
        sub     rcx, rdx
        mov     rax, rcx
        ret
.return2:
        mov     rax, rcx
        ret 