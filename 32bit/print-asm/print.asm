; vim: set ft=nasm: set syntax=nasm:

SECTION .data
msg     db          'Hello World!', 0x0A      ; assign msg variable with your message string
len     equ $-msg        ; "$" means "here"
                      ; len is a value, not an address


SECTION .text
global _start

;------------------------------------------
; Entrypoint
_start:
    nop
    push   len        ; arg2: push string length onto the stack
    push   msg        ; arg1: push message address onto the stack
    call   print
    call   quit

;------------------------------------------
; int print(char *msg, int length)
; Print message to stdout
print:
    ; prologue (required)
    push   ebp             ; Save base pointer on stack
    mov    ebp, esp        ; Set base pointer to current stack pointer
    ; function parameters
    mov    ebx, [ebp+0xC]  ; arg2: copy arg2 from stack into EBX
    mov    eax, [ebp+0x8]  ; arg1: copy arg1 address from stack into EAX
    ; function
    mov    edx, ebx         ; Message length
    mov    ecx, eax        ; Get message address from EAX into ECX
    mov    ebx, 1          ; Print to stdout (FD == 1)
    mov    eax, 4          ; set SYSCALL value to SYS_WRITE
    int    0x80            ; make SYSCALL
    ; function return
    mov    eax, 0          ; return 0
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
    ret
