;ESHA MUBASHIR KHAN
;1151

;Write a program that takes an array of numbers (with both positive and negative values) 
;from the user (or declare ) and displays the total no. of  positive numbers from the array

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0


.code
asmfunc PROC p1:DWORD, p2:DWORD
    
   mov esi,p1
   mov edi,p2
   
   mov ecx,10

 pass:
    mov eax,[esi]
    test eax, 8000h
    jNz skip
    mov eax,[edi]
    add eax,1
    mov [edi],eax


skip:
    add esi,4
    loop pass

    ret
asmfunc ENDP
end