`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2023 12:36:53 AM

// 
//////////////////////////////////////////////////////////////////////////////////


module top_module(input clk, input rst, output [6:0]seg

    );
    
    wire oclk;
    wire [3:0] switch1;
    clock_divider clock_wrapper( .clk(clk), .divider_clk(oclk) );
    buffer seg_wrapper( .clk(oclk), .rst(rst), .count(switch1) ) ;
    segment fin_wrapper( .switch(switch1), .clk(oclk), .seg(seg) );
endmodule
