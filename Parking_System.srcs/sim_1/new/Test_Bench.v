`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2021 06:15:21 PM
// Design Name: 
// Module Name: Test_Bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Test_Bench(

    );
    reg [4:0] cars;
    wire [6:0] seg;
    wire [4:0] leds;
    wire [3:0] an;
    reg clock;
    
    Parking_System PS(clock, cars, leds, seg, an);
    initial
    begin
    clock=0;
    forever
    #10clock=~clock;
    end
    
    initial 
    begin
    cars=5'b11111;
    #20;
    cars=5'b11011;
    #20;
    cars=5'b11000;
    #20;
    cars=5'b00000;
    #20;
    end
    
    
    endmodule
