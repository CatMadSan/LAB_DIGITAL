`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 18:02:23
// Design Name: 
// Module Name: LEDS
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


module LEDS(
    input CLK,
    input [13:0]Signal,
    output reg a, b, c, d, e, f, g, AN1, AN0);
    
    reg num=0;
    
    always @(posedge CLK)
        case (num)
            1'b0: begin
                AN1=0;
                AN0=1;
                a=Signal[13];
                b=Signal[12];
                c=Signal[11];
                d=Signal[10];
                e=Signal[9];
                f=Signal[8];
                g=Signal[7];
                num=1;
                end
            1'b1: begin
                AN1=1;
                AN0=0;
                a=Signal[6];
                b=Signal[5];
                c=Signal[4];
                d=Signal[3];
                e=Signal[2];
                f=Signal[1];
                g=Signal[0];
                num=0;
                end
        endcase     
            
endmodule
