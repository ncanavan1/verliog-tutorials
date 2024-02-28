`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2024 02:23:03 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

    reg tb_A, tb_B, tb_Cin;
    wire tb_S, tb_Cout;
    
    full_adder myFull_adder(
        .A  (tb_A),
        .B  (tb_B),
        .Cin  (tb_Cin),
        .S  (tb_S),
        .Cout  (tb_Cout)
    );
    initial
    
    begin
    $dumpvars;
    $monitor("%b+%b+%b= Cout = %b S=%b",tb_A,tb_B,tb_Cin,tb_Cout,tb_S);
        #5 tb_A=0;tb_B=0;tb_Cin=0;
        #5 tb_A=0;tb_B=0;tb_Cin=1;
        #5 tb_A=0;tb_B=1;tb_Cin=0;
        #5 tb_A=0;tb_B=1;tb_Cin=1;
        #5 tb_A=1;tb_B=0;tb_Cin=0;
        #5 tb_A=1;tb_B=0;tb_Cin=1;
        #5 tb_A=1;tb_B=1;tb_Cin=0;
        #5 tb_A=1;tb_B=1;tb_Cin=1;
        #5 $finish;
    

end 
endmodule
