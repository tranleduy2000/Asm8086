include \masm32\include\masm32rt.inc

	.data
		num1 dd 0			; doubleword, default = 0, 16 bits word -> 4 bytes
		num2 dd 0
	.code
		start:				; begin program
			; mov num1, sval(input("Num1 = "))
			; mov num2, sval(input("Num2 = "))
			mov num1, 1110b
			mov num2, 0101b
			
			; and 
			print "And = "
			mov eax, num1
			and eax, num2 ; res = num1 and num2
			print str$(eax) ; 0100b = 4d
			print chr$(13, 10);
			
			; or 
			print "Or = "
			mov eax, num1
			or eax, num2
			print str$(eax)  ;1111b = 15d
			print chr$(13, 10);
			
			; xor
			print "xor = "
			mov eax, num1
			xor eax, num2
			print str$(eax)  ; 1011b = 11d
			print chr$(13, 10) 
			
			
			mov eax, 00000001b
			not eax
			mov num2, eax
			print "Not = "
			print str$(num2) ; ~00001110b = 11110001b
			print chr$(13, 10) 
			
			exit
		end start 			; end program