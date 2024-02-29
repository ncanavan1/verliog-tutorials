`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 02:58:07 PM
// Design Name: 
// Module Name: circuit
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


module circuit(A,B,C,D,F);
    output F;
    input A,B,C,D;
    
    //assign F=((~A&~B&~C&~D) | (A&D) | (B&C&~D) | (~B&C&D));
    
    assign F=(~A|B)&(~B|C|~D)&(~A|D);
endmodule
