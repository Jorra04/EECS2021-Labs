s1: DC "Find all divisors"
s2: DC "Enter i:\0"
s3: DC "Divisors:"

addi x2, x0, s1
addi x3, x0, s2
addi x4, x0, s3

ecall x0, x2, 4
ecall x3, x3, 4
ecall x6, x0, 5
ecall x0, x4, 4

addi x20, x6, 1

loop:
	addi x30, x30, 1
	rem x31, x6,x30
	beq x0, x31, outp
	beq x30, x20, end
	beq x0, x0, loop
outp:
	ecall x0, x30, 0
	beq x0, x0, loop
end:
	ebreak x0, x0, 0