`timescale 1ns / 1ns
module seven_seg(
    input [3:0] display,
    output reg [6:0] segment
    );
    always @(display)
    begin
    case(display)
    //set 0-5
    0: segment = 7'b1000000; //0
    1: segment = 7'b1111001; //1
    2: segment = 7'b0100100; //2
    3: segment = 7'b0110000; //3
    4: segment = 7'b0011001; //4
    5: segment = 7'b0010010; //5
    //set FULL
    6: segment = 7'b1000111; //L
    7: segment = 7'b1000001; //U
    8: segment = 7'b0001110; //F
    //set OPEn
    9: segment = 7'b1000000; //O
   10: segment = 7'b0001100; //P
   11: segment = 7'b0000110; //E
   12: segment = 7'b0101011; //n
   //set =
   13: segment = 7'b0110111; //=
   15: segment = 7'b1111111; // space
    endcase
    end
endmodule