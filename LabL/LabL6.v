module labL;
parameter SIZE = 32;
reg [SIZE-1:0] a,b;
reg[SIZE-1:0] expect;
reg carry;
wire [SIZE-1:0] z;
wire cOut;
integer i,j,k;

yAdder MyAdder(z,cOut,a,b,carry);
initial
begin
    repeat (10)
    begin
    a = $random;
    b = $random;
    carry = 0;
    expect = a+b;
        #1;
        if(expect === z)
            $display("PASS");
        else
            $display("FAIL");
    end
    $finish;
end

endmodule