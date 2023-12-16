`timescale 1ns / 1ns  // Defines the simulation time unit and time precision

module counter(
    input clk,  // Clock input
    input [4:0] switches,  // 5-bit input representing the state of switches
    output reg [2:0] switchCount,  // 3-bit output to count the number of switches on
    output reg [2:0] availableSwitchCount  // 3-bit output to count the number of switches off
);

// This always block triggers on the rising edge of the clock
always @(posedge clk) begin
    // Count the number of switches that are turned on
    // Each bit in the 'switches' input represents a switch, where 1 indicates the switch is on
    switchCount <= switches[4] + switches[3] + switches[2] + switches[1] + switches[0];

    // Count the number of available switches (those that are still off)
    // As there are 5 switches in total, the number of off switches is 5 minus the number of on switches
    availableSwitchCount <= 5 - switchCount;
end

endmodule