`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 18:48:46
// Design Name: 
// Module Name: Display7_tb
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


module Display7_tb();
//INPUTS 
reg Clock;
reg [3:0] inADC0,inADC1,inADC2,inADC3,inADC4,inADC5,inADC6,inADC7,inADC8,inADC9,inADC10,inADC11,inADC12,inADC13,inADC14,inADC15;

//OUTPUTS 
wire [13:0] Out0,Out1,Out2,Out3,Out4,Out5,Out6,Out7,Out8,Out9,Out10,Out11,Out12,Out13,Out14,Out15;

//INITIATE 
Display7 UUT0 (Clock, inADC0, Out0);

Display7 UUT1 (
.CLK(Clock),
.ADC(inADC1),
.D7(Out1));

Display7 UUT2 (
.CLK(Clock),
.ADC(inADC2),
.D7(Out2));

Display7 UUT3 (
.CLK(Clock),
.ADC(inADC3),
.D7(Out3));

Display7 UUT4 (
.CLK(Clock),
.ADC(inADC4),
.D7(Out4));

Display7 UUT5 (
.CLK(Clock),
.ADC(inADC5),
.D7(Out5));

Display7 UUT6 (
.CLK(Clock),
.ADC(inADC6),
.D7(Out6));

Display7 UUT7 (
.CLK(Clock),
.ADC(inADC7),
.D7(Out7));

Display7 UUT8 (
.CLK(Clock),
.ADC(inADC8),
.D7(Out8));

Display7 UUT9 (
.CLK(Clock),
.ADC(inADC9),
.D7(Out9));

Display7 UUT10 (
.CLK(Clock),
.ADC(inADC10),
.D7(Out10));

Display7 UUT11 (
.CLK(Clock),
.ADC(inADC11),
.D7(Out11));

Display7 UUT12 (
.CLK(Clock),
.ADC(inADC12),
.D7(Out12));

Display7 UUT13 (
.CLK(Clock),
.ADC(inADC13),
.D7(Out13));

Display7 UUT14 (
.CLK(Clock),
.ADC(inADC14),
.D7(Out14));

Display7 UUT15 (
.CLK(Clock),
.ADC(inADC15),
.D7(Out15));

//ESTIMULOS
initial begin
inADC0 = 4'b0000;
inADC1 = 4'b0001;
inADC2 = 4'b0010;
inADC3 = 4'b0011;
inADC4 = 4'b0100;
inADC5 = 4'b0101;
inADC6 = 4'b0110;
inADC7 = 4'b0111;
inADC8 = 4'b1000;
inADC9 = 4'b1001;
inADC10 = 4'b1010;
inADC11 = 4'b1011;
inADC12 = 4'b1100;
inADC13 = 4'b1101;
inADC14 = 4'b1110;
inADC15 = 4'b1111;
Clock = 0;
end

always #25 Clock = ~Clock;

endmodule
