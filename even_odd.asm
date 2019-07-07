include \masm32\include\masm32rt.inc 
    .data
        num dd 0 	; 32 bits reg eax, edx, ebx ...
		remainder dd 0
	.code
	start:
		mov num, sval(input("Enter number: "))
		
		mov eax, num
		mov edx, 0  	; reset high bits
		mov ecx, 2
		div ecx
		
		cmp edx, 0
		je evenNum
		jne oddNum
	evenNum:
		print "Even number"
		exit
	oddNum:
		print "Odd number"
		exit
	end start
		