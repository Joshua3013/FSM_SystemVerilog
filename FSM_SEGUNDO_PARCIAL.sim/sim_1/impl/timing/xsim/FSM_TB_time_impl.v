// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Apr 29 21:59:17 2024
// Host        : DESKTOP-0B0QBVQ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {E:/PROYECTOS
//               VIVADO/FSM_SEGUNDO_PARCIAL/FSM_SEGUNDO_PARCIAL.sim/sim_1/impl/timing/xsim/FSM_TB_time_impl.v}
// Design      : TOP_FSM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module FSM_SEGUNDO_PARCIAL
   (LED_OBUF,
    out,
    sw_IBUF);
  output [5:0]LED_OBUF;
  input [0:0]out;
  input [4:0]sw_IBUF;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire [5:0]LED_OBUF;
  wire [0:0]out;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_1_in;
  wire [4:0]sw_IBUF;

  LUT6 #(
    .INIT(64'hCCCCFFFFCCCCFCEC)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(LED_OBUF[3]),
        .I1(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I2(sw_IBUF[2]),
        .I3(p_0_in),
        .I4(sw_IBUF[3]),
        .I5(p_1_in),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF80000CCC8)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(sw_IBUF[1]),
        .I1(p_0_in0_in),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[2]),
        .I4(sw_IBUF[3]),
        .I5(LED_OBUF[0]),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFCCFECC)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(LED_OBUF[3]),
        .I1(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I2(p_0_in),
        .I3(sw_IBUF[3]),
        .I4(p_1_in),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0100FF000100)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(p_0_in0_in),
        .I4(sw_IBUF[3]),
        .I5(LED_OBUF[0]),
        .O(\FSM_onehot_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(LED_OBUF[3]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[1]),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(LED_OBUF[3]),
        .I2(sw_IBUF[3]),
        .I3(sw_IBUF[2]),
        .I4(p_0_in),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(LED_OBUF[0]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[3]),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S1:10000,S3:00100,S2:01000,S4:00010,S0:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(sw_IBUF[4]),
        .Q(LED_OBUF[0]));
  (* FSM_ENCODED_STATES = "S1:10000,S3:00100,S2:01000,S4:00010,S0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .CLR(sw_IBUF[4]),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(p_0_in0_in));
  (* FSM_ENCODED_STATES = "S1:10000,S3:00100,S2:01000,S4:00010,S0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(out),
        .CE(1'b1),
        .CLR(sw_IBUF[4]),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "S1:10000,S3:00100,S2:01000,S4:00010,S0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(out),
        .CE(1'b1),
        .CLR(sw_IBUF[4]),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(LED_OBUF[3]));
  (* FSM_ENCODED_STATES = "S1:10000,S3:00100,S2:01000,S4:00010,S0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(out),
        .CE(1'b1),
        .CLR(sw_IBUF[4]),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(p_0_in),
        .I1(p_0_in0_in),
        .O(LED_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(p_1_in),
        .I1(LED_OBUF[3]),
        .O(LED_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED_OBUF[4]_inst_i_1 
       (.I0(p_1_in),
        .I1(p_0_in0_in),
        .O(LED_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED_OBUF[5]_inst_i_1 
       (.I0(p_0_in),
        .I1(LED_OBUF[0]),
        .O(LED_OBUF[5]));
endmodule

(* ECO_CHECKSUM = "6b77769b" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module TOP_FSM
   (CLK100MHZ,
    sw,
    LED);
  input CLK100MHZ;
  input [4:0]sw;
  output [6:0]LED;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [6:0]LED;
  wire [6:0]LED_OBUF;
  wire [4:0]sw;
  wire [4:0]sw_IBUF;

initial begin
 $sdf_annotate("FSM_TB_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  FSM_SEGUNDO_PARCIAL FSM
       (.LED_OBUF(LED_OBUF[5:0]),
        .out(LED_OBUF[6]),
        .sw_IBUF(sw_IBUF));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  clk_psc my_clk
       (.clk(CLK100MHZ_IBUF_BUFG),
        .out(LED_OBUF[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
endmodule

module clk_psc
   (out,
    clk);
  output [0:0]out;
  input clk;

  wire clk;
  wire \myreg[0]_i_2_n_0 ;
  wire \myreg_reg[0]_i_1_n_0 ;
  wire \myreg_reg[0]_i_1_n_4 ;
  wire \myreg_reg[0]_i_1_n_5 ;
  wire \myreg_reg[0]_i_1_n_6 ;
  wire \myreg_reg[0]_i_1_n_7 ;
  wire \myreg_reg[12]_i_1_n_0 ;
  wire \myreg_reg[12]_i_1_n_4 ;
  wire \myreg_reg[12]_i_1_n_5 ;
  wire \myreg_reg[12]_i_1_n_6 ;
  wire \myreg_reg[12]_i_1_n_7 ;
  wire \myreg_reg[16]_i_1_n_0 ;
  wire \myreg_reg[16]_i_1_n_4 ;
  wire \myreg_reg[16]_i_1_n_5 ;
  wire \myreg_reg[16]_i_1_n_6 ;
  wire \myreg_reg[16]_i_1_n_7 ;
  wire \myreg_reg[20]_i_1_n_0 ;
  wire \myreg_reg[20]_i_1_n_4 ;
  wire \myreg_reg[20]_i_1_n_5 ;
  wire \myreg_reg[20]_i_1_n_6 ;
  wire \myreg_reg[20]_i_1_n_7 ;
  wire \myreg_reg[24]_i_1_n_5 ;
  wire \myreg_reg[24]_i_1_n_6 ;
  wire \myreg_reg[24]_i_1_n_7 ;
  wire \myreg_reg[4]_i_1_n_0 ;
  wire \myreg_reg[4]_i_1_n_4 ;
  wire \myreg_reg[4]_i_1_n_5 ;
  wire \myreg_reg[4]_i_1_n_6 ;
  wire \myreg_reg[4]_i_1_n_7 ;
  wire \myreg_reg[8]_i_1_n_0 ;
  wire \myreg_reg[8]_i_1_n_4 ;
  wire \myreg_reg[8]_i_1_n_5 ;
  wire \myreg_reg[8]_i_1_n_6 ;
  wire \myreg_reg[8]_i_1_n_7 ;
  wire \myreg_reg_n_0_[0] ;
  wire \myreg_reg_n_0_[10] ;
  wire \myreg_reg_n_0_[11] ;
  wire \myreg_reg_n_0_[12] ;
  wire \myreg_reg_n_0_[13] ;
  wire \myreg_reg_n_0_[14] ;
  wire \myreg_reg_n_0_[15] ;
  wire \myreg_reg_n_0_[16] ;
  wire \myreg_reg_n_0_[17] ;
  wire \myreg_reg_n_0_[18] ;
  wire \myreg_reg_n_0_[19] ;
  wire \myreg_reg_n_0_[1] ;
  wire \myreg_reg_n_0_[20] ;
  wire \myreg_reg_n_0_[21] ;
  wire \myreg_reg_n_0_[22] ;
  wire \myreg_reg_n_0_[23] ;
  wire \myreg_reg_n_0_[24] ;
  wire \myreg_reg_n_0_[25] ;
  wire \myreg_reg_n_0_[2] ;
  wire \myreg_reg_n_0_[3] ;
  wire \myreg_reg_n_0_[4] ;
  wire \myreg_reg_n_0_[5] ;
  wire \myreg_reg_n_0_[6] ;
  wire \myreg_reg_n_0_[7] ;
  wire \myreg_reg_n_0_[8] ;
  wire \myreg_reg_n_0_[9] ;
  wire [0:0]out;
  wire [2:0]\NLW_myreg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_myreg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_myreg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_myreg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_myreg_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_myreg_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_myreg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_myreg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \myreg[0]_i_2 
       (.I0(\myreg_reg_n_0_[0] ),
        .O(\myreg[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[0]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \myreg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\myreg_reg[0]_i_1_n_0 ,\NLW_myreg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\myreg_reg[0]_i_1_n_4 ,\myreg_reg[0]_i_1_n_5 ,\myreg_reg[0]_i_1_n_6 ,\myreg_reg[0]_i_1_n_7 }),
        .S({\myreg_reg_n_0_[3] ,\myreg_reg_n_0_[2] ,\myreg_reg_n_0_[1] ,\myreg[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[8]_i_1_n_5 ),
        .Q(\myreg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[8]_i_1_n_4 ),
        .Q(\myreg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[12]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \myreg_reg[12]_i_1 
       (.CI(\myreg_reg[8]_i_1_n_0 ),
        .CO({\myreg_reg[12]_i_1_n_0 ,\NLW_myreg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myreg_reg[12]_i_1_n_4 ,\myreg_reg[12]_i_1_n_5 ,\myreg_reg[12]_i_1_n_6 ,\myreg_reg[12]_i_1_n_7 }),
        .S({\myreg_reg_n_0_[15] ,\myreg_reg_n_0_[14] ,\myreg_reg_n_0_[13] ,\myreg_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[12]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[12]_i_1_n_5 ),
        .Q(\myreg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[12]_i_1_n_4 ),
        .Q(\myreg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[16]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \myreg_reg[16]_i_1 
       (.CI(\myreg_reg[12]_i_1_n_0 ),
        .CO({\myreg_reg[16]_i_1_n_0 ,\NLW_myreg_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myreg_reg[16]_i_1_n_4 ,\myreg_reg[16]_i_1_n_5 ,\myreg_reg[16]_i_1_n_6 ,\myreg_reg[16]_i_1_n_7 }),
        .S({\myreg_reg_n_0_[19] ,\myreg_reg_n_0_[18] ,\myreg_reg_n_0_[17] ,\myreg_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[16]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[16]_i_1_n_5 ),
        .Q(\myreg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[16]_i_1_n_4 ),
        .Q(\myreg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[0]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[20]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \myreg_reg[20]_i_1 
       (.CI(\myreg_reg[16]_i_1_n_0 ),
        .CO({\myreg_reg[20]_i_1_n_0 ,\NLW_myreg_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myreg_reg[20]_i_1_n_4 ,\myreg_reg[20]_i_1_n_5 ,\myreg_reg[20]_i_1_n_6 ,\myreg_reg[20]_i_1_n_7 }),
        .S({\myreg_reg_n_0_[23] ,\myreg_reg_n_0_[22] ,\myreg_reg_n_0_[21] ,\myreg_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[20]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[20]_i_1_n_5 ),
        .Q(\myreg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[20]_i_1_n_4 ),
        .Q(\myreg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[24]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \myreg_reg[24]_i_1 
       (.CI(\myreg_reg[20]_i_1_n_0 ),
        .CO(\NLW_myreg_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_myreg_reg[24]_i_1_O_UNCONNECTED [3],\myreg_reg[24]_i_1_n_5 ,\myreg_reg[24]_i_1_n_6 ,\myreg_reg[24]_i_1_n_7 }),
        .S({1'b0,out,\myreg_reg_n_0_[25] ,\myreg_reg_n_0_[24] }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[24]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[24]_i_1_n_5 ),
        .Q(out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[0]_i_1_n_5 ),
        .Q(\myreg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[0]_i_1_n_4 ),
        .Q(\myreg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[4]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \myreg_reg[4]_i_1 
       (.CI(\myreg_reg[0]_i_1_n_0 ),
        .CO({\myreg_reg[4]_i_1_n_0 ,\NLW_myreg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myreg_reg[4]_i_1_n_4 ,\myreg_reg[4]_i_1_n_5 ,\myreg_reg[4]_i_1_n_6 ,\myreg_reg[4]_i_1_n_7 }),
        .S({\myreg_reg_n_0_[7] ,\myreg_reg_n_0_[6] ,\myreg_reg_n_0_[5] ,\myreg_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[4]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[4]_i_1_n_5 ),
        .Q(\myreg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[4]_i_1_n_4 ),
        .Q(\myreg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[8]_i_1_n_7 ),
        .Q(\myreg_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \myreg_reg[8]_i_1 
       (.CI(\myreg_reg[4]_i_1_n_0 ),
        .CO({\myreg_reg[8]_i_1_n_0 ,\NLW_myreg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myreg_reg[8]_i_1_n_4 ,\myreg_reg[8]_i_1_n_5 ,\myreg_reg[8]_i_1_n_6 ,\myreg_reg[8]_i_1_n_7 }),
        .S({\myreg_reg_n_0_[11] ,\myreg_reg_n_0_[10] ,\myreg_reg_n_0_[9] ,\myreg_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \myreg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\myreg_reg[8]_i_1_n_6 ),
        .Q(\myreg_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
