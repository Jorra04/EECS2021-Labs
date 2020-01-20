module labL;
parameter SIZE = 1;
reg [SIZE-1:0] a,b;
reg[1:0] expect;
reg [SIZE-1:0]carry;
wire [SIZE-1:0] z,cOut;
integer i,j,k;

yAdder1 MyAdder(z,cOut,a,b,carry);
initial
begin
    for(i = 0; i < 2; i++)
    begin
        for(j = 0; j < 2; j++)
        begin
            for(k = 0; k < 2; k++)
            begin
                a = i;b = j; carry = k;
                expect = a+b+carry;
                #1;
                if(expect[0] === z && expect[1] === cOut)
                    $display("PASS");
                else
                    $display("FAIL");
            end
        end

    end
    $finish;
end

endmodule