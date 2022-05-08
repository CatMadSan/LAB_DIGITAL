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
wire a,b,c,d,e,f,g,h;
Comb U1(Ocho,a,b,c,d,e,f,g,h);
initial begin
Ocho=8'b00000000;
#100;
Ocho=8'b00000001;
#100;
Ocho=8'b00001000;
#100;
Ocho=8'b01000000;
#100;
Ocho=8'b11111111;
#100;
end
endmodule
