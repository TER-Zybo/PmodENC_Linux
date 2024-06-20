--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
--Date        : Thu Jun 20 14:42:24 2024
--Host        : secil10.siame.univ-tlse3.fr running 64-bit Fedora Linux 38 (Thirty Eight)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    Pmod_out_0_pin10_io : inout STD_LOGIC;
    Pmod_out_0_pin1_io : inout STD_LOGIC;
    Pmod_out_0_pin2_io : inout STD_LOGIC;
    Pmod_out_0_pin3_io : inout STD_LOGIC;
    Pmod_out_0_pin4_io : inout STD_LOGIC;
    Pmod_out_0_pin7_io : inout STD_LOGIC;
    Pmod_out_0_pin8_io : inout STD_LOGIC;
    Pmod_out_0_pin9_io : inout STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    ac_bclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_iic_scl_io : inout STD_LOGIC;
    ac_iic_sda_io : inout STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_muten : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pblrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_recdat : in STD_LOGIC_VECTOR ( 0 to 0 );
    ac_reclrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_iic_scl_io : inout STD_LOGIC;
    cam_iic_sda_io : inout STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rst_b_tri_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_io : inout STD_LOGIC;
    hdmi_in_ddc_sda_io : inout STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_scl_io : inout STD_LOGIC;
    hdmi_out_ddc_sda_io : inout STD_LOGIC;
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_rgb : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sys_clock : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    ac_iic_sda_i : in STD_LOGIC;
    ac_iic_sda_o : out STD_LOGIC;
    ac_iic_sda_t : out STD_LOGIC;
    ac_iic_scl_i : in STD_LOGIC;
    ac_iic_scl_o : out STD_LOGIC;
    ac_iic_scl_t : out STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_iic_scl_i : in STD_LOGIC;
    cam_iic_scl_o : out STD_LOGIC;
    cam_iic_scl_t : out STD_LOGIC;
    cam_iic_sda_i : in STD_LOGIC;
    cam_iic_sda_o : out STD_LOGIC;
    cam_iic_sda_t : out STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rst_b_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rst_b_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rst_b_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_sda_i : in STD_LOGIC;
    hdmi_out_ddc_sda_o : out STD_LOGIC;
    hdmi_out_ddc_sda_t : out STD_LOGIC;
    hdmi_out_ddc_scl_i : in STD_LOGIC;
    hdmi_out_ddc_scl_o : out STD_LOGIC;
    hdmi_out_ddc_scl_t : out STD_LOGIC;
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Pmod_out_0_pin1_o : out STD_LOGIC;
    Pmod_out_0_pin7_i : in STD_LOGIC;
    Pmod_out_0_pin2_o : out STD_LOGIC;
    Pmod_out_0_pin8_i : in STD_LOGIC;
    Pmod_out_0_pin3_o : out STD_LOGIC;
    Pmod_out_0_pin9_i : in STD_LOGIC;
    Pmod_out_0_pin10_o : out STD_LOGIC;
    Pmod_out_0_pin4_o : out STD_LOGIC;
    Pmod_out_0_pin3_i : in STD_LOGIC;
    Pmod_out_0_pin4_i : in STD_LOGIC;
    Pmod_out_0_pin1_i : in STD_LOGIC;
    Pmod_out_0_pin2_i : in STD_LOGIC;
    Pmod_out_0_pin10_t : out STD_LOGIC;
    Pmod_out_0_pin8_t : out STD_LOGIC;
    Pmod_out_0_pin9_t : out STD_LOGIC;
    Pmod_out_0_pin4_t : out STD_LOGIC;
    Pmod_out_0_pin9_o : out STD_LOGIC;
    Pmod_out_0_pin10_i : in STD_LOGIC;
    Pmod_out_0_pin7_t : out STD_LOGIC;
    Pmod_out_0_pin1_t : out STD_LOGIC;
    Pmod_out_0_pin2_t : out STD_LOGIC;
    Pmod_out_0_pin7_o : out STD_LOGIC;
    Pmod_out_0_pin3_t : out STD_LOGIC;
    Pmod_out_0_pin8_o : out STD_LOGIC;
    ac_bclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_mclk : out STD_LOGIC;
    ac_muten : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pblrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_recdat : in STD_LOGIC_VECTOR ( 0 to 0 );
    ac_reclrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_rgb : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_clock : in STD_LOGIC
  );
  end component system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal Pmod_out_0_pin10_i : STD_LOGIC;
  signal Pmod_out_0_pin10_o : STD_LOGIC;
  signal Pmod_out_0_pin10_t : STD_LOGIC;
  signal Pmod_out_0_pin1_i : STD_LOGIC;
  signal Pmod_out_0_pin1_o : STD_LOGIC;
  signal Pmod_out_0_pin1_t : STD_LOGIC;
  signal Pmod_out_0_pin2_i : STD_LOGIC;
  signal Pmod_out_0_pin2_o : STD_LOGIC;
  signal Pmod_out_0_pin2_t : STD_LOGIC;
  signal Pmod_out_0_pin3_i : STD_LOGIC;
  signal Pmod_out_0_pin3_o : STD_LOGIC;
  signal Pmod_out_0_pin3_t : STD_LOGIC;
  signal Pmod_out_0_pin4_i : STD_LOGIC;
  signal Pmod_out_0_pin4_o : STD_LOGIC;
  signal Pmod_out_0_pin4_t : STD_LOGIC;
  signal Pmod_out_0_pin7_i : STD_LOGIC;
  signal Pmod_out_0_pin7_o : STD_LOGIC;
  signal Pmod_out_0_pin7_t : STD_LOGIC;
  signal Pmod_out_0_pin8_i : STD_LOGIC;
  signal Pmod_out_0_pin8_o : STD_LOGIC;
  signal Pmod_out_0_pin8_t : STD_LOGIC;
  signal Pmod_out_0_pin9_i : STD_LOGIC;
  signal Pmod_out_0_pin9_o : STD_LOGIC;
  signal Pmod_out_0_pin9_t : STD_LOGIC;
  signal ac_iic_scl_i : STD_LOGIC;
  signal ac_iic_scl_o : STD_LOGIC;
  signal ac_iic_scl_t : STD_LOGIC;
  signal ac_iic_sda_i : STD_LOGIC;
  signal ac_iic_sda_o : STD_LOGIC;
  signal ac_iic_sda_t : STD_LOGIC;
  signal cam_iic_scl_i : STD_LOGIC;
  signal cam_iic_scl_o : STD_LOGIC;
  signal cam_iic_scl_t : STD_LOGIC;
  signal cam_iic_sda_i : STD_LOGIC;
  signal cam_iic_sda_o : STD_LOGIC;
  signal cam_iic_sda_t : STD_LOGIC;
  signal eth_rst_b_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eth_rst_b_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eth_rst_b_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eth_rst_b_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hdmi_in_ddc_scl_i : STD_LOGIC;
  signal hdmi_in_ddc_scl_o : STD_LOGIC;
  signal hdmi_in_ddc_scl_t : STD_LOGIC;
  signal hdmi_in_ddc_sda_i : STD_LOGIC;
  signal hdmi_in_ddc_sda_o : STD_LOGIC;
  signal hdmi_in_ddc_sda_t : STD_LOGIC;
  signal hdmi_out_ddc_scl_i : STD_LOGIC;
  signal hdmi_out_ddc_scl_o : STD_LOGIC;
  signal hdmi_out_ddc_scl_t : STD_LOGIC;
  signal hdmi_out_ddc_sda_i : STD_LOGIC;
  signal hdmi_out_ddc_sda_o : STD_LOGIC;
  signal hdmi_out_ddc_sda_t : STD_LOGIC;
