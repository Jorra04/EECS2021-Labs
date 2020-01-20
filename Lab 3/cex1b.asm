s1: DC "sum(1..n-1) enter n:"
c1: DC "sum(1.."
c2: DC ")="
s2: DC "\n(n*(n-1))/2="

	addi x2, x0, s1
	ecall x1, x2, 4
	ld x3, c1(x0) 
	ld x4, c2(x0)
	addi x5, x0, s2
	ecall x6, x0, 5
	addi x11, x6, -1
	mul x12, x11, x6
	addi x25, x0, 2
	div x12, x12, x25

sum:
	addi x7, x7, 1
	beq x7, x6, end
	add x10, x10, x7
	beq x0, x0, sum
end:
	ecall x1, x3, 3
	ecall x11, x11, 0
	ecall x4, x4, 3
	ecall x10, x10,0
	ecall x1, x5, 4
	ecall x12, x12, 0