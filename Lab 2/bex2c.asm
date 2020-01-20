a1: DD 1, 5, -7, 23, -5
b1: DD 3, -2, 4, 11, -7
 	addi x9, x0, 40

add: 	ld x5, a1(x7)
	ld x6, b1(x7)
	add x8, x5, x6
	sd x8, c1(x7)
	addi x7, x7, 8
	beq x7, x9, end
	beq x0, x0, end
end: 	ebreak x0, x0, 0

c1: DM 1