`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 17:23:00
// Design Name: 
// Module Name: Comb
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


module Comb(
input [7:0] Ocho,
input reloj,
output Led0,output Led1,output Led2,output Led3,output Led4,output Led5,output Led6,output Led7, output pwm);
    
  wire [0:3] Cuatro;
  wire frecuencia;
  
 OchoACuatro U1(
 .Ocho(Ocho),
 .Cuatro(Cuatro));
 
 ControlLed U2(
 .Bin(Cuatro),
 .Led0(Led0),
 .Led1(Led1),
 .Led2(Led2),
 .Led3(Led3),
 .Led4(Led4),
 .Led5(Led5),
 .Led6(Led6),
 .Led7(Led7));
 
 FRECUENC_DIV U3(.cLocK(reloj),    
.NFrec(frecuencia)   
);

PWM_GENERATOR U4(
.cLK(frecuencia),
.ADC(Cuatro),
.PWM(pwm));


endmodule
