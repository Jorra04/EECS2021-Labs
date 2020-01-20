module labK;
reg [31:0] x, y, z;
integer i; /* this is used to
intitialize the loop variable, as it cannot
be done in the loop( as far as i know)*/
initial

begin

    #10 x = 5;
    //$display("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);
    
    #10 y = x + 1;
    //$display("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);
    #10 z = y + 1;
    //$display("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);
    $finish;
end
initial
    $monitor("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);
always
    #7 x = x + 1; //does the same thing as loop
    // repeat(4)
    //     #7 x = x + 1;  one way to do the loop

    /*for(i = 0; i < 4; i = i +1)
        #7 x = x +1;
        */

endmodule