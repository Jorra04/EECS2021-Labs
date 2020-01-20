s0: DC "n! Enter n:"
s1: DC "!="

addi x2, x0, s0
addi x10, x0, s1

ecall x2, x2, 4
ecall x6, x6, 5

add x9, x6, x0
add x7, x6, x0


Cinp:
	beq x6, x0, end

fact:
	addi x7, x7, -1
	beq x7, x0, iszero
	mul x6, x6, x7
	beq x0, x0, fact
iszero: 
	addi x7, x0, 1
	mul x6, x6, x7
	ecall x9, x9, 0
	ecall x10, x10, 4
	ecall x6, x6, 0
	ebreak x0, x0, 0
end: 
	addi x1, x0, 1
	ecall x0, x9, 0
	ecall x10, x10, 4
	ecall x1, x1, 0