; vim: set ft=nasm: set syntax=nasm:

; Define usage for external programs
global add42

; Define: int add42(int x)
add42:
    ; prologue (required)
    push    ebp             ; Save base pointer on stack
    mov     ebp, esp        ; Set base pointer to current stack pointer
    ; function parameters
    mov     eax, [ebp+8]    ; Copy next address (where func param is) into EAX
    ; function & return
    add     eax, 42         ; return (eax + 42)
    ; epilogue (required)
    mov    esp, ebp         ; Set stack pointer to current base pointer
    pop    ebp              ; Restore base pointer from stack
    ret                     ; pop eax && jmp eax
