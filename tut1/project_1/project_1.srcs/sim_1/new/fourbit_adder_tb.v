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

reg [3:0]tb_A;
reg [3:0]tb_B;
reg tb_Cin;

wire [3:0]tb_S;
wire tb_Cout;
    
    fourbit_adder myfourbit_adder(
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
        #5 tb_A=4'b1101; tb_B=4'b1011; tb_Cin=1'b0;
        #5 tb_A=4'b0; tb_B=4'b0; tb_Cin=1'b0;
        #5 tb_A=4'd13; tb_B=4'd11; tb_Cin=1'd0;
        #5 tb_A=4'd0; tb_B=4'd0; tb_Cin=1'd0;
        #5 tb_A=4'hd; tb_B=4'hb; tb_Cin=1'b0;
        #5 tb_A=4'h0; tb_B=4'h0; tb_Cin=1'b0;

        #5 $finish;
    

end 
endmodule
