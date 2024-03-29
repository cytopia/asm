; vim: set ft=nasm: set syntax=nasm:

SECTION .text
global _start

; Entrypoint
_start:
    push   5
    call   add42
    call   quit

;------------------------------------------
; int add42(int x);
; Add 42 to whatever integer val is provided
add42:
    ; prologue (required)
    push   ebp             ; Save base pointer on stack
    mov    ebp, esp        ; Set base pointer to current stack pointer
    ; function parameters
    mov    eax, [ebp+8]    ; Copy next address (where func param is) into EAX
    ; function & return
    add    eax, 42         ; return (EAX + 42)
    ; epilogue (required)
    mov    esp, ebp        ; Set stack pointer to current base pointer
    pop    ebp             ; Restore base pointer from stack
    ret                    ; pop EAX && jmp EAX

;------------------------------------------
; void exit(int status)
; Exit program and restore resources
quit:
    mov    ebx, eax        ; return EAX value as exit code
    mov    eax, 1          ; set SYS_EXIT (kernel opcode 1) for upcoming SYSCALL
    int    0x80            ; make SYSCALL
    ret                    ; pop EAX && jmp EAX
