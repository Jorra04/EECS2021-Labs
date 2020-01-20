module yMux2(z, a, b, c);
output [1:0] z;
input [1:0] a, b;
input c;
yMux1 mine[1:0](z, a, b, c);
endmodule