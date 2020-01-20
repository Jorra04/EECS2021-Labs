addi x6, x0, 2
addi x7, x0, 3
add x5, x6, x7

addi x6, x0, 2
addi x5, x6, 3

addi x6, x0, 2
addi x7, x0, -3
add x5, x6, x7

addi x6, x0, 2
addi x7, x0, 3
sub x5, x6, x7

addi x6, x0, 17
slli x5, x6, 2

addi x6, x0, 88
srli x5, x6, 3

addi x6, x0, -88
srli x5, x6, 3

addi x6, x0, 0x123
slli x7, x6, 56
srli x5, x7, 60

addi x6, x0, 0x123
andi x7, x6, 0x0f0
srli x5, x7, 4

addi x6, x0, 0x123
andi x6, x6, 0x0f0
addi x7, x0, 0x456
andi x7, x7, 0xf0f
or x5, x6, x7


addi x6, x0, 0x123
xori x5, x6, -1

lui x6, 1
addi x6, x6, 2

lui x6, 1
addi x6, x6, 2
addi x7, x0, 3
add x5, x6, x7

lui x6, 1
addi x6, x6, 2
addi x5, x6, 3

b20: EQU 6146 >> 12
b12: EQU 6146 & 0xfff

lui x6, 1
addi x6, x6, 0x802
addi x7, x0, 3
add x5, x6, x7

lui x6, 2
addi x6, x6, 0x802
addi x7, x0, 3
add x5, x6, x7

b20: EQU 6146 >> 12
b12: EQU 6146 & 0xfff
lui x6, b20 + 1
addi x6, x6, b12
addi x7, x0, 3
add x5, x6, x7

lui x6, (6146 >> 12) +1
addi x6, x6, 6146 & 0xfff
addi x5, x6, 3

c: EQU 0x1234567811223344
lui x6, (c & 0xffffffff) >> 12
addi x6, x6, c & 0xfff
lui x7, c >> 44
addi x7, x7, (c & 0xfff00000000) >> 32
slli x7, x7, 32
or x5, x6, x7

---------------------------------------------exercises
addi x3, x0, 11
addi x4, x0, 5
sub x5, x3, x4

addi x3, x0, 6
addi x4, x0, 11
sub x5, x3, x4

addi x1, x0, 1024
addi x2, x0, 512
addi x3, x0, 256
addi x4, x0, 128
sub x6, x1, x2
sub x7, x3, x4
sub x5, x6, x7

addi x1, x0, 888
addi x2, x0, 123
srli x3, x1, 3
slli x4, x2, 2
sub x6, x3, x4
slli x5, x6, 1

addi x1,  x0, -1
slli x5, x1, 32

addi x6, x0, 0x123
addi x7, x6, 2000
addi x10, x7, 2000
addi x11, x10, 369
slli x5, x11, 32

addi x1, x0, -0x5
addi x2, x0, 1
xori x4, x1, -1
add x5,x4,x2

addi x1, x0, 1234
addi x2, x0, 567
addi x3, x0, 89
add x4, x2,x3
xori x5, x4, -1
add x6, x1, x5
addi x7, x0, 1
add x7, x7, x6

addi x6, x0, 0x123
slli x7, x6, 60
addi x8, x0, 0x12
add x5, x8, x7

lui x4, 2
addi x4, x4, -192
addi x5, x4,-20

lui x4, -2
addi x4, x4, 192
addi x5, x4,20

lui x3, 6
addi x3, x3, -1120
lui x6, 3
addi x6,x6,57
sub x5, x3,x6

lui x6, 0x12346
addi x6, x6, 0x878
slli x6,x6, 32
lui x7, 0x11223
addi x7, x7, 0x333
add x5, x6, x7