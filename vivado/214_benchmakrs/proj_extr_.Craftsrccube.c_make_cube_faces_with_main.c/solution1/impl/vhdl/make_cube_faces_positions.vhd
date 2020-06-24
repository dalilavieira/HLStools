-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity make_cube_faces_positions_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 72
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of make_cube_faces_positions_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
    0 to 4=> "10111111100000000000000000000000", 
    5 => "00111111100000000000000000000000", 
    6 => "10111111100000000000000000000000", 
    7 => "00111111100000000000000000000000", 
    8 to 9=> "10111111100000000000000000000000", 
    10 to 12=> "00111111100000000000000000000000", 
    13 to 14=> "10111111100000000000000000000000", 
    15 => "00111111100000000000000000000000", 
    16 => "10111111100000000000000000000000", 
    17 to 19=> "00111111100000000000000000000000", 
    20 => "10111111100000000000000000000000", 
    21 to 23=> "00111111100000000000000000000000", 
    24 => "10111111100000000000000000000000", 
    25 => "00111111100000000000000000000000", 
    26 to 27=> "10111111100000000000000000000000", 
    28 to 31=> "00111111100000000000000000000000", 
    32 => "10111111100000000000000000000000", 
    33 to 35=> "00111111100000000000000000000000", 
    36 to 40=> "10111111100000000000000000000000", 
    41 to 42=> "00111111100000000000000000000000", 
    43 to 44=> "10111111100000000000000000000000", 
    45 => "00111111100000000000000000000000", 
    46 => "10111111100000000000000000000000", 
    47 => "00111111100000000000000000000000", 
    48 to 51=> "10111111100000000000000000000000", 
    52 => "00111111100000000000000000000000", 
    53 => "10111111100000000000000000000000", 
    54 => "00111111100000000000000000000000", 
    55 to 56=> "10111111100000000000000000000000", 
    57 to 58=> "00111111100000000000000000000000", 
    59 to 61=> "10111111100000000000000000000000", 
    62 => "00111111100000000000000000000000", 
    63 => "10111111100000000000000000000000", 
    64 to 66=> "00111111100000000000000000000000", 
    67 => "10111111100000000000000000000000", 
    68 to 71=> "00111111100000000000000000000000" );
signal mem1 : mem_array := (
    0 to 4=> "10111111100000000000000000000000", 
    5 => "00111111100000000000000000000000", 
    6 => "10111111100000000000000000000000", 
    7 => "00111111100000000000000000000000", 
    8 to 9=> "10111111100000000000000000000000", 
    10 to 12=> "00111111100000000000000000000000", 
    13 to 14=> "10111111100000000000000000000000", 
    15 => "00111111100000000000000000000000", 
    16 => "10111111100000000000000000000000", 
    17 to 19=> "00111111100000000000000000000000", 
    20 => "10111111100000000000000000000000", 
    21 to 23=> "00111111100000000000000000000000", 
    24 => "10111111100000000000000000000000", 
    25 => "00111111100000000000000000000000", 
    26 to 27=> "10111111100000000000000000000000", 
    28 to 31=> "00111111100000000000000000000000", 
    32 => "10111111100000000000000000000000", 
    33 to 35=> "00111111100000000000000000000000", 
    36 to 40=> "10111111100000000000000000000000", 
    41 to 42=> "00111111100000000000000000000000", 
    43 to 44=> "10111111100000000000000000000000", 
    45 => "00111111100000000000000000000000", 
    46 => "10111111100000000000000000000000", 
    47 => "00111111100000000000000000000000", 
    48 to 51=> "10111111100000000000000000000000", 
    52 => "00111111100000000000000000000000", 
    53 => "10111111100000000000000000000000", 
    54 => "00111111100000000000000000000000", 
    55 to 56=> "10111111100000000000000000000000", 
    57 to 58=> "00111111100000000000000000000000", 
    59 to 61=> "10111111100000000000000000000000", 
    62 => "00111111100000000000000000000000", 
    63 => "10111111100000000000000000000000", 
    64 to 66=> "00111111100000000000000000000000", 
    67 => "10111111100000000000000000000000", 
    68 to 71=> "00111111100000000000000000000000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "block_rom";
attribute syn_rom_style of mem1 : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "block";
attribute ROM_STYLE of mem1 : signal is "block";

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

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity make_cube_faces_positions is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 72;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of make_cube_faces_positions is
    component make_cube_faces_positions_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    make_cube_faces_positions_rom_U :  component make_cube_faces_positions_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2);

end architecture;


