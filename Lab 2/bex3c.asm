dir: 	DC "John"
	DC "11111" 
	DC "Nick" 
	DC "22222" 
	DC "Sara" 
	DC "11111" 
	DC "Nick" 
	DC "33333" 
	DD 0

	addi x2, x0, 1 	

ask:	ecall x5, x0, 8			
	beq x0, x0, look 


look:	ld x6, dir(x7) 			
	addi x11, x7, 8				
	addi x12, x8, 1			
	
	beq x5, x6, nOn
	addi x7, x7, 8
	addi x8, x8, 1 				  
	beq x6, x0, clear			
	beq x0, x0, look
	
nOn:	beq x8, x0, gotnum
	beq x8, x2, gotname
	addi x8, x8, -2
	beq x0, x0, nOn

gotname: 	ld x9, -8(x7)
	ecall x0, x9, 3
	ecall x0, x6, 3
	beq x0, x0, resear

gotnum:	ld x9, 8(x7)
	ecall x0, x6, 3
	ecall x0, x9, 3
	beq x0, x0, resear

resear:	add x7, x0, x11
	add x8, x0, x12
	beq x0, x0, look

clear: 	add x5, x0, x0
	add x6, x0, x0
	add x7, x0, x0
	add x8, x0, x0
	add x9, x0, x0
	add x10, x0, x0
	add x11, x0, x0
	beq x0, x0, ask
	

