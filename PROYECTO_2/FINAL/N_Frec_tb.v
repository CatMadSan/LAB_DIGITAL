`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2022 20:51:21
// Design Name: 
// Module Name: N_Frec_tb
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


module N_Frec_tb();
//INPUTS 
reg Clock;

//OUTPUTS 
wire Out;

//INITIATE 
N_Frec UUT20 (
.CLK(Clock),
.CLK2(Out));

//ESTIMULOS
initial begin
Clock = 0;
end

always #10 Clock = ~Clock;

endmodule
