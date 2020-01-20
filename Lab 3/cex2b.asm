d: 	DF 1.0
	fld f2,d(x0)
	addi x2,x0,10
	add x15,x2,x0 
	add x8,x2,x0 
	add x11,x2,x0
	addi x14,x0,1


factorial: 
	beq x11,x0,zerofactorial
	addi  x8,x8,-1
	beq x8,x0,connect 		
	mul x11,x11,x8 
	beq x0,x0,factorial



zerofactorial:
	add x11,x0,x14 
	beq x0,x0,compute

connect:
	mul x11,x11,x14 
	beq x0,x0,compute
	

compute:
	
	fcvt.d.l f5,x11 
	fdiv.d f3,f2,f5 
	fadd.d f6,f6,f3 
	addi x15,x15,-1
	add x8,x15,x0
	add x11,x15,x0
	blt x15,x0,final 	
	beq x0,x0,factorial

final:
	ebreak x0,x0,0 