`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2023 12:23:14 AM
// Design Name: 
// Module Name: divider
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

module clock_divider( input clk, output reg divider_clk =0
);
parameter delay_param = 49999999;
    integer counter_value=0;
    always@(posedge clk)
    begin
        if(counter_value == delay_param)
        counter_value <= 0;
        else
            counter_value <= counter_value+1;
    end
    
    // divide block 
    
    always@(posedge clk)
    begin
        if(counter_value == delay_param)
            divider_clk <= ~divider_clk;
        else
            divider_clk <= divider_clk;
    end
endmodule