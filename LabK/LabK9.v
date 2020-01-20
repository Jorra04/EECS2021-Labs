module labk;
reg a,b,c;
reg [1:0] expect;
integer i, j ,k;
wire exclusiveOr1, andGate1,andGate2;
wire exclusiveOr2,finalOr,z,COut;
xor(exclusiveOr1,a,b);
and(andGate1,a,b);
xor(exclusiveOr2,exclusiveOr1,c);
and(andGate2,c,exclusiveOr1);
or(finalOr,andGate2,andGate1);
initial
begin
    for(i=0;i<2;i++)
    begin
        for(j=0;j<2;j++)
        begin
            for(k=0;k<2;k++)
            begin
            a=i;b=j;c=k;
            expect = a+b+c; 
            #1;
            if((expect[0]===exclusiveOr2)&&(expect[1]===finalOr))
            $display("PASS: a=%b b=%b c=%b output=%b",a,b,c,finalOr);
            else
            $display("FAIL: a=%b b=%b c=%b output=%b",a,b,c,finalOr);
            end
            
        end
    end
    $finish;
end
endmodule