module labK;
reg a,b,c,flag;

wire notOutput,firstAnd,secondAnd,orFinal;

not(notOutput,c);
and(firstAnd,notOutput,a);
and(secondAnd,c,b);
or(orFinal, firstAnd,secondAnd);

initial
begin
    flag = $value$plusargs("a=%b", a);
    if(flag === 0)
        begin
            $display("not a valid argument.");
            $finish;
        end
        
    flag = $value$plusargs("b=%b", b);
    if(flag === 0)
    begin
        $display("not a valid arguemnt.");
        $finish;
    end
    
    flag = $value$plusargs("c=%b", c);
    if(flag === 0)
    begin
        $display("not a valid arguemnt.");
        $finish;
    end
    
    #1;
    $display("a=%b b=%b c=%b z=%b flag=%b", a, b, c, orFinal,flag);
    $finish;
        
    
end 
endmodule
