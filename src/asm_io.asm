section .text

global read_int
global print_int
global print_string
global print_nl
global read_char
global read_string

extern printf
extern scanf
extern getchar
extern fgets
extern stdin

section .data
int_fmt: db "%d", 0
str_fmt: db "%s", 0
nl: db 10, 0

section .text

read_int:
    push ebp
    mov ebp, esp
    sub esp, 4
    
    lea eax, [ebp-4]
    push eax
    push int_fmt
    call scanf
    add esp, 8
    
    mov eax, [ebp-4]
    mov esp, ebp
    pop ebp
    ret

print_int:
    push ebp
    mov ebp, esp
    
    push eax
    push int_fmt
    call printf
    add esp, 8
    
    mov esp, ebp
    pop ebp
    ret

print_string:
    push ebp
    mov ebp, esp
    
    push eax
    push str_fmt
    call printf
    add esp, 8
    
    mov esp, ebp
    pop ebp
    ret

print_nl:
    push ebp
    mov ebp, esp
    
    push nl
    call printf
    add esp, 4
    
    mov esp, ebp
    pop ebp
    ret

read_char:
    push ebp
    mov ebp, esp
    
    call getchar
    
    mov esp, ebp
    pop ebp
    ret

read_string:
    push ebp
    mov ebp, esp
    
    push dword [stdin]
    push dword [ebp+12]
    push dword [ebp+8]
    call fgets
    add esp, 12
    
    mov esp, ebp
    pop ebp
    ret
