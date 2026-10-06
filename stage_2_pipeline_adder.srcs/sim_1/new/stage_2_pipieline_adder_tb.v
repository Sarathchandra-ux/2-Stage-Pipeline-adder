`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 17:15:40
// Design Name: 
// Module Name: stage_2_pipieline_adder_tb
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


module stage_2_pipieline_adder_tb;
    parameter N = 10;
    reg [N-1:0]A,B,C;
    reg clk,rst;
    wire [N-1:0]Y;
    stage_2_pipeline_adder #(N) dut (
    .A(A),
    .B(B),
    .C(C),
    .clk(clk),
    .rst(rst),
    .Y(Y)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        rst=1;
        A=0;B=0;C=0;#20
        repeat(2) @(posedge clk);    //“Wait for 2 rising edges of the clock, then continue”
        rst = 0;
        for (integer i = 0; i < 8; i = i + 1) begin
            @(posedge clk);
            A = i;
            B = i;
            C = i;
        end
        #50;
        $finish;
    end
    initial begin
    $monitor("T=%0t | A=%0d B=%0d C=%0d | Y=%0d",
              $time, A, B, C, Y);
    end
        
        
     
endmodule
