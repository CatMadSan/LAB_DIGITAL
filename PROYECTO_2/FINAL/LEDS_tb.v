`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2022 11:09:41
// Design Name: 
// Module Name: LEDS_tb
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


module LEDS_tb();
//INPUTS 
reg Clock;
reg [13:0] Senal;

//OUTPUTS 
wire Da, Db, Dc, Dd, De, Df, Dg, DAN1, DAN0;

//INITIATE 
LEDS UUT30 (
.CLK(Clock),
.Signal(Senal),
.a(Da),
.b(Db),
.c(Dc),
.d(Dd),
.e(De),
.f(Df),
.g(Dg),
.AN1(DAN1),
.AN0(DAN0));

//ESTIMULOS
initial begin
Clock = 0;
Senal= 14'b00000010000100;
end

always #10 Clock = ~Clock;

endmodule