-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:PetaENC:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_PetaENC_1_0 IS
  PORT (
    Pmod_out_0_pin10_i : IN STD_LOGIC;
    Pmod_out_0_pin10_o : OUT STD_LOGIC;
    Pmod_out_0_pin10_t : OUT STD_LOGIC;
    Pmod_out_0_pin1_i : IN STD_LOGIC;
    Pmod_out_0_pin1_o : OUT STD_LOGIC;
    Pmod_out_0_pin1_t : OUT STD_LOGIC;
    Pmod_out_0_pin2_i : IN STD_LOGIC;
    Pmod_out_0_pin2_o : OUT STD_LOGIC;
    Pmod_out_0_pin2_t : OUT STD_LOGIC;
    Pmod_out_0_pin3_i : IN STD_LOGIC;
    Pmod_out_0_pin3_o : OUT STD_LOGIC;
    Pmod_out_0_pin3_t : OUT STD_LOGIC;
    Pmod_out_0_pin4_i : IN STD_LOGIC;
    Pmod_out_0_pin4_o : OUT STD_LOGIC;
    Pmod_out_0_pin4_t : OUT STD_LOGIC;
    Pmod_out_0_pin7_i : IN STD_LOGIC;
    Pmod_out_0_pin7_o : OUT STD_LOGIC;
    Pmod_out_0_pin7_t : OUT STD_LOGIC;
    Pmod_out_0_pin8_i : IN STD_LOGIC;
    Pmod_out_0_pin8_o : OUT STD_LOGIC;
    Pmod_out_0_pin8_t : OUT STD_LOGIC;
    Pmod_out_0_pin9_i : IN STD_LOGIC;
    Pmod_out_0_pin9_o : OUT STD_LOGIC;
    Pmod_out_0_pin9_t : OUT STD_LOGIC;
    S_AXI_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    S_AXI_arready : OUT STD_LOGIC;
    S_AXI_arvalid : IN STD_LOGIC;
    S_AXI_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    S_AXI_awready : OUT STD_LOGIC;
    S_AXI_awvalid : IN STD_LOGIC;
    S_AXI_bready : IN STD_LOGIC;
    S_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_bvalid : OUT STD_LOGIC;
    S_AXI_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_rready : IN STD_LOGIC;
    S_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_rvalid : OUT STD_LOGIC;
    S_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_wready : OUT STD_LOGIC;
    S_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_wvalid : IN STD_LOGIC;
    ip2intc_irpt_0 : OUT STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC
  );
END system_PetaENC_1_0;

