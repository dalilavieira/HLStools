-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity hamming_window_window_coeff_rom is 
    generic(
             DWIDTH     : integer := 14; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of hamming_window_window_coeff_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010100011110", 1 => "00010100100001", 2 => "00010100100111", 
    3 => "00010100110011", 4 => "00010101000011", 5 => "00010101010111", 
    6 => "00010101110000", 7 => "00010110001110", 8 => "00010110110000", 
    9 => "00010111010111", 10 => "00011000000010", 11 => "00011000110001", 
    12 => "00011001100101", 13 => "00011010011110", 14 => "00011011011010", 
    15 => "00011100011011", 16 => "00011101100000", 17 => "00011110101010", 
    18 => "00011111110111", 19 => "00100001001001", 20 => "00100010011111", 
    21 => "00100011111001", 22 => "00100101010111", 23 => "00100110111000", 
    24 => "00101000011110", 25 => "00101010000111", 26 => "00101011110101", 
    27 => "00101101100101", 28 => "00101111011010", 29 => "00110001010010", 
    30 => "00110011001101", 31 => "00110101001100", 32 => "00110111001110", 
    33 => "00111001010011", 34 => "00111011011100", 35 => "00111101100111", 
    36 => "00111111110110", 37 => "01000010000111", 38 => "01000100011011", 
    39 => "01000110110010", 40 => "01001001001100", 41 => "01001011101000", 
    42 => "01001110000110", 43 => "01010000100111", 44 => "01010011001010", 
    45 => "01010101101111", 46 => "01011000010111", 47 => "01011011000000", 
    48 => "01011101101011", 49 => "01100000011000", 50 => "01100011000110", 
    51 => "01100101110110", 52 => "01101000100111", 53 => "01101011011010", 
    54 => "01101110001110", 55 => "01110001000011", 56 => "01110011111000", 
    57 => "01110110101111", 58 => "01111001100111", 59 => "01111100011111", 
    60 => "01111111010111", 61 => "10000010010001", 62 => "10000101001010", 
    63 => "10001000000100", 64 => "10001010111101", 65 => "10001101110111", 
    66 => "10010000110000", 67 => "10010011101010", 68 => "10010110100011", 
    69 => "10011001011011", 70 => "10011100010011", 71 => "10011111001010", 
    72 => "10100010000000", 73 => "10100100110110", 74 => "10100111101010", 
    75 => "10101010011101", 76 => "10101101001111", 77 => "10110000000000", 
    78 => "10110010101111", 79 => "10110101011101", 80 => "10111000001001", 
    81 => "10111010110011", 82 => "10111101011011", 83 => "11000000000001", 
    84 => "11000010100101", 85 => "11000101000111", 86 => "11000111100111", 
    87 => "11001010000100", 88 => "11001100011111", 89 => "11001110110111", 
    90 => "11010001001101", 91 => "11010011100000", 92 => "11010101101111", 
    93 => "11010111111100", 94 => "11011010000110", 95 => "11011100001101", 
    96 => "11011110010001", 97 => "11100000010010", 98 => "11100010001111", 
    99 => "11100100001000", 100 => "11100101111111", 101 => "11100111110001", 
    102 => "11101001100000", 103 => "11101011001011", 104 => "11101100110011", 
    105 => "11101110010111", 106 => "11101111110110", 107 => "11110001010010", 
    108 => "11110010101010", 109 => "11110011111110", 110 => "11110101001110", 
    111 => "11110110011001", 112 => "11110111100000", 113 => "11111000100100", 
    114 => "11111001100010", 115 => "11111010011101", 116 => "11111011010011", 
    117 => "11111100000101", 118 => "11111100110010", 119 => "11111101011011", 
    120 => "11111101111111", 121 => "11111110011111", 122 => "11111110111010", 
    123 => "11111111010001", 124 => "11111111100011", 125 => "11111111110001", 
    126 => "11111111111010", 127 to 128=> "11111111111111", 129 => "11111111111010", 
    130 => "11111111110001", 131 => "11111111100011", 132 => "11111111010001", 
    133 => "11111110111010", 134 => "11111110011111", 135 => "11111101111111", 
    136 => "11111101011011", 137 => "11111100110010", 138 => "11111100000101", 
    139 => "11111011010011", 140 => "11111010011101", 141 => "11111001100010", 
    142 => "11111000100100", 143 => "11110111100000", 144 => "11110110011001", 
    145 => "11110101001110", 146 => "11110011111110", 147 => "11110010101010", 
    148 => "11110001010010", 149 => "11101111110110", 150 => "11101110010111", 
    151 => "11101100110011", 152 => "11101011001011", 153 => "11101001100000", 
    154 => "11100111110001", 155 => "11100101111111", 156 => "11100100001000", 
    157 => "11100010001111", 158 => "11100000010010", 159 => "11011110010001", 
    160 => "11011100001101", 161 => "11011010000110", 162 => "11010111111100", 
    163 => "11010101101111", 164 => "11010011100000", 165 => "11010001001101", 
    166 => "11001110110111", 167 => "11001100011111", 168 => "11001010000100", 
    169 => "11000111100111", 170 => "11000101000111", 171 => "11000010100101", 
    172 => "11000000000001", 173 => "10111101011011", 174 => "10111010110011", 
    175 => "10111000001001", 176 => "10110101011101", 177 => "10110010101111", 
    178 => "10110000000000", 179 => "10101101001111", 180 => "10101010011101", 
    181 => "10100111101010", 182 => "10100100110110", 183 => "10100010000000", 
    184 => "10011111001010", 185 => "10011100010011", 186 => "10011001011011", 
    187 => "10010110100011", 188 => "10010011101010", 189 => "10010000110000", 
    190 => "10001101110111", 191 => "10001010111101", 192 => "10001000000100", 
    193 => "10000101001010", 194 => "10000010010001", 195 => "01111111010111", 
    196 => "01111100011111", 197 => "01111001100111", 198 => "01110110101111", 
    199 => "01110011111000", 200 => "01110001000011", 201 => "01101110001110", 
    202 => "01101011011010", 203 => "01101000100111", 204 => "01100101110110", 
    205 => "01100011000110", 206 => "01100000011000", 207 => "01011101101011", 
    208 => "01011011000000", 209 => "01011000010111", 210 => "01010101101111", 
    211 => "01010011001010", 212 => "01010000100111", 213 => "01001110000110", 
    214 => "01001011101000", 215 => "01001001001100", 216 => "01000110110010", 
    217 => "01000100011011", 218 => "01000010000111", 219 => "00111111110110", 
    220 => "00111101100111", 221 => "00111011011100", 222 => "00111001010011", 
    223 => "00110111001110", 224 => "00110101001100", 225 => "00110011001101", 
    226 => "00110001010010", 227 => "00101111011010", 228 => "00101101100101", 
    229 => "00101011110101", 230 => "00101010000111", 231 => "00101000011110", 
    232 => "00100110111000", 233 => "00100101010111", 234 => "00100011111001", 
    235 => "00100010011111", 236 => "00100001001001", 237 => "00011111110111", 
    238 => "00011110101010", 239 => "00011101100000", 240 => "00011100011011", 
    241 => "00011011011010", 242 => "00011010011110", 243 => "00011001100101", 
    244 => "00011000110001", 245 => "00011000000010", 246 => "00010111010111", 
    247 => "00010110110000", 248 => "00010110001110", 249 => "00010101110000", 
    250 => "00010101010111", 251 => "00010101000011", 252 => "00010100110011", 
    253 => "00010100100111", 254 => "00010100100001", 255 => "00010100011110" );


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

entity hamming_window_window_coeff is
    generic (
        DataWidth : INTEGER := 14;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of hamming_window_window_coeff is
    component hamming_window_window_coeff_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    hamming_window_window_coeff_rom_U :  component hamming_window_window_coeff_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

