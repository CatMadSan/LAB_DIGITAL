`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 17:22:26
// Design Name: 
// Module Name: CombTB
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


module CombTB();
reg [7:0] Ocho;
wire sys_clk_pin;
reg CLK;
wire a,b,c,d,e,f,g,h,pwm;
Comb U1(Ocho,sys_clk_pin,a,b,c,d,e,f,g,h,pwm);

assign sys_clk_pin = CLK;

initial begin
Ocho=8'b00001111;
CLK = 0;
end

always #20 CLK <= ~CLK;


endmodule