ARCHITECTURE system_PetaENC_1_0_arch OF system_PetaENC_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_PetaENC_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT PetaENC IS
    PORT (
      Pmod_out_0_pin10_i : IN STD_LOGIC;
      Pmod_out_0_pin10_o : OUT STD_LOGIC;
      Pmod_out_0_pin10_t : OUT STD_LOGIC;
      Pmod_out_0_pin1_i : IN STD_LOGIC;
      Pmod_out_0_pin1_o : OUT STD_LOGIC;
      Pmod_out_0_pin1_t : OUT STD_LOGIC;
      Pmod_out_0_pin2_i : IN STD_LOGIC;
      Pmod_out_0_pin2_o : OUT STD_LOGIC;
      Pmod_out_0_pin2_t : OUT STD_LOGIC;
      Pmod_out_0_pin3_i : IN STD_LOGIC;
      Pmod_out_0_pin3_o : OUT STD_LOGIC;
      Pmod_out_0_pin3_t : OUT STD_LOGIC;
      Pmod_out_0_pin4_i : IN STD_LOGIC;
      Pmod_out_0_pin4_o : OUT STD_LOGIC;
      Pmod_out_0_pin4_t : OUT STD_LOGIC;
      Pmod_out_0_pin7_i : IN STD_LOGIC;
      Pmod_out_0_pin7_o : OUT STD_LOGIC;
      Pmod_out_0_pin7_t : OUT STD_LOGIC;
      Pmod_out_0_pin8_i : IN STD_LOGIC;
      Pmod_out_0_pin8_o : OUT STD_LOGIC;
      Pmod_out_0_pin8_t : OUT STD_LOGIC;
      Pmod_out_0_pin9_i : IN STD_LOGIC;
      Pmod_out_0_pin9_o : OUT STD_LOGIC;
      Pmod_out_0_pin9_t : OUT STD_LOGIC;
      S_AXI_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      S_AXI_arready : OUT STD_LOGIC;
      S_AXI_arvalid : IN STD_LOGIC;
      S_AXI_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      S_AXI_awready : OUT STD_LOGIC;
      S_AXI_awvalid : IN STD_LOGIC;
      S_AXI_bready : IN STD_LOGIC;
      S_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_bvalid : OUT STD_LOGIC;
      S_AXI_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_rready : IN STD_LOGIC;
      S_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_rvalid : OUT STD_LOGIC;
      S_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_wready : OUT STD_LOGIC;
      S_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_wvalid : IN STD_LOGIC;
      ip2intc_irpt_0 : OUT STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT PetaENC;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Pmod_out_0_pin10_i: SIGNAL IS "XIL_INTERFACENAME Pmod_out_0, BUSIF.BOARD_INTERFACE Custom";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin10_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN10_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin10_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN10_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin10_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN10_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin1_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN1_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin1_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN1_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin1_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN1_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin2_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN2_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin2_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN2_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin2_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN2_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin3_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN3_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin3_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN3_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin3_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN3_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin4_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN4_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin4_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN4_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin4_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN4_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin7_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN7_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin7_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN7_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin7_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN7_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin8_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN8_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin8_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN8_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin8_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN8_T";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin9_i: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN9_I";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin9_o: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN9_O";
  ATTRIBUTE X_INTERFACE_INFO OF Pmod_out_0_pin9_t: SIGNAL IS "digilentinc.com:interface:pmod:1.0 Pmod_out_0 PIN9_T";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXI_araddr: SIGNAL IS "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B" & 
"ITS_PER_BYTE 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ip2intc_irpt_0: SIGNAL IS "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF ip2intc_irpt_0: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME CLK.S_AXI_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
BEGIN
  U0 : PetaENC
    PORT MAP (
      Pmod_out_0_pin10_i => Pmod_out_0_pin10_i,
      Pmod_out_0_pin10_o => Pmod_out_0_pin10_o,
      Pmod_out_0_pin10_t => Pmod_out_0_pin10_t,
      Pmod_out_0_pin1_i => Pmod_out_0_pin1_i,
      Pmod_out_0_pin1_o => Pmod_out_0_pin1_o,
      Pmod_out_0_pin1_t => Pmod_out_0_pin1_t,
      Pmod_out_0_pin2_i => Pmod_out_0_pin2_i,
      Pmod_out_0_pin2_o => Pmod_out_0_pin2_o,
      Pmod_out_0_pin2_t => Pmod_out_0_pin2_t,
      Pmod_out_0_pin3_i => Pmod_out_0_pin3_i,
      Pmod_out_0_pin3_o => Pmod_out_0_pin3_o,
      Pmod_out_0_pin3_t => Pmod_out_0_pin3_t,
      Pmod_out_0_pin4_i => Pmod_out_0_pin4_i,
      Pmod_out_0_pin4_o => Pmod_out_0_pin4_o,
      Pmod_out_0_pin4_t => Pmod_out_0_pin4_t,
      Pmod_out_0_pin7_i => Pmod_out_0_pin7_i,
      Pmod_out_0_pin7_o => Pmod_out_0_pin7_o,
      Pmod_out_0_pin7_t => Pmod_out_0_pin7_t,
      Pmod_out_0_pin8_i => Pmod_out_0_pin8_i,
      Pmod_out_0_pin8_o => Pmod_out_0_pin8_o,
      Pmod_out_0_pin8_t => Pmod_out_0_pin8_t,
      Pmod_out_0_pin9_i => Pmod_out_0_pin9_i,
      Pmod_out_0_pin9_o => Pmod_out_0_pin9_o,
      Pmod_out_0_pin9_t => Pmod_out_0_pin9_t,
      S_AXI_araddr => S_AXI_araddr,
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr => S_AXI_awaddr,
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp => S_AXI_bresp,
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata => S_AXI_rdata,
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp => S_AXI_rresp,
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata => S_AXI_wdata,
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb => S_AXI_wstrb,
      S_AXI_wvalid => S_AXI_wvalid,
      ip2intc_irpt_0 => ip2intc_irpt_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
END system_PetaENC_1_0_arch;
