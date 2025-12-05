%include "asm_io.inc"

segment .data
    msg     db  "Hello from Assembly!", 0

segment .bss

segment .text
    global asm_main

asm_main:
    enter   0,0
    pusha

    mov     eax, msg
    call    print_string
    call    print_nl
    
    popa
    mov     eax, 0
    leave
    ret
