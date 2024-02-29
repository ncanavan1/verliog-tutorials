`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 02:58:25 PM
// Design Name: 
// Module Name: testbench
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


module testbench();

reg A,B,C,D;
wire F;

circuit SOP1(A,B,C,D,F);

initial
begin
    $dumpvars;
    $monitor(A,B,C,D,F);
    for(integer i=0; i<16; i=i+1)
        begin
            #5 {A,B,C,D}=i;
        end
        
    #5 $finish;
end

endmodule
