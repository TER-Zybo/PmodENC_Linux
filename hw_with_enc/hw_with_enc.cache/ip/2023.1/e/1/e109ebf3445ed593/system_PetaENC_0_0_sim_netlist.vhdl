-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Fri Jun  7 12:38:29 2024
-- Host        : secil10.siame.univ-tlse3.fr running 64-bit Fedora Linux 38 (Thirty Eight)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_PetaENC_0_0_sim_netlist.vhdl
-- Design      : system_PetaENC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer is
  port (
    BO : out STD_LOGIC;
    AO : out STD_LOGIC;
    in_top_bus_I : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer is
  signal \^ao\ : STD_LOGIC;
  signal Aout_i_1_n_0 : STD_LOGIC;
  signal \^bo\ : STD_LOGIC;
  signal Bout_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sampledA : STD_LOGIC;
  signal sampledB : STD_LOGIC;
  signal sclk : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sclk[6]_i_1_n_0\ : STD_LOGIC;
  signal \sclk[6]_i_3_n_0\ : STD_LOGIC;
  signal \sclk[6]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sclk[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sclk[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sclk[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sclk[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sclk[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sclk[6]_i_4\ : label is "soft_lutpair12";
begin
  AO <= \^ao\;
  BO <= \^bo\;
Aout_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF8000"
    )
        port map (
      I0 => sampledA,
      I1 => sclk(5),
      I2 => \sclk[6]_i_3_n_0\,
      I3 => in_top_bus_I(0),
      I4 => \^ao\,
      O => Aout_i_1_n_0
    );
Aout_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aout_i_1_n_0,
      Q => \^ao\,
      R => '0'
    );
Bout_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF8000"
    )
        port map (
      I0 => sampledB,
      I1 => sclk(5),
      I2 => \sclk[6]_i_3_n_0\,
      I3 => in_top_bus_I(1),
      I4 => \^bo\,
      O => Bout_i_1_n_0
    );
Bout_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bout_i_1_n_0,
      Q => \^bo\,
      R => '0'
    );
sampledA_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in_top_bus_I(0),
      Q => sampledA,
      R => '0'
    );
sampledB_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in_top_bus_I(1),
      Q => sampledB,
      R => '0'
    );
\sclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclk(0),
      O => plusOp(0)
    );
\sclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sclk(0),
      I1 => sclk(1),
      O => plusOp(1)
    );
\sclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => sclk(2),
      I1 => sclk(0),
      I2 => sclk(1),
      O => plusOp(2)
    );
\sclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => sclk(3),
      I1 => sclk(0),
      I2 => sclk(1),
      I3 => sclk(2),
      O => plusOp(3)
    );
\sclk[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sclk(4),
      I1 => sclk(2),
      I2 => sclk(1),
      I3 => sclk(0),
      I4 => sclk(3),
      O => plusOp(4)
    );
\sclk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => sclk(5),
      I1 => sclk(3),
      I2 => sclk(0),
      I3 => sclk(1),
      I4 => sclk(2),
      I5 => sclk(4),
      O => plusOp(5)
    );
\sclk[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sclk[6]_i_3_n_0\,
      I1 => sclk(5),
      O => \sclk[6]_i_1_n_0\
    );
\sclk[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sclk(3),
      I1 => \sclk[6]_i_4_n_0\,
      I2 => sclk(2),
      I3 => sclk(4),
      I4 => sclk(5),
      I5 => sclk(6),
      O => plusOp(6)
    );
\sclk[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => sclk(4),
      I1 => sclk(2),
      I2 => sclk(1),
      I3 => sclk(0),
      I4 => sclk(3),
      I5 => sclk(6),
      O => \sclk[6]_i_3_n_0\
    );
\sclk[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sclk(1),
      I1 => sclk(0),
      O => \sclk[6]_i_4_n_0\
    );
\sclk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => sclk(0),
      R => \sclk[6]_i_1_n_0\
    );
\sclk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => sclk(1),
      R => \sclk[6]_i_1_n_0\
    );
\sclk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => sclk(2),
      R => \sclk[6]_i_1_n_0\
    );
\sclk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => sclk(3),
      R => \sclk[6]_i_1_n_0\
    );
\sclk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => sclk(4),
      R => \sclk[6]_i_1_n_0\
    );
\sclk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => sclk(5),
      R => \sclk[6]_i_1_n_0\
    );
\sclk_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(6),
      Q => sclk(6),
      R => \sclk[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder is
  port (
    \counter_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    in_top_bus_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    AO : in STD_LOGIC;
    BO : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder is
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \^counter_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curState : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal nextState : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curState_reg[0]\ : label is "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curState_reg[1]\ : label is "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curState_reg[2]\ : label is "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curState_reg[3]\ : label is "l1:0101,r3:0011,r2:0010,r1:0001,idle:0000,add:0100,l3:0111,sub:1000,l2:0110";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair14";
begin
  \counter_reg[3]_0\(3 downto 0) <= \^counter_reg[3]_0\(3 downto 0);
\FSM_sequential_curState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005C74201D"
    )
        port map (
      I0 => curState(0),
      I1 => AO,
      I2 => BO,
      I3 => curState(2),
      I4 => curState(1),
      I5 => curState(3),
      O => nextState(0)
    );
\FSM_sequential_curState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020003030322032"
    )
        port map (
      I0 => curState(0),
      I1 => curState(3),
      I2 => curState(1),
      I3 => AO,
      I4 => curState(2),
      I5 => BO,
      O => nextState(1)
    );
\FSM_sequential_curState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540550005000004"
    )
        port map (
      I0 => curState(3),
      I1 => BO,
      I2 => AO,
      I3 => curState(2),
      I4 => curState(0),
      I5 => curState(1),
      O => nextState(2)
    );
\FSM_sequential_curState[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => curState(3),
      I1 => curState(1),
      I2 => curState(0),
      I3 => BO,
      I4 => AO,
      I5 => curState(2),
      O => nextState(3)
    );
\FSM_sequential_curState_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => in_top_bus_I(0),
      D => nextState(0),
      Q => curState(0)
    );
\FSM_sequential_curState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => in_top_bus_I(0),
      D => nextState(1),
      Q => curState(1)
    );
\FSM_sequential_curState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => in_top_bus_I(0),
      D => nextState(2),
      Q => curState(2)
    );
