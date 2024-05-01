`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 18:32:47
// Design Name: 
// Module Name: clk_psc
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


module clk_psc(
    input logic CLK100MHZ,
    output logic out_clk
    );
    
    logic [31:0]myreg;
    
    always @(posedge CLK100MHZ)
        myreg +=1;
    
    assign out_clk=myreg[26];
    
endmodule
