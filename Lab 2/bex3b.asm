a1: DC "Enter a integer"
b1: DC "Enter the mem address"

	addi x5, x0, a1
	addi x6, x0, b1

loop: 	ecall x0, x5, 4
	ecall x7, x0, 5
	ecall x0, x6, 4
	ecall x8, x0, 5
	sd x7, 0(x8)
	beq x0, x0, loop