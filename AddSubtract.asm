include \masm32\include\masm32rt.inc

	.data
		n1 dd 0 ; doubleword, 4 bytes, signed number
		n2 dd 0 
	.code
	
		start:				; start program
		
			mov n1, 12
			mov n2, 33
			
			; sub = n1 - n2 = -21
			mov eax, n1
			sub eax, n2
			print str$(eax)
			print chr$(13, 10)
				
			; add = n1 + n2
			mov eax, n1
			add eax, n2
			print str$(eax) ; 45
			print chr$(13, 10)
		
			; inc
			mov eax, n1
			inc eax
			print str$(eax) ; 13
			print chr$(13, 10)
			
			mov eax, n2
			dec eax
			print str$(eax) ; 33
			print chr$(13, 10)
			
			print chr$(13, 10)
			exit
		end start			; end program