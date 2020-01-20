module labL;
parameter SIZE = 32;
reg [SIZE-1:0] a,b,c,d, expect;
reg [1:0]selecter;
wire [SIZE-1:0] z;
integer i,j,k;

yMux4to1 MyMux(z,a,b,c,d,selecter);
initial
begin
    repeat (25)
    begin
    a = $random;
    b = $random;
    c = $random;
    d = $random;
    selecter = $random % 4;
    #1;
    if(selecter===0)
        expect = a;
    else if(selecter === 1)
        expect =b;
    else if(selecter === 2)
        expect = c;  
    else
        expect = d;

    if(expect === z)
        $display("PASS");
    else
        $display("FAIL");
    
    end
    $finish;
end

endmodule