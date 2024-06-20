// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Jun 20 14:43:33 2024
// Host        : secil10.siame.univ-tlse3.fr running 64-bit Fedora Linux 38 (Thirty Eight)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_PetaENC_INT_0_0_sim_netlist.v
// Design      : system_PetaENC_INT_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer
   (BO,
    AO,
    in_top_bus_I,
    s_axi_aclk);
  output BO;
  output AO;
  input [1:0]in_top_bus_I;
  input s_axi_aclk;

  wire AO;
  wire Aout_i_1_n_0;
  wire BO;
  wire Bout_i_1_n_0;
  wire [1:0]in_top_bus_I;
  wire [6:0]plusOp;
  wire s_axi_aclk;
  wire sampledA;
  wire sampledB;
  wire [6:0]sclk;
  wire \sclk[6]_i_1_n_0 ;
  wire \sclk[6]_i_3_n_0 ;
  wire \sclk[6]_i_4_n_0 ;

  LUT5 #(
    .INIT(32'hFFBF8000)) 
    Aout_i_1
       (.I0(sampledA),
        .I1(sclk[5]),
        .I2(\sclk[6]_i_3_n_0 ),
        .I3(in_top_bus_I[0]),
        .I4(AO),
        .O(Aout_i_1_n_0));
  FDRE Aout_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Aout_i_1_n_0),
        .Q(AO),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBF8000)) 
    Bout_i_1
       (.I0(sampledB),
        .I1(sclk[5]),
        .I2(\sclk[6]_i_3_n_0 ),
        .I3(in_top_bus_I[1]),
        .I4(BO),
        .O(Bout_i_1_n_0));
  FDRE Bout_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bout_i_1_n_0),
        .Q(BO),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sampledA_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in_top_bus_I[0]),
        .Q(sampledA),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sampledB_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in_top_bus_I[1]),
        .Q(sampledB),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sclk[0]_i_1 
       (.I0(sclk[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sclk[1]_i_1 
       (.I0(sclk[0]),
        .I1(sclk[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sclk[2]_i_1 
       (.I0(sclk[2]),
        .I1(sclk[0]),
        .I2(sclk[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sclk[3]_i_1 
       (.I0(sclk[3]),
        .I1(sclk[0]),
        .I2(sclk[1]),
        .I3(sclk[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sclk[4]_i_1 
       (.I0(sclk[4]),
        .I1(sclk[2]),
        .I2(sclk[1]),
        .I3(sclk[0]),
        .I4(sclk[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sclk[5]_i_1 
       (.I0(sclk[5]),
        .I1(sclk[3]),
        .I2(sclk[0]),
        .I3(sclk[1]),
        .I4(sclk[2]),
        .I5(sclk[4]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sclk[6]_i_1 
       (.I0(\sclk[6]_i_3_n_0 ),
        .I1(sclk[5]),
        .O(\sclk[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sclk[6]_i_2 
       (.I0(sclk[3]),
        .I1(\sclk[6]_i_4_n_0 ),
        .I2(sclk[2]),
        .I3(sclk[4]),
        .I4(sclk[5]),
        .I5(sclk[6]),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \sclk[6]_i_3 
       (.I0(sclk[4]),
        .I1(sclk[2]),
        .I2(sclk[1]),
        .I3(sclk[0]),
        .I4(sclk[3]),
        .I5(sclk[6]),
        .O(\sclk[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sclk[6]_i_4 
       (.I0(sclk[1]),
        .I1(sclk[0]),
        .O(\sclk[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(sclk[0]),
        .R(\sclk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(sclk[1]),
        .R(\sclk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(sclk[2]),
        .R(\sclk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(sclk[3]),
        .R(\sclk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(sclk[4]),
        .R(\sclk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(sclk[5]),
        .R(\sclk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sclk_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(sclk[6]),
        .R(\sclk[6]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder
   (counter,
    s_axi_aclk,
    in_top_bus_I,
    AO,
    BO);
  output [3:0]counter;
  input s_axi_aclk;
  input [0:0]in_top_bus_I;
  input AO;
  input BO;

  wire AO;
  wire BO;
  wire [3:0]counter;
  wire [3:0]curState;
  wire [0:0]in_top_bus_I;
  wire [3:0]nextState;
  wire [3:0]read_counter;
  wire \read_counter[1]_i_1_n_0 ;
  wire \read_counter[3]_i_3_n_0 ;
  wire read_counter_0;
  wire s_axi_aclk;

  LUT6 #(
    .INIT(64'h000000005C74201D)) 
    \FSM_sequential_curState[0]_i_1 
       (.I0(curState[0]),
        .I1(AO),
        .I2(BO),
        .I3(curState[2]),
        .I4(curState[1]),
        .I5(curState[3]),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'h0020003030322032)) 
    \FSM_sequential_curState[1]_i_1 
       (.I0(curState[0]),
        .I1(curState[3]),
        .I2(curState[1]),
        .I3(AO),
        .I4(curState[2]),
        .I5(BO),
        .O(nextState[1]));
  LUT6 #(
    .INIT(64'h1540550005000004)) 
    \FSM_sequential_curState[2]_i_1 
       (.I0(curState[3]),
        .I1(BO),
        .I2(AO),
        .I3(curState[2]),
        .I4(curState[0]),
        .I5(curState[1]),
        .O(nextState[2]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_sequential_curState[3]_i_1 
       (.I0(curState[3]),
        .I1(curState[1]),
        .I2(curState[0]),
        .I3(BO),
        .I4(AO),
        .I5(curState[2]),
        .O(nextState[3]));
  (* FSM_ENCODED_STATES = "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curState_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(in_top_bus_I),
        .D(nextState[0]),
        .Q(curState[0]));
  (* FSM_ENCODED_STATES = "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curState_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(in_top_bus_I),
        .D(nextState[1]),
        .Q(curState[1]));
  (* FSM_ENCODED_STATES = "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curState_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(in_top_bus_I),
        .D(nextState[2]),
        .Q(curState[2]));
  (* FSM_ENCODED_STATES = "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curState_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(in_top_bus_I),
        .D(nextState[3]),
        .Q(curState[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_counter[0]_i_1 
       (.I0(counter[0]),
        .O(read_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA659)) 
    \read_counter[1]_i_1 
       (.I0(counter[0]),
        .I1(curState[2]),
        .I2(curState[3]),
        .I3(counter[1]),
        .O(\read_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \read_counter[2]_i_1 
       (.I0(\read_counter[3]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(read_counter[2]));
  LUT4 #(
    .INIT(16'h0110)) 
    \read_counter[3]_i_1 
       (.I0(curState[1]),
        .I1(curState[0]),
        .I2(curState[2]),
        .I3(curState[3]),
        .O(read_counter_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \read_counter[3]_i_2 
       (.I0(\read_counter[3]_i_3_n_0 ),
        .I1(counter[1]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(read_counter[3]));
  LUT6 #(
    .INIT(64'h0100FFFF00000100)) 
    \read_counter[3]_i_3 
       (.I0(curState[1]),
        .I1(curState[0]),
        .I2(curState[3]),
        .I3(curState[2]),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(\read_counter[3]_i_3_n_0 ));
  FDCE \read_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(read_counter_0),
        .CLR(in_top_bus_I),
        .D(read_counter[0]),
        .Q(counter[0]));
  FDCE \read_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(read_counter_0),
        .CLR(in_top_bus_I),
        .D(\read_counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE \read_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(read_counter_0),
        .CLR(in_top_bus_I),
        .D(read_counter[2]),
        .Q(counter[2]));
  FDCE \read_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(read_counter_0),
        .CLR(in_top_bus_I),
        .D(read_counter[3]),
        .Q(counter[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core
   (reg1,
    GPIO_intr,
    GPIO_xferAck_i,
    reg2,
    s_axi_aclk,
    bus2ip_reset,
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ,
    Q,
    bus2ip_cs,
    bus2ip_rnw,
    gpio_io_i,
    E,
    D,
    \Not_Dual.gpio_OE_reg[0]_0 );
  output [3:0]reg1;
  output GPIO_intr;
  output GPIO_xferAck_i;
  output [3:0]reg2;
  input s_axi_aclk;
  input bus2ip_reset;
  input \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ;
  input [0:0]Q;
  input [0:0]bus2ip_cs;
  input bus2ip_rnw;
  input [3:0]gpio_io_i;
  input [0:0]E;
  input [3:0]D;
  input [0:0]\Not_Dual.gpio_OE_reg[0]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ;
  wire \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0] ;
  wire \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[1] ;
  wire \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[3] ;
  wire \Not_Dual.gpio_Data_Out_reg_n_0_[0] ;
  wire \Not_Dual.gpio_Data_Out_reg_n_0_[1] ;
  wire \Not_Dual.gpio_Data_Out_reg_n_0_[2] ;
  wire \Not_Dual.gpio_Data_Out_reg_n_0_[3] ;
  wire [0:0]\Not_Dual.gpio_OE_reg[0]_0 ;
  wire \Not_Dual.gpio_OE_reg_n_0_[0] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[1] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[2] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[3] ;
  wire [0:0]Q;
  wire Read_Reg_Rst;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:3]gpio_Data_In;
  wire [0:3]gpio_data_in_xor;
  wire [3:0]gpio_io_i;
  wire [0:3]gpio_io_i_d2;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire or_reduce__0;
  wire p_1_in;
  wire [3:0]reg1;
  wire [3:0]reg2;
  wire s_axi_aclk;

  LUT5 #(
    .INIT(32'h3232CF00)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1 
       (.I0(gpio_Data_In[0]),
        .I1(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I2(Q),
        .I3(\Not_Dual.gpio_Data_Out_reg_n_0_[0] ),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[0] ),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1_n_0 ),
        .Q(reg1[3]),
        .R(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h33CB00C8)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1 
       (.I0(gpio_Data_In[0]),
        .I1(\Not_Dual.gpio_OE_reg_n_0_[0] ),
        .I2(Q),
        .I3(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I4(reg2[3]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1_n_0 ),
        .Q(reg2[3]),
        .R(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h3232CF00)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1 
       (.I0(gpio_Data_In[1]),
        .I1(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I2(Q),
        .I3(\Not_Dual.gpio_Data_Out_reg_n_0_[1] ),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[1] ),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1_n_0 ),
        .Q(reg1[2]),
        .R(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h33CB00C8)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1 
       (.I0(gpio_Data_In[1]),
        .I1(\Not_Dual.gpio_OE_reg_n_0_[1] ),
        .I2(Q),
        .I3(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I4(reg2[2]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1_n_0 ),
        .Q(reg2[2]),
        .R(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h3232CF00)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1 
       (.I0(gpio_Data_In[2]),
        .I1(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I2(Q),
        .I3(\Not_Dual.gpio_Data_Out_reg_n_0_[2] ),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[2] ),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1_n_0 ),
        .Q(reg1[1]),
        .R(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h33CB00C8)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1 
       (.I0(gpio_Data_In[2]),
        .I1(\Not_Dual.gpio_OE_reg_n_0_[2] ),
        .I2(Q),
        .I3(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I4(reg2[1]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1_n_0 ),
        .Q(reg2[1]),
        .R(Read_Reg_Rst));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_1 
       (.I0(gpio_xferAck_Reg),
        .I1(GPIO_xferAck_i),
        .I2(bus2ip_cs),
        .I3(bus2ip_rnw),
        .O(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h3232CF00)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2 
       (.I0(gpio_Data_In[3]),
        .I1(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I2(Q),
        .I3(\Not_Dual.gpio_Data_Out_reg_n_0_[3] ),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[3] ),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2_n_0 ),
        .Q(reg1[0]),
        .R(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h33CB00C8)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1 
       (.I0(gpio_Data_In[3]),
        .I1(\Not_Dual.gpio_OE_reg_n_0_[3] ),
        .I2(Q),
        .I3(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 ),
        .I4(reg2[0]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1_n_0 ),
        .Q(reg2[0]),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.GEN_INTERRUPT.GPIO_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_reduce__0),
        .Q(GPIO_intr),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[0]),
        .Q(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[1]),
        .Q(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[1] ),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[2]),
        .Q(p_1_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[3]),
        .Q(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[3] ),
        .R(bus2ip_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \Not_Dual.INPUT_DOUBLE_REGS3 
       (.D({gpio_data_in_xor[0],gpio_data_in_xor[1],gpio_data_in_xor[2],gpio_data_in_xor[3]}),
        .Q({gpio_Data_In[0],gpio_Data_In[1],gpio_Data_In[2],gpio_Data_In[3]}),
        .gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1],gpio_io_i_d2[2],gpio_io_i_d2[3]}));
  FDRE \Not_Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[2]),
        .Q(gpio_Data_In[2]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[3]),
        .Q(gpio_Data_In[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\Not_Dual.gpio_Data_Out_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\Not_Dual.gpio_Data_Out_reg_n_0_[1] ),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\Not_Dual.gpio_Data_Out_reg_n_0_[2] ),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\Not_Dual.gpio_Data_Out_reg_n_0_[3] ),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(\Not_Dual.gpio_OE_reg[0]_0 ),
        .D(D[3]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[0] ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(\Not_Dual.gpio_OE_reg[0]_0 ),
        .D(D[2]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[1] ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(\Not_Dual.gpio_OE_reg[0]_0 ),
        .D(D[1]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[2] ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(\Not_Dual.gpio_OE_reg[0]_0 ),
        .D(D[0]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[3] ),
        .S(bus2ip_reset));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFFFE)) 
    or_reduce
       (.I0(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[3] ),
        .I1(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .I2(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[1] ),
        .I3(p_1_in),
        .O(or_reduce__0));
endmodule

(* hw_handoff = "PetaENC_INT.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT
   (Pmod_ENC_pin10_i,
    Pmod_ENC_pin10_o,
    Pmod_ENC_pin10_t,
    Pmod_ENC_pin1_i,
    Pmod_ENC_pin1_o,
    Pmod_ENC_pin1_t,
    Pmod_ENC_pin2_i,
    Pmod_ENC_pin2_o,
    Pmod_ENC_pin2_t,
    Pmod_ENC_pin3_i,
    Pmod_ENC_pin3_o,
    Pmod_ENC_pin3_t,
    Pmod_ENC_pin4_i,
    Pmod_ENC_pin4_o,
    Pmod_ENC_pin4_t,
    Pmod_ENC_pin7_i,
    Pmod_ENC_pin7_o,
    Pmod_ENC_pin7_t,
    Pmod_ENC_pin8_i,
    Pmod_ENC_pin8_o,
    Pmod_ENC_pin8_t,
    Pmod_ENC_pin9_i,
    Pmod_ENC_pin9_o,
    Pmod_ENC_pin9_t,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ip2intc_irpt_0,
    s_axi_aclk,
    s_axi_aresetn);
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_I" *) input Pmod_ENC_pin10_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_O" *) output Pmod_ENC_pin10_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_T" *) output Pmod_ENC_pin10_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_I" *) input Pmod_ENC_pin1_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_O" *) output Pmod_ENC_pin1_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_T" *) output Pmod_ENC_pin1_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_I" *) input Pmod_ENC_pin2_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_O" *) output Pmod_ENC_pin2_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_T" *) output Pmod_ENC_pin2_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_I" *) input Pmod_ENC_pin3_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_O" *) output Pmod_ENC_pin3_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_T" *) output Pmod_ENC_pin3_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_I" *) input Pmod_ENC_pin4_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_O" *) output Pmod_ENC_pin4_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_T" *) output Pmod_ENC_pin4_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_I" *) input Pmod_ENC_pin7_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_O" *) output Pmod_ENC_pin7_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_T" *) output Pmod_ENC_pin7_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_I" *) input Pmod_ENC_pin8_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_O" *) output Pmod_ENC_pin8_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_T" *) output Pmod_ENC_pin8_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_I" *) input Pmod_ENC_pin9_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_O" *) output Pmod_ENC_pin9_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_T" *) output Pmod_ENC_pin9_t;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PetaENC_INT_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [8:0]S_AXI_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output ip2intc_irpt_0;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN PetaENC_INT_s_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire \<const0> ;
  wire Pmod_ENC_pin1_i;
  wire Pmod_ENC_pin2_i;
  wire Pmod_ENC_pin3_i;
  wire [8:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [8:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire [3:0]gpio_io_i;
  wire ip2intc_irpt_0;
  wire [2:0]pmod_bridge_0_in_top_bus_I;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:0]NLW_axi_gpio_0_gpio_io_o_UNCONNECTED;
  wire [3:0]NLW_axi_gpio_0_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_axi_gpio_0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_axi_gpio_0_s_axi_rresp_UNCONNECTED;
  wire NLW_pmod_bridge_0_out0_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out0_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out1_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out1_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out2_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out2_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out3_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out3_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out4_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out4_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out5_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out5_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out6_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out6_T_UNCONNECTED;
  wire NLW_pmod_bridge_0_out7_O_UNCONNECTED;
  wire NLW_pmod_bridge_0_out7_T_UNCONNECTED;
  wire [3:3]NLW_pmod_bridge_0_in_top_bus_I_UNCONNECTED;

  assign Pmod_ENC_pin10_o = \<const0> ;
  assign Pmod_ENC_pin10_t = \<const0> ;
  assign Pmod_ENC_pin1_o = \<const0> ;
  assign Pmod_ENC_pin1_t = \<const0> ;
  assign Pmod_ENC_pin2_o = \<const0> ;
  assign Pmod_ENC_pin2_t = \<const0> ;
  assign Pmod_ENC_pin3_o = \<const0> ;
  assign Pmod_ENC_pin3_t = \<const0> ;
  assign Pmod_ENC_pin4_o = \<const0> ;
  assign Pmod_ENC_pin4_t = \<const0> ;
  assign Pmod_ENC_pin7_o = \<const0> ;
  assign Pmod_ENC_pin7_t = \<const0> ;
  assign Pmod_ENC_pin8_o = \<const0> ;
  assign Pmod_ENC_pin8_t = \<const0> ;
  assign Pmod_ENC_pin9_o = \<const0> ;
  assign Pmod_ENC_pin9_t = \<const0> ;
  assign S_AXI_bresp[1] = \<const0> ;
  assign S_AXI_bresp[0] = \<const0> ;
  assign S_AXI_rresp[1] = \<const0> ;
  assign S_AXI_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* x_core_info = "PmodENC,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT_PmodENC_0_0 PmodENC_0
       (.counter(gpio_io_i),
        .in_top_bus_I(pmod_bridge_0_in_top_bus_I),
        .s_axi_aclk(s_axi_aclk));
  (* CHECK_LICENSE_TYPE = "PetaENC_INT_axi_gpio_0_0,axi_gpio,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axi_gpio,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(gpio_io_i),
        .gpio_io_o(NLW_axi_gpio_0_gpio_io_o_UNCONNECTED[3:0]),
        .gpio_io_t(NLW_axi_gpio_0_gpio_io_t_UNCONNECTED[3:0]),
        .ip2intc_irpt(ip2intc_irpt_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({S_AXI_araddr[8:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr({S_AXI_awaddr[8:2],1'b0,1'b0}),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(NLW_axi_gpio_0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(NLW_axi_gpio_0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata({S_AXI_wdata[31:28],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_wdata[3:0]}),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(S_AXI_wvalid));
  (* CHECK_LICENSE_TYPE = "PetaENC_INT_pmod_bridge_0_0,pmod_concat,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "pmod_concat,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT_pmod_bridge_0_0 pmod_bridge_0
       (.in_top_bus_I({NLW_pmod_bridge_0_in_top_bus_I_UNCONNECTED[3],pmod_bridge_0_in_top_bus_I}),
        .in_top_bus_O({1'b0,1'b0,1'b0,1'b0}),
        .in_top_bus_T({1'b1,1'b1,1'b1,1'b1}),
        .out0_I(Pmod_ENC_pin1_i),
        .out0_O(NLW_pmod_bridge_0_out0_O_UNCONNECTED),
        .out0_T(NLW_pmod_bridge_0_out0_T_UNCONNECTED),
        .out1_I(Pmod_ENC_pin2_i),
        .out1_O(NLW_pmod_bridge_0_out1_O_UNCONNECTED),
        .out1_T(NLW_pmod_bridge_0_out1_T_UNCONNECTED),
        .out2_I(Pmod_ENC_pin3_i),
        .out2_O(NLW_pmod_bridge_0_out2_O_UNCONNECTED),
        .out2_T(NLW_pmod_bridge_0_out2_T_UNCONNECTED),
        .out3_I(1'b0),
        .out3_O(NLW_pmod_bridge_0_out3_O_UNCONNECTED),
        .out3_T(NLW_pmod_bridge_0_out3_T_UNCONNECTED),
        .out4_I(1'b0),
        .out4_O(NLW_pmod_bridge_0_out4_O_UNCONNECTED),
        .out4_T(NLW_pmod_bridge_0_out4_T_UNCONNECTED),
        .out5_I(1'b0),
        .out5_O(NLW_pmod_bridge_0_out5_O_UNCONNECTED),
        .out5_T(NLW_pmod_bridge_0_out5_T_UNCONNECTED),
        .out6_I(1'b0),
        .out6_O(NLW_pmod_bridge_0_out6_O_UNCONNECTED),
        .out6_T(NLW_pmod_bridge_0_out6_T_UNCONNECTED),
        .out7_I(1'b0),
        .out7_O(NLW_pmod_bridge_0_out7_O_UNCONNECTED),
        .out7_T(NLW_pmod_bridge_0_out7_T_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT_PmodENC_0_0
   (counter,
    s_axi_aclk,
    in_top_bus_I);
  output [3:0]counter;
  input s_axi_aclk;
  input [2:0]in_top_bus_I;

  wire [3:0]counter;
  wire [2:0]in_top_bus_I;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodENC U0
       (.counter(counter),
        .in_top_bus_I(in_top_bus_I),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* CHECK_LICENSE_TYPE = "PetaENC_INT_axi_gpio_0_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2023.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT_axi_gpio_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN PetaENC_INT_s_axi_aclk, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN PetaENC_INT_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [3:0]gpio_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [3:0]gpio_io_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_T" *) output [3:0]gpio_io_t;

  wire \<const0> ;
  wire [3:0]gpio_io_i;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [31:0]NLW_U0_gpio2_io_o_UNCONNECTED;
  wire [31:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [3:0]NLW_U0_gpio_io_o_UNCONNECTED;
  wire [3:0]NLW_U0_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign gpio_io_o[3] = \<const0> ;
  assign gpio_io_o[2] = \<const0> ;
  assign gpio_io_o[1] = \<const0> ;
  assign gpio_io_o[0] = \<const0> ;
  assign gpio_io_t[3] = \<const0> ;
  assign gpio_io_t[2] = \<const0> ;
  assign gpio_io_t[1] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) 
  (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "32" *) 
  (* C_GPIO_WIDTH = "4" *) 
  (* C_INTERRUPT_PRESENT = "1" *) 
  (* C_IS_DUAL = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) 
  (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio2_io_o(NLW_U0_gpio2_io_o_UNCONNECTED[31:0]),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[31:0]),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(NLW_U0_gpio_io_o_UNCONNECTED[3:0]),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[3:0]),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31:28],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[3:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "PetaENC_INT_pmod_bridge_0_0,pmod_concat,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "pmod_concat,Vivado 2023.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT_pmod_bridge_0_0
   (in_top_bus_I,
    in_top_bus_O,
    in_top_bus_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_I" *) output [3:0]in_top_bus_I;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_O" *) input [3:0]in_top_bus_O;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_T" *) input [3:0]in_top_bus_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input out0_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input out1_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input out2_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input out3_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input out4_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input out5_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input out6_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input out7_I;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output out0_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output out1_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output out2_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output out3_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output out4_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output out5_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output out6_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output out7_O;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output out0_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output out1_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output out2_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output out3_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output out4_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output out5_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) output out6_T;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) (* x_interface_parameter = "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD" *) output out7_T;

  wire \<const0> ;
  wire [2:0]\^in_top_bus_I ;
  wire out0_I;
  wire out1_I;
  wire out2_I;
  wire NLW_inst_in0_I_UNCONNECTED;
  wire NLW_inst_in1_I_UNCONNECTED;
  wire NLW_inst_in2_I_UNCONNECTED;
  wire NLW_inst_in3_I_UNCONNECTED;
  wire NLW_inst_in4_I_UNCONNECTED;
  wire NLW_inst_in5_I_UNCONNECTED;
  wire NLW_inst_in6_I_UNCONNECTED;
  wire NLW_inst_in7_I_UNCONNECTED;
  wire NLW_inst_out0_O_UNCONNECTED;
  wire NLW_inst_out0_T_UNCONNECTED;
  wire NLW_inst_out1_O_UNCONNECTED;
  wire NLW_inst_out1_T_UNCONNECTED;
  wire NLW_inst_out2_O_UNCONNECTED;
  wire NLW_inst_out2_T_UNCONNECTED;
  wire NLW_inst_out3_O_UNCONNECTED;
  wire NLW_inst_out3_T_UNCONNECTED;
  wire NLW_inst_out4_O_UNCONNECTED;
  wire NLW_inst_out4_T_UNCONNECTED;
  wire NLW_inst_out5_O_UNCONNECTED;
  wire NLW_inst_out5_T_UNCONNECTED;
  wire NLW_inst_out6_O_UNCONNECTED;
  wire NLW_inst_out6_T_UNCONNECTED;
  wire NLW_inst_out7_O_UNCONNECTED;
  wire NLW_inst_out7_T_UNCONNECTED;
  wire [3:0]NLW_inst_in_bottom_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED;
  wire [3:3]NLW_inst_in_top_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED;

  assign in_top_bus_I[3] = \<const0> ;
  assign in_top_bus_I[2:0] = \^in_top_bus_I [2:0];
  assign out0_O = \<const0> ;
  assign out0_T = \<const0> ;
  assign out1_O = \<const0> ;
  assign out1_T = \<const0> ;
  assign out2_O = \<const0> ;
  assign out2_T = \<const0> ;
  assign out3_O = \<const0> ;
  assign out3_T = \<const0> ;
  assign out4_O = \<const0> ;
  assign out4_T = \<const0> ;
  assign out5_O = \<const0> ;
  assign out5_T = \<const0> ;
  assign out6_O = \<const0> ;
  assign out6_T = \<const0> ;
  assign out7_O = \<const0> ;
  assign out7_T = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* Bottom_Row_Interface = "Disabled" *) 
  (* Top_Row_Interface = "GPIO" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat inst
       (.in0_I(NLW_inst_in0_I_UNCONNECTED),
        .in0_O(1'b1),
        .in0_T(1'b1),
        .in1_I(NLW_inst_in1_I_UNCONNECTED),
        .in1_O(1'b1),
        .in1_T(1'b1),
        .in2_I(NLW_inst_in2_I_UNCONNECTED),
        .in2_O(1'b1),
        .in2_T(1'b1),
        .in3_I(NLW_inst_in3_I_UNCONNECTED),
        .in3_O(1'b1),
        .in3_T(1'b1),
        .in4_I(NLW_inst_in4_I_UNCONNECTED),
        .in4_O(1'b1),
        .in4_T(1'b1),
        .in5_I(NLW_inst_in5_I_UNCONNECTED),
        .in5_O(1'b1),
        .in5_T(1'b1),
        .in6_I(NLW_inst_in6_I_UNCONNECTED),
        .in6_O(1'b1),
        .in6_T(1'b1),
        .in7_I(NLW_inst_in7_I_UNCONNECTED),
        .in7_O(1'b1),
        .in7_T(1'b1),
        .in_bottom_bus_I(NLW_inst_in_bottom_bus_I_UNCONNECTED[3:0]),
        .in_bottom_bus_O({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_bus_T({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_I(NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_I(NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_uart_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_T({1'b0,1'b1}),
        .in_top_bus_I({NLW_inst_in_top_bus_I_UNCONNECTED[3],\^in_top_bus_I }),
        .in_top_bus_O({1'b0,1'b0,1'b0,1'b0}),
        .in_top_bus_T({1'b1,1'b1,1'b1,1'b1}),
        .in_top_i2c_gpio_bus_I(NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_top_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_top_uart_gpio_bus_I(NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_uart_gpio_bus_O({1'b0,1'b1}),
        .in_top_uart_gpio_bus_T({1'b0,1'b1}),
        .out0_I(out0_I),
        .out0_O(NLW_inst_out0_O_UNCONNECTED),
        .out0_T(NLW_inst_out0_T_UNCONNECTED),
        .out1_I(out1_I),
        .out1_O(NLW_inst_out1_O_UNCONNECTED),
        .out1_T(NLW_inst_out1_T_UNCONNECTED),
        .out2_I(out2_I),
        .out2_O(NLW_inst_out2_O_UNCONNECTED),
        .out2_T(NLW_inst_out2_T_UNCONNECTED),
        .out3_I(1'b0),
        .out3_O(NLW_inst_out3_O_UNCONNECTED),
        .out3_T(NLW_inst_out3_T_UNCONNECTED),
        .out4_I(1'b0),
        .out4_O(NLW_inst_out4_O_UNCONNECTED),
        .out4_T(NLW_inst_out4_T_UNCONNECTED),
        .out5_I(1'b0),
        .out5_O(NLW_inst_out5_O_UNCONNECTED),
        .out5_T(NLW_inst_out5_T_UNCONNECTED),
        .out6_I(1'b0),
        .out6_O(NLW_inst_out6_O_UNCONNECTED),
        .out6_T(NLW_inst_out6_T_UNCONNECTED),
        .out7_I(1'b0),
        .out7_O(NLW_inst_out7_O_UNCONNECTED),
        .out7_T(NLW_inst_out7_T_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodENC
   (counter,
    s_axi_aclk,
    in_top_bus_I);
  output [3:0]counter;
  input s_axi_aclk;
  input [2:0]in_top_bus_I;

  wire AO;
  wire BO;
  wire [3:0]counter;
  wire [2:0]in_top_bus_I;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer C0
       (.AO(AO),
        .BO(BO),
        .in_top_bus_I(in_top_bus_I[1:0]),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder C1
       (.AO(AO),
        .BO(BO),
        .counter(counter),
        .in_top_bus_I(in_top_bus_I[2]),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    irpt_wrack,
    interrupt_wrce_strb,
    Bus_RNW_reg_reg_0,
    \S_AXI_wdata[31] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    ip2Bus_WrAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_wr_ce_or_reduce,
    E,
    bus2ip_rnw_i_reg,
    \S_AXI_wdata[0] ,
    \S_AXI_wdata[31]_0 ,
    ip2bus_wrack_i_D1_reg,
    ip2bus_rdack_i_D1_reg,
    Q,
    s_axi_aclk,
    p_0_in,
    irpt_rdack_d1,
    irpt_wrack_d1,
    s_axi_wdata,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    reg1,
    reg2,
    p_3_in,
    p_1_in,
    Bus_RNW_reg_reg_1,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    S_AXI_arready,
    S_AXI_arready_0,
    ip2bus_wrack_i_D1,
    S_AXI_awready);
  output \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output [5:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output Bus_RNW_reg_reg_0;
  output [3:0]\S_AXI_wdata[31] ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  output ip2Bus_WrAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_wr_ce_or_reduce;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output \S_AXI_wdata[0] ;
  output \S_AXI_wdata[31]_0 ;
  output ip2bus_wrack_i_D1_reg;
  output ip2bus_rdack_i_D1_reg;
  input Q;
  input s_axi_aclk;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input [7:0]s_axi_wdata;
  input [6:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input [3:0]reg1;
  input [3:0]reg2;
  input [0:0]p_3_in;
  input [0:0]p_1_in;
  input Bus_RNW_reg_reg_1;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input S_AXI_arready;
  input [3:0]S_AXI_arready_0;
  input ip2bus_wrack_i_D1;
  input S_AXI_awready;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [5:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire [6:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire Q;
  wire S_AXI_arready;
  wire [3:0]S_AXI_arready_0;
  wire S_AXI_awready;
  wire \S_AXI_wdata[0] ;
  wire [3:0]\S_AXI_wdata[31] ;
  wire \S_AXI_wdata[31]_0 ;
  wire [0:0]bus2ip_rnw_i_reg;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_13;
  wire ce_expnd_i_14;
  wire ce_expnd_i_15;
  wire ce_expnd_i_16;
  wire ce_expnd_i_17;
  wire ce_expnd_i_18;
  wire ce_expnd_i_19;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire cs_ce_clr;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1[28]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_4_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_5_n_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [0:0]p_0_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire [0:0]p_1_in;
  wire p_1_in_0;
  wire p_2_in;
  wire [0:0]p_3_in;
  wire p_3_in_1;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_8_in;
  wire p_9_in;
  wire pselect_hit_i_1;
  wire [3:0]reg1;
  wire [3:0]reg2;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_1),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I2(pselect_hit_i_1),
        .O(ce_expnd_i_19));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_19),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_9));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_8));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_6));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_5));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_4));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in_1),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(p_1_in_0),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I2(pselect_hit_i_1),
        .O(ce_expnd_i_18));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_18),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(pselect_hit_i_1),
        .O(ce_expnd_i_17));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_17),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I2(pselect_hit_i_1),
        .O(ce_expnd_i_16));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_16),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_15));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_15),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_14));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_14),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_13));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_13),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_12));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_11));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(ce_expnd_i_10));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(irpt_wrack_d1),
        .O(Bus_RNW_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(Bus_RNW_reg),
        .O(intr_rd_ce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ip2Bus_RdAck_intr_reg_hole_d1),
        .I4(Bus_RNW_reg),
        .O(ip2Bus_RdAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(Bus_RNW_reg),
        .O(intr_wr_ce_or_reduce));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2 
       (.I0(p_15_in),
        .I1(p_1_in_0),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I3(p_13_in),
        .I4(p_14_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3 
       (.I0(p_11_in),
        .I1(p_12_in),
        .I2(p_9_in),
        .I3(p_10_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4 
       (.I0(p_4_in),
        .I1(p_6_in),
        .I2(p_2_in),
        .I3(p_3_in_1),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ip2Bus_WrAck_intr_reg_hole_d1),
        .I4(Bus_RNW_reg),
        .O(ip2Bus_WrAck_intr_reg_hole0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [4]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [5]),
        .I2(Q),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .O(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_3 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \Not_Dual.gpio_Data_Out[0]_i_1 
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .O(E));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Not_Dual.gpio_Data_Out[0]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(s_axi_wdata[3]),
        .O(\S_AXI_wdata[31] [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Not_Dual.gpio_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(s_axi_wdata[2]),
        .O(\S_AXI_wdata[31] [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Not_Dual.gpio_Data_Out[2]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(s_axi_wdata[1]),
        .O(\S_AXI_wdata[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Not_Dual.gpio_Data_Out[3]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(s_axi_wdata[0]),
        .O(\S_AXI_wdata[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \Not_Dual.gpio_OE[0]_i_1 
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    intr2bus_rdack_i_1
       (.I0(irpt_rdack_d1),
        .I1(Bus_RNW_reg),
        .I2(p_8_in),
        .I3(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .I4(p_5_in),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    intr2bus_wrack_i_1
       (.I0(p_8_in),
        .I1(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .I2(p_5_in),
        .I3(irpt_wrack_d1),
        .I4(Bus_RNW_reg),
        .O(interrupt_wrce_strb));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .I1(p_5_in),
        .I2(Bus_RNW_reg),
        .I3(p_8_in),
        .I4(p_0_in),
        .I5(D[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \ip2bus_data_i_D1[1]_i_1 
       (.I0(p_18_in),
        .I1(p_16_in),
        .I2(p_19_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h000A0CF000000000)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(reg1[3]),
        .I1(reg2[3]),
        .I2(p_16_in),
        .I3(p_18_in),
        .I4(p_19_in),
        .I5(\ip2bus_data_i_D1[28]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip2bus_data_i_D1[28]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(p_17_in),
        .O(\ip2bus_data_i_D1[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0CF000000000)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(reg1[2]),
        .I1(reg2[2]),
        .I2(p_16_in),
        .I3(p_18_in),
        .I4(p_19_in),
        .I5(\ip2bus_data_i_D1[28]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000A0CF000000000)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(reg1[1]),
        .I1(reg2[1]),
        .I2(p_16_in),
        .I3(p_18_in),
        .I4(p_19_in),
        .I5(\ip2bus_data_i_D1[28]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(D[4]),
        .I1(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[31]_i_3_n_0 ),
        .I3(\ip2bus_data_i_D1[31]_i_4_n_0 ),
        .I4(reg1[0]),
        .I5(\ip2bus_data_i_D1[31]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .I1(Bus_RNW_reg),
        .I2(p_5_in),
        .I3(p_1_in),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ip2bus_data_i_D1[31]_i_3 
       (.I0(p_3_in),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .O(\ip2bus_data_i_D1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \ip2bus_data_i_D1[31]_i_4 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(p_18_in),
        .I4(p_19_in),
        .O(\ip2bus_data_i_D1[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \ip2bus_data_i_D1[31]_i_5 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_19_in),
        .I3(p_18_in),
        .I4(p_16_in),
        .I5(reg2[0]),
        .O(\ip2bus_data_i_D1[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_5_in),
        .I2(Bus_RNW_reg),
        .I3(p_1_in),
        .O(\S_AXI_wdata[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[7]),
        .I1(p_8_in),
        .I2(Bus_RNW_reg),
        .I3(p_0_in),
        .O(\S_AXI_wdata[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    irpt_rdack_d1_i_1
       (.I0(p_8_in),
        .I1(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .I2(p_5_in),
        .I3(Bus_RNW_reg),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    irpt_wrack_d1_i_1
       (.I0(p_8_in),
        .I1(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 ),
        .I2(p_5_in),
        .I3(Bus_RNW_reg),
        .O(irpt_wrack));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(S_AXI_arready),
        .I2(S_AXI_arready_0[2]),
        .I3(S_AXI_arready_0[1]),
        .I4(S_AXI_arready_0[3]),
        .I5(S_AXI_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(S_AXI_awready),
        .I2(S_AXI_arready_0[2]),
        .I3(S_AXI_arready_0[1]),
        .I4(S_AXI_arready_0[3]),
        .I5(S_AXI_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "32" *) (* C_GPIO_WIDTH = "4" *) 
(* C_INTERRUPT_PRESENT = "1" *) (* C_IS_DUAL = "0" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [3:0]gpio_io_i;
  output [3:0]gpio_io_o;
  output [3:0]gpio_io_t;
  input [31:0]gpio2_io_i;
  output [31:0]gpio2_io_o;
  output [31:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_22;
  wire AXI_LITE_IPIF_I_n_27;
  wire AXI_LITE_IPIF_I_n_28;
  wire AXI_LITE_IPIF_I_n_31;
  wire AXI_LITE_IPIF_I_n_32;
  wire [0:3]DBus_Reg;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ;
  wire [6:6]bus2ip_addr;
  wire [1:1]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [3:0]gpio_io_i;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [0:30]ip2bus_data;
  wire [0:31]ip2bus_data_i;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2intc_irpt;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [31:31]p_0_in;
  wire [0:0]p_1_in;
  wire [0:0]p_3_in;
  wire [28:31]reg1;
  wire [28:31]reg2;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  assign gpio2_io_o[31] = \<const0> ;
  assign gpio2_io_o[30] = \<const0> ;
  assign gpio2_io_o[29] = \<const0> ;
  assign gpio2_io_o[28] = \<const0> ;
  assign gpio2_io_o[27] = \<const0> ;
  assign gpio2_io_o[26] = \<const0> ;
  assign gpio2_io_o[25] = \<const0> ;
  assign gpio2_io_o[24] = \<const0> ;
  assign gpio2_io_o[23] = \<const0> ;
  assign gpio2_io_o[22] = \<const0> ;
  assign gpio2_io_o[21] = \<const0> ;
  assign gpio2_io_o[20] = \<const0> ;
  assign gpio2_io_o[19] = \<const0> ;
  assign gpio2_io_o[18] = \<const0> ;
  assign gpio2_io_o[17] = \<const0> ;
  assign gpio2_io_o[16] = \<const0> ;
  assign gpio2_io_o[15] = \<const0> ;
  assign gpio2_io_o[14] = \<const0> ;
  assign gpio2_io_o[13] = \<const0> ;
  assign gpio2_io_o[12] = \<const0> ;
  assign gpio2_io_o[11] = \<const0> ;
  assign gpio2_io_o[10] = \<const0> ;
  assign gpio2_io_o[9] = \<const0> ;
  assign gpio2_io_o[8] = \<const0> ;
  assign gpio2_io_o[7] = \<const0> ;
  assign gpio2_io_o[6] = \<const0> ;
  assign gpio2_io_o[5] = \<const0> ;
  assign gpio2_io_o[4] = \<const0> ;
  assign gpio2_io_o[3] = \<const0> ;
  assign gpio2_io_o[2] = \<const0> ;
  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \<const0> ;
  assign gpio2_io_t[31] = \<const0> ;
  assign gpio2_io_t[30] = \<const0> ;
  assign gpio2_io_t[29] = \<const0> ;
  assign gpio2_io_t[28] = \<const0> ;
  assign gpio2_io_t[27] = \<const0> ;
  assign gpio2_io_t[26] = \<const0> ;
  assign gpio2_io_t[25] = \<const0> ;
  assign gpio2_io_t[24] = \<const0> ;
  assign gpio2_io_t[23] = \<const0> ;
  assign gpio2_io_t[22] = \<const0> ;
  assign gpio2_io_t[21] = \<const0> ;
  assign gpio2_io_t[20] = \<const0> ;
  assign gpio2_io_t[19] = \<const0> ;
  assign gpio2_io_t[18] = \<const0> ;
  assign gpio2_io_t[17] = \<const0> ;
  assign gpio2_io_t[16] = \<const0> ;
  assign gpio2_io_t[15] = \<const0> ;
  assign gpio2_io_t[14] = \<const0> ;
  assign gpio2_io_t[13] = \<const0> ;
  assign gpio2_io_t[12] = \<const0> ;
  assign gpio2_io_t[11] = \<const0> ;
  assign gpio2_io_t[10] = \<const0> ;
  assign gpio2_io_t[9] = \<const0> ;
  assign gpio2_io_t[8] = \<const0> ;
  assign gpio2_io_t[7] = \<const0> ;
  assign gpio2_io_t[6] = \<const0> ;
  assign gpio2_io_t[5] = \<const0> ;
  assign gpio2_io_t[4] = \<const0> ;
  assign gpio2_io_t[3] = \<const0> ;
  assign gpio2_io_t[2] = \<const0> ;
  assign gpio2_io_t[1] = \<const0> ;
  assign gpio2_io_t[0] = \<const0> ;
  assign gpio_io_o[3] = \<const0> ;
  assign gpio_io_o[2] = \<const0> ;
  assign gpio_io_o[1] = \<const0> ;
  assign gpio_io_o[0] = \<const0> ;
  assign gpio_io_t[3] = \<const0> ;
  assign gpio_io_t[2] = \<const0> ;
  assign gpio_io_t[1] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \^s_axi_rdata [29];
  assign s_axi_rdata[29] = \^s_axi_rdata [29];
  assign s_axi_rdata[28] = \^s_axi_rdata [29];
  assign s_axi_rdata[27] = \^s_axi_rdata [29];
  assign s_axi_rdata[26] = \^s_axi_rdata [29];
  assign s_axi_rdata[25] = \^s_axi_rdata [29];
  assign s_axi_rdata[24] = \^s_axi_rdata [29];
  assign s_axi_rdata[23] = \^s_axi_rdata [29];
  assign s_axi_rdata[22] = \^s_axi_rdata [29];
  assign s_axi_rdata[21] = \^s_axi_rdata [29];
  assign s_axi_rdata[20] = \^s_axi_rdata [29];
  assign s_axi_rdata[19] = \^s_axi_rdata [29];
  assign s_axi_rdata[18] = \^s_axi_rdata [29];
  assign s_axi_rdata[17] = \^s_axi_rdata [29];
  assign s_axi_rdata[16] = \^s_axi_rdata [29];
  assign s_axi_rdata[15] = \^s_axi_rdata [29];
  assign s_axi_rdata[14] = \^s_axi_rdata [29];
  assign s_axi_rdata[13] = \^s_axi_rdata [29];
  assign s_axi_rdata[12] = \^s_axi_rdata [29];
  assign s_axi_rdata[11] = \^s_axi_rdata [29];
  assign s_axi_rdata[10] = \^s_axi_rdata [29];
  assign s_axi_rdata[9] = \^s_axi_rdata [29];
  assign s_axi_rdata[8] = \^s_axi_rdata [29];
  assign s_axi_rdata[7] = \^s_axi_rdata [29];
  assign s_axi_rdata[6] = \^s_axi_rdata [29];
  assign s_axi_rdata[5] = \^s_axi_rdata [29];
  assign s_axi_rdata[4] = \^s_axi_rdata [29];
  assign s_axi_rdata[3:0] = \^s_axi_rdata [3:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_16),
        .D({ip2bus_data_i[0],ip2bus_data[0],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data_i[31]}),
        .E(AXI_LITE_IPIF_I_n_27),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (AXI_LITE_IPIF_I_n_22),
        .Q(bus2ip_addr),
        .\S_AXI_wdata[0] (AXI_LITE_IPIF_I_n_31),
        .\S_AXI_wdata[31] ({DBus_Reg[0],DBus_Reg[1],DBus_Reg[2],DBus_Reg[3]}),
        .\S_AXI_wdata[31]_0 (AXI_LITE_IPIF_I_n_32),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_28),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_awready),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .p_7_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ),
        .reg1({reg1[28],reg1[29],reg1[30],reg1[31]}),
        .reg2({reg2[28],reg2[29],reg2[30],reg2[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [29],\^s_axi_rdata [3:0]}),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[1],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31:28],s_axi_wdata[3:0]}),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I 
       (.\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_16),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .IP2INTC_Irpt_i(IP2INTC_Irpt_i),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .\ip_irpt_enable_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_31),
        .ipif_glbl_irpt_enable_reg_reg_0(AXI_LITE_IPIF_I_n_32),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .p_7_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_RdAck_intr_reg_hole0),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_wr_ce_or_reduce),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_intr_reg_hole0),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(bus2ip_reset));
  (* sigis = "INTR_LEVEL_HIGH" *) 
  FDRE \INTR_CTRLR_GEN.ip2intc_irpt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2INTC_Irpt_i),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core gpio_core_1
       (.D({DBus_Reg[0],DBus_Reg[1],DBus_Reg[2],DBus_Reg[3]}),
        .E(AXI_LITE_IPIF_I_n_27),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0 (AXI_LITE_IPIF_I_n_22),
        .\Not_Dual.gpio_OE_reg[0]_0 (AXI_LITE_IPIF_I_n_28),
        .Q(bus2ip_addr),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_io_i(gpio_io_i),
        .reg1({reg1[28],reg1[29],reg1[30],reg1[31]}),
        .reg2({reg2[28],reg2[29],reg2[30],reg2[31]}),
        .s_axi_aclk(s_axi_aclk));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[0]),
        .Q(ip2bus_data_i_D1[1]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[28]),
        .Q(ip2bus_data_i_D1[28]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[29]),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (bus2ip_reset,
    p_7_in,
    bus2ip_rnw,
    bus2ip_cs,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    irpt_wrack,
    interrupt_wrce_strb,
    Bus_RNW_reg_reg,
    \S_AXI_wdata[31] ,
    Q,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    ip2Bus_WrAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_wr_ce_or_reduce,
    E,
    bus2ip_rnw_i_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    \S_AXI_wdata[0] ,
    \S_AXI_wdata[31]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    p_0_in,
    irpt_rdack_d1,
    irpt_wrack_d1,
    s_axi_wdata,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    reg1,
    reg2,
    p_3_in,
    p_1_in,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \s_axi_rdata_i_reg[31] ,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output p_7_in;
  output bus2ip_rnw;
  output [0:0]bus2ip_cs;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output [5:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output Bus_RNW_reg_reg;
  output [3:0]\S_AXI_wdata[31] ;
  output [0:0]Q;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output ip2Bus_WrAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_wr_ce_or_reduce;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output \S_AXI_wdata[0] ;
  output \S_AXI_wdata[31]_0 ;
  output [5:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input [7:0]s_axi_wdata;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input [3:0]reg1;
  input [3:0]reg2;
  input [0:0]p_3_in;
  input [0:0]p_1_in;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [5:0]\s_axi_rdata_i_reg[31] ;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire [5:0]D;
  wire [0:0]E;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [0:0]Q;
  wire \S_AXI_wdata[0] ;
  wire [3:0]\S_AXI_wdata[31] ;
  wire \S_AXI_wdata[31]_0 ;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:0]bus2ip_rnw_i_reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire [3:0]reg1;
  wire [3:0]reg2;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [5:0]s_axi_rdata;
  wire [5:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [7:0]s_axi_wdata;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] (p_7_in),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(bus2ip_reset),
        .\S_AXI_wdata[0] (\S_AXI_wdata[0] ),
        .\S_AXI_wdata[31] (\S_AXI_wdata[31] ),
        .\S_AXI_wdata[31]_0 (\S_AXI_wdata[31]_0 ),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .reg1(reg1),
        .reg2(reg2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (D,
    scndry_vect_out,
    Q,
    gpio_io_i,
    s_axi_aclk);
  output [3:0]D;
  output [3:0]scndry_vect_out;
  input [3:0]Q;
  input [3:0]gpio_io_i;
  input s_axi_aclk;

  wire [3:0]D;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 ;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 ;
  wire [3:0]Q;
  wire Q_0;
  wire [3:0]gpio_io_i;
  wire s_axi_aclk;
  wire [3:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q_0),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [0]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [0]),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [1]),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [2]),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [3]),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(Q_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[0]_i_1 
       (.I0(scndry_vect_out[3]),
        .I1(Q[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[1]_i_1 
       (.I0(scndry_vect_out[2]),
        .I1(Q[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[2]_i_1 
       (.I0(scndry_vect_out[1]),
        .I1(Q[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[3]_i_1 
       (.I0(scndry_vect_out[0]),
        .I1(Q[0]),
        .O(D[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control
   (irpt_wrack_d1,
    p_3_in,
    irpt_rdack_d1,
    p_1_in,
    p_0_in,
    IP2INTC_Irpt_i,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    bus2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    GPIO_intr,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    \ip_irpt_enable_reg_reg[0]_0 ,
    ipif_glbl_irpt_enable_reg_reg_0,
    p_7_in,
    s_axi_wdata,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    ip2Bus_WrAck_intr_reg_hole,
    bus2ip_rnw,
    GPIO_xferAck_i,
    ip2Bus_RdAck_intr_reg_hole);
  output irpt_wrack_d1;
  output [0:0]p_3_in;
  output irpt_rdack_d1;
  output [0:0]p_1_in;
  output [0:0]p_0_in;
  output IP2INTC_Irpt_i;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  input bus2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input GPIO_intr;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input \ip_irpt_enable_reg_reg[0]_0 ;
  input ipif_glbl_irpt_enable_reg_reg_0;
  input p_7_in;
  input [0:0]s_axi_wdata;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input ip2Bus_WrAck_intr_reg_hole;
  input bus2ip_rnw;
  input GPIO_xferAck_i;
  input ip2Bus_RdAck_intr_reg_hole;

  wire \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ;
  wire \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire \ip_irpt_enable_reg_reg[0]_0 ;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_intr),
        .Q(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .Q(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .S(bus2ip_reset));
  LUT6 #(
    .INIT(64'hF4F4F4F44FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .I1(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .I2(p_3_in),
        .I3(p_7_in),
        .I4(s_axi_wdata),
        .I5(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(p_3_in),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h80)) 
    \INTR_CTRLR_GEN.ip2intc_irpt_i_1 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(IP2INTC_Irpt_i));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr2bus_rdack),
        .R(bus2ip_reset));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr2bus_wrack),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFEEE)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(ip2Bus_RdAck_intr_reg_hole),
        .I1(intr2bus_rdack),
        .I2(bus2ip_rnw),
        .I3(GPIO_xferAck_i),
        .O(ip2bus_rdack_i));
  LUT4 #(
    .INIT(16'hEFEE)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(ip2Bus_WrAck_intr_reg_hole),
        .I1(intr2bus_wrack),
        .I2(bus2ip_rnw),
        .I3(GPIO_xferAck_i),
        .O(ip2bus_wrack_i));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg_reg[0]_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipif_glbl_irpt_enable_reg_reg_0),
        .Q(p_0_in),
        .R(bus2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(bus2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

(* Bottom_Row_Interface = "Disabled" *) (* Top_Row_Interface = "GPIO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat
   (in_top_bus_I,
    in_top_bus_O,
    in_top_bus_T,
    in_top_uart_gpio_bus_I,
    in_top_uart_gpio_bus_O,
    in_top_uart_gpio_bus_T,
    in_top_i2c_gpio_bus_I,
    in_top_i2c_gpio_bus_O,
    in_top_i2c_gpio_bus_T,
    in_bottom_bus_I,
    in_bottom_bus_O,
    in_bottom_bus_T,
    in_bottom_uart_gpio_bus_I,
    in_bottom_uart_gpio_bus_O,
    in_bottom_uart_gpio_bus_T,
    in_bottom_i2c_gpio_bus_I,
    in_bottom_i2c_gpio_bus_O,
    in_bottom_i2c_gpio_bus_T,
    in0_I,
    in1_I,
    in2_I,
    in3_I,
    in4_I,
    in5_I,
    in6_I,
    in7_I,
    in0_O,
    in1_O,
    in2_O,
    in3_O,
    in4_O,
    in5_O,
    in6_O,
    in7_O,
    in0_T,
    in1_T,
    in2_T,
    in3_T,
    in4_T,
    in5_T,
    in6_T,
    in7_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  output [3:0]in_top_bus_I;
  input [3:0]in_top_bus_O;
  input [3:0]in_top_bus_T;
  output [1:0]in_top_uart_gpio_bus_I;
  input [1:0]in_top_uart_gpio_bus_O;
  input [1:0]in_top_uart_gpio_bus_T;
  output [1:0]in_top_i2c_gpio_bus_I;
  input [1:0]in_top_i2c_gpio_bus_O;
  input [1:0]in_top_i2c_gpio_bus_T;
  output [3:0]in_bottom_bus_I;
  input [3:0]in_bottom_bus_O;
  input [3:0]in_bottom_bus_T;
  output [1:0]in_bottom_uart_gpio_bus_I;
  input [1:0]in_bottom_uart_gpio_bus_O;
  input [1:0]in_bottom_uart_gpio_bus_T;
  output [1:0]in_bottom_i2c_gpio_bus_I;
  input [1:0]in_bottom_i2c_gpio_bus_O;
  input [1:0]in_bottom_i2c_gpio_bus_T;
  output in0_I;
  output in1_I;
  output in2_I;
  output in3_I;
  output in4_I;
  output in5_I;
  output in6_I;
  output in7_I;
  input in0_O;
  input in1_O;
  input in2_O;
  input in3_O;
  input in4_O;
  input in5_O;
  input in6_O;
  input in7_O;
  input in0_T;
  input in1_T;
  input in2_T;
  input in3_T;
  input in4_T;
  input in5_T;
  input in6_T;
  input in7_T;
  input out0_I;
  input out1_I;
  input out2_I;
  input out3_I;
  input out4_I;
  input out5_I;
  input out6_I;
  input out7_I;
  output out0_O;
  output out1_O;
  output out2_O;
  output out3_O;
  output out4_O;
  output out5_O;
  output out6_O;
  output out7_O;
  output out0_T;
  output out1_T;
  output out2_T;
  output out3_T;
  output out4_T;
  output out5_T;
  output out6_T;
  output out7_T;

  wire \<const0> ;
  wire out0_I;
  wire out1_I;
  wire out2_I;

  assign in0_I = \<const0> ;
  assign in1_I = \<const0> ;
  assign in2_I = \<const0> ;
  assign in3_I = \<const0> ;
  assign in4_I = \<const0> ;
  assign in5_I = \<const0> ;
  assign in6_I = \<const0> ;
  assign in7_I = \<const0> ;
  assign in_bottom_bus_I[3] = \<const0> ;
  assign in_bottom_bus_I[2] = \<const0> ;
  assign in_bottom_bus_I[1] = \<const0> ;
  assign in_bottom_bus_I[0] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[0] = \<const0> ;
  assign in_top_bus_I[3] = \<const0> ;
  assign in_top_bus_I[2] = out2_I;
  assign in_top_bus_I[1] = out1_I;
  assign in_top_bus_I[0] = out0_I;
  assign in_top_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_top_uart_gpio_bus_I[1] = \<const0> ;
  assign in_top_uart_gpio_bus_I[0] = \<const0> ;
  assign out0_O = \<const0> ;
  assign out0_T = \<const0> ;
  assign out1_O = \<const0> ;
  assign out1_T = \<const0> ;
  assign out2_O = \<const0> ;
  assign out2_T = \<const0> ;
  assign out3_O = \<const0> ;
  assign out3_T = \<const0> ;
  assign out4_O = \<const0> ;
  assign out4_T = \<const0> ;
  assign out5_O = \<const0> ;
  assign out5_T = \<const0> ;
  assign out6_O = \<const0> ;
  assign out6_T = \<const0> ;
  assign out7_O = \<const0> ;
  assign out7_T = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ,
    bus2ip_rnw_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    irpt_wrack,
    interrupt_wrce_strb,
    Bus_RNW_reg_reg,
    \S_AXI_wdata[31] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    ip2Bus_WrAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_wr_ce_or_reduce,
    Q,
    E,
    bus2ip_rnw_i_reg_1,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    \S_AXI_wdata[0] ,
    \S_AXI_wdata[31]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    p_0_in,
    irpt_rdack_d1,
    irpt_wrack_d1,
    s_axi_wdata,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    reg1,
    reg2,
    p_3_in,
    p_1_in,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ;
  output bus2ip_rnw_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output [5:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output Bus_RNW_reg_reg;
  output [3:0]\S_AXI_wdata[31] ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output ip2Bus_WrAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_wr_ce_or_reduce;
  output [0:0]Q;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg_1;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output \S_AXI_wdata[0] ;
  output \S_AXI_wdata[31]_0 ;
  output [5:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input [7:0]s_axi_wdata;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input [3:0]reg1;
  input [3:0]reg2;
  input [0:0]p_3_in;
  input [0:0]p_1_in;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [5:0]\s_axi_rdata_i_reg[31]_0 ;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \S_AXI_wdata[0] ;
  wire [3:0]\S_AXI_wdata[31] ;
  wire \S_AXI_wdata[31]_0 ;
  wire [0:5]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_rnw_i_reg_0;
  wire [0:0]bus2ip_rnw_i_reg_1;
  wire clear;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire [8:2]p_1_in__0;
  wire [0:0]p_3_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [3:0]reg1;
  wire [3:0]reg2;
  wire rst_i_1_n_0;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [5:0]s_axi_rdata;
  wire [5:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [7:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(bus2ip_rnw_i_reg_0),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0 (\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],bus2ip_addr[5],Q}),
        .Q(start2),
        .S_AXI_arready(is_read_reg_n_0),
        .S_AXI_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S_AXI_awready(is_write_reg_n_0),
        .\S_AXI_wdata[0] (\S_AXI_wdata[0] ),
        .\S_AXI_wdata[31] (\S_AXI_wdata[31] ),
        .\S_AXI_wdata[31]_0 (\S_AXI_wdata[31]_0 ),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .reg1(reg1),
        .reg2(reg2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(Q),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(bus2ip_addr[5]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(bus2ip_addr[4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(bus2ip_addr[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(bus2ip_addr[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(bus2ip_addr[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(bus2ip_addr[0]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(ip2bus_wrack_i_D1_reg),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "system_PetaENC_INT_0_0,PetaENC_INT,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "IPI" *) 
(* x_core_info = "PetaENC_INT,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Pmod_ENC_pin10_i,
    Pmod_ENC_pin10_o,
    Pmod_ENC_pin10_t,
    Pmod_ENC_pin1_i,
    Pmod_ENC_pin1_o,
    Pmod_ENC_pin1_t,
    Pmod_ENC_pin2_i,
    Pmod_ENC_pin2_o,
    Pmod_ENC_pin2_t,
    Pmod_ENC_pin3_i,
    Pmod_ENC_pin3_o,
    Pmod_ENC_pin3_t,
    Pmod_ENC_pin4_i,
    Pmod_ENC_pin4_o,
    Pmod_ENC_pin4_t,
    Pmod_ENC_pin7_i,
    Pmod_ENC_pin7_o,
    Pmod_ENC_pin7_t,
    Pmod_ENC_pin8_i,
    Pmod_ENC_pin8_o,
    Pmod_ENC_pin8_t,
    Pmod_ENC_pin9_i,
    Pmod_ENC_pin9_o,
    Pmod_ENC_pin9_t,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ip2intc_irpt_0,
    s_axi_aclk,
    s_axi_aresetn);
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_I" *) (* x_interface_parameter = "XIL_INTERFACENAME Pmod_ENC, BUSIF.BOARD_INTERFACE Custom" *) input Pmod_ENC_pin10_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_O" *) output Pmod_ENC_pin10_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_T" *) output Pmod_ENC_pin10_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_I" *) input Pmod_ENC_pin1_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_O" *) output Pmod_ENC_pin1_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_T" *) output Pmod_ENC_pin1_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_I" *) input Pmod_ENC_pin2_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_O" *) output Pmod_ENC_pin2_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_T" *) output Pmod_ENC_pin2_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_I" *) input Pmod_ENC_pin3_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_O" *) output Pmod_ENC_pin3_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_T" *) output Pmod_ENC_pin3_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_I" *) input Pmod_ENC_pin4_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_O" *) output Pmod_ENC_pin4_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_T" *) output Pmod_ENC_pin4_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_I" *) input Pmod_ENC_pin7_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_O" *) output Pmod_ENC_pin7_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_T" *) output Pmod_ENC_pin7_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_I" *) input Pmod_ENC_pin8_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_O" *) output Pmod_ENC_pin8_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_T" *) output Pmod_ENC_pin8_t;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_I" *) input Pmod_ENC_pin9_i;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_O" *) output Pmod_ENC_pin9_o;
  (* x_interface_info = "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_T" *) output Pmod_ENC_pin9_t;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [8:0]S_AXI_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [8:0]S_AXI_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1" *) output ip2intc_irpt_0;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S_AXI_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire Pmod_ENC_pin1_i;
  wire Pmod_ENC_pin2_i;
  wire Pmod_ENC_pin3_i;
  wire [8:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [8:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire ip2intc_irpt_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire NLW_U0_Pmod_ENC_pin10_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin10_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin1_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin1_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin2_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin2_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin3_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin3_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin4_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin4_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin7_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin7_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin8_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin8_t_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin9_o_UNCONNECTED;
  wire NLW_U0_Pmod_ENC_pin9_t_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_rresp_UNCONNECTED;

  assign Pmod_ENC_pin10_o = \<const1> ;
  assign Pmod_ENC_pin10_t = \<const1> ;
  assign Pmod_ENC_pin1_o = \<const0> ;
  assign Pmod_ENC_pin1_t = \<const1> ;
  assign Pmod_ENC_pin2_o = \<const0> ;
  assign Pmod_ENC_pin2_t = \<const1> ;
  assign Pmod_ENC_pin3_o = \<const0> ;
  assign Pmod_ENC_pin3_t = \<const1> ;
  assign Pmod_ENC_pin4_o = \<const0> ;
  assign Pmod_ENC_pin4_t = \<const1> ;
  assign Pmod_ENC_pin7_o = \<const1> ;
  assign Pmod_ENC_pin7_t = \<const1> ;
  assign Pmod_ENC_pin8_o = \<const1> ;
  assign Pmod_ENC_pin8_t = \<const1> ;
  assign Pmod_ENC_pin9_o = \<const1> ;
  assign Pmod_ENC_pin9_t = \<const1> ;
  assign S_AXI_bresp[1] = \<const0> ;
  assign S_AXI_bresp[0] = \<const0> ;
  assign S_AXI_rresp[1] = \<const0> ;
  assign S_AXI_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* hw_handoff = "PetaENC_INT.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_INT U0
       (.Pmod_ENC_pin10_i(1'b0),
        .Pmod_ENC_pin10_o(NLW_U0_Pmod_ENC_pin10_o_UNCONNECTED),
        .Pmod_ENC_pin10_t(NLW_U0_Pmod_ENC_pin10_t_UNCONNECTED),
        .Pmod_ENC_pin1_i(Pmod_ENC_pin1_i),
        .Pmod_ENC_pin1_o(NLW_U0_Pmod_ENC_pin1_o_UNCONNECTED),
        .Pmod_ENC_pin1_t(NLW_U0_Pmod_ENC_pin1_t_UNCONNECTED),
        .Pmod_ENC_pin2_i(Pmod_ENC_pin2_i),
        .Pmod_ENC_pin2_o(NLW_U0_Pmod_ENC_pin2_o_UNCONNECTED),
        .Pmod_ENC_pin2_t(NLW_U0_Pmod_ENC_pin2_t_UNCONNECTED),
        .Pmod_ENC_pin3_i(Pmod_ENC_pin3_i),
        .Pmod_ENC_pin3_o(NLW_U0_Pmod_ENC_pin3_o_UNCONNECTED),
        .Pmod_ENC_pin3_t(NLW_U0_Pmod_ENC_pin3_t_UNCONNECTED),
        .Pmod_ENC_pin4_i(1'b0),
        .Pmod_ENC_pin4_o(NLW_U0_Pmod_ENC_pin4_o_UNCONNECTED),
        .Pmod_ENC_pin4_t(NLW_U0_Pmod_ENC_pin4_t_UNCONNECTED),
        .Pmod_ENC_pin7_i(1'b0),
        .Pmod_ENC_pin7_o(NLW_U0_Pmod_ENC_pin7_o_UNCONNECTED),
        .Pmod_ENC_pin7_t(NLW_U0_Pmod_ENC_pin7_t_UNCONNECTED),
        .Pmod_ENC_pin8_i(1'b0),
        .Pmod_ENC_pin8_o(NLW_U0_Pmod_ENC_pin8_o_UNCONNECTED),
        .Pmod_ENC_pin8_t(NLW_U0_Pmod_ENC_pin8_t_UNCONNECTED),
        .Pmod_ENC_pin9_i(1'b0),
        .Pmod_ENC_pin9_o(NLW_U0_Pmod_ENC_pin9_o_UNCONNECTED),
        .Pmod_ENC_pin9_t(NLW_U0_Pmod_ENC_pin9_t_UNCONNECTED),
        .S_AXI_araddr({S_AXI_araddr[8:2],1'b0,1'b0}),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr({S_AXI_awaddr[8:2],1'b0,1'b0}),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(NLW_U0_S_AXI_bresp_UNCONNECTED[1:0]),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(NLW_U0_S_AXI_rresp_UNCONNECTED[1:0]),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata({S_AXI_wdata[31:28],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_wdata[3:0]}),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_wvalid(S_AXI_wvalid),
        .ip2intc_irpt_0(ip2intc_irpt_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  VCC VCC
       (.P(\<const1> ));
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
