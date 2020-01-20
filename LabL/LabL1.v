module labL;
reg a,b,c,expect;
wire z;

integer i,j,k;

yMux1 myMux(z,a,b,c);

initial
begin
    for(i = 0; i < 2;i++)
    begin
        for(j = 0; j < 2; j++)
        begin
            for(k = 0; k < 2; k ++)
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