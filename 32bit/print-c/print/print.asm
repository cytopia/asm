; vim: set ft=nasm: set syntax=nasm:

; Define usage for external programs
global print

;------------------------------------------
; int print(char *msg, int length)
; Print message to stdout
print:
    ; prologue (required)
    push   ebp             ; Save base pointer on stack
    mov    ebp, esp        ; Set base pointer to current stack pointer
    ; function parameters
    mov    ebx, [ebp+0xc]  ; arg2: copy arg2 from stack into EBX
    mov    eax, [ebp+0x8]  ; arg1: copy arg1 address from stack into EAX
    ; function
    mov    edx, ebx        ; Message length
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