begin
Pmod_out_0_pin10_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin10_o,
      IO => Pmod_out_0_pin10_io,
      O => Pmod_out_0_pin10_i,
      T => Pmod_out_0_pin10_t
    );
Pmod_out_0_pin1_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin1_o,
      IO => Pmod_out_0_pin1_io,
      O => Pmod_out_0_pin1_i,
      T => Pmod_out_0_pin1_t
    );
Pmod_out_0_pin2_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin2_o,
      IO => Pmod_out_0_pin2_io,
      O => Pmod_out_0_pin2_i,
      T => Pmod_out_0_pin2_t
    );
Pmod_out_0_pin3_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin3_o,
      IO => Pmod_out_0_pin3_io,
      O => Pmod_out_0_pin3_i,
      T => Pmod_out_0_pin3_t
    );
Pmod_out_0_pin4_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin4_o,
      IO => Pmod_out_0_pin4_io,
      O => Pmod_out_0_pin4_i,
      T => Pmod_out_0_pin4_t
    );
Pmod_out_0_pin7_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin7_o,
      IO => Pmod_out_0_pin7_io,
      O => Pmod_out_0_pin7_i,
      T => Pmod_out_0_pin7_t
    );
Pmod_out_0_pin8_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin8_o,
      IO => Pmod_out_0_pin8_io,
      O => Pmod_out_0_pin8_i,
      T => Pmod_out_0_pin8_t
    );
