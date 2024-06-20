// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Thu Jun 20 12:36:54 2024
// Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/hdway/Documents/vivado/TER/PmodENC_Linux/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_1_0/system_PetaENC_1_0_stub.v
// Design      : system_PetaENC_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PetaENC,Vivado 2023.2.2" *)
module system_PetaENC_1_0(Pmod_out_0_pin10_i, Pmod_out_0_pin10_o, 
  Pmod_out_0_pin10_t, Pmod_out_0_pin1_i, Pmod_out_0_pin1_o, Pmod_out_0_pin1_t, 
  Pmod_out_0_pin2_i, Pmod_out_0_pin2_o, Pmod_out_0_pin2_t, Pmod_out_0_pin3_i, 
  Pmod_out_0_pin3_o, Pmod_out_0_pin3_t, Pmod_out_0_pin4_i, Pmod_out_0_pin4_o, 
  Pmod_out_0_pin4_t, Pmod_out_0_pin7_i, Pmod_out_0_pin7_o, Pmod_out_0_pin7_t, 
  Pmod_out_0_pin8_i, Pmod_out_0_pin8_o, Pmod_out_0_pin8_t, Pmod_out_0_pin9_i, 
  Pmod_out_0_pin9_o, Pmod_out_0_pin9_t, S_AXI_araddr, S_AXI_arready, S_AXI_arvalid, 
  S_AXI_awaddr, S_AXI_awready, S_AXI_awvalid, S_AXI_bready, S_AXI_bresp, S_AXI_bvalid, 
  S_AXI_rdata, S_AXI_rready, S_AXI_rresp, S_AXI_rvalid, S_AXI_wdata, S_AXI_wready, S_AXI_wstrb, 
  S_AXI_wvalid, ip2intc_irpt_0, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="Pmod_out_0_pin10_i,Pmod_out_0_pin10_o,Pmod_out_0_pin10_t,Pmod_out_0_pin1_i,Pmod_out_0_pin1_o,Pmod_out_0_pin1_t,Pmod_out_0_pin2_i,Pmod_out_0_pin2_o,Pmod_out_0_pin2_t,Pmod_out_0_pin3_i,Pmod_out_0_pin3_o,Pmod_out_0_pin3_t,Pmod_out_0_pin4_i,Pmod_out_0_pin4_o,Pmod_out_0_pin4_t,Pmod_out_0_pin7_i,Pmod_out_0_pin7_o,Pmod_out_0_pin7_t,Pmod_out_0_pin8_i,Pmod_out_0_pin8_o,Pmod_out_0_pin8_t,Pmod_out_0_pin9_i,Pmod_out_0_pin9_o,Pmod_out_0_pin9_t,S_AXI_araddr[8:0],S_AXI_arready,S_AXI_arvalid,S_AXI_awaddr[8:0],S_AXI_awready,S_AXI_awvalid,S_AXI_bready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_rdata[31:0],S_AXI_rready,S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_wdata[31:0],S_AXI_wready,S_AXI_wstrb[3:0],S_AXI_wvalid,ip2intc_irpt_0,s_axi_aresetn" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  input Pmod_out_0_pin10_i;
  output Pmod_out_0_pin10_o;
  output Pmod_out_0_pin10_t;
  input Pmod_out_0_pin1_i;
  output Pmod_out_0_pin1_o;
  output Pmod_out_0_pin1_t;
  input Pmod_out_0_pin2_i;
  output Pmod_out_0_pin2_o;
  output Pmod_out_0_pin2_t;
  input Pmod_out_0_pin3_i;
  output Pmod_out_0_pin3_o;
  output Pmod_out_0_pin3_t;
  input Pmod_out_0_pin4_i;
  output Pmod_out_0_pin4_o;
  output Pmod_out_0_pin4_t;
  input Pmod_out_0_pin7_i;
  output Pmod_out_0_pin7_o;
  output Pmod_out_0_pin7_t;
  input Pmod_out_0_pin8_i;
  output Pmod_out_0_pin8_o;
  output Pmod_out_0_pin8_t;
  input Pmod_out_0_pin9_i;
  output Pmod_out_0_pin9_o;
  output Pmod_out_0_pin9_t;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output ip2intc_irpt_0;
  input s_axi_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_aresetn;
endmodule
