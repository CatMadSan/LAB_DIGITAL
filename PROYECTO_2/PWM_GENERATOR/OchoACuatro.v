`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 16:05:36
// Design Name: 
// Module Name: OchoACuatro
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

module OchoACuatro(
input [7:0] Ocho,
output [3:0] Cuatro
);
assign Cuatro[0] = Ocho[0] | Ocho[1];
assign Cuatro[1] = Ocho[2] | Ocho[3];
assign Cuatro[2] = Ocho[4] | Ocho[5];
assign Cuatro[3] = Ocho[6] | Ocho[7];
endmodule
