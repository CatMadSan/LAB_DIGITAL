`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 11:53:44 AM
// Design Name: 
// Module Name: PWM_GENERATOR
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


module PWM_GENERATOR(
input cLK,
input [3:0] ADC,
output PWM);

wire [3:0] contador;
reg previous = 1;

COUNTER Cntr(
.CLoK(cLK),
.CNTR(contador));

always @ (posedge cLK) begin
    if (contador == (ADC)) //Siempre contador sera menor o igual a ADC, que tendra valor max 15 gracias a sus 4 bits
        previous = 0; //ADC decide cuando el PWM pasa a LOW
    if (ADC > 0)begin
        if (contador == 15) //una vez que se llega a 15 el contador, se reinicia el ciclo PERO SOLO si ADC es mayor a 0 
            previous = 1;
        end
    if (ADC == 4'b0000) previous = 0;
end
    
assign PWM = previous;
    
endmodule
