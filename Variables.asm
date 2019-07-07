include \masm32\include\masm32rt.inc

	.data
		one dw 0 	; 16-bit words
		two dd 0 	; 32-bit 
		four dq 0 	; 64 bit
		
	.code
		start:
			mov eax, four
			print chr$("64 bit words", 13, 10)
			print str$(four)
		
			mov two, 2147483648
			print chr$("32 bit words", 13, 10)
			print str$(two)
			
			print chr$(10, 13)
			exit
		end start