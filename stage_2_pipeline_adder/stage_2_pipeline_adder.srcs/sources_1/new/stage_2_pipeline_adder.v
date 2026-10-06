`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 16:09:49
// Design Name: 
// Module Name: stage_2_pipeline_adder
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


module stage_2_pipeline_adder #(parameter N = 10)(
    input [N-1:0]A,B,C,
    input clk,rst,
    output reg [N-1:0]Y
    );
    reg [N-1:0] S1;
    always @(posedge clk or posedge rst) begin
        if(rst) begin
               S1 <= 0;
        end
        else 
            S1 <= A + B;
    end
    always @(posedge clk or posedge rst) begin
        if(rst) 
            Y <= 0;
        else
            Y <= S1 + C;
    end
    
endmodule
