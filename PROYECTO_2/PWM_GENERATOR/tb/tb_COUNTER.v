`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 02:38:22 PM
// Design Name: 
// Module Name: tb_COUNTER
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


module tb_COUNTER();
//INPUTS
reg clock;

//OUTPUTS 
wire [3:0] out; //INICIALIZADO EN 0

//INITIATE 
COUNTER UUT(
.CLoK(clock),
.CNTR(out));

//ESTIMULOS
initial clock = 0;

always #25 clock = ~clock;

endmodule
