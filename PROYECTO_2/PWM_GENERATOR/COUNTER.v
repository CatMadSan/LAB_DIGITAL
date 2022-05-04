`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Catalina Madrigal
// 
// Create Date: 05/03/2022 12:26:29 PM
// Design Name: 
// Module Name: COUNTER
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


module COUNTER(
    input CLoK,
    output [3:0] CNTR
    );
    
    reg [3:0] PRV = 0;
    
    always @ (posedge CLoK)
    PRV <= PRV + 1; // De ser un número mayor a 15, simplemente ocurrirá overflow y quedará en 4'b0000
    
    assign CNTR = PRV;
    
endmodule
