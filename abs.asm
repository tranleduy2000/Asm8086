include \masm32\include\masm32rt.inc

	.data
		num dd 0 ; eax, edx, ecx, ebx
	.code
	start:
		mov num, 0
		cmp num, 0
		jl lessThanZero
		jge greaterOrEqualZero
		
	lessThanZero:
		neg num
		print "lessThanZero "
		print str$(num)
		exit
	greaterOrEqualZero:
		print "greaterOrEqualZero "
		print str$(num)
		exit
		
	end start
		