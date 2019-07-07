include \masm32\include\masm32rt.inc

	.code
		start:
			
			mov eax, 0 ; zero AC
			mov ebx, 0 ; start at 0
			
		L1: print "Count = "
			print str$(ebx)
			print chr$(13, 10)
			inc ebx
			cmp ebx, 5
			jl L1
			
			
			exit
			
		end start