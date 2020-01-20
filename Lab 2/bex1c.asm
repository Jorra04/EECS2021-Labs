ORG 0x0
a: DD 0xAAAABBBBCCCCDDDD
ORG 0x8
b: DD 0x4444333322221111
c: DM 8
ld x5, a(x0)
ld x6, b(x0)

add x7, x5, x6
sd x7, c(x0)
sub x7, x5, x6
sd x7, c+8(x0)
sub x7, x6, x5
sd x7, c+16(x0)
and x7, x5, x6
sd x7, c+24(x0)
or x7, x5, x6
sd x7, c+32(x0)
xor x7, x5, x7
sd x7, c+40(x0)

xori x7, x5, -1
sd x7, c+48(x0)
xori x7, x6, -1
sd x7, c+56(x0)
