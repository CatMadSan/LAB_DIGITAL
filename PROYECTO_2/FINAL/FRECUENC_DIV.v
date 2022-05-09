`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 19:25:41
// Design Name: 
// Module Name: FRECUENC_DIV
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


module FRECUENC_DIV 
(input cLocK,    
output NFrec   
);

reg [3:0] proporcion = 4'b0001; //Esta constante define la frecuencia de salida
wire [3:0] outCntr;
reg temp = 0;
wire reset;
reg cycleRestart = 0;

assign reset = cycleRestart;

COUNTER conTador 
(.CLoK(cLocK),
.Reset(reset),
.CNTR(outCntr)); 

always @(posedge cLocK) begin
    if (outCntr == (proporcion)) begin
    temp <= ~temp;
    cycleRestart <= 1;
    end
    else cycleRestart <= 0;
end

assign NFrec = temp;
 
endmodule