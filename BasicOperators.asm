include \masm32\include\masm32rt.inc

	.data 					; declare variables
		var1 dd 0			; int var1 = 0
		var2 dd 0			; int var2 = 0
		
	.code
	start:  				; begining of program
	
		; input
		; mov var1, sval(input("var1 = "))
		; mov var2, sval(input("var2 = "))
		mov var1, 100b					; 4  
		mov var2, 11111111111111b 		; 16383
		; add
		; mov eax, var1
		; add eax, var2
		; print str$(eax)
		; print chr$(13, 10)
		
		; subtract
		; mov eax, var1
		; sub eax, var2
		; print str$(eax)
		; print chr$(13, 10)
		
		; multiply
		; mov eax, var1
		; mul var2 			; result store in eax
		; print str$(eax)
		; print chr$(13, 10) 	; new line
		
		
		; Unsigned binary division of accumulator by source.  If the source
		; divisor is a byte value then AX is divided by "src" and the quotient
		; is placed in AL and the remainder in AH.  If source operand is a word
		; value, then DX:AX is divided by "src" and the quotient is stored in AX
		; and the remainder in DX.
		; divide
		; 
		
 
		mov edx, 0			; DX:AX
		mov eax, var1 		; push dividend to eax register
		div var2		 		; DX:AX = 100000000000000000000000000000100b = 4294967300d result store in eax, edx -> q, r
		mov var1, edx
	
		print str$(eax)		; quotient
		print chr$(13, 10) 
		print str$(var1) 	; remainder
		print chr$(13, 10) 
		
		exit
	end start ; end program