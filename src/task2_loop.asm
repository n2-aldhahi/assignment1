%include "asm_io.inc"

segment .data
    prompt1 db "Enter your name: ", 0
    prompt2 db "Enter count (50-100): ", 0
    welcome db "Welcome ", 0
    error_msg db "Error: count must be between 50 and 100", 0
    newline db 10, 0

segment .bss
    name_buf resb 50
    count resd 1

segment .text
    global asm_main

asm_main:
    enter   0,0
    pusha

    mov     eax, prompt1
    call    print_string
    mov     eax, name_buf
    mov     ebx, 50
    call    read_string
    
    mov     eax, prompt2
    call    print_string
    call    read_int
    mov     [count], eax
    
    cmp     eax, 50
    jl      error
    cmp     eax, 100
    jg      error
    
    mov     ecx, [count]
print_loop:
    mov     eax, welcome
    call    print_string
    mov     eax, name_buf
    call    print_string
    call    print_nl
    loop    print_loop
    
    jmp     done

error:
    mov     eax, error_msg
    call    print_string
    call    print_nl
    
done:
    popa
    mov     eax, 0
    leave
    ret
