s1: DC "Enter a string:\0" 

	addi x30, x0, s1 

	ecall x0, x30, 4 ;out info string 

	addi x5, x0, s3 

	ecall x5, x0, 9 ;input a string 

loop: lb x6, 0(x5) 

	beq x6, x0, end1 ;end of string 

	addi sp, sp, -1 

	sb x6, 0(sp) ;push 

	addi x5, x5, 1 

	beq x0, x0, loop 

end1: addi x5, x0, s3 

loop1: lb x6, 0(x5) 

	beq x6, x0, end2 ;end of string 

	lb x7, 0(sp) ;pop 

	addi sp, sp, 1 

	addi x5, x5, 1 

	beq x6, x7, loop1 

	
	
s3: DM 1 

