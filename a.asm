;a.asm

.386
.model	flat,C
.code
is_prime proc
        push ebp
        mov ebp,esp
        mov ebx,2
    next:
        cmp ebx,[ebp+8]
        jge ret_yes
        mov eax,[ebp+8]
        cdq
        idiv ebx
        or edx,edx
        jne step

        xor eax,eax
        pop ebp
        ret
    step:
        inc ebx
        jmp next

ret_yes:
        mov eax,-1
        pop ebp
        ret
is_prime endp
	    end