\FSM_sequential_curState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => in_top_bus_I(0),
      D => nextState(3),
      Q => curState(3)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_reg[3]_0\(0),
      O => counter(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \^counter_reg[3]_0\(0),
      I1 => curState(2),
      I2 => curState(3),
      I3 => \^counter_reg[3]_0\(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \counter[3]_i_3_n_0\,
      I1 => \^counter_reg[3]_0\(2),
      I2 => \^counter_reg[3]_0\(1),
      O => counter(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => curState(1),
      I1 => curState(0),
      I2 => curState(2),
      I3 => curState(3),
      O => \counter[3]_i_1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \counter[3]_i_3_n_0\,
      I1 => \^counter_reg[3]_0\(1),
      I2 => \^counter_reg[3]_0\(3),
      I3 => \^counter_reg[3]_0\(2),
      O => counter(3)
    );
\counter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF00000100"
    )
        port map (
      I0 => curState(1),
      I1 => curState(0),
      I2 => curState(3),
      I3 => curState(2),
      I4 => \^counter_reg[3]_0\(1),
      I5 => \^counter_reg[3]_0\(0),
      O => \counter[3]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => in_top_bus_I(0),
      D => counter(0),
      Q => \^counter_reg[3]_0\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => in_top_bus_I(0),
      D => \counter[1]_i_1_n_0\,
      Q => \^counter_reg[3]_0\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => in_top_bus_I(0),
      D => counter(2),
      Q => \^counter_reg[3]_0\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => in_top_bus_I(0),
      D => counter(3),
      Q => \^counter_reg[3]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Not_Dual.gpio_Data_Out_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    S_AXI_arready : in STD_LOGIC;
    S_AXI_arready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    S_AXI_awready : in STD_LOGIC;
    reg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \ip2bus_data_i_D1[28]_i_2_n_0\ : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_Data_Out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_Data_Out[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_Data_Out[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_Data_Out[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_Data_Out[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Not_Dual.gpio_OE[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[28]_i_2\ : label is "soft_lutpair1";
begin
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_0,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \^ip2bus_rdack_i_d1_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => Q,
      I2 => s_axi_aresetn,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => '0'
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I2 => \Not_Dual.gpio_Data_Out_reg[0]\(2),
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\
    );
\Not_Dual.gpio_Data_Out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => Bus_RNW_reg_reg_0,
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(2),
      I2 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      O => E(0)
    );
\Not_Dual.gpio_Data_Out[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(3),
      O => D(3)
    );
\Not_Dual.gpio_Data_Out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(2),
      O => D(2)
    );
\Not_Dual.gpio_Data_Out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(1),
      O => D(1)
    );
\Not_Dual.gpio_Data_Out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(0),
      O => D(0)
    );
\Not_Dual.gpio_OE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => Bus_RNW_reg_reg_0,
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(2),
      I2 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      O => bus2ip_rnw_i_reg(0)
    );
\ip2bus_data_i_D1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => Bus_RNW_reg,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\(4)
    );
\ip2bus_data_i_D1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0CF000000000"
    )
        port map (
      I0 => reg1(3),
      I1 => reg2(3),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \ip2bus_data_i_D1[28]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\(3)
    );
\ip2bus_data_i_D1[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \ip2bus_data_i_D1[28]_i_2_n_0\
    );
\ip2bus_data_i_D1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0CF000000000"
    )
        port map (
      I0 => reg1(2),
      I1 => reg2(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \ip2bus_data_i_D1[28]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\(2)
    );
\ip2bus_data_i_D1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0CF000000000"
    )
        port map (
      I0 => reg1(1),
      I1 => reg2(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \ip2bus_data_i_D1[28]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\(1)
    );
\ip2bus_data_i_D1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0CF000000000"
    )
        port map (
      I0 => reg1(0),
      I1 => reg2(0),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \ip2bus_data_i_D1[28]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack_i_D1,
      I1 => S_AXI_arready,
      I2 => S_AXI_arready_0(2),
      I3 => S_AXI_arready_0(1),
      I4 => S_AXI_arready_0(3),
      I5 => S_AXI_arready_0(0),
      O => \^ip2bus_rdack_i_d1_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack_i_D1,
      I1 => S_AXI_awready,
      I2 => S_AXI_arready_0(2),
      I3 => S_AXI_arready_0(1),
      I4 => S_AXI_arready_0(3),
      I5 => S_AXI_arready_0(0),
      O => \^ip2bus_wrack_i_d1_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  signal \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q,
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(0),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(1),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(2),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2\(3),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(0),
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(1),
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(2),
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3\(3),
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(0),
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(1),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(2),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(3),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat is
  port (
    in_top_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_uart_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_uart_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_uart_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_uart_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_uart_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_uart_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in0_I : out STD_LOGIC;
    in1_I : out STD_LOGIC;
    in2_I : out STD_LOGIC;
    in3_I : out STD_LOGIC;
    in4_I : out STD_LOGIC;
    in5_I : out STD_LOGIC;
    in6_I : out STD_LOGIC;
    in7_I : out STD_LOGIC;
    in0_O : in STD_LOGIC;
    in1_O : in STD_LOGIC;
    in2_O : in STD_LOGIC;
    in3_O : in STD_LOGIC;
    in4_O : in STD_LOGIC;
    in5_O : in STD_LOGIC;
    in6_O : in STD_LOGIC;
    in7_O : in STD_LOGIC;
    in0_T : in STD_LOGIC;
    in1_T : in STD_LOGIC;
    in2_T : in STD_LOGIC;
    in3_T : in STD_LOGIC;
    in4_T : in STD_LOGIC;
    in5_T : in STD_LOGIC;
    in6_T : in STD_LOGIC;
    in7_T : in STD_LOGIC;
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  attribute Bottom_Row_Interface : string;
  attribute Bottom_Row_Interface of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat : entity is "Disabled";
  attribute Top_Row_Interface : string;
  attribute Top_Row_Interface of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat : entity is "GPIO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat is
  signal \<const0>\ : STD_LOGIC;
  signal \^out0_i\ : STD_LOGIC;
  signal \^out1_i\ : STD_LOGIC;
  signal \^out2_i\ : STD_LOGIC;
begin
  \^out0_i\ <= out0_I;
  \^out1_i\ <= out1_I;
  \^out2_i\ <= out2_I;
  in0_I <= \<const0>\;
  in1_I <= \<const0>\;
  in2_I <= \<const0>\;
  in3_I <= \<const0>\;
  in4_I <= \<const0>\;
  in5_I <= \<const0>\;
  in6_I <= \<const0>\;
  in7_I <= \<const0>\;
  in_bottom_bus_I(3) <= \<const0>\;
  in_bottom_bus_I(2) <= \<const0>\;
  in_bottom_bus_I(1) <= \<const0>\;
  in_bottom_bus_I(0) <= \<const0>\;
  in_bottom_i2c_gpio_bus_I(1) <= \<const0>\;
  in_bottom_i2c_gpio_bus_I(0) <= \<const0>\;
  in_bottom_uart_gpio_bus_I(1) <= \<const0>\;
  in_bottom_uart_gpio_bus_I(0) <= \<const0>\;
  in_top_bus_I(3) <= \<const0>\;
  in_top_bus_I(2) <= \^out2_i\;
  in_top_bus_I(1) <= \^out1_i\;
  in_top_bus_I(0) <= \^out0_i\;
  in_top_i2c_gpio_bus_I(1) <= \<const0>\;
  in_top_i2c_gpio_bus_I(0) <= \<const0>\;
  in_top_uart_gpio_bus_I(1) <= \<const0>\;
  in_top_uart_gpio_bus_I(0) <= \<const0>\;
  out0_O <= \<const0>\;
  out0_T <= \<const0>\;
  out1_O <= \<const0>\;
  out1_T <= \<const0>\;
  out2_O <= \<const0>\;
  out2_T <= \<const0>\;
  out3_O <= \<const0>\;
  out3_T <= \<const0>\;
  out4_O <= \<const0>\;
  out4_T <= \<const0>\;
  out5_O <= \<const0>\;
  out5_T <= \<const0>\;
  out6_O <= \<const0>\;
  out6_T <= \<const0>\;
  out7_O <= \<const0>\;
  out7_T <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core is
  port (
    reg1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i : out STD_LOGIC;
    ip2bus_rdack_i : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : in STD_LOGIC;
    bus2ip_cs : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Not_Dual.gpio_OE_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core is
  signal GPIO_xferAck_i : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out_reg_n_0_[0]\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out_reg_n_0_[1]\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out_reg_n_0_[2]\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out_reg_n_0_[3]\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE_reg_n_0_[0]\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE_reg_n_0_[1]\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE_reg_n_0_[2]\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE_reg_n_0_[3]\ : STD_LOGIC;
  signal Read_Reg_Rst : STD_LOGIC;
  signal gpio_Data_In : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gpio_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal iGPIO_xferAck : STD_LOGIC;
  signal \^reg2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of iGPIO_xferAck_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_D1_i_1 : label is "soft_lutpair10";
begin
  reg2(3 downto 0) <= \^reg2\(3 downto 0);
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(0),
      I1 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I2 => Q(0),
      I3 => \Not_Dual.gpio_Data_Out_reg_n_0_[0]\,
      I4 => \Not_Dual.gpio_OE_reg_n_0_[0]\,
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[28]_i_1_n_0\,
      Q => reg1(3),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CB00C8"
    )
        port map (
      I0 => gpio_Data_In(0),
      I1 => \Not_Dual.gpio_OE_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I4 => \^reg2\(3),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[28]_i_1_n_0\,
      Q => \^reg2\(3),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(1),
      I1 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I2 => Q(0),
      I3 => \Not_Dual.gpio_Data_Out_reg_n_0_[1]\,
      I4 => \Not_Dual.gpio_OE_reg_n_0_[1]\,
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[29]_i_1_n_0\,
      Q => reg1(2),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CB00C8"
    )
        port map (
      I0 => gpio_Data_In(1),
      I1 => \Not_Dual.gpio_OE_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I4 => \^reg2\(2),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[29]_i_1_n_0\,
      Q => \^reg2\(2),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(2),
      I1 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I2 => Q(0),
      I3 => \Not_Dual.gpio_Data_Out_reg_n_0_[2]\,
      I4 => \Not_Dual.gpio_OE_reg_n_0_[2]\,
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg1[30]_i_1_n_0\,
      Q => reg1(1),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CB00C8"
    )
        port map (
      I0 => gpio_Data_In(2),
      I1 => \Not_Dual.gpio_OE_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I4 => \^reg2\(1),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[2].reg2[30]_i_1_n_0\,
      Q => \^reg2\(1),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => GPIO_xferAck_i,
      I1 => gpio_xferAck_Reg,
      I2 => bus2ip_cs,
      I3 => bus2ip_rnw,
      O => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3232CF00"
    )
        port map (
      I0 => gpio_Data_In(3),
      I1 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I2 => Q(0),
      I3 => \Not_Dual.gpio_Data_Out_reg_n_0_[3]\,
      I4 => \Not_Dual.gpio_OE_reg_n_0_[3]\,
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg1[31]_i_2_n_0\,
      Q => reg1(0),
      R => Read_Reg_Rst
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CB00C8"
    )
        port map (
      I0 => gpio_Data_In(3),
      I1 => \Not_Dual.gpio_OE_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\,
      I4 => \^reg2\(0),
      O => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1_n_0\
    );
\Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2[31]_i_1_n_0\,
      Q => \^reg2\(0),
      R => Read_Reg_Rst
    );
\Not_Dual.INPUT_DOUBLE_REGS3\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
     port map (
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(3) => gpio_io_i_d2(0),
      scndry_vect_out(2) => gpio_io_i_d2(1),
      scndry_vect_out(1) => gpio_io_i_d2(2),
      scndry_vect_out(0) => gpio_io_i_d2(3)
    );
\Not_Dual.gpio_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(0),
      Q => gpio_Data_In(0),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(1),
      Q => gpio_Data_In(1),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(2),
      Q => gpio_Data_In(2),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(3),
      Q => gpio_Data_In(3),
      R => '0'
    );
