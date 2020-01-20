module labk;
reg a,b,c,expect;
integer i,j,k;
wire notOutput,firstAnd,secondAnd,orFinal;

not myNot(notOutput,c);
and myAnd1(firstAnd,notOutput,a);
and myAnd2(secondAnd,c,b);
or myOr(orFinal, firstAnd,secondAnd);

initial
begin
    for(i=0;i<2;i++)
    begin
        for(j=0;j<2;j++)
        begin
            for(k=0;k<2;k++)
            begin
                a=i;b=j;c=k;
                expect = (a&~c) | (c&b);
                #1;
                if(orFinal === expect)
                    $display("PASS: a=%b b=%b c=%b output=%b",a,b,c,orFinal);
                else
                    $display("FAIL: a=%b b=%b c=%b output=%b",a,b,c,orFinal);    
            end
        end
    end
    $finish;
end

endmodule