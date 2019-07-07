include \masm32\include\masm32rt.inc

	.data
		n1 dd 0 		; 4 bytes
	.code
		start:
			mov n1, 10010b
		
			; shl
			mov eax, n1
			shr eax, 1 ; eax = 01001b = 9
			print str$(eax)
			print chr$(13, 10)
			
			mov eax, n1
			shl eax, 1 ; eax = 1001000b = 36
			print str$(eax)
			print chr$(13, 10)
			
			exit
		end start 		; exit program