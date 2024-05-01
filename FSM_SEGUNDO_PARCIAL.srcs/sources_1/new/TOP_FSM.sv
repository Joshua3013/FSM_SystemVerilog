`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2024 18:35:22
// Design Name: 
// Module Name: TOP_FSM
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


module TOP_FSM(
        input logic CLK100MHZ,
        input logic [4:0]sw,
        output logic [6:0]LED
    );
    
    //logic internal_psc_clock;
    
    clk_psc my_clk (CLK100MHZ, out_clk);
    FSM_SEGUNDO_PARCIAL FSM (.clk(out_clk), .TA(sw[0]), .TB(sw[1]), .E(sw[2]), .W(sw[3]), .reset(sw[4]), .verdeA(LED[0]), .amarilloA(LED[1]), .rojoA(LED[2]), .verdeB(LED[3]), .amarilloB(LED[4]), .rojoB(LED[5]));
    
    assign LED[6] = out_clk;
endmodule
