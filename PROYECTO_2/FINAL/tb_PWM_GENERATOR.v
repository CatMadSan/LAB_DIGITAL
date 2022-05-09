`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 04:49:01 PM
// Design Name: 
// Module Name: tb_PWM_GENERATOR
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


module tb_PWM_GENERATOR();
//INPUTS 
reg Clock;
reg [3:0] inADC0,inADC1,inADC2,inADC3,inADC4,inADC5,inADC6,inADC7,inADC8,inADC9,inADC10,inADC11,inADC12,inADC13,inADC14,inADC15;

//OUTPUTS 
wire Out0,Out1,Out2,Out3,Out4,Out5,Out6,Out7,Out8,Out9,Out10,Out11,Out12,Out13,Out14,Out15;

//INITIATE 
PWM_GENERATOR UUT0 (
.cLK(Clock),
.ADC(inADC0),
.PWM(Out0));

PWM_GENERATOR UUT1 (
.cLK(Clock),
.ADC(inADC1),
.PWM(Out1));

PWM_GENERATOR UUT2 (
.cLK(Clock),
.ADC(inADC2),
.PWM(Out2));

PWM_GENERATOR UUT3 (
.cLK(Clock),
.ADC(inADC3),
.PWM(Out3));

PWM_GENERATOR UUT4 (
.cLK(Clock),
.ADC(inADC4),
.PWM(Out4));

PWM_GENERATOR UUT5 (
.cLK(Clock),
.ADC(inADC5),
.PWM(Out5));

PWM_GENERATOR UUT6 (
.cLK(Clock),
.ADC(inADC6),
.PWM(Out6));

PWM_GENERATOR UUT7 (
.cLK(Clock),
.ADC(inADC7),
.PWM(Out7));

PWM_GENERATOR UUT8 (
.cLK(Clock),
.ADC(inADC8),
.PWM(Out8));

PWM_GENERATOR UUT9 (
.cLK(Clock),
.ADC(inADC9),
.PWM(Out9));

PWM_GENERATOR UUT10 (
.cLK(Clock),
.ADC(inADC10),
.PWM(Out10));

PWM_GENERATOR UUT11 (
.cLK(Clock),
.ADC(inADC11),
.PWM(Out11));

PWM_GENERATOR UUT12 (
.cLK(Clock),
.ADC(inADC12),
.PWM(Out12));

PWM_GENERATOR UUT13 (
.cLK(Clock),
.ADC(inADC13),
.PWM(Out13));

PWM_GENERATOR UUT14 (
.cLK(Clock),
.ADC(inADC14),
.PWM(Out14));

PWM_GENERATOR UUT15 (
.cLK(Clock),
.ADC(inADC15),
.PWM(Out15));

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
Clock = 1'b0;
end

always #25 Clock = ~Clock;

endmodule