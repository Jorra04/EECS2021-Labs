module labK;
reg a,b,c,expect;
integer i,j,k;

wire notOut,firstAnd,secondAnd,finalOr;
not(notOut,c);
and(firstAnd,notOut,a);
and(secondAnd,c,b);
or(finalOr,firstAnd,secondAnd);
initial
begin
	for(i = 0; i <2;i++)
	begin
		for(j=0;j<2;j++)
		begin
			for(k=0;k<2;k++)
			begin
				a=i;b=j;c=k;
				expect= ((a&~c) | (c&b));
				#5;
				if(expect === finalOr)
					$display("PASS: a=%b b=%b c=%b final=%b", a,b,c,finalOr);
				else
					$display("FAIL: a=%b b=%b c=%b final=%b", a,b,c,finalOr);
			end
		end
	
	end
	$finish;
	
end



endmodule