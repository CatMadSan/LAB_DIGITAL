`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 19:24:40
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
    input wire CLoK,
    input Reset,
    output [3:0] CNTR
    );
    
    reg [3:0] PRV = 0;
    
    always @ (posedge CLoK) begin
    case (Reset)
        0 : PRV <= PRV + 1; // De ser un número mayor a 15, simplemente ocurrirá overflow y quedará en 4'b0000
        1 : PRV <= 4'b0000;
    endcase
    end
    
    assign CNTR = PRV;
    
endmodule
