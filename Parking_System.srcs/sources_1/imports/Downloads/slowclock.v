module slowclock_100Hz (input clk_in, //Basys 3 Board 100 MHz
output reg clk_out); //100Hz

reg [20:0] period_count = 0;
always @ (posedge clk_in)
if (period_count!= 500000 - 1) //
begin
period_count<= period_count + 1;
clk_out <= 0;
end
else
begin
period_count <= 0;
clk_out <= 1;
end
endmodule