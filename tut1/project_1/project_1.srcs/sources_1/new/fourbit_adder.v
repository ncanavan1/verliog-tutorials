`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2024 02:55:41 PM
// Design Name: 
// Module Name: fourbit_adder
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


module fourbit_adder(A,B,Cin,S,Cout);
input [3:0]A;
input [3:0]B;
input Cin;

output [3:0]S;
output Cout;

wire Cout0,Cout1,Cout2;
full_adder full_adder0(A[0],B[0],Cin,S[0],Cout0);
full_adder full_adder1(A[1],B[1],Cout0,S[1],Cout1);
full_adder full_adder2(A[2],B[2],Cout1,S[2],Cout2);
full_adder full_adder3(A[3],B[3],Cout2,S[3],Cout);
endmodule
