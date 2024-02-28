`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2024 02:21:37 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(A,B,Cin,S,Cout);
    input A,B,Cin;
    output S,Cout;
    
    wire S_wire0, S_wire1, S_wire2, S_wire3;
    wire not_A,not_B,not_Cin;
    
    not(not_A,A);
    not(not_B,B);
    not(not_Cin,Cin);
    
    and(S_wire0,not_A,not_B,Cin);
    and(S_wire1,not_A,B,not_Cin);
    and(S_wire2,A,not_B,not_Cin);
    and(S_wire3,A,B,Cin);
    or(S,S_wire0, S_wire1, S_wire2, S_wire3);
    
    wire C_wire0,C_wire1, C_wire2;
    and(C_wire0,A,B);
    and(C_wire1,B,Cin);
    and(C_wire2,A,Cin);
    or(Cout,C_wire0,C_wire1,C_wire2);
 


endmodule
