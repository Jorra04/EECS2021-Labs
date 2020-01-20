src: 	DD -1, 55, -3, 7, 0
	addi x8, x0, 8
	ld x7, src(x0)
loop: 	ld x6, src(x8)
	beq x6, x0, end
	blt x7, x6, copy
	addi x8,x8,8
	beq x0, x0, loop
copy: 	add x7, x0, x6
	add x5, x0, x6
	addi x8, x8, 8
	beq x0, x0, loop

end: 	ebreak x0, x0, 0	]