module labL;

reg [1:0] a,b, expect;
reg c;
wire [1:0] z;
integer i,j,k;

yMux2 MyMux2(z,a,b,c);
initial
begin
    for(i = 0; i < 4; i++)
    begin
        for(j = 0; j < 4; j++)
        begin
            for(k = 0; k < 2; k++)
            begin
            a = i; b = j; c = k;
            if(c === 0)
                expect = a;
            else
                expect = b;
            #1;

            if(expect === z)
                $display("PASS");
            else
                $display("FAIL");     
            end
        end
    end
    $finish;
end

endmodule