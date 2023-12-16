`timescale 1ns / 1ns

module delay2_clock(
    input clk_in,
    output reg clk_out
    );
    reg [35:0] period_count = 0;
    always @(posedge clk_in)
    if(period_count != 500000000 - 1)
    begin
    period_count <= period_count + 1;
    clk_out <= 0;
    end
    else
    begin
    period_count <= 0;
    clk_out <= 1;
    end
endmodule