\Not_Dual.gpio_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \Not_Dual.gpio_Data_Out_reg_n_0_[0]\,
      R => SS(0)
    );
\Not_Dual.gpio_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => \Not_Dual.gpio_Data_Out_reg_n_0_[1]\,
      R => SS(0)
    );
\Not_Dual.gpio_Data_Out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \Not_Dual.gpio_Data_Out_reg_n_0_[2]\,
      R => SS(0)
    );
\Not_Dual.gpio_Data_Out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \Not_Dual.gpio_Data_Out_reg_n_0_[3]\,
      R => SS(0)
    );
\Not_Dual.gpio_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Not_Dual.gpio_OE_reg[0]_0\(0),
      D => D(3),
      Q => \Not_Dual.gpio_OE_reg_n_0_[0]\,
      S => SS(0)
    );
\Not_Dual.gpio_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Not_Dual.gpio_OE_reg[0]_0\(0),
      D => D(2),
      Q => \Not_Dual.gpio_OE_reg_n_0_[1]\,
      S => SS(0)
    );
\Not_Dual.gpio_OE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Not_Dual.gpio_OE_reg[0]_0\(0),
      D => D(1),
      Q => \Not_Dual.gpio_OE_reg_n_0_[2]\,
      S => SS(0)
    );
\Not_Dual.gpio_OE_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Not_Dual.gpio_OE_reg[0]_0\(0),
      D => D(0),
      Q => \Not_Dual.gpio_OE_reg_n_0_[3]\,
      S => SS(0)
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO_xferAck_i,
      Q => gpio_xferAck_Reg,
      R => SS(0)
    );
