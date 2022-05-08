`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2022 02:37:48 PM
// Design Name: 
// Module Name: tb_FRECUENC_DIV
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


module tb_FRECUENC_DIV #(parameter C = 3)();
//INPUTS 
reg reloj;

//OUTPUTS
wire frecuenciaDividida;

//INITIATE 
FRECUENC_DIV #(.B(C)) UUT1
(.cLocK(reloj),
.NFrec(frecuenciaDividida));

//ESTIMULOS
initial begin
reloj = 0;
end

always #25 reloj = ~reloj;

endmodule
