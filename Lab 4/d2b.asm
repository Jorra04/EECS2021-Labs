str1: DC "sampled text\0"
	addi a2, x0, str1+6 ;chaddr
	jal x1, delch1
	addi x6, x0, str1 ;output
	ecall x0, x6, 4
	ebreak x0, x0, 0 ;finish
delch1: lb x5, 0(a2)
loop1: 	beq x5, x0, end1
	lb x5, 1(a2)
	sb x5, 0(a2)
	addi a2, a2, 1
	jal x0, loop1
end1: jalr x0, 0(x1) ;return


