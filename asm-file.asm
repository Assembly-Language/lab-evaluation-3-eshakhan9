INCLUDE Irvine32.inc
.data
msg db "assembly procedure end now", 0

.code
asmfunc PROC p1:ptr DWORD, p2:ptr DWORD
mov esi,p1
mov edi,p2
next:
mov eax,[esi]
test eax,8000000h
jnz return
pushfd
add esi,type p1
popfd
jz next
ret
return:
mov [edi],eax
mov p2,eax
ret

asmfunc ENDP
end