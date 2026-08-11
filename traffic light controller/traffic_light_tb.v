module traffic_light_tb;

reg clk;
reg reset;

wire red;
wire yellow;
wire green;

traffic_light uut(
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;

    #10;

    reset = 0;

    #10;
    #10;
    #10;
    #10;
    #10;
    #10;

    $finish;

end

initial
begin

    $monitor("Time = %0t | Red = %b | Yellow = %b | Green = %b",
             $time, red, yellow, green);
end

endmodule