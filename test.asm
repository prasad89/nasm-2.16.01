section .data
	msg db "Hello World!!!",10,0
section .text
	global main
	extern printf
main:
	; mav esi,477777777777777			
	; test.asm:7: error: parser: instruction expected

	; mov esi,477777777777777
	; test.asm:9: warning: dword data exceeds bounds [-w+number-overflow]

	; mov exi
	; test.asm:13: error: symbol `exi' not defined
	
	; mov esi,
	; test.asm:16: error: invalid combination of opcode and operands
	
	; lp
	; test.asm:19: warning: label alone on a line without a colon might be in error [-w+label-orphan]
	
	; lp:
		; mov eax,4
	; lp:
	; test.asm:24: error: label `lp' inconsistently redefined
	; test.asm:22: info: label `lp' originally defined here
	
	

	push msg
	call printf
	add esp,4	
endof:
	ret
