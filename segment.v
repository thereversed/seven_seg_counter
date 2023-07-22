`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2023 12:22:19 AM
// Design Name: 
// 
// 
//////////////////////////////////////////////////////////////////////////////////


module segment( input [3:0]switch, input clk, output reg [6:0] seg
    );
    
     always @( posedge clk)
    begin
        case (switch) //case statement
            4'b0000 : seg <= 7'b0000001; // (abcdefg) format
            4'b0001 : seg <= 7'b1001111;
            4'b0010 : seg <= 7'b0010010;
            4'b0011 : seg <= 7'b0000110;
            4'b0100 : seg <= 7'b1001100;
            4'b0101 : seg <= 7'b0100100;
            4'b0110 : seg <= 7'b0100000;
            4'b0111 : seg <= 7'b0001111;
            4'b1000 : seg <= 7'b0000000;
            4'b1001 : seg <= 7'b0000100;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 7'b1111111; 
        endcase
    end
endmodule
