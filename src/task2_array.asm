%include "asm_io.inc"

segment .data
    array times 100 dd 0
    sum_msg db "Sum of array: ", 0

segment .bss

segment .text
    global asm_main

asm_main:
    enter   0,0
    pusha

    mov     ecx, 100
    mov     edi, array
    mov     eax, 1
    
init_loop:
    mov     [edi], eax
    add     edi, 4
    inc     eax
    loop    init_loop
    
    mov     ecx, 100
    mov     edi, array
    xor     eax, eax
    
sum_loop:
    add     eax, [edi]
    add     edi, 4
    loop    sum_loop
    
    mov     ebx, eax
    mov     eax, sum_msg
    call    print_string
    mov     eax, ebx
    call    print_int
    call    print_nl
    
    popa
    mov     eax, 0
    leave
    ret
