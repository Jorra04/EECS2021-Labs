s1: DC "Find all divisors"
s2: DC "Enter i:\0"
s3: DC "Divisors:"
s4: DC "Prime\0"
s5: DC "Not Prime\0"
mem: DM 10

addi x2, x0, s1
addi x3, x0, s2
addi x4, x0, s3
addi x16, x0, 16
addi x10, x0, s4
addi x13, x0, s5

ecall x0, x2, 4
ecall x3, x3, 4
ecall x6, x0, 5
ecall x0, x4, 4
addi x20, x6, 1

loop:
	addi x30, x30, 1
	rem x31, x6, x30
	beq x0, x31, hold
	beq x30, x20, end
	beq x0, x0, loop

hold:
	sd x30, mem(x27)
	addi x27, x27, 8
	beq x0, x0, loop
end:
	beq x27, x16, isPrime
	bne x27, x16, isNotPrime
	ebreak x0,x0,0
isPrime:
	ecall x0, x10,4
	ebreak x0,x0,0
isNotPrime:
	ecall x0, x13, 4