iGPIO_xferAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => GPIO_xferAck_i,
      I1 => bus2ip_cs,
      I2 => gpio_xferAck_Reg,
      O => iGPIO_xferAck
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iGPIO_xferAck,
      Q => GPIO_xferAck_i,
      R => SS(0)
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => GPIO_xferAck_i,
      I1 => bus2ip_rnw,
      O => ip2bus_rdack_i
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => GPIO_xferAck_i,
      I1 => bus2ip_rnw,
      O => ip2bus_wrack_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0 is
  port (
    in_top_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0 : entity is "PetaENC_pmod_bridge_0_0,pmod_concat,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0 : entity is "pmod_concat,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in_top_bus_i\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_in0_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in1_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in2_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in3_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in4_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in5_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in6_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in7_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out0_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out0_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out1_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out2_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out3_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out3_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out4_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out4_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out5_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out5_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out6_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out6_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out7_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_out7_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in_bottom_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_top_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Bottom_Row_Interface : string;
  attribute Bottom_Row_Interface of inst : label is "Disabled";
  attribute Top_Row_Interface : string;
  attribute Top_Row_Interface of inst : label is "GPIO";
  attribute x_interface_info : string;
  attribute x_interface_info of out0_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I";
  attribute x_interface_info of out0_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O";
  attribute x_interface_info of out0_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T";
  attribute x_interface_info of out1_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I";
  attribute x_interface_info of out1_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O";
  attribute x_interface_info of out1_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T";
  attribute x_interface_info of out2_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I";
  attribute x_interface_info of out2_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O";
  attribute x_interface_info of out2_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T";
  attribute x_interface_info of out3_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I";
  attribute x_interface_info of out3_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O";
  attribute x_interface_info of out3_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T";
  attribute x_interface_info of out4_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I";
  attribute x_interface_info of out4_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O";
  attribute x_interface_info of out4_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T";
  attribute x_interface_info of out5_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I";
  attribute x_interface_info of out5_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O";
  attribute x_interface_info of out5_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T";
  attribute x_interface_info of out6_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I";
  attribute x_interface_info of out6_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O";
  attribute x_interface_info of out6_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T";
  attribute x_interface_info of out7_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I";
  attribute x_interface_info of out7_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O";
  attribute x_interface_info of out7_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of out7_T : signal is "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD";
  attribute x_interface_info of in_top_bus_I : signal is "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_I";
  attribute x_interface_info of in_top_bus_O : signal is "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_O";
  attribute x_interface_info of in_top_bus_T : signal is "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_T";
begin
  in_top_bus_I(3) <= \<const0>\;
  in_top_bus_I(2 downto 0) <= \^in_top_bus_i\(2 downto 0);
  out0_O <= \<const0>\;
  out0_T <= \<const0>\;
  out1_O <= \<const0>\;
  out1_T <= \<const0>\;
  out2_O <= \<const0>\;
  out2_T <= \<const0>\;
  out3_O <= \<const0>\;
  out3_T <= \<const0>\;
  out4_O <= \<const0>\;
  out4_T <= \<const0>\;
  out5_O <= \<const0>\;
  out5_T <= \<const0>\;
  out6_O <= \<const0>\;
  out6_T <= \<const0>\;
  out7_O <= \<const0>\;
  out7_T <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat
     port map (
      in0_I => NLW_inst_in0_I_UNCONNECTED,
      in0_O => '1',
      in0_T => '1',
      in1_I => NLW_inst_in1_I_UNCONNECTED,
      in1_O => '1',
      in1_T => '1',
      in2_I => NLW_inst_in2_I_UNCONNECTED,
      in2_O => '1',
      in2_T => '1',
      in3_I => NLW_inst_in3_I_UNCONNECTED,
      in3_O => '1',
      in3_T => '1',
      in4_I => NLW_inst_in4_I_UNCONNECTED,
      in4_O => '1',
      in4_T => '1',
      in5_I => NLW_inst_in5_I_UNCONNECTED,
      in5_O => '1',
      in5_T => '1',
      in6_I => NLW_inst_in6_I_UNCONNECTED,
      in6_O => '1',
      in6_T => '1',
      in7_I => NLW_inst_in7_I_UNCONNECTED,
      in7_O => '1',
      in7_T => '1',
      in_bottom_bus_I(3 downto 0) => NLW_inst_in_bottom_bus_I_UNCONNECTED(3 downto 0),
      in_bottom_bus_O(3 downto 0) => B"0001",
      in_bottom_bus_T(3 downto 0) => B"0001",
      in_bottom_i2c_gpio_bus_I(1 downto 0) => NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_bottom_i2c_gpio_bus_O(1 downto 0) => B"01",
      in_bottom_i2c_gpio_bus_T(1 downto 0) => B"01",
      in_bottom_uart_gpio_bus_I(1 downto 0) => NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_bottom_uart_gpio_bus_O(1 downto 0) => B"01",
      in_bottom_uart_gpio_bus_T(1 downto 0) => B"01",
      in_top_bus_I(3) => NLW_inst_in_top_bus_I_UNCONNECTED(3),
      in_top_bus_I(2 downto 0) => \^in_top_bus_i\(2 downto 0),
      in_top_bus_O(3 downto 0) => B"0000",
      in_top_bus_T(3 downto 0) => B"0000",
      in_top_i2c_gpio_bus_I(1 downto 0) => NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_top_i2c_gpio_bus_O(1 downto 0) => B"01",
      in_top_i2c_gpio_bus_T(1 downto 0) => B"01",
      in_top_uart_gpio_bus_I(1 downto 0) => NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_top_uart_gpio_bus_O(1 downto 0) => B"01",
      in_top_uart_gpio_bus_T(1 downto 0) => B"01",
      out0_I => out0_I,
      out0_O => NLW_inst_out0_O_UNCONNECTED,
      out0_T => NLW_inst_out0_T_UNCONNECTED,
      out1_I => out1_I,
      out1_O => NLW_inst_out1_O_UNCONNECTED,
      out1_T => NLW_inst_out1_T_UNCONNECTED,
      out2_I => out2_I,
      out2_O => NLW_inst_out2_O_UNCONNECTED,
      out2_T => NLW_inst_out2_T_UNCONNECTED,
      out3_I => '0',
      out3_O => NLW_inst_out3_O_UNCONNECTED,
      out3_T => NLW_inst_out3_T_UNCONNECTED,
      out4_I => '0',
      out4_O => NLW_inst_out4_O_UNCONNECTED,
      out4_T => NLW_inst_out4_T_UNCONNECTED,
      out5_I => '0',
      out5_O => NLW_inst_out5_O_UNCONNECTED,
      out5_T => NLW_inst_out5_T_UNCONNECTED,
      out6_I => '0',
      out6_O => NLW_inst_out6_O_UNCONNECTED,
      out6_T => NLW_inst_out6_T_UNCONNECTED,
      out7_I => '0',
      out7_O => NLW_inst_out7_O_UNCONNECTED,
      out7_T => NLW_inst_out7_T_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodENC is
  port (
    \counter_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    in_top_bus_I : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodENC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodENC is
  signal AO : STD_LOGIC;
  signal BO : STD_LOGIC;
begin
C0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer
     port map (
      AO => AO,
      BO => BO,
      in_top_bus_I(1 downto 0) => in_top_bus_I(1 downto 0),
      s_axi_aclk => s_axi_aclk
    );
C1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder
     port map (
      AO => AO,
      BO => BO,
      \counter_reg[3]_0\(3 downto 0) => \counter_reg[3]\(3 downto 0),
      in_top_bus_I(0) => in_top_bus_I(2),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_rnw_i_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair6";
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  bus2ip_rnw_i_reg_0 <= \^bus2ip_rnw_i_reg_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^ip2bus_rdack_i_d1_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => \^bus2ip_rnw_i_reg_0\,
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(4 downto 0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \Not_Dual.gpio_Data_Out_reg[0]\(2) => bus2ip_addr(0),
      \Not_Dual.gpio_Data_Out_reg[0]\(1) => bus2ip_addr(5),
      \Not_Dual.gpio_Data_Out_reg[0]\(0) => \^q\(0),
      Q => start2,
      S_AXI_arready => is_read_reg_n_0,
      S_AXI_arready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      S_AXI_awready => is_write_reg_n_0,
      bus2ip_rnw_i_reg(0) => bus2ip_rnw_i_reg_1(0),
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => \^ip2bus_rdack_i_d1_reg\,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^ip2bus_wrack_i_d1_reg\,
      reg1(3 downto 0) => reg1(3 downto 0),
      reg2(3 downto 0) => reg2(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => p_1_in(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => p_1_in(3)
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => p_1_in(8)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(3),
      Q => bus2ip_addr(5),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(8),
      Q => bus2ip_addr(0),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => \^bus2ip_rnw_i_reg_0\,
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_rdack_i_d1_reg\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCAFFCA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^ip2bus_wrack_i_d1_reg\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state1__2\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^ip2bus_rdack_i_d1_reg\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_PmodENC_0_0 is
  port (
    \counter_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    in_top_bus_I : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_PmodENC_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_PmodENC_0_0 is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodENC
     port map (
      \counter_reg[3]\(3 downto 0) => \counter_reg[3]\(3 downto 0),
      in_top_bus_I(2 downto 0) => in_top_bus_I(2 downto 0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    bus2ip_rnw : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(4 downto 0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(0) => Q(0),
      SR(0) => bus2ip_reset,
      bus2ip_rnw_i_reg_0 => bus2ip_rnw,
      bus2ip_rnw_i_reg_1(0) => bus2ip_rnw_i_reg(0),
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => ip2bus_rdack_i_D1_reg,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => ip2bus_wrack_i_D1_reg,
      reg1(3 downto 0) => reg1(3 downto 0),
      reg2(3 downto 0) => reg2(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(4 downto 0) => s_axi_rdata(4 downto 0),
      \s_axi_rdata_i_reg[31]_0\(4 downto 0) => \s_axi_rdata_i_reg[31]\(4 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT : string;
  attribute C_DOUT_DEFAULT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "32'b00000000000000000000000000000000";
  attribute C_DOUT_DEFAULT_2 : string;
  attribute C_DOUT_DEFAULT_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "32'b00000000000000000000000000000000";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 4;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : string;
  attribute C_TRI_DEFAULT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "32'b11111111111111111111111111111111";
  attribute C_TRI_DEFAULT_2 : string;
  attribute C_TRI_DEFAULT_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "32'b11111111111111111111111111111111";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "yes";
  attribute ip_group : string;
  attribute ip_group of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio : entity is "LOGICORE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_10 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal DBus_Reg : STD_LOGIC_VECTOR ( 0 to 3 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 6 to 6 );
  signal bus2ip_cs : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 28 to 31 );
  signal reg2 : STD_LOGIC_VECTOR ( 28 to 31 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute sigis : string;
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  gpio2_io_o(31) <= \<const0>\;
  gpio2_io_o(30) <= \<const0>\;
  gpio2_io_o(29) <= \<const0>\;
  gpio2_io_o(28) <= \<const0>\;
  gpio2_io_o(27) <= \<const0>\;
  gpio2_io_o(26) <= \<const0>\;
  gpio2_io_o(25) <= \<const0>\;
  gpio2_io_o(24) <= \<const0>\;
  gpio2_io_o(23) <= \<const0>\;
  gpio2_io_o(22) <= \<const0>\;
  gpio2_io_o(21) <= \<const0>\;
  gpio2_io_o(20) <= \<const0>\;
  gpio2_io_o(19) <= \<const0>\;
  gpio2_io_o(18) <= \<const0>\;
  gpio2_io_o(17) <= \<const0>\;
  gpio2_io_o(16) <= \<const0>\;
  gpio2_io_o(15) <= \<const0>\;
  gpio2_io_o(14) <= \<const0>\;
  gpio2_io_o(13) <= \<const0>\;
  gpio2_io_o(12) <= \<const0>\;
  gpio2_io_o(11) <= \<const0>\;
  gpio2_io_o(10) <= \<const0>\;
  gpio2_io_o(9) <= \<const0>\;
  gpio2_io_o(8) <= \<const0>\;
  gpio2_io_o(7) <= \<const0>\;
  gpio2_io_o(6) <= \<const0>\;
  gpio2_io_o(5) <= \<const0>\;
  gpio2_io_o(4) <= \<const0>\;
  gpio2_io_o(3) <= \<const0>\;
  gpio2_io_o(2) <= \<const0>\;
  gpio2_io_o(1) <= \<const0>\;
  gpio2_io_o(0) <= \<const0>\;
  gpio2_io_t(31) <= \<const0>\;
  gpio2_io_t(30) <= \<const0>\;
  gpio2_io_t(29) <= \<const0>\;
  gpio2_io_t(28) <= \<const0>\;
  gpio2_io_t(27) <= \<const0>\;
  gpio2_io_t(26) <= \<const0>\;
  gpio2_io_t(25) <= \<const0>\;
  gpio2_io_t(24) <= \<const0>\;
  gpio2_io_t(23) <= \<const0>\;
  gpio2_io_t(22) <= \<const0>\;
  gpio2_io_t(21) <= \<const0>\;
  gpio2_io_t(20) <= \<const0>\;
  gpio2_io_t(19) <= \<const0>\;
  gpio2_io_t(18) <= \<const0>\;
  gpio2_io_t(17) <= \<const0>\;
  gpio2_io_t(16) <= \<const0>\;
  gpio2_io_t(15) <= \<const0>\;
  gpio2_io_t(14) <= \<const0>\;
  gpio2_io_t(13) <= \<const0>\;
  gpio2_io_t(12) <= \<const0>\;
  gpio2_io_t(11) <= \<const0>\;
  gpio2_io_t(10) <= \<const0>\;
  gpio2_io_t(9) <= \<const0>\;
  gpio2_io_t(8) <= \<const0>\;
  gpio2_io_t(7) <= \<const0>\;
  gpio2_io_t(6) <= \<const0>\;
  gpio2_io_t(5) <= \<const0>\;
  gpio2_io_t(4) <= \<const0>\;
  gpio2_io_t(3) <= \<const0>\;
  gpio2_io_t(2) <= \<const0>\;
  gpio2_io_t(1) <= \<const0>\;
  gpio2_io_t(0) <= \<const0>\;
  gpio_io_o(3) <= \<const0>\;
  gpio_io_o(2) <= \<const0>\;
  gpio_io_o(1) <= \<const0>\;
  gpio_io_o(0) <= \<const0>\;
  gpio_io_t(3) <= \<const0>\;
  gpio_io_t(2) <= \<const0>\;
  gpio_io_t(1) <= \<const0>\;
  gpio_io_t(0) <= \<const0>\;
  ip2intc_irpt <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(30);
  s_axi_rdata(30) <= \^s_axi_rdata\(30);
  s_axi_rdata(29) <= \^s_axi_rdata\(30);
  s_axi_rdata(28) <= \^s_axi_rdata\(30);
  s_axi_rdata(27) <= \^s_axi_rdata\(30);
  s_axi_rdata(26) <= \^s_axi_rdata\(30);
  s_axi_rdata(25) <= \^s_axi_rdata\(30);
  s_axi_rdata(24) <= \^s_axi_rdata\(30);
  s_axi_rdata(23) <= \^s_axi_rdata\(30);
  s_axi_rdata(22) <= \^s_axi_rdata\(30);
  s_axi_rdata(21) <= \^s_axi_rdata\(30);
  s_axi_rdata(20) <= \^s_axi_rdata\(30);
  s_axi_rdata(19) <= \^s_axi_rdata\(30);
  s_axi_rdata(18) <= \^s_axi_rdata\(30);
  s_axi_rdata(17) <= \^s_axi_rdata\(30);
  s_axi_rdata(16) <= \^s_axi_rdata\(30);
  s_axi_rdata(15) <= \^s_axi_rdata\(30);
  s_axi_rdata(14) <= \^s_axi_rdata\(30);
  s_axi_rdata(13) <= \^s_axi_rdata\(30);
  s_axi_rdata(12) <= \^s_axi_rdata\(30);
  s_axi_rdata(11) <= \^s_axi_rdata\(30);
  s_axi_rdata(10) <= \^s_axi_rdata\(30);
  s_axi_rdata(9) <= \^s_axi_rdata\(30);
  s_axi_rdata(8) <= \^s_axi_rdata\(30);
  s_axi_rdata(7) <= \^s_axi_rdata\(30);
  s_axi_rdata(6) <= \^s_axi_rdata\(30);
  s_axi_rdata(5) <= \^s_axi_rdata\(30);
  s_axi_rdata(4) <= \^s_axi_rdata\(30);
  s_axi_rdata(3 downto 0) <= \^s_axi_rdata\(3 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      D(3) => DBus_Reg(0),
      D(2) => DBus_Reg(1),
      D(1) => DBus_Reg(2),
      D(0) => DBus_Reg(3),
      E(0) => AXI_LITE_IPIF_I_n_11,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(4) => ip2bus_data(0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(3) => ip2bus_data(28),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(2) => ip2bus_data(29),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(1) => ip2bus_data(30),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(0) => ip2bus_data(31),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_10,
      Q(0) => bus2ip_addr(6),
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_rnw_i_reg(0) => AXI_LITE_IPIF_I_n_12,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => s_axi_arready,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^s_axi_awready\,
      reg1(3) => reg1(28),
      reg1(2) => reg1(29),
      reg1(1) => reg1(30),
      reg1(0) => reg1(31),
      reg2(3) => reg2(28),
      reg2(2) => reg2(29),
      reg2(1) => reg2(30),
      reg2(0) => reg2(31),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2) => s_axi_araddr(8),
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2) => s_axi_awaddr(8),
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(4) => \^s_axi_rdata\(30),
      s_axi_rdata(3 downto 0) => \^s_axi_rdata\(3 downto 0),
      \s_axi_rdata_i_reg[31]\(4) => ip2bus_data_i_D1(0),
      \s_axi_rdata_i_reg[31]\(3) => ip2bus_data_i_D1(28),
      \s_axi_rdata_i_reg[31]\(2) => ip2bus_data_i_D1(29),
      \s_axi_rdata_i_reg[31]\(1) => ip2bus_data_i_D1(30),
      \s_axi_rdata_i_reg[31]\(0) => ip2bus_data_i_D1(31),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(7 downto 4) => s_axi_wdata(31 downto 28),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
gpio_core_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core
     port map (
      D(3) => DBus_Reg(0),
      D(2) => DBus_Reg(1),
      D(1) => DBus_Reg(2),
      D(0) => DBus_Reg(3),
      E(0) => AXI_LITE_IPIF_I_n_11,
      \Not_Dual.ALLOUT0_ND.READ_REG_GEN[3].reg2_reg[31]_0\ => AXI_LITE_IPIF_I_n_10,
      \Not_Dual.gpio_OE_reg[0]_0\(0) => AXI_LITE_IPIF_I_n_12,
      Q(0) => bus2ip_addr(6),
      SS(0) => bus2ip_reset,
      bus2ip_cs => bus2ip_cs,
      bus2ip_rnw => bus2ip_rnw,
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_wrack_i => ip2bus_wrack_i,
      reg1(3) => reg1(28),
      reg1(2) => reg1(29),
      reg1(1) => reg1(30),
      reg1(0) => reg1(31),
      reg2(3) => reg2(28),
      reg2(2) => reg2(29),
      reg2(1) => reg2(30),
      reg2(0) => reg2(31),
      s_axi_aclk => s_axi_aclk
    );
\ip2bus_data_i_D1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(0),
      Q => ip2bus_data_i_D1(0),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(28),
      Q => ip2bus_data_i_D1(28),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(29),
      Q => ip2bus_data_i_D1(29),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_i,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0 : entity is "PetaENC_axi_gpio_0_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0 : entity is "axi_gpio,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gpio2_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 0;
  attribute C_DOUT_DEFAULT : string;
  attribute C_DOUT_DEFAULT of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_DOUT_DEFAULT_2 : string;
  attribute C_DOUT_DEFAULT_2 of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 4;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : string;
  attribute C_TRI_DEFAULT of U0 : label is "32'b11111111111111111111111111111111";
  attribute C_TRI_DEFAULT_2 : string;
  attribute C_TRI_DEFAULT_2 of U0 : label is "32'b11111111111111111111111111111111";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN PetaENC_s_axi_aclk, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of gpio_io_i : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute x_interface_parameter of gpio_io_i : signal is "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE";
  attribute x_interface_info of gpio_io_o : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
  attribute x_interface_info of gpio_io_t : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_T";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN PetaENC_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  gpio_io_o(3) <= \<const0>\;
  gpio_io_o(2) <= \<const0>\;
  gpio_io_o(1) <= \<const0>\;
  gpio_io_o(0) <= \<const0>\;
  gpio_io_t(3) <= \<const0>\;
  gpio_io_t(2) <= \<const0>\;
  gpio_io_t(1) <= \<const0>\;
  gpio_io_t(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio
     port map (
      gpio2_io_i(31 downto 0) => B"00000000000000000000000000000000",
      gpio2_io_o(31 downto 0) => NLW_U0_gpio2_io_o_UNCONNECTED(31 downto 0),
      gpio2_io_t(31 downto 0) => NLW_U0_gpio2_io_t_UNCONNECTED(31 downto 0),
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      gpio_io_o(3 downto 0) => NLW_U0_gpio_io_o_UNCONNECTED(3 downto 0),
      gpio_io_t(3 downto 0) => NLW_U0_gpio_io_t_UNCONNECTED(3 downto 0),
      ip2intc_irpt => NLW_U0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8) => s_axi_araddr(8),
      s_axi_araddr(7 downto 4) => B"0000",
      s_axi_araddr(3 downto 2) => s_axi_araddr(3 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8) => s_axi_awaddr(8),
      s_axi_awaddr(7 downto 4) => B"0000",
      s_axi_awaddr(3 downto 2) => s_axi_awaddr(3 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 28) => s_axi_wdata(31 downto 28),
      s_axi_wdata(27 downto 4) => B"000000000000000000000000",
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC is
  port (
    Pmod_ENC_pin10_i : in STD_LOGIC;
    Pmod_ENC_pin10_o : out STD_LOGIC;
    Pmod_ENC_pin10_t : out STD_LOGIC;
    Pmod_ENC_pin1_i : in STD_LOGIC;
    Pmod_ENC_pin1_o : out STD_LOGIC;
    Pmod_ENC_pin1_t : out STD_LOGIC;
    Pmod_ENC_pin2_i : in STD_LOGIC;
    Pmod_ENC_pin2_o : out STD_LOGIC;
    Pmod_ENC_pin2_t : out STD_LOGIC;
    Pmod_ENC_pin3_i : in STD_LOGIC;
    Pmod_ENC_pin3_o : out STD_LOGIC;
    Pmod_ENC_pin3_t : out STD_LOGIC;
    Pmod_ENC_pin4_i : in STD_LOGIC;
    Pmod_ENC_pin4_o : out STD_LOGIC;
    Pmod_ENC_pin4_t : out STD_LOGIC;
    Pmod_ENC_pin7_i : in STD_LOGIC;
    Pmod_ENC_pin7_o : out STD_LOGIC;
    Pmod_ENC_pin7_t : out STD_LOGIC;
    Pmod_ENC_pin8_i : in STD_LOGIC;
    Pmod_ENC_pin8_o : out STD_LOGIC;
    Pmod_ENC_pin8_t : out STD_LOGIC;
    Pmod_ENC_pin9_i : in STD_LOGIC;
    Pmod_ENC_pin9_o : out STD_LOGIC;
    Pmod_ENC_pin9_t : out STD_LOGIC;
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
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC : entity is "PetaENC.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC is
  signal \<const0>\ : STD_LOGIC;
  signal gpio_io_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pmod_bridge_0_in_top_bus_I : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_gpio_0_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_gpio_0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pmod_bridge_0_out0_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out0_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out1_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out2_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out3_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out3_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out4_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out4_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out5_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out5_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out6_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out6_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out7_O_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_out7_T_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_in_top_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute x_core_info : string;
  attribute x_core_info of PmodENC_0 : label is "PmodENC,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_gpio_0 : label is "PetaENC_axi_gpio_0_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_gpio_0 : label is "yes";
  attribute x_core_info of axi_gpio_0 : label is "axi_gpio,Vivado 2023.1";
  attribute CHECK_LICENSE_TYPE of pmod_bridge_0 : label is "PetaENC_pmod_bridge_0_0,pmod_concat,{}";
  attribute downgradeipidentifiedwarnings of pmod_bridge_0 : label is "yes";
  attribute x_core_info of pmod_bridge_0 : label is "pmod_concat,Vivado 2023.1";
  attribute x_interface_info : string;
  attribute x_interface_info of Pmod_ENC_pin10_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_I";
  attribute x_interface_info of Pmod_ENC_pin10_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_O";
  attribute x_interface_info of Pmod_ENC_pin10_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_T";
  attribute x_interface_info of Pmod_ENC_pin1_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_I";
  attribute x_interface_info of Pmod_ENC_pin1_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_O";
  attribute x_interface_info of Pmod_ENC_pin1_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_T";
  attribute x_interface_info of Pmod_ENC_pin2_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_I";
  attribute x_interface_info of Pmod_ENC_pin2_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_O";
  attribute x_interface_info of Pmod_ENC_pin2_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_T";
  attribute x_interface_info of Pmod_ENC_pin3_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_I";
  attribute x_interface_info of Pmod_ENC_pin3_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_O";
  attribute x_interface_info of Pmod_ENC_pin3_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_T";
  attribute x_interface_info of Pmod_ENC_pin4_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_I";
  attribute x_interface_info of Pmod_ENC_pin4_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_O";
  attribute x_interface_info of Pmod_ENC_pin4_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_T";
  attribute x_interface_info of Pmod_ENC_pin7_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_I";
  attribute x_interface_info of Pmod_ENC_pin7_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_O";
  attribute x_interface_info of Pmod_ENC_pin7_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_T";
  attribute x_interface_info of Pmod_ENC_pin8_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_I";
  attribute x_interface_info of Pmod_ENC_pin8_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_O";
  attribute x_interface_info of Pmod_ENC_pin8_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_T";
  attribute x_interface_info of Pmod_ENC_pin9_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_I";
  attribute x_interface_info of Pmod_ENC_pin9_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_O";
  attribute x_interface_info of Pmod_ENC_pin9_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_T";
  attribute x_interface_info of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN PetaENC_s_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_parameter of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PetaENC_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute x_interface_info of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  Pmod_ENC_pin10_o <= \<const0>\;
  Pmod_ENC_pin10_t <= \<const0>\;
  Pmod_ENC_pin1_o <= \<const0>\;
  Pmod_ENC_pin1_t <= \<const0>\;
  Pmod_ENC_pin2_o <= \<const0>\;
  Pmod_ENC_pin2_t <= \<const0>\;
  Pmod_ENC_pin3_o <= \<const0>\;
  Pmod_ENC_pin3_t <= \<const0>\;
  Pmod_ENC_pin4_o <= \<const0>\;
  Pmod_ENC_pin4_t <= \<const0>\;
  Pmod_ENC_pin7_o <= \<const0>\;
  Pmod_ENC_pin7_t <= \<const0>\;
  Pmod_ENC_pin8_o <= \<const0>\;
  Pmod_ENC_pin8_t <= \<const0>\;
  Pmod_ENC_pin9_o <= \<const0>\;
  Pmod_ENC_pin9_t <= \<const0>\;
  S_AXI_bresp(1) <= \<const0>\;
  S_AXI_bresp(0) <= \<const0>\;
  S_AXI_rresp(1) <= \<const0>\;
  S_AXI_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
PmodENC_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_PmodENC_0_0
     port map (
      \counter_reg[3]\(3 downto 0) => gpio_io_i(3 downto 0),
      in_top_bus_I(2 downto 0) => pmod_bridge_0_in_top_bus_I(2 downto 0),
      s_axi_aclk => s_axi_aclk
    );
axi_gpio_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_axi_gpio_0_0
     port map (
      gpio_io_i(3 downto 0) => gpio_io_i(3 downto 0),
      gpio_io_o(3 downto 0) => NLW_axi_gpio_0_gpio_io_o_UNCONNECTED(3 downto 0),
      gpio_io_t(3 downto 0) => NLW_axi_gpio_0_gpio_io_t_UNCONNECTED(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8) => S_AXI_araddr(8),
      s_axi_araddr(7 downto 4) => B"0000",
      s_axi_araddr(3 downto 2) => S_AXI_araddr(3 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => S_AXI_arready,
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(8) => S_AXI_awaddr(8),
      s_axi_awaddr(7 downto 4) => B"0000",
      s_axi_awaddr(3 downto 2) => S_AXI_awaddr(3 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => S_AXI_awready,
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => NLW_axi_gpio_0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => NLW_axi_gpio_0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(31 downto 28) => S_AXI_wdata(31 downto 28),
      s_axi_wdata(27 downto 4) => B"000000000000000000000000",
      s_axi_wdata(3 downto 0) => S_AXI_wdata(3 downto 0),
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => S_AXI_wvalid
    );
pmod_bridge_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC_pmod_bridge_0_0
     port map (
      in_top_bus_I(3) => NLW_pmod_bridge_0_in_top_bus_I_UNCONNECTED(3),
      in_top_bus_I(2 downto 0) => pmod_bridge_0_in_top_bus_I(2 downto 0),
      in_top_bus_O(3 downto 0) => B"0000",
      in_top_bus_T(3 downto 0) => B"0000",
      out0_I => Pmod_ENC_pin1_i,
      out0_O => NLW_pmod_bridge_0_out0_O_UNCONNECTED,
      out0_T => NLW_pmod_bridge_0_out0_T_UNCONNECTED,
      out1_I => Pmod_ENC_pin2_i,
      out1_O => NLW_pmod_bridge_0_out1_O_UNCONNECTED,
      out1_T => NLW_pmod_bridge_0_out1_T_UNCONNECTED,
      out2_I => Pmod_ENC_pin3_i,
      out2_O => NLW_pmod_bridge_0_out2_O_UNCONNECTED,
      out2_T => NLW_pmod_bridge_0_out2_T_UNCONNECTED,
      out3_I => '0',
      out3_O => NLW_pmod_bridge_0_out3_O_UNCONNECTED,
      out3_T => NLW_pmod_bridge_0_out3_T_UNCONNECTED,
      out4_I => '0',
      out4_O => NLW_pmod_bridge_0_out4_O_UNCONNECTED,
      out4_T => NLW_pmod_bridge_0_out4_T_UNCONNECTED,
      out5_I => '0',
      out5_O => NLW_pmod_bridge_0_out5_O_UNCONNECTED,
      out5_T => NLW_pmod_bridge_0_out5_T_UNCONNECTED,
      out6_I => '0',
      out6_O => NLW_pmod_bridge_0_out6_O_UNCONNECTED,
      out6_T => NLW_pmod_bridge_0_out6_T_UNCONNECTED,
      out7_I => '0',
      out7_O => NLW_pmod_bridge_0_out7_O_UNCONNECTED,
      out7_T => NLW_pmod_bridge_0_out7_T_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Pmod_ENC_pin10_i : in STD_LOGIC;
    Pmod_ENC_pin10_o : out STD_LOGIC;
    Pmod_ENC_pin10_t : out STD_LOGIC;
    Pmod_ENC_pin1_i : in STD_LOGIC;
    Pmod_ENC_pin1_o : out STD_LOGIC;
    Pmod_ENC_pin1_t : out STD_LOGIC;
    Pmod_ENC_pin2_i : in STD_LOGIC;
    Pmod_ENC_pin2_o : out STD_LOGIC;
    Pmod_ENC_pin2_t : out STD_LOGIC;
    Pmod_ENC_pin3_i : in STD_LOGIC;
    Pmod_ENC_pin3_o : out STD_LOGIC;
    Pmod_ENC_pin3_t : out STD_LOGIC;
    Pmod_ENC_pin4_i : in STD_LOGIC;
    Pmod_ENC_pin4_o : out STD_LOGIC;
    Pmod_ENC_pin4_t : out STD_LOGIC;
    Pmod_ENC_pin7_i : in STD_LOGIC;
    Pmod_ENC_pin7_o : out STD_LOGIC;
    Pmod_ENC_pin7_t : out STD_LOGIC;
    Pmod_ENC_pin8_i : in STD_LOGIC;
    Pmod_ENC_pin8_o : out STD_LOGIC;
    Pmod_ENC_pin8_t : out STD_LOGIC;
    Pmod_ENC_pin9_i : in STD_LOGIC;
    Pmod_ENC_pin9_o : out STD_LOGIC;
    Pmod_ENC_pin9_t : out STD_LOGIC;
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
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_PetaENC_0_0,PetaENC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IPI";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PetaENC,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin10_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin10_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin2_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin2_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin3_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin3_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin4_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin4_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin7_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin7_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin8_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin8_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin9_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_Pmod_ENC_pin9_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S_AXI_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "PetaENC.hwdef";
  attribute x_interface_info : string;
  attribute x_interface_info of Pmod_ENC_pin10_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_I";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Pmod_ENC_pin10_i : signal is "XIL_INTERFACENAME Pmod_ENC, BUSIF.BOARD_INTERFACE Custom";
  attribute x_interface_info of Pmod_ENC_pin10_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_O";
  attribute x_interface_info of Pmod_ENC_pin10_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN10_T";
  attribute x_interface_info of Pmod_ENC_pin1_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_I";
  attribute x_interface_info of Pmod_ENC_pin1_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_O";
  attribute x_interface_info of Pmod_ENC_pin1_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN1_T";
  attribute x_interface_info of Pmod_ENC_pin2_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_I";
  attribute x_interface_info of Pmod_ENC_pin2_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_O";
  attribute x_interface_info of Pmod_ENC_pin2_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN2_T";
  attribute x_interface_info of Pmod_ENC_pin3_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_I";
  attribute x_interface_info of Pmod_ENC_pin3_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_O";
  attribute x_interface_info of Pmod_ENC_pin3_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN3_T";
  attribute x_interface_info of Pmod_ENC_pin4_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_I";
  attribute x_interface_info of Pmod_ENC_pin4_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_O";
  attribute x_interface_info of Pmod_ENC_pin4_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN4_T";
  attribute x_interface_info of Pmod_ENC_pin7_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_I";
  attribute x_interface_info of Pmod_ENC_pin7_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_O";
  attribute x_interface_info of Pmod_ENC_pin7_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN7_T";
  attribute x_interface_info of Pmod_ENC_pin8_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_I";
  attribute x_interface_info of Pmod_ENC_pin8_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_O";
  attribute x_interface_info of Pmod_ENC_pin8_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN8_T";
  attribute x_interface_info of Pmod_ENC_pin9_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_I";
  attribute x_interface_info of Pmod_ENC_pin9_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_O";
  attribute x_interface_info of Pmod_ENC_pin9_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_ENC PIN9_T";
  attribute x_interface_info of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_parameter of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  Pmod_ENC_pin10_o <= \<const1>\;
  Pmod_ENC_pin10_t <= \<const1>\;
  Pmod_ENC_pin1_o <= \<const0>\;
  Pmod_ENC_pin1_t <= \<const0>\;
  Pmod_ENC_pin2_o <= \<const0>\;
  Pmod_ENC_pin2_t <= \<const0>\;
  Pmod_ENC_pin3_o <= \<const0>\;
  Pmod_ENC_pin3_t <= \<const0>\;
  Pmod_ENC_pin4_o <= \<const0>\;
  Pmod_ENC_pin4_t <= \<const0>\;
  Pmod_ENC_pin7_o <= \<const1>\;
  Pmod_ENC_pin7_t <= \<const1>\;
  Pmod_ENC_pin8_o <= \<const1>\;
  Pmod_ENC_pin8_t <= \<const1>\;
  Pmod_ENC_pin9_o <= \<const1>\;
  Pmod_ENC_pin9_t <= \<const1>\;
  S_AXI_bresp(1) <= \<const0>\;
  S_AXI_bresp(0) <= \<const0>\;
  S_AXI_rresp(1) <= \<const0>\;
  S_AXI_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PetaENC
     port map (
      Pmod_ENC_pin10_i => '0',
      Pmod_ENC_pin10_o => NLW_U0_Pmod_ENC_pin10_o_UNCONNECTED,
      Pmod_ENC_pin10_t => NLW_U0_Pmod_ENC_pin10_t_UNCONNECTED,
      Pmod_ENC_pin1_i => Pmod_ENC_pin1_i,
      Pmod_ENC_pin1_o => NLW_U0_Pmod_ENC_pin1_o_UNCONNECTED,
      Pmod_ENC_pin1_t => NLW_U0_Pmod_ENC_pin1_t_UNCONNECTED,
      Pmod_ENC_pin2_i => Pmod_ENC_pin2_i,
      Pmod_ENC_pin2_o => NLW_U0_Pmod_ENC_pin2_o_UNCONNECTED,
      Pmod_ENC_pin2_t => NLW_U0_Pmod_ENC_pin2_t_UNCONNECTED,
      Pmod_ENC_pin3_i => Pmod_ENC_pin3_i,
      Pmod_ENC_pin3_o => NLW_U0_Pmod_ENC_pin3_o_UNCONNECTED,
      Pmod_ENC_pin3_t => NLW_U0_Pmod_ENC_pin3_t_UNCONNECTED,
      Pmod_ENC_pin4_i => '0',
      Pmod_ENC_pin4_o => NLW_U0_Pmod_ENC_pin4_o_UNCONNECTED,
      Pmod_ENC_pin4_t => NLW_U0_Pmod_ENC_pin4_t_UNCONNECTED,
      Pmod_ENC_pin7_i => '0',
      Pmod_ENC_pin7_o => NLW_U0_Pmod_ENC_pin7_o_UNCONNECTED,
      Pmod_ENC_pin7_t => NLW_U0_Pmod_ENC_pin7_t_UNCONNECTED,
      Pmod_ENC_pin8_i => '0',
      Pmod_ENC_pin8_o => NLW_U0_Pmod_ENC_pin8_o_UNCONNECTED,
      Pmod_ENC_pin8_t => NLW_U0_Pmod_ENC_pin8_t_UNCONNECTED,
      Pmod_ENC_pin9_i => '0',
      Pmod_ENC_pin9_o => NLW_U0_Pmod_ENC_pin9_o_UNCONNECTED,
      Pmod_ENC_pin9_t => NLW_U0_Pmod_ENC_pin9_t_UNCONNECTED,
      S_AXI_araddr(8) => S_AXI_araddr(8),
      S_AXI_araddr(7 downto 4) => B"0000",
      S_AXI_araddr(3 downto 2) => S_AXI_araddr(3 downto 2),
      S_AXI_araddr(1 downto 0) => B"00",
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(8) => S_AXI_awaddr(8),
      S_AXI_awaddr(7 downto 4) => B"0000",
      S_AXI_awaddr(3 downto 2) => S_AXI_awaddr(3 downto 2),
      S_AXI_awaddr(1 downto 0) => B"00",
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => NLW_U0_S_AXI_bresp_UNCONNECTED(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp(1 downto 0) => NLW_U0_S_AXI_rresp_UNCONNECTED(1 downto 0),
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 28) => S_AXI_wdata(31 downto 28),
      S_AXI_wdata(27 downto 4) => B"000000000000000000000000",
      S_AXI_wdata(3 downto 0) => S_AXI_wdata(3 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(3 downto 0) => B"0000",
      S_AXI_wvalid => S_AXI_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
