include \masm32\include\masm32rt.inc

	.data 					; declare variables
		var1 dd 0			; int var1 = 0
		var2 dd 0			; int var2 = 0
		
	.code
	start:  				; begining of program
	
		; input
		mov var1, sval(input("var1 = "))
		mov var2, sval(input("var2 = "))
		
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
		
		; divide
		mov edx, 0 			; reset remainder value
		mov eax, var1 		; push dividend to eax register
		mov ebx, var2		; push divisor
		div ebx				; result store in eax, edx -> q, r
	
		print str$(eax)		; quotient
		print chr$(13, 10) 
		print str$(edx) 	; remainder
		
		exit
	end start ; end program