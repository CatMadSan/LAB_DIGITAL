`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2022 20:40:36
// Design Name: 
// Module Name: N_Frec
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


module N_Frec(
    input CLK,
    output CLK2);
    
    reg [2:0] cont = 3'd0;
    reg senal=0;
    
    always @(posedge CLK)
    begin
        if(cont == 3'd5)
            begin
            cont = 3'd0;
            senal = ~senal;
            end
        else
            cont = cont+1;
    end
    
    assign CLK2 = senal;
    
endmodule