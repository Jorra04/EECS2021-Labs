str1: DC "sampled text\0"
STACK: EQU 0x100000 ;stack
	lui sp, STACK>>12
	addi a2, x0, str1+6 ;chaddr
	addi a3, x0, 6 ;#ch
	jal x1, delch
	addi x6, x0, str1 ;output
	ecall x0, x6, 4
	ebreak x0, x0, 0 ;finish

delch: 	sd x1, 0(sp) ;push
	sd s0, -8(sp) ;push
	sd s1, -16(sp) ;push
	addi sp, sp, -24 ;push
	addi s0, a2, 0
	addi s1, a3, 0
	bge x0, s1, end2
loop2: jal x1, delch
	addi a2, s0, 0
	addi s1, s1, -1
	bne s1, x0, loop2
end2: addi sp, sp, 24 ;pop
	ld x1, 0(sp) ;pop
	ld s0, -8(sp) ;pop
	ld s1, -16(sp) ;pop
	jalr x0, 0(x1) ;return