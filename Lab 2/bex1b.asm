a: DD b
ORG 0x1000100010001000
b: DD 0x2222333344445555
ORG 0x1000100010001100
c: DD 0x1111222233334444
ld x5, a(x0)
ld x6, 0(x5)
ld x7, 0x100(x5)
add x5, x0, x0

add x10, x6, x7
sub x11, x6, x7
or x12, x6, x7
xor x13, x6, x7
