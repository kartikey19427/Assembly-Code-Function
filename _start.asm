extern checkGreater

global _start



section		.text
_start:		mov rdi, x
			mov rsi, y


			call checkGreater

			mov rax, 1
			mov rbx, 0
			int 0x80
			ret


section .data
		msg1 db "1"
		lenUserMsg1 equ $-msg1
		msg0 db "0"
		lenUserMsg0 equ $-msg0
		x: equ 5
		y: equ 4



section .text

checkGreater:
		mov rax, rdi
		cmp rax, rsi
		jle L1
		mov rax, 1
		mov rdi, 1
		mov rsi, msg1
		mov rdx, lenUserMsg1
		syscall
		ret


L1:
		mov rax, 1
		mov rdi, 1
		mov rsi, msg0
		mov rdx, lenUserMsg0
		syscall

		mov rax, 1
		mov rbx, 0
		int 80h
		ret









