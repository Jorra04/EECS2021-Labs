module labK;
reg [31:0] x; // a 32-bit register
reg [0:0] one;
reg[1:0] two;
reg[2:0] three;
initial
begin
$display("time = %5d, x = %b", $time, x);
x = 32'hffff0000;
$display("time = %5d, x = %b", $time, x);
x = x + 2;
$display("time = %5d, x = %b", $time, x);

one = &x;
two = x[1:0];
three = {one, two};

$display("one = %b", one);
$display("two = %b", two);
$display("three = %b",three);

$finish;
end
endmodule 