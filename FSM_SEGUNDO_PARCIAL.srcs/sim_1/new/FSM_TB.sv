`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 11:35:10
// Design Name: 
// Module Name: FSM_TB
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


module FSM_TB;
    logic clk;
    logic reset;
    logic TA;
    logic TB;
    logic E;
    logic W;
    
    logic verdeA;
    logic amarilloA;
    logic rojoA;
    logic verdeB;
    logic amarilloB;
    logic rojoB;
    
    FSM_SEGUNDO_PARCIAL dut(
        .clk(clk),
        .reset(reset),
        .TA(TA),
        .TB(TB),
        .E(E),
        .W(W),
        
        .verdeA(verdeA),
        .amarilloA(amarilloA),
        .rojoA(rojoA),
        
        .verdeB(verdeB),
        .amarilloB(amarilloB),
        .rojoB(rojoB)
      );
      initial
        begin
            reset <=1;   #40;
            reset <= 0; TA <=1; TB <=0; W <=0; E<=0; #40;
            reset <=0;  TA <=0; TB <=1; W <=0; E<=0; #40;
            reset <=0;  TA <=1; TB <=0; W <=0; E<=0; #40;
            reset <=0;  TA <=0; TB <=1; W <=0; E<=0; #40;
            reset <=0;  TA <=0; TB <=1; W <=0; E<=1; #40;
            reset <=0;  TA <=0; TB <=1; W <=0; E<=0; #40;
            reset <=0;  TA <=0; TB <=1; W <=1; E<=0; #40;
            reset <=0;  TA <=1; TB <=0; W <=0; E<=0; #40;
         end    
         
      always
        begin
            clk <= 1;   #5;
            clk <= 0;   #5;
        end
        
    
endmodule
