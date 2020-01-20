vec1:	DF	1.21,	5.85,	-7.3,	23.1,	-5.55
vec2:	DF	3.14,	-2.1,	44.2,	11.0,	-7.77


addi x25, x0, 40


loop:
	beq x25, x26, end
	fld f10, vec1(x26)
	fld f11, vec2(x26)
	fmul.d f12, f10, f11
	fadd.d f13, f13, f12
	addi x26, x26, 8
	beq x0, x0, loop
end: 
	fsd f13, mem(x0)
	ebreak x0,x0, 0

mem: DM 1