;; This was made by a machine!

	global _main  	 ; Entry point
	extern _printf  	 ; Output
	extern _scanf  	 ; Input
	extern _getchar  	 ; Gobbler
	extern _fflush  	 ; Flush buffers to stdout

;; TEXT Section
	section .text  
_main:   	 ; Begin MAIN
	push ebp 	 ; Save base pointer
	mov ebp, esp 	 ; new base
	sub esp, 60 	 ; Reserve memory for local variables
	add esp, -4 	 ; Stack fix
	push dword [_L_0_] 	 ; Emitting a variable
;; Pushing array element onto the stack
	mov esi, arr 	 ; Store address of first element
	pop eax 	 ; get index
  mov ebx, 4
	mul ebx	 ; Adjust for size
	add esi, eax 	 ; Get element at corrent index
	push dword [esi] 	 ; push value to stack
;; Writing an INT
	push dword _intStr 
	call _printf 	 ; Make the call
	add esp, 12 	 ; stack fixed
;; Now FLUSH!
	sub esp, 8 
	push dword 0 	 ; flush all buffers to stdout
	call _fflush 	 ; make the call
	add esp, 12 	 ; Clean up stack
;; Printing a linebreak
	push ebp 
	mov ebp, esp 
	push dword _NEW_LINE_ 	 ; pushing line break
	push dword _strStr 
	call _printf 	 ; Make the call
	add esp, 8 	 ; Fix stack
	mov esp, ebp 
	pop ebp 	 ; Stack frame restored
_EXIT_MAIN:   	 ; End of MAIN
	add esp, 60 	 ; Deallocate local memory
	mov esp, ebp 
	pop ebp 	 ; Fix stack
	push dword 0 
	mov eax, 0x1 
	sub esp, 4 
	int 0x80 	 ; Make exit call
_ENTER_FUNC:   	 ; Begin FUNC
	push ebp 	 ; Save base pointer
	mov ebp, esp 	 ; new base
	sub esp, 52 	 ; Reserve memory for local variables
	push dword [_L_1_] 	 ; Emitting a variable
;; Assignment
	pop dword eax 
	mov [ebp + 8], eax 	 ; make the move
	add esp, -4 	 ; Stack fix
	push dword [ebp + 8] 	 ; Emitting a variable
;; Writing an INT
	push dword _intStr 
	call _printf 	 ; Make the call
	add esp, 12 	 ; stack fixed
;; Now FLUSH!
	sub esp, 8 
	push dword 0 	 ; flush all buffers to stdout
	call _fflush 	 ; make the call
	add esp, 12 	 ; Clean up stack
;; Printing a linebreak
	push ebp 
	mov ebp, esp 
	push dword _NEW_LINE_ 	 ; pushing line break
	push dword _strStr 
	call _printf 	 ; Make the call
	add esp, 8 	 ; Fix stack
	mov esp, ebp 
	pop ebp 	 ; Stack frame restored
_EXIT_FUNC:   	 ; End of FUNC
	add esp, 60 	 ; Deallocate local memory
	mov esp, ebp 
	pop ebp 	 ; Fix stack
	ret  

	section .bss 
	_TEMP_REAL_: resb 8 	 ; Temporary storage for reals
A: resb 40 
H: resb 4 
_TEMP_INT_: resb 4 

	section .data 
_intStr: db "%d", 0 
_realStr: db "%f", 0 
_strStr: db "%s", 0 
_NEW_LINE_: db 10, 0 	 ; Just a carriage return
_NEGATIVE_: dq -1.0  	 ; Just negative one
_INT_IN_: db "%d", 0  
_REAL_IN_: db "%lf", 0  
_L_1_: dd 12 
_L_0_: dd 1 
arr:  dd 12, 13, 4, 10, 11