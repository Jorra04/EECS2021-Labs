src:  DD 121, 33, -5, 242, -45, -12, 0
	ld x7, src(x0)
	addi x6, x0, 8
loop:	ld x5, src(x6)
	beq x5, x0, end
	blt x5, x7, copy
	addi x6, x6, 8
	beq x0, x0, loop
copy: 	add x7, x0, x5
	sd x7, src(x0)		
	addi x6, x6,8
	beq x0, x0, loop
end:	ebreak x0, x0,0