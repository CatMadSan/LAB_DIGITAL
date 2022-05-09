`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 16:10:26
// Design Name: 
// Module Name: Control_LedTB
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


module Control_LedTB ();
reg [3:0] Cuatro;
wire a,b,c,d,e,f,g,h;
ControlLed U1(Cuatro,a,b,c,d,e,f,g,h);
initial begin
Cuatro=4'b0000;
#100;
Cuatro=4'b0001;
#100;
Cuatro=4'b0010;
#100;
Cuatro=4'b1000;
#100;
Cuatro=4'b1111;
#100;
end
endmodule
