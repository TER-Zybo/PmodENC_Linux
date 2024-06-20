-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.2 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Thu Jun 20 12:36:54 2024
-- Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/hdway/Documents/vivado/TER/PmodENC_Linux/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_1_0/system_PetaENC_1_0_stub.vhdl
-- Design      : system_PetaENC_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_PetaENC_1_0 is
  Port ( 
    Pmod_out_0_pin10_i : in STD_LOGIC;
    Pmod_out_0_pin10_o : out STD_LOGIC;
    Pmod_out_0_pin10_t : out STD_LOGIC;
    Pmod_out_0_pin1_i : in STD_LOGIC;
    Pmod_out_0_pin1_o : out STD_LOGIC;
    Pmod_out_0_pin1_t : out STD_LOGIC;
    Pmod_out_0_pin2_i : in STD_LOGIC;
    Pmod_out_0_pin2_o : out STD_LOGIC;
    Pmod_out_0_pin2_t : out STD_LOGIC;
    Pmod_out_0_pin3_i : in STD_LOGIC;
    Pmod_out_0_pin3_o : out STD_LOGIC;
    Pmod_out_0_pin3_t : out STD_LOGIC;
    Pmod_out_0_pin4_i : in STD_LOGIC;
    Pmod_out_0_pin4_o : out STD_LOGIC;
    Pmod_out_0_pin4_t : out STD_LOGIC;
    Pmod_out_0_pin7_i : in STD_LOGIC;
    Pmod_out_0_pin7_o : out STD_LOGIC;
    Pmod_out_0_pin7_t : out STD_LOGIC;
    Pmod_out_0_pin8_i : in STD_LOGIC;
    Pmod_out_0_pin8_o : out STD_LOGIC;
    Pmod_out_0_pin8_t : out STD_LOGIC;
    Pmod_out_0_pin9_i : in STD_LOGIC;
    Pmod_out_0_pin9_o : out STD_LOGIC;
    Pmod_out_0_pin9_t : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    ip2intc_irpt_0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );

end system_PetaENC_1_0;

architecture stub of system_PetaENC_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Pmod_out_0_pin10_i,Pmod_out_0_pin10_o,Pmod_out_0_pin10_t,Pmod_out_0_pin1_i,Pmod_out_0_pin1_o,Pmod_out_0_pin1_t,Pmod_out_0_pin2_i,Pmod_out_0_pin2_o,Pmod_out_0_pin2_t,Pmod_out_0_pin3_i,Pmod_out_0_pin3_o,Pmod_out_0_pin3_t,Pmod_out_0_pin4_i,Pmod_out_0_pin4_o,Pmod_out_0_pin4_t,Pmod_out_0_pin7_i,Pmod_out_0_pin7_o,Pmod_out_0_pin7_t,Pmod_out_0_pin8_i,Pmod_out_0_pin8_o,Pmod_out_0_pin8_t,Pmod_out_0_pin9_i,Pmod_out_0_pin9_o,Pmod_out_0_pin9_t,S_AXI_araddr[8:0],S_AXI_arready,S_AXI_arvalid,S_AXI_awaddr[8:0],S_AXI_awready,S_AXI_awvalid,S_AXI_bready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_rdata[31:0],S_AXI_rready,S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_wdata[31:0],S_AXI_wready,S_AXI_wstrb[3:0],S_AXI_wvalid,ip2intc_irpt_0,s_axi_aclk,s_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PetaENC,Vivado 2023.2.2";
begin
end;
