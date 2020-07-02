-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dv_calc_mb_coordinates_remap_1_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dv_calc_mb_coordinates_remap_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 4=> "0000000", 5 => "0000001", 6 => "0000010", 7 => "0000011", 
    8 => "0000000", 9 => "0000001", 10 => "0000010", 11 => "0000011", 
    12 => "0000000", 13 => "0000001", 14 => "0000010", 15 => "0000011", 
    16 => "0000000", 17 => "0000001", 18 => "0000010", 19 => "0000011", 
    20 => "0000000", 21 => "0000001", 22 => "0000010", 23 => "0000011", 
    24 => "0000000", 25 => "0000001", 26 => "0000010", 27 => "0000011", 
    28 => "0000000", 29 => "0000001", 30 => "0000010", 31 => "0000011", 
    32 => "0000000", 33 => "0000001", 34 => "0000010", 35 => "0000011", 
    36 => "1000000", 37 => "1000001", 38 => "1000010", 39 => "1000000", 
    40 => "1000001", 41 => "1000010", 42 => "1000000", 43 => "1000001", 
    44 => "1000010", 45 => "1000000", 46 => "1000001", 47 => "1000010", 
    48 => "1000000", 49 => "1000001", 50 => "1000010", 51 => "1000000", 
    52 => "1000001", 53 => "1000010", 54 => "1000000", 55 => "1000001", 
    56 => "1000010", 57 => "1000000", 58 => "1000001", 59 => "1000010", 
    60 to 63=> "1000011" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity dv_calc_mb_coordinates_remap_1 is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dv_calc_mb_coordinates_remap_1 is
    component dv_calc_mb_coordinates_remap_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dv_calc_mb_coordinates_remap_1_rom_U :  component dv_calc_mb_coordinates_remap_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


