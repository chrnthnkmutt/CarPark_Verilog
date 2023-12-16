`timescale 1ns / 1ns

module Parking_System(
    input clock,
    input floor,
    input [4:0] slot,
    input [4:0] slot2,
    output reg led_floor,
    output reg [4:0] available,
    output reg [4:0] availablex,  // Renamed from availablex to availablex
    output [6:0] seg,
    output reg [3:0] an
);
reg [3:0] display;
seven_seg s1(display, seg);

wire slowclock;
slowclock_100Hz s2(clock, slowclock);

wire five_sec;
delay2_clock s3(clock, five_sec);

wire [2:0] count, car_available;
wire [2:0] count2, car_availablex;
counter s4(clock, slot, count, car_available);
counter s5(clock, slot2, count2, car_availablex);

reg [1:0] enable = 0;
reg [1:0] change = 0;

// LED control for parking slots on floor 1
always @(slot) begin
    case(slot)
        0: available = 5'b11111;
        1: available = 5'b11110;
        2: available = 5'b11101;
        3: available = 5'b11100;
        4: available = 5'b11011;
        5: available = 5'b11010;
        6: available = 5'b11001;
        7: available = 5'b11000;
        8: available = 5'b10111;
        9: available = 5'b10110;
        10: available = 5'b10101;
        11: available = 5'b10100;
        12: available = 5'b10011;
        13: available = 5'b10010;
        14: available = 5'b10001;
        15: available = 5'b10000;
        16: available = 5'b01111;
        17: available = 5'b01110;
        18: available = 5'b01101;
        19: available = 5'b01100;
        20: available = 5'b01011;
        21: available = 5'b01010;
        22: available = 5'b01001;
        23: available = 5'b01000;
        24: available = 5'b00111;
        25: available = 5'b00110;
        26: available = 5'b00101;
        27: available = 5'b00100;
        28: available = 5'b00011;
        29: available = 5'b00010;
        30: available = 5'b00001;
        31: available = 5'b00000;
    endcase
end

// LED control for parking slots on floor 2, now using availablex
always @(slot2) begin
    case(slot2)
        0: availablex = 5'b11111;
        1: availablex = 5'b11110;
        2: availablex = 5'b11101;
        3: availablex = 5'b11100;
        4: availablex = 5'b11011;
        5: availablex = 5'b11010;
        6: availablex = 5'b11001;
        7: availablex = 5'b11000;
        8: availablex = 5'b10111;
        9: availablex = 5'b10110;
        10: availablex = 5'b10101;
        11: availablex = 5'b10100;
        12: availablex = 5'b10011;
        13: availablex = 5'b10010;
        14: availablex = 5'b10001;
        15: availablex = 5'b10000;
        16: availablex = 5'b01111;
        17: availablex = 5'b01110;
        18: availablex = 5'b01101;
        19: availablex = 5'b01100;
        20: availablex = 5'b01011;
        21: availablex = 5'b01010;
        22: availablex = 5'b01001;
        23: availablex = 5'b01000;
        24: availablex = 5'b00111;
        25: availablex = 5'b00110;
        26: availablex = 5'b00101;
        27: availablex = 5'b00100;
        28: availablex = 5'b00011;
        29: availablex = 5'b00010;
        30: availablex = 5'b00001;
        31: availablex = 5'b00000;
    endcase
end
// Floor LED indicator control
always @(floor) begin
    case (floor)
        0: led_floor = 1'b0; // Floor 1
        1: led_floor = 1'b1; // Floor 2
    endcase
end

// Update display enable
always @(posedge slowclock) begin
    enable <= enable + 1;
end

// Change display content
always @(posedge five_sec) begin
    change <= change + 1;
end

// Anode control for 7-segment display
always @(posedge slowclock) begin
    case(enable)
        2'b00: an = 4'b1110;
        2'b01: an = 4'b1101;
        2'b10: an = 4'b1011;
        2'b11: an = 4'b0111;
    endcase
end

// Control logic for the 7-segment display based on the selected floor and parking slot availability
always @(posedge slowclock) begin
    case (change)
        2'b00: // Display floor number
            begin
                case(enable)
                    2'b00: display = floor == 0 ? 1 : 2;
                    2'b01: display = 0;
                    2'b10: display = 6;
                    2'b11: display = 8;
                endcase
            end

        2'b01: // Display if full or open
            begin
                if (floor == 0) begin // Floor 1
                    if (car_available == 0) begin // Full
                        case(enable)
                            2'b00: display = 6;
                            2'b01: display = 6;
                            2'b10: display = 7;
                            2'b11: display = 8;
                        endcase
                    end else begin // Open
                        case(enable)
                            2'b00: display = 12;
                            2'b01: display = 11;
                            2'b10: display = 10;
                            2'b11: display = 9;
                        endcase
                    end
                end else begin // Floor 2
                    if (car_availablex == 0) begin // Full
                        case(enable)
                            2'b00: display = 6;
                            2'b01: display = 6;
                            2'b10: display = 7;
                            2'b11: display = 8;
                        endcase
                    end else begin // Open
                        case(enable)
                            2'b00: display = 12;
                            2'b01: display = 11;
                            2'b10: display = 10;
                            2'b11: display = 9;
                        endcase
                    end
                end
            end

        2'b10, 2'b11: // Show number of slots available
            begin
                case(enable)
                    2'b00: 
                        if (floor == 0) display = {1'b0, car_available};
                        else display = {1'b0, car_availablex};
                    2'b01: display = 15;
                    2'b10: display = 13;
                    2'b11: display = 10;
                endcase
            end
    endcase
end

endmodule