Pmod_out_0_pin9_iobuf: component IOBUF
     port map (
      I => Pmod_out_0_pin9_o,
      IO => Pmod_out_0_pin9_io,
      O => Pmod_out_0_pin9_i,
      T => Pmod_out_0_pin9_t
    );
ac_iic_scl_iobuf: component IOBUF
     port map (
      I => ac_iic_scl_o,
      IO => ac_iic_scl_io,
      O => ac_iic_scl_i,
      T => ac_iic_scl_t
    );
ac_iic_sda_iobuf: component IOBUF
     port map (
      I => ac_iic_sda_o,
      IO => ac_iic_sda_io,
      O => ac_iic_sda_i,
      T => ac_iic_sda_t
    );
cam_iic_scl_iobuf: component IOBUF
     port map (
      I => cam_iic_scl_o,
      IO => cam_iic_scl_io,
      O => cam_iic_scl_i,
      T => cam_iic_scl_t
    );
cam_iic_sda_iobuf: component IOBUF
     port map (
      I => cam_iic_sda_o,
      IO => cam_iic_sda_io,
      O => cam_iic_sda_i,
      T => cam_iic_sda_t
    );
eth_rst_b_tri_iobuf_0: component IOBUF
     port map (
      I => eth_rst_b_tri_o_0(0),
      IO => eth_rst_b_tri_io(0),
      O => eth_rst_b_tri_i_0(0),
      T => eth_rst_b_tri_t_0(0)
    );
hdmi_in_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_in_ddc_scl_o,
      IO => hdmi_in_ddc_scl_io,
      O => hdmi_in_ddc_scl_i,
      T => hdmi_in_ddc_scl_t
    );
hdmi_in_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_in_ddc_sda_o,
      IO => hdmi_in_ddc_sda_io,
      O => hdmi_in_ddc_sda_i,
      T => hdmi_in_ddc_sda_t
    );
hdmi_out_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_out_ddc_scl_o,
      IO => hdmi_out_ddc_scl_io,
      O => hdmi_out_ddc_scl_i,
      T => hdmi_out_ddc_scl_t
    );
hdmi_out_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_out_ddc_sda_o,
      IO => hdmi_out_ddc_sda_io,
      O => hdmi_out_ddc_sda_i,
      T => hdmi_out_ddc_sda_t
    );
