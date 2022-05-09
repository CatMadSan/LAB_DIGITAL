`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 13:18:25
// Design Name: 
// Module Name: Control_Led
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

module ControlLed (
input [0:3] Bin,
output Led0,output Led1,output Led2,output Led3,output Led4,output Led5,output Led6,output Led7
);
  
assign Led0 = Bin[0] | Bin[1] | Bin[2] | Bin[3];
assign Led1 = Bin[0] | Bin[1] | (Bin[2] & Bin[3]);
assign Led2 = Bin[0] | (Bin[1] & Bin[3]) | (Bin[1] & Bin[2]);
assign Led3 = Bin[0] | (Bin[1] & Bin[2] & Bin[3]);
assign Led4 = (Bin[0] & Bin[1]) | (Bin[0] & Bin[3]) | (Bin[0] & Bin[2]);
assign Led5 = (Bin[0] & Bin[1]) | (Bin[0] & Bin[2] & Bin[3]);
assign Led6 = (Bin[0] & Bin[1] & Bin[3]) | (Bin[0] & Bin[1] & Bin[2]);
assign Led7 = Bin[0] & Bin[1] & Bin[2] & Bin[3];

endmodule
