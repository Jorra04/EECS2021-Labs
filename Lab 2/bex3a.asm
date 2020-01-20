a1: DC "What is your name?"
b1: DC "Hello "
c1: DC " !"
ld x7, b1(x0)
ld x8, c1(x0)

addi x5, x0, a1
ecall x0, x5, 4
ecall x6, x0, 8
ecall x7, x7, 3
ecall x6, x6, 3
ecall x8, x8, 3

ebreak x0,x0, 0