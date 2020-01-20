module labL;
parameter SIZE = 32;
reg [SIZE-1:0] a,b, expect;
reg c;
wire [SIZE-1:0] z;
integer i,j,k;

yMux MyMux(z,a,b,c);
initial
begin
    repeat (10)
    begin
    a = $random;
    b = $random;
    c = $random % 2;
    #1;
    if(c===0)
        expect = a;
    else
        expect =b;
    
    if(expect === z)
        $display("PASS");
    else
        $display("FAIL");
    
    end
    $finish;
end

endmodule