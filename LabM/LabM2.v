module labM;
reg [31:0] d, e, expect;
reg clk, enable;
wire [31: 0] z;

register #(32) mine(z, d, clk, enable);

initial
begin  
    repeat(20)
        begin
            #2 d = $random % 100; 
            #1;
        end
        $finish;
end

always
begin
            enable = 1;
            if(clk === 1) 
            e = z === d;
            #1;
            clk = 0; 
            #5 clk = ~clk; 
            #1;
end


initial
begin
            #1;
            $monitor("%5d: clk=%b d=%d z=%d expect=%d", $time, clk, d, z, e);
end


endmodule