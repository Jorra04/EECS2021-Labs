a: DD 1024
b: DD 2048
c: DD 4096
d: DD 8192
ld x1, a(x0)
ld x2, b(x0)
ld x3, c(x0)
ld x4, d(x0)
add x5, x1, x2
add x5, x5, x3
add x5, x5, x4
srli x5, x5, 2
