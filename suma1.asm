%include "io.mac"

.DATA
msg_1 db "Indique el primer operando: ",0
msg_2 db "Indique el segundo operando: ",0

.UDATA
primero resb 31
segundo resb 31

.CODE
    .STARTUP
    PutStr msg_1
    nwln
    GetLInt [primero]
    PutStr msg_2
    GetLInt [segundo]
    
    inicio:
    mov eax,[primero]
    add eax,[segundo]
    PutLInt eax
    
    fin:
    nwln
    .EXIT