system_i: component system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
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
      Vaux14_v_n => Vaux14_v_n,
      Vaux14_v_p => Vaux14_v_p,
      Vaux15_v_n => Vaux15_v_n,
      Vaux15_v_p => Vaux15_v_p,
      Vaux6_v_n => Vaux6_v_n,
      Vaux6_v_p => Vaux6_v_p,
      Vaux7_v_n => Vaux7_v_n,
      Vaux7_v_p => Vaux7_v_p,
      Vp_Vn_v_n => Vp_Vn_v_n,
      Vp_Vn_v_p => Vp_Vn_v_p,
      ac_bclk(0) => ac_bclk(0),
      ac_iic_scl_i => ac_iic_scl_i,
      ac_iic_scl_o => ac_iic_scl_o,
      ac_iic_scl_t => ac_iic_scl_t,
      ac_iic_sda_i => ac_iic_sda_i,
      ac_iic_sda_o => ac_iic_sda_o,
      ac_iic_sda_t => ac_iic_sda_t,
      ac_mclk => ac_mclk,
      ac_muten(0) => ac_muten(0),
      ac_pbdat(0) => ac_pbdat(0),
      ac_pblrc(0) => ac_pblrc(0),
      ac_recdat(0) => ac_recdat(0),
      ac_reclrc(0) => ac_reclrc(0),
      btns_4bits_tri_i(3 downto 0) => btns_4bits_tri_i(3 downto 0),
      cam_gpio(0) => cam_gpio(0),
      cam_iic_scl_i => cam_iic_scl_i,
      cam_iic_scl_o => cam_iic_scl_o,
      cam_iic_scl_t => cam_iic_scl_t,
      cam_iic_sda_i => cam_iic_sda_i,
      cam_iic_sda_o => cam_iic_sda_o,
      cam_iic_sda_t => cam_iic_sda_t,
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p,
      dphy_data_hs_n(1 downto 0) => dphy_data_hs_n(1 downto 0),
      dphy_data_hs_p(1 downto 0) => dphy_data_hs_p(1 downto 0),
      dphy_data_lp_n(1 downto 0) => dphy_data_lp_n(1 downto 0),
      dphy_data_lp_p(1 downto 0) => dphy_data_lp_p(1 downto 0),
      eth_rst_b_tri_i(0) => eth_rst_b_tri_i_0(0),
      eth_rst_b_tri_o(0) => eth_rst_b_tri_o_0(0),
      eth_rst_b_tri_t(0) => eth_rst_b_tri_t_0(0),
      hdmi_in_clk_n => hdmi_in_clk_n,
      hdmi_in_clk_p => hdmi_in_clk_p,
      hdmi_in_data_n(2 downto 0) => hdmi_in_data_n(2 downto 0),
      hdmi_in_data_p(2 downto 0) => hdmi_in_data_p(2 downto 0),
      hdmi_in_ddc_scl_i => hdmi_in_ddc_scl_i,
      hdmi_in_ddc_scl_o => hdmi_in_ddc_scl_o,
      hdmi_in_ddc_scl_t => hdmi_in_ddc_scl_t,
      hdmi_in_ddc_sda_i => hdmi_in_ddc_sda_i,
      hdmi_in_ddc_sda_o => hdmi_in_ddc_sda_o,
      hdmi_in_ddc_sda_t => hdmi_in_ddc_sda_t,
      hdmi_in_hpd(0) => hdmi_in_hpd(0),
      hdmi_out_clk_n => hdmi_out_clk_n,
      hdmi_out_clk_p => hdmi_out_clk_p,
      hdmi_out_data_n(2 downto 0) => hdmi_out_data_n(2 downto 0),
      hdmi_out_data_p(2 downto 0) => hdmi_out_data_p(2 downto 0),
      hdmi_out_ddc_scl_i => hdmi_out_ddc_scl_i,
      hdmi_out_ddc_scl_o => hdmi_out_ddc_scl_o,
      hdmi_out_ddc_scl_t => hdmi_out_ddc_scl_t,
      hdmi_out_ddc_sda_i => hdmi_out_ddc_sda_i,
      hdmi_out_ddc_sda_o => hdmi_out_ddc_sda_o,
      hdmi_out_ddc_sda_t => hdmi_out_ddc_sda_t,
      leds_4bits_tri_o(3 downto 0) => leds_4bits_tri_o(3 downto 0),
      pwm_rgb(5 downto 0) => pwm_rgb(5 downto 0),
      sws_4bits_tri_i(3 downto 0) => sws_4bits_tri_i(3 downto 0),
      sys_clock => sys_clock
    );
end STRUCTURE;
