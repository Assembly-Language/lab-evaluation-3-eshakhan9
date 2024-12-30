.model flat, stdcall
.stack 4096
#include < Irvine32.inc >

.data
    prompt db "Sum of negative numbers in the array: %d", 0

.code

; Function to sum negative numbers in an array
asmfunc proc
    ; Arguments: arr (eax), size (edx), sum (ecx)
    ; eax: pointer to array
    ; edx: size of array
    ; ecx: pointer to sum variable

    ; Initialize sum to 0
    mov eax, 0          ; Clear eax to hold the sum
    mov ebx, [esp+4]    ; Get size of the array
    mov esi, [esp+8]    ; Get the address of the array
    mov edi, [esp+12]   ; Get the pointer to the sum variable

sum_loop:
    cmp ebx, 0          ; Check if we've reached the end of the array
    je done              ; If size is 0, end the loop

    ; Load the next array element into eax
    mov eax, [esi]
    cmp eax, 0          ; Check if the number is negative
    jge next_element    ; If it's not negative, skip the addition

    ; Add the negative number to the sum
    add [edi], eax

next_element:
    ; Move to the next array element and decrement the size
    add esi, 4          ; Move to the next element (4 bytes per integer)
    dec ebx             ; Decrease the remaining size
    jmp sum_loop        ; Repeat the loop

done:
    ret
asmfunc endp

end
