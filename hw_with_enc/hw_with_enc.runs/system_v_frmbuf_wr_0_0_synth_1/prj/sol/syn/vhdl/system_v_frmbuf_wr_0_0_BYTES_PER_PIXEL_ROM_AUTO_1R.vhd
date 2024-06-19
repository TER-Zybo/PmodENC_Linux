-- ==============================================================
-- Generated by Vitis HLS v2023.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity system_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 3; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 44
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of system_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "000", 1 => "000", 2 => "000", 3 => "000", 
    4 => "000", 5 => "000", 6 => "000", 7 => "000", 
    8 => "000", 9 => "000", 10 => "100", 11 => "100", 
    12 => "010", 13 => "100", 14 => "100", 15 => "100", 
    16 => "100", 17 => "010", 18 => "001", 19 => "001", 
    20 => "011", 21 => "011", 22 => "100", 23 => "100", 
    24 => "001", 25 => "100", 26 => "100", 27 => "100", 
    28 => "010", 29 => "011", 30 => "101", 31 => "101", 
    32 => "011", 33 => "011", 34 => "011", 35 => "110", 
    36 => "110", 37 => "010", 38 => "010", 39 => "010", 
    40 => "000", 41 => "001", 42 => "001", 43 => "100");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

