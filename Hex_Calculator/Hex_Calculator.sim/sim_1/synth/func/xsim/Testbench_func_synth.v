// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 30 00:05:45 2021
// Host        : Nebuchadnezzar running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/hp/Desktop/Integrated Systems
//               Design/Hex_Calculator/Hex_Calculator.sim/sim_1/synth/func/xsim/Testbench_func_synth.v}
// Design      : Top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Calculator
   (D,
    E,
    Q,
    \present_func_reg[1]_0 ,
    \present_func_reg[1]_1 ,
    \present_state_reg[0]_0 ,
    \present_state_reg[0]_1 ,
    \present_state_reg[0]_2 ,
    \present_state_reg[2]_0 ,
    button_IBUF,
    \present_state_reg[1]_0 ,
    O,
    \present_answer_reg[7] ,
    \present_answer_reg[11] ,
    \present_answer_reg[15] ,
    \present_answer_reg[23] ,
    \present_A_reg[15] ,
    \present_value_reg[15] ,
    \present_value_reg[7] ,
    \present_value_reg[7]_0 ,
    reset,
    CLK);
  output [16:0]D;
  output [0:0]E;
  output [0:0]Q;
  output [0:0]\present_func_reg[1]_0 ;
  output [0:0]\present_func_reg[1]_1 ;
  output [0:0]\present_state_reg[0]_0 ;
  output [15:0]\present_state_reg[0]_1 ;
  output [7:0]\present_state_reg[0]_2 ;
  output [8:0]\present_state_reg[2]_0 ;
  input [2:0]button_IBUF;
  input \present_state_reg[1]_0 ;
  input [3:0]O;
  input [3:0]\present_answer_reg[7] ;
  input [3:0]\present_answer_reg[11] ;
  input [3:0]\present_answer_reg[15] ;
  input [0:0]\present_answer_reg[23] ;
  input [15:0]\present_A_reg[15] ;
  input [16:0]\present_value_reg[15] ;
  input [15:0]\present_value_reg[7] ;
  input [15:0]\present_value_reg[7]_0 ;
  input reset;
  input CLK;

  wire CLK;
  wire [16:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire [2:0]button_IBUF;
  wire [0:0]func;
  wire next_func;
  wire [3:0]next_state__0;
  wire next_state_n_0;
  wire [15:0]\present_A_reg[15] ;
  wire [3:0]\present_answer_reg[11] ;
  wire [3:0]\present_answer_reg[15] ;
  wire [0:0]\present_answer_reg[23] ;
  wire [3:0]\present_answer_reg[7] ;
  wire \present_func[0]_i_1_n_0 ;
  wire [0:0]\present_func_reg[1]_0 ;
  wire [0:0]\present_func_reg[1]_1 ;
  wire \present_state[1]_i_2_n_0 ;
  wire [0:0]\present_state_reg[0]_0 ;
  wire [15:0]\present_state_reg[0]_1 ;
  wire [7:0]\present_state_reg[0]_2 ;
  wire \present_state_reg[1]_0 ;
  wire [8:0]\present_state_reg[2]_0 ;
  wire [16:0]\present_value_reg[15] ;
  wire [15:0]\present_value_reg[7] ;
  wire [15:0]\present_value_reg[7]_0 ;
  wire reset;
  wire [3:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    next_state
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(next_state_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[0]_i_1 
       (.I0(\present_A_reg[15] [0]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [0]),
        .O(\present_state_reg[0]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[10]_i_1 
       (.I0(\present_A_reg[15] [10]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [10]),
        .O(\present_state_reg[0]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[11]_i_1 
       (.I0(\present_A_reg[15] [11]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [11]),
        .O(\present_state_reg[0]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[12]_i_1 
       (.I0(\present_A_reg[15] [12]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [12]),
        .O(\present_state_reg[0]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[13]_i_1 
       (.I0(\present_A_reg[15] [13]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [13]),
        .O(\present_state_reg[0]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[14]_i_1 
       (.I0(\present_A_reg[15] [14]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [14]),
        .O(\present_state_reg[0]_1 [14]));
  LUT6 #(
    .INIT(64'h00000006000000F0)) 
    \present_A[15]_i_1 
       (.I0(Q),
        .I1(func),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\present_func_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[15]_i_2 
       (.I0(\present_A_reg[15] [15]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [15]),
        .O(\present_state_reg[0]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[1]_i_1 
       (.I0(\present_A_reg[15] [1]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [1]),
        .O(\present_state_reg[0]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[2]_i_1 
       (.I0(\present_A_reg[15] [2]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [2]),
        .O(\present_state_reg[0]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[3]_i_1 
       (.I0(\present_A_reg[15] [3]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [3]),
        .O(\present_state_reg[0]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[4]_i_1 
       (.I0(\present_A_reg[15] [4]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [4]),
        .O(\present_state_reg[0]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[5]_i_1 
       (.I0(\present_A_reg[15] [5]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [5]),
        .O(\present_state_reg[0]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[6]_i_1 
       (.I0(\present_A_reg[15] [6]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [6]),
        .O(\present_state_reg[0]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[7]_i_1 
       (.I0(\present_A_reg[15] [7]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [7]),
        .O(\present_state_reg[0]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[8]_i_1 
       (.I0(\present_A_reg[15] [8]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [8]),
        .O(\present_state_reg[0]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \present_A[9]_i_1 
       (.I0(\present_A_reg[15] [9]),
        .I1(state[0]),
        .I2(\present_value_reg[15] [9]),
        .O(\present_state_reg[0]_1 [9]));
  LUT6 #(
    .INIT(64'h00000006000000F0)) 
    \present_B[15]_i_1 
       (.I0(Q),
        .I1(func),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\present_func_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[0]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(O[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[10]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[11] [2]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[11]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[11] [3]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[12]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[15] [0]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[13]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[15] [1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[14]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[15] [2]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[15]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[15] [3]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[1]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(O[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFEEFFEFFFEFFFEEF)) 
    \present_answer[23]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(func),
        .I5(Q),
        .O(\present_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[23]_i_2 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[23] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[2]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(O[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[3]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(O[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[4]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[7] [0]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[5]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[7] [1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[6]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[7] [2]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[7]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[7] [3]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[8]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[11] [0]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \present_answer[9]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\present_answer_reg[11] [1]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[10]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [2]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [2]),
        .I4(\present_value_reg[15] [2]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[11]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [3]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [3]),
        .I4(\present_value_reg[15] [3]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[12]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [4]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [4]),
        .I4(\present_value_reg[15] [4]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[13]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [5]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [5]),
        .I4(\present_value_reg[15] [5]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[14]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [6]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [6]),
        .I4(\present_value_reg[15] [6]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [6]));
  LUT6 #(
    .INIT(64'h0000000600000FF0)) 
    \present_display[15]_i_1 
       (.I0(func),
        .I1(Q),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[2]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[15]_i_2 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [7]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [7]),
        .I4(\present_value_reg[15] [7]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[8]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [0]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [0]),
        .I4(\present_value_reg[15] [0]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_display[9]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [1]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [1]),
        .I4(\present_value_reg[15] [1]),
        .I5(state[2]),
        .O(\present_state_reg[0]_2 [1]));
  LUT3 #(
    .INIT(8'h74)) 
    \present_func[0]_i_1 
       (.I0(button_IBUF[1]),
        .I1(next_func),
        .I2(func),
        .O(\present_func[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000006)) 
    \present_func[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\present_state[1]_i_2_n_0 ),
        .O(next_func));
  FDRE #(
    .INIT(1'b0)) 
    \present_func_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\present_func[0]_i_1_n_0 ),
        .Q(func),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_func_reg[1] 
       (.C(CLK),
        .CE(next_func),
        .D(button_IBUF[1]),
        .Q(Q),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEB00FFFF)) 
    \present_state[0]_i_1 
       (.I0(button_IBUF[2]),
        .I1(button_IBUF[0]),
        .I2(button_IBUF[1]),
        .I3(state[0]),
        .I4(next_state_n_0),
        .O(next_state__0[0]));
  LUT6 #(
    .INIT(64'hEAFF0000EAEA0000)) 
    \present_state[1]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\present_state_reg[1]_0 ),
        .I3(\present_state[1]_i_2_n_0 ),
        .I4(next_state_n_0),
        .I5(state[0]),
        .O(next_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \present_state[1]_i_2 
       (.I0(button_IBUF[2]),
        .I1(button_IBUF[0]),
        .I2(button_IBUF[1]),
        .O(\present_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCF000000080000)) 
    \present_state[2]_i_1 
       (.I0(state[1]),
        .I1(button_IBUF[2]),
        .I2(button_IBUF[0]),
        .I3(button_IBUF[1]),
        .I4(next_state_n_0),
        .I5(state[2]),
        .O(next_state__0[2]));
  LUT5 #(
    .INIT(32'h00000880)) 
    \present_state[3]_i_1 
       (.I0(state[2]),
        .I1(next_state_n_0),
        .I2(button_IBUF[1]),
        .I3(button_IBUF[0]),
        .I4(button_IBUF[2]),
        .O(next_state__0[3]));
  (* FSM_ENCODED_STATES = "input_A:0001,input_B:0010,answer:0100,last_value:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \present_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state__0[0]),
        .Q(state[0]),
        .S(reset));
  (* FSM_ENCODED_STATES = "input_A:0001,input_B:0010,answer:0100,last_value:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \present_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state__0[1]),
        .Q(state[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "input_A:0001,input_B:0010,answer:0100,last_value:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \present_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state__0[2]),
        .Q(state[2]),
        .R(reset));
  (* FSM_ENCODED_STATES = "input_A:0001,input_B:0010,answer:0100,last_value:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \present_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state__0[3]),
        .Q(state[3]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[0]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [8]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [8]),
        .I4(\present_value_reg[15] [8]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \present_value[15]_i_1 
       (.I0(state[2]),
        .I1(\present_value_reg[15] [16]),
        .O(\present_state_reg[2]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[1]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [9]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [9]),
        .I4(\present_value_reg[15] [9]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[2]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [10]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [10]),
        .I4(\present_value_reg[15] [10]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[3]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [11]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [11]),
        .I4(\present_value_reg[15] [11]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[4]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [12]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [12]),
        .I4(\present_value_reg[15] [12]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[5]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [13]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [13]),
        .I4(\present_value_reg[15] [13]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[6]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [14]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [14]),
        .I4(\present_value_reg[15] [14]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \present_value[7]_i_1 
       (.I0(state[0]),
        .I1(\present_value_reg[7] [15]),
        .I2(state[1]),
        .I3(\present_value_reg[7]_0 [15]),
        .I4(\present_value_reg[15] [15]),
        .I5(state[2]),
        .O(\present_state_reg[2]_0 [7]));
endmodule

module Functions
   (O,
    Q,
    \present_A_reg[7]_0 ,
    \present_A_reg[11]_0 ,
    \present_A_reg[15]_0 ,
    \present_A_reg[15]_1 ,
    seven_seg_OBUF,
    \present_B_reg[15]_0 ,
    \present_answer_reg[23]_0 ,
    \present_display_reg[15]_0 ,
    \present_answer_reg[3]_0 ,
    LED_activating_counter,
    reset,
    E,
    D,
    CLK,
    \present_answer_reg[23]_1 ,
    \present_answer_reg[23]_2 ,
    \present_A_reg[15]_2 ,
    \present_A_reg[15]_3 ,
    \present_display_reg[15]_1 ,
    \present_display_reg[15]_2 ,
    \present_value_reg[15]_0 );
  output [3:0]O;
  output [15:0]Q;
  output [3:0]\present_A_reg[7]_0 ;
  output [3:0]\present_A_reg[11]_0 ;
  output [3:0]\present_A_reg[15]_0 ;
  output [0:0]\present_A_reg[15]_1 ;
  output [6:0]seven_seg_OBUF;
  output [15:0]\present_B_reg[15]_0 ;
  output [16:0]\present_answer_reg[23]_0 ;
  output [7:0]\present_display_reg[15]_0 ;
  input [0:0]\present_answer_reg[3]_0 ;
  input [1:0]LED_activating_counter;
  input reset;
  input [0:0]E;
  input [15:0]D;
  input CLK;
  input [0:0]\present_answer_reg[23]_1 ;
  input [16:0]\present_answer_reg[23]_2 ;
  input [0:0]\present_A_reg[15]_2 ;
  input [15:0]\present_A_reg[15]_3 ;
  input [0:0]\present_display_reg[15]_1 ;
  input [7:0]\present_display_reg[15]_2 ;
  input [8:0]\present_value_reg[15]_0 ;

  wire CLK;
  wire [15:0]D;
  wire [0:0]E;
  wire [1:0]LED_activating_counter;
  wire [3:0]O;
  wire [15:0]Q;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__1_n_0 ;
  wire \_inferred__1/i__carry__1_n_1 ;
  wire \_inferred__1/i__carry__1_n_2 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry__2_n_0 ;
  wire \_inferred__1/i__carry__2_n_1 ;
  wire \_inferred__1/i__carry__2_n_2 ;
  wire \_inferred__1/i__carry__2_n_3 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [3:0]\present_A_reg[11]_0 ;
  wire [3:0]\present_A_reg[15]_0 ;
  wire [0:0]\present_A_reg[15]_1 ;
  wire [0:0]\present_A_reg[15]_2 ;
  wire [15:0]\present_A_reg[15]_3 ;
  wire [3:0]\present_A_reg[7]_0 ;
  wire [15:0]\present_B_reg[15]_0 ;
  wire [16:0]\present_answer_reg[23]_0 ;
  wire [0:0]\present_answer_reg[23]_1 ;
  wire [16:0]\present_answer_reg[23]_2 ;
  wire [0:0]\present_answer_reg[3]_0 ;
  wire [7:0]\present_display_reg[15]_0 ;
  wire [0:0]\present_display_reg[15]_1 ;
  wire [7:0]\present_display_reg[15]_2 ;
  wire [8:0]\present_value_reg[15]_0 ;
  wire reset;
  wire [6:0]seven_seg_OBUF;
  wire [3:0]\seven_segment/LED_BCD__20 ;
  wire [15:0]value;
  wire [3:0]\NLW__inferred__1/i__carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW__inferred__1/i__carry__3_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\present_answer_reg[3]_0 }),
        .O(O),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\present_A_reg[7]_0 ),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\_inferred__1/i__carry__1_n_0 ,\_inferred__1/i__carry__1_n_1 ,\_inferred__1/i__carry__1_n_2 ,\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\present_A_reg[11]_0 ),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__2 
       (.CI(\_inferred__1/i__carry__1_n_0 ),
        .CO({\_inferred__1/i__carry__2_n_0 ,\_inferred__1/i__carry__2_n_1 ,\_inferred__1/i__carry__2_n_2 ,\_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(\present_A_reg[15]_0 ),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__3 
       (.CI(\_inferred__1/i__carry__2_n_0 ),
        .CO(\NLW__inferred__1/i__carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW__inferred__1/i__carry__3_O_UNCONNECTED [3:1],\present_A_reg[15]_1 }),
        .S({1'b0,1'b0,1'b0,i__carry__3_i_1_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(\present_B_reg[15]_0 [7]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[7]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(\present_B_reg[15]_0 [6]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[6]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(\present_B_reg[15]_0 [5]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[5]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(\present_B_reg[15]_0 [4]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[4]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_1
       (.I0(\present_B_reg[15]_0 [11]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[11]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_2
       (.I0(\present_B_reg[15]_0 [10]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[10]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_3
       (.I0(\present_B_reg[15]_0 [9]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[9]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_4
       (.I0(\present_B_reg[15]_0 [8]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[8]),
        .O(i__carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_1
       (.I0(Q[15]),
        .I1(\present_B_reg[15]_0 [15]),
        .I2(\present_answer_reg[3]_0 ),
        .O(i__carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_2
       (.I0(\present_B_reg[15]_0 [14]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[14]),
        .O(i__carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_3
       (.I0(\present_B_reg[15]_0 [13]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[13]),
        .O(i__carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_4
       (.I0(\present_B_reg[15]_0 [12]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[12]),
        .O(i__carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__3_i_1
       (.I0(\present_B_reg[15]_0 [15]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[15]),
        .O(i__carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(\present_B_reg[15]_0 [3]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[3]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(\present_B_reg[15]_0 [2]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[2]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(\present_B_reg[15]_0 [1]),
        .I1(\present_answer_reg[3]_0 ),
        .I2(Q[1]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(\present_B_reg[15]_0 [0]),
        .O(i__carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[0] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[10] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[11] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[12] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[13] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[14] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[15] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[1] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[2] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[3] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[4] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[5] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[6] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[7] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[8] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_A_reg[9] 
       (.C(CLK),
        .CE(\present_A_reg[15]_2 ),
        .D(\present_A_reg[15]_3 [9]),
        .Q(Q[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\present_B_reg[15]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(\present_B_reg[15]_0 [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(\present_B_reg[15]_0 [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .Q(\present_B_reg[15]_0 [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .Q(\present_B_reg[15]_0 [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .Q(\present_B_reg[15]_0 [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .Q(\present_B_reg[15]_0 [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\present_B_reg[15]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\present_B_reg[15]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\present_B_reg[15]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(\present_B_reg[15]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(\present_B_reg[15]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(\present_B_reg[15]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(\present_B_reg[15]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(\present_B_reg[15]_0 [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_B_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(\present_B_reg[15]_0 [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[0] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [0]),
        .Q(\present_answer_reg[23]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[10] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [10]),
        .Q(\present_answer_reg[23]_0 [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[11] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [11]),
        .Q(\present_answer_reg[23]_0 [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[12] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [12]),
        .Q(\present_answer_reg[23]_0 [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[13] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [13]),
        .Q(\present_answer_reg[23]_0 [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[14] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [14]),
        .Q(\present_answer_reg[23]_0 [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[15] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [15]),
        .Q(\present_answer_reg[23]_0 [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[1] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [1]),
        .Q(\present_answer_reg[23]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[23] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [16]),
        .Q(\present_answer_reg[23]_0 [16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[2] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [2]),
        .Q(\present_answer_reg[23]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[3] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [3]),
        .Q(\present_answer_reg[23]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[4] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [4]),
        .Q(\present_answer_reg[23]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[5] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [5]),
        .Q(\present_answer_reg[23]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[6] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [6]),
        .Q(\present_answer_reg[23]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[7] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [7]),
        .Q(\present_answer_reg[23]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[8] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [8]),
        .Q(\present_answer_reg[23]_0 [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_answer_reg[9] 
       (.C(CLK),
        .CE(\present_answer_reg[23]_1 ),
        .D(\present_answer_reg[23]_2 [9]),
        .Q(\present_answer_reg[23]_0 [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[10] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [2]),
        .Q(\present_display_reg[15]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[11] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [3]),
        .Q(\present_display_reg[15]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[12] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [4]),
        .Q(\present_display_reg[15]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[13] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [5]),
        .Q(\present_display_reg[15]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[14] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [6]),
        .Q(\present_display_reg[15]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[15] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [7]),
        .Q(\present_display_reg[15]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[8] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [0]),
        .Q(\present_display_reg[15]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_display_reg[9] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_display_reg[15]_2 [1]),
        .Q(\present_display_reg[15]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[0] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [0]),
        .Q(value[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[15] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [8]),
        .Q(value[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[1] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [1]),
        .Q(value[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[2] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [2]),
        .Q(value[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[3] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [3]),
        .Q(value[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[4] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [4]),
        .Q(value[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[5] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [5]),
        .Q(value[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[6] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [6]),
        .Q(value[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \present_value_reg[7] 
       (.C(CLK),
        .CE(\present_display_reg[15]_1 ),
        .D(\present_value_reg[15]_0 [7]),
        .Q(value[7]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1085)) 
    \seven_seg_OBUF[0]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [1]),
        .I1(\seven_segment/LED_BCD__20 [0]),
        .I2(\seven_segment/LED_BCD__20 [2]),
        .I3(\seven_segment/LED_BCD__20 [3]),
        .O(seven_seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \seven_seg_OBUF[1]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [1]),
        .I1(\seven_segment/LED_BCD__20 [0]),
        .I2(\seven_segment/LED_BCD__20 [3]),
        .I3(\seven_segment/LED_BCD__20 [2]),
        .O(seven_seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h5704)) 
    \seven_seg_OBUF[2]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [3]),
        .I1(\seven_segment/LED_BCD__20 [2]),
        .I2(\seven_segment/LED_BCD__20 [1]),
        .I3(\seven_segment/LED_BCD__20 [0]),
        .O(seven_seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seven_seg_OBUF[3]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [3]),
        .I1(\seven_segment/LED_BCD__20 [0]),
        .I2(\seven_segment/LED_BCD__20 [2]),
        .I3(\seven_segment/LED_BCD__20 [1]),
        .O(seven_seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8098)) 
    \seven_seg_OBUF[4]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [3]),
        .I1(\seven_segment/LED_BCD__20 [2]),
        .I2(\seven_segment/LED_BCD__20 [1]),
        .I3(\seven_segment/LED_BCD__20 [0]),
        .O(seven_seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hD860)) 
    \seven_seg_OBUF[5]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [0]),
        .I1(\seven_segment/LED_BCD__20 [1]),
        .I2(\seven_segment/LED_BCD__20 [2]),
        .I3(\seven_segment/LED_BCD__20 [3]),
        .O(seven_seg_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4184)) 
    \seven_seg_OBUF[6]_inst_i_1 
       (.I0(\seven_segment/LED_BCD__20 [1]),
        .I1(\seven_segment/LED_BCD__20 [0]),
        .I2(\seven_segment/LED_BCD__20 [3]),
        .I3(\seven_segment/LED_BCD__20 [2]),
        .O(seven_seg_OBUF[6]));
  LUT5 #(
    .INIT(32'hAFACA0AC)) 
    \seven_seg_OBUF[6]_inst_i_2 
       (.I0(value[15]),
        .I1(value[1]),
        .I2(LED_activating_counter[1]),
        .I3(LED_activating_counter[0]),
        .I4(value[5]),
        .O(\seven_segment/LED_BCD__20 [1]));
  LUT5 #(
    .INIT(32'hAFACA0AC)) 
    \seven_seg_OBUF[6]_inst_i_3 
       (.I0(value[15]),
        .I1(value[0]),
        .I2(LED_activating_counter[1]),
        .I3(LED_activating_counter[0]),
        .I4(value[4]),
        .O(\seven_segment/LED_BCD__20 [0]));
  LUT5 #(
    .INIT(32'hAFACA0AC)) 
    \seven_seg_OBUF[6]_inst_i_4 
       (.I0(value[15]),
        .I1(value[3]),
        .I2(LED_activating_counter[1]),
        .I3(LED_activating_counter[0]),
        .I4(value[7]),
        .O(\seven_segment/LED_BCD__20 [3]));
  LUT5 #(
    .INIT(32'hAFACA0AC)) 
    \seven_seg_OBUF[6]_inst_i_5 
       (.I0(value[15]),
        .I1(value[2]),
        .I2(LED_activating_counter[1]),
        .I3(LED_activating_counter[0]),
        .I4(value[6]),
        .O(\seven_segment/LED_BCD__20 [2]));
endmodule

(* addition = "3'b001" *) (* answer = "4'b0100" *) (* equal = "3'b100" *) 
(* input_A = "4'b0001" *) (* input_B = "4'b0010" *) (* last_value = "4'b1000" *) 
(* subtract = "3'b010" *) (* threshold = "100000000" *) 
(* NotValidForBitStream *)
module Top
   (clk,
    button,
    sw,
    an,
    seven_seg,
    LED);
  input clk;
  input [2:0]button;
  input [15:0]sw;
  output [3:0]an;
  output [6:0]seven_seg;
  output [15:0]LED;

  wire Calculator_n_19;
  wire Calculator_n_20;
  wire Calculator_n_21;
  wire Functions_n_0;
  wire Functions_n_1;
  wire Functions_n_12;
  wire Functions_n_13;
  wire Functions_n_14;
  wire Functions_n_15;
  wire Functions_n_16;
  wire Functions_n_17;
  wire Functions_n_18;
  wire Functions_n_19;
  wire Functions_n_2;
  wire Functions_n_20;
  wire Functions_n_21;
  wire Functions_n_22;
  wire Functions_n_23;
  wire Functions_n_24;
  wire Functions_n_25;
  wire Functions_n_26;
  wire Functions_n_27;
  wire Functions_n_28;
  wire Functions_n_29;
  wire Functions_n_3;
  wire Functions_n_30;
  wire Functions_n_31;
  wire Functions_n_32;
  wire Functions_n_48;
  wire Functions_n_49;
  wire Functions_n_50;
  wire Functions_n_51;
  wire Functions_n_52;
  wire Functions_n_53;
  wire Functions_n_54;
  wire Functions_n_55;
  wire Functions_n_65;
  wire Functions_n_66;
  wire Functions_n_67;
  wire Functions_n_68;
  wire Functions_n_69;
  wire Functions_n_70;
  wire Functions_n_71;
  wire Functions_n_72;
  wire [15:0]LED;
  wire [15:8]LED_OBUF;
  wire [1:0]LED_activating_counter;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire [2:0]button;
  wire [2:0]button_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [15:0]data2;
  wire debouncer_n_1;
  wire [1:1]func;
  wire [15:0]next_A;
  wire [23:0]next_answer;
  wire [15:8]next_display;
  wire [15:0]next_value;
  wire present_display0;
  wire reset;
  wire [6:0]seven_seg;
  wire [6:0]seven_seg_OBUF;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

  Calculator Calculator
       (.CLK(clk_IBUF_BUFG),
        .D({next_answer[23],next_answer[15:0]}),
        .E(present_display0),
        .O({Functions_n_0,Functions_n_1,Functions_n_2,Functions_n_3}),
        .Q(func),
        .button_IBUF(button_IBUF),
        .\present_A_reg[15] (sw_IBUF),
        .\present_answer_reg[11] ({Functions_n_24,Functions_n_25,Functions_n_26,Functions_n_27}),
        .\present_answer_reg[15] ({Functions_n_28,Functions_n_29,Functions_n_30,Functions_n_31}),
        .\present_answer_reg[23] (Functions_n_32),
        .\present_answer_reg[7] ({Functions_n_20,Functions_n_21,Functions_n_22,Functions_n_23}),
        .\present_func_reg[1]_0 (Calculator_n_19),
        .\present_func_reg[1]_1 (Calculator_n_20),
        .\present_state_reg[0]_0 (Calculator_n_21),
        .\present_state_reg[0]_1 (next_A),
        .\present_state_reg[0]_2 (next_display),
        .\present_state_reg[1]_0 (debouncer_n_1),
        .\present_state_reg[2]_0 ({next_value[15],next_value[7:0]}),
        .\present_value_reg[15] ({data2[15],data2[7:0],Functions_n_65,Functions_n_66,Functions_n_67,Functions_n_68,Functions_n_69,Functions_n_70,Functions_n_71,Functions_n_72}),
        .\present_value_reg[7] ({data0,Functions_n_12,Functions_n_13,Functions_n_14,Functions_n_15,Functions_n_16,Functions_n_17,Functions_n_18,Functions_n_19}),
        .\present_value_reg[7]_0 ({data1,Functions_n_48,Functions_n_49,Functions_n_50,Functions_n_51,Functions_n_52,Functions_n_53,Functions_n_54,Functions_n_55}),
        .reset(reset));
  Functions Functions
       (.CLK(clk_IBUF_BUFG),
        .D(sw_IBUF),
        .E(Calculator_n_20),
        .LED_activating_counter(LED_activating_counter),
        .O({Functions_n_0,Functions_n_1,Functions_n_2,Functions_n_3}),
        .Q({data0,Functions_n_12,Functions_n_13,Functions_n_14,Functions_n_15,Functions_n_16,Functions_n_17,Functions_n_18,Functions_n_19}),
        .\present_A_reg[11]_0 ({Functions_n_24,Functions_n_25,Functions_n_26,Functions_n_27}),
        .\present_A_reg[15]_0 ({Functions_n_28,Functions_n_29,Functions_n_30,Functions_n_31}),
        .\present_A_reg[15]_1 (Functions_n_32),
        .\present_A_reg[15]_2 (Calculator_n_19),
        .\present_A_reg[15]_3 (next_A),
        .\present_A_reg[7]_0 ({Functions_n_20,Functions_n_21,Functions_n_22,Functions_n_23}),
        .\present_B_reg[15]_0 ({data1,Functions_n_48,Functions_n_49,Functions_n_50,Functions_n_51,Functions_n_52,Functions_n_53,Functions_n_54,Functions_n_55}),
        .\present_answer_reg[23]_0 ({data2[15],data2[7:0],Functions_n_65,Functions_n_66,Functions_n_67,Functions_n_68,Functions_n_69,Functions_n_70,Functions_n_71,Functions_n_72}),
        .\present_answer_reg[23]_1 (Calculator_n_21),
        .\present_answer_reg[23]_2 ({next_answer[23],next_answer[15:0]}),
        .\present_answer_reg[3]_0 (func),
        .\present_display_reg[15]_0 (LED_OBUF),
        .\present_display_reg[15]_1 (present_display0),
        .\present_display_reg[15]_2 (next_display),
        .\present_value_reg[15]_0 ({next_value[15],next_value[7:0]}),
        .reset(reset),
        .seven_seg_OBUF(seven_seg_OBUF));
  OBUF \LED_OBUF[0]_inst 
       (.I(1'b0),
        .O(LED[0]));
  OBUF \LED_OBUF[10]_inst 
       (.I(LED_OBUF[10]),
        .O(LED[10]));
  OBUF \LED_OBUF[11]_inst 
       (.I(LED_OBUF[11]),
        .O(LED[11]));
  OBUF \LED_OBUF[12]_inst 
       (.I(LED_OBUF[12]),
        .O(LED[12]));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(LED_OBUF[15]),
        .O(LED[15]));
  OBUF \LED_OBUF[1]_inst 
       (.I(1'b0),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(LED_OBUF[8]),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(LED_OBUF[9]),
        .O(LED[9]));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF \button_IBUF[0]_inst 
       (.I(button[0]),
        .O(button_IBUF[0]));
  IBUF \button_IBUF[1]_inst 
       (.I(button[1]),
        .O(button_IBUF[1]));
  IBUF \button_IBUF[2]_inst 
       (.I(button[2]),
        .O(button_IBUF[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debouncer debouncer
       (.CLK(clk_IBUF_BUFG),
        .\button[0] (debouncer_n_1),
        .button_IBUF(button_IBUF),
        .reset(reset));
  OBUF \seven_seg_OBUF[0]_inst 
       (.I(seven_seg_OBUF[0]),
        .O(seven_seg[0]));
  OBUF \seven_seg_OBUF[1]_inst 
       (.I(seven_seg_OBUF[1]),
        .O(seven_seg[1]));
  OBUF \seven_seg_OBUF[2]_inst 
       (.I(seven_seg_OBUF[2]),
        .O(seven_seg[2]));
  OBUF \seven_seg_OBUF[3]_inst 
       (.I(seven_seg_OBUF[3]),
        .O(seven_seg[3]));
  OBUF \seven_seg_OBUF[4]_inst 
       (.I(seven_seg_OBUF[4]),
        .O(seven_seg[4]));
  OBUF \seven_seg_OBUF[5]_inst 
       (.I(seven_seg_OBUF[5]),
        .O(seven_seg[5]));
  OBUF \seven_seg_OBUF[6]_inst 
       (.I(seven_seg_OBUF[6]),
        .O(seven_seg[6]));
  seven_seg_ctrl seven_segment
       (.CLK(clk_IBUF_BUFG),
        .LED_activating_counter(LED_activating_counter),
        .an_OBUF(an_OBUF),
        .reset(reset));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
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
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
endmodule

module debouncer
   (reset,
    \button[0] ,
    CLK,
    button_IBUF);
  output reset;
  output \button[0] ;
  input CLK;
  input [2:0]button_IBUF;

  wire CLK;
  wire \button[0] ;
  wire [2:0]button_IBUF;
  wire button_reset_i_2_n_0;
  wire button_reset_i_3_n_0;
  wire button_reset_i_4_n_0;
  wire button_reset_i_5_n_0;
  wire button_reset_i_6_n_0;
  wire button_reset_i_7_n_0;
  wire button_reset_i_8_n_0;
  wire button_reset_i_9_n_0;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire p_0_in;
  wire reset;
  wire sel;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFFE)) 
    button_reset_i_1
       (.I0(button_reset_i_2_n_0),
        .I1(button_reset_i_3_n_0),
        .I2(count_reg[27]),
        .I3(count_reg[28]),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    button_reset_i_2
       (.I0(count_reg[31]),
        .I1(count_reg[26]),
        .I2(count_reg[25]),
        .I3(count_reg[30]),
        .I4(count_reg[29]),
        .O(button_reset_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    button_reset_i_3
       (.I0(button_reset_i_4_n_0),
        .I1(button_reset_i_5_n_0),
        .I2(button_reset_i_6_n_0),
        .I3(button_reset_i_7_n_0),
        .I4(button_reset_i_8_n_0),
        .I5(button_reset_i_9_n_0),
        .O(button_reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_reset_i_4
       (.I0(count_reg[21]),
        .I1(count_reg[22]),
        .I2(count_reg[26]),
        .I3(count_reg[20]),
        .I4(count_reg[24]),
        .I5(count_reg[23]),
        .O(button_reset_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    button_reset_i_5
       (.I0(count_reg[18]),
        .I1(count_reg[13]),
        .I2(count_reg[14]),
        .I3(count_reg[16]),
        .I4(count_reg[15]),
        .O(button_reset_i_5_n_0));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    button_reset_i_6
       (.I0(count_reg[0]),
        .I1(count_reg[7]),
        .I2(count_reg[8]),
        .I3(count_reg[6]),
        .I4(count_reg[5]),
        .O(button_reset_i_6_n_0));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    button_reset_i_7
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[8]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .O(button_reset_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    button_reset_i_8
       (.I0(count_reg[12]),
        .I1(count_reg[9]),
        .I2(count_reg[11]),
        .I3(count_reg[10]),
        .O(button_reset_i_8_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    button_reset_i_9
       (.I0(count_reg[17]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .O(button_reset_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_reset_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(reset),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEF)) 
    \count[0]_i_1 
       (.I0(button_IBUF[0]),
        .I1(button_IBUF[1]),
        .I2(button_IBUF[2]),
        .O(\button[0] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_10 
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .I2(count_reg[13]),
        .I3(count_reg[12]),
        .O(\count[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_11 
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .I2(count_reg[9]),
        .I3(count_reg[8]),
        .O(\count[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \count[0]_i_2 
       (.I0(\count[0]_i_4_n_0 ),
        .I1(\count[0]_i_5_n_0 ),
        .I2(count_reg[25]),
        .I3(count_reg[24]),
        .I4(count_reg[23]),
        .I5(count_reg[22]),
        .O(sel));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \count[0]_i_4 
       (.I0(\count[0]_i_7_n_0 ),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(count_reg[28]),
        .I4(count_reg[29]),
        .O(\count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \count[0]_i_5 
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .I2(\count[0]_i_8_n_0 ),
        .I3(\count[0]_i_9_n_0 ),
        .I4(\count[0]_i_10_n_0 ),
        .I5(\count[0]_i_11_n_0 ),
        .O(\count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6 
       (.I0(count_reg[0]),
        .O(\count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[0]_i_7 
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .I2(count_reg[20]),
        .I3(count_reg[21]),
        .I4(count_reg[31]),
        .I5(count_reg[30]),
        .O(\count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_8 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .O(\count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_9 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .O(\count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\button[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\button[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\button[0] ));
endmodule

module seven_seg_ctrl
   (LED_activating_counter,
    an_OBUF,
    CLK,
    reset);
  output [1:0]LED_activating_counter;
  output [3:0]an_OBUF;
  input CLK;
  input reset;

  wire CLK;
  wire [1:0]LED_activating_counter;
  wire [3:0]an_OBUF;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_1 ;
  wire \refresh_counter_reg[0]_i_1_n_2 ;
  wire \refresh_counter_reg[0]_i_1_n_3 ;
  wire \refresh_counter_reg[0]_i_1_n_4 ;
  wire \refresh_counter_reg[0]_i_1_n_5 ;
  wire \refresh_counter_reg[0]_i_1_n_6 ;
  wire \refresh_counter_reg[0]_i_1_n_7 ;
  wire \refresh_counter_reg[12]_i_1_n_0 ;
  wire \refresh_counter_reg[12]_i_1_n_1 ;
  wire \refresh_counter_reg[12]_i_1_n_2 ;
  wire \refresh_counter_reg[12]_i_1_n_3 ;
  wire \refresh_counter_reg[12]_i_1_n_4 ;
  wire \refresh_counter_reg[12]_i_1_n_5 ;
  wire \refresh_counter_reg[12]_i_1_n_6 ;
  wire \refresh_counter_reg[12]_i_1_n_7 ;
  wire \refresh_counter_reg[16]_i_1_n_1 ;
  wire \refresh_counter_reg[16]_i_1_n_2 ;
  wire \refresh_counter_reg[16]_i_1_n_3 ;
  wire \refresh_counter_reg[16]_i_1_n_4 ;
  wire \refresh_counter_reg[16]_i_1_n_5 ;
  wire \refresh_counter_reg[16]_i_1_n_6 ;
  wire \refresh_counter_reg[16]_i_1_n_7 ;
  wire \refresh_counter_reg[4]_i_1_n_0 ;
  wire \refresh_counter_reg[4]_i_1_n_1 ;
  wire \refresh_counter_reg[4]_i_1_n_2 ;
  wire \refresh_counter_reg[4]_i_1_n_3 ;
  wire \refresh_counter_reg[4]_i_1_n_4 ;
  wire \refresh_counter_reg[4]_i_1_n_5 ;
  wire \refresh_counter_reg[4]_i_1_n_6 ;
  wire \refresh_counter_reg[4]_i_1_n_7 ;
  wire \refresh_counter_reg[8]_i_1_n_0 ;
  wire \refresh_counter_reg[8]_i_1_n_1 ;
  wire \refresh_counter_reg[8]_i_1_n_2 ;
  wire \refresh_counter_reg[8]_i_1_n_3 ;
  wire \refresh_counter_reg[8]_i_1_n_4 ;
  wire \refresh_counter_reg[8]_i_1_n_5 ;
  wire \refresh_counter_reg[8]_i_1_n_6 ;
  wire \refresh_counter_reg[8]_i_1_n_7 ;
  wire \refresh_counter_reg_n_0_[0] ;
  wire \refresh_counter_reg_n_0_[10] ;
  wire \refresh_counter_reg_n_0_[11] ;
  wire \refresh_counter_reg_n_0_[12] ;
  wire \refresh_counter_reg_n_0_[13] ;
  wire \refresh_counter_reg_n_0_[14] ;
  wire \refresh_counter_reg_n_0_[15] ;
  wire \refresh_counter_reg_n_0_[16] ;
  wire \refresh_counter_reg_n_0_[17] ;
  wire \refresh_counter_reg_n_0_[1] ;
  wire \refresh_counter_reg_n_0_[2] ;
  wire \refresh_counter_reg_n_0_[3] ;
  wire \refresh_counter_reg_n_0_[4] ;
  wire \refresh_counter_reg_n_0_[5] ;
  wire \refresh_counter_reg_n_0_[6] ;
  wire \refresh_counter_reg_n_0_[7] ;
  wire \refresh_counter_reg_n_0_[8] ;
  wire \refresh_counter_reg_n_0_[9] ;
  wire reset;
  wire [3:3]\NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_counter[0]_i_2 
       (.I0(\refresh_counter_reg_n_0_[0] ),
        .O(\refresh_counter[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[0]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \refresh_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_counter_reg[0]_i_1_n_0 ,\refresh_counter_reg[0]_i_1_n_1 ,\refresh_counter_reg[0]_i_1_n_2 ,\refresh_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_counter_reg[0]_i_1_n_4 ,\refresh_counter_reg[0]_i_1_n_5 ,\refresh_counter_reg[0]_i_1_n_6 ,\refresh_counter_reg[0]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[3] ,\refresh_counter_reg_n_0_[2] ,\refresh_counter_reg_n_0_[1] ,\refresh_counter[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[8]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[8]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[12]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \refresh_counter_reg[12]_i_1 
       (.CI(\refresh_counter_reg[8]_i_1_n_0 ),
        .CO({\refresh_counter_reg[12]_i_1_n_0 ,\refresh_counter_reg[12]_i_1_n_1 ,\refresh_counter_reg[12]_i_1_n_2 ,\refresh_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[12]_i_1_n_4 ,\refresh_counter_reg[12]_i_1_n_5 ,\refresh_counter_reg[12]_i_1_n_6 ,\refresh_counter_reg[12]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[15] ,\refresh_counter_reg_n_0_[14] ,\refresh_counter_reg_n_0_[13] ,\refresh_counter_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[12]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[12]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[12]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[16]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \refresh_counter_reg[16]_i_1 
       (.CI(\refresh_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED [3],\refresh_counter_reg[16]_i_1_n_1 ,\refresh_counter_reg[16]_i_1_n_2 ,\refresh_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[16]_i_1_n_4 ,\refresh_counter_reg[16]_i_1_n_5 ,\refresh_counter_reg[16]_i_1_n_6 ,\refresh_counter_reg[16]_i_1_n_7 }),
        .S({LED_activating_counter,\refresh_counter_reg_n_0_[17] ,\refresh_counter_reg_n_0_[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[16]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[16]_i_1_n_5 ),
        .Q(LED_activating_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[16]_i_1_n_4 ),
        .Q(LED_activating_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[0]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[0]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[0]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[4]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \refresh_counter_reg[4]_i_1 
       (.CI(\refresh_counter_reg[0]_i_1_n_0 ),
        .CO({\refresh_counter_reg[4]_i_1_n_0 ,\refresh_counter_reg[4]_i_1_n_1 ,\refresh_counter_reg[4]_i_1_n_2 ,\refresh_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[4]_i_1_n_4 ,\refresh_counter_reg[4]_i_1_n_5 ,\refresh_counter_reg[4]_i_1_n_6 ,\refresh_counter_reg[4]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[7] ,\refresh_counter_reg_n_0_[6] ,\refresh_counter_reg_n_0_[5] ,\refresh_counter_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[4]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[4]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[4]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[8]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \refresh_counter_reg[8]_i_1 
       (.CI(\refresh_counter_reg[4]_i_1_n_0 ),
        .CO({\refresh_counter_reg[8]_i_1_n_0 ,\refresh_counter_reg[8]_i_1_n_1 ,\refresh_counter_reg[8]_i_1_n_2 ,\refresh_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[8]_i_1_n_4 ,\refresh_counter_reg[8]_i_1_n_5 ,\refresh_counter_reg[8]_i_1_n_6 ,\refresh_counter_reg[8]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[11] ,\refresh_counter_reg_n_0_[10] ,\refresh_counter_reg_n_0_[9] ,\refresh_counter_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\refresh_counter_reg[8]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[9] ));
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
