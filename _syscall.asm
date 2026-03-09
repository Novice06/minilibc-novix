[bits 32]

global __sys_open
__sys_open:

    ret

global __sys_read
__sys_read:
    ret

global __sys_write
__sys_write:
    ; make new call frame
    push ebp             ; save old call frame
    mov ebp, esp         ; initialize new call frame

    ; calle-save
    push ebx
    push esi
    push edi

    mov eax, 14
    mov ecx, [ebp + 16]     ; low size
    mov edx, [ebp + 20]     ; high size
    mov ebx, [ebp + 8]      ; fd
    mov esi, [ebp + 12]      ; buffer
    int 0x80

    ; the syscall already puts the higher size in edx
    mov eax, ecx    ;return value edx:eax

    pop edi
    pop esi
    pop ebx

    ; restore old call frame
    mov esp, ebp
    pop ebp
    ret

global __sys_close
__sys_close:
    ret

global __sys_exit
__sys_exit:
    ret

global __sys_sbrk
__sys_sbrk:
    ret

global __sys_getpid
__sys_getpid:
    ret

global __sys_execve
__sys_execve:
    ret