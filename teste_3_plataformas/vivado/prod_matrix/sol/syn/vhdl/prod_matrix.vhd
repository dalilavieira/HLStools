-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity prod_matrix is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    v_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    v_ce0 : OUT STD_LOGIC;
    v_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    v_address1 : OUT STD_LOGIC_VECTOR (13 downto 0);
    v_ce1 : OUT STD_LOGIC;
    v_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    r_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    r_ce0 : OUT STD_LOGIC;
    r_we0 : OUT STD_LOGIC;
    r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    row : IN STD_LOGIC_VECTOR (31 downto 0);
    col : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of prod_matrix is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "prod_matrix,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.580000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=489,HLS_SYN_LUT=433,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv38_0 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv39_0 : STD_LOGIC_VECTOR (38 downto 0) := "000000000000000000000000000000000000000";
    constant ap_const_lv38_64 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000001100100";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv39_64 : STD_LOGIC_VECTOR (38 downto 0) := "000000000000000000000000000000001100100";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal trunc_ln7_fu_138_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln7_reg_252 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln7_fu_142_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal add_ln7_reg_258 : STD_LOGIC_VECTOR (37 downto 0);
    signal i_fu_157_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reg_266 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_fu_172_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_reg_274 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal trunc_ln10_fu_178_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln10_reg_279 : STD_LOGIC_VECTOR (14 downto 0);
    signal icmp_ln8_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_addr_reg_284 : STD_LOGIC_VECTOR (13 downto 0);
    signal k_fu_201_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_292 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln9_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln10_3_fu_221_p2 : STD_LOGIC_VECTOR (38 downto 0);
    signal add_ln10_3_reg_302 : STD_LOGIC_VECTOR (38 downto 0);
    signal v_load_reg_312 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal v_load_1_reg_317 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln10_fu_237_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln10_reg_322 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_0_reg_83 : STD_LOGIC_VECTOR (30 downto 0);
    signal phi_mul1_reg_94 : STD_LOGIC_VECTOR (37 downto 0);
    signal j_0_reg_105 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln7_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_0_reg_116 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal phi_mul_reg_127 : STD_LOGIC_VECTOR (38 downto 0);
    signal zext_ln10_fu_187_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln10_1_fu_216_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln10_2_fu_232_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln7_fu_148_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln8_fu_163_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln10_fu_182_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln10_1_fu_207_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln10_1_fu_211_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln9_fu_192_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln10_2_fu_227_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_83 <= i_reg_266;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_83 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    j_0_reg_105_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_105 <= ap_const_lv31_0;
            elsif (((icmp_ln9_fu_196_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                j_0_reg_105 <= j_reg_274;
            end if; 
        end if;
    end process;

    k_0_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                k_0_reg_116 <= ap_const_lv32_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                k_0_reg_116 <= k_reg_292;
            end if; 
        end if;
    end process;

    phi_mul1_reg_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul1_reg_94 <= add_ln7_reg_258;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_mul1_reg_94 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_127_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul_reg_127 <= ap_const_lv39_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                phi_mul_reg_127 <= add_ln10_3_reg_302;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln9_fu_196_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                add_ln10_3_reg_302 <= add_ln10_3_fu_221_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln7_reg_258 <= add_ln7_fu_142_p2;
                i_reg_266 <= i_fu_157_p2;
                trunc_ln7_reg_252 <= trunc_ln7_fu_138_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_274 <= j_fu_172_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                k_reg_292 <= k_fu_201_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                mul_ln10_reg_322 <= mul_ln10_fu_237_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                r_addr_reg_284 <= zext_ln10_fu_187_p1(14 - 1 downto 0);
                trunc_ln10_reg_279 <= trunc_ln10_fu_178_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                v_load_1_reg_317 <= v_q1;
                v_load_reg_312 <= v_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln8_fu_167_p2, ap_CS_fsm_state4, icmp_ln9_fu_196_p2, icmp_ln7_fu_152_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln7_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln8_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln9_fu_196_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    add_ln10_1_fu_211_p2 <= std_logic_vector(unsigned(trunc_ln7_reg_252) + unsigned(trunc_ln10_1_fu_207_p1));
    add_ln10_2_fu_227_p2 <= std_logic_vector(unsigned(trunc_ln9_fu_192_p1) + unsigned(trunc_ln10_reg_279));
    add_ln10_3_fu_221_p2 <= std_logic_vector(unsigned(ap_const_lv39_64) + unsigned(phi_mul_reg_127));
    add_ln10_fu_182_p2 <= std_logic_vector(unsigned(trunc_ln7_reg_252) + unsigned(trunc_ln10_fu_178_p1));
    add_ln7_fu_142_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul1_reg_94));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln7_fu_152_p2)
    begin
        if (((icmp_ln7_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln7_fu_152_p2)
    begin
        if (((icmp_ln7_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_157_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(i_0_reg_83));
    icmp_ln7_fu_152_p2 <= "1" when (signed(zext_ln7_fu_148_p1) < signed(row)) else "0";
    icmp_ln8_fu_167_p2 <= "1" when (signed(zext_ln8_fu_163_p1) < signed(col)) else "0";
    icmp_ln9_fu_196_p2 <= "1" when (k_0_reg_116 = row) else "0";
    j_fu_172_p2 <= std_logic_vector(unsigned(j_0_reg_105) + unsigned(ap_const_lv31_1));
    k_fu_201_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(k_0_reg_116));
    mul_ln10_fu_237_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(v_load_reg_312) * signed(v_load_1_reg_317))), 32));
    r_address0 <= r_addr_reg_284;

    r_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            r_ce0 <= ap_const_logic_1;
        else 
            r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    r_d0 <= mul_ln10_reg_322;

    r_we0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            r_we0 <= ap_const_logic_1;
        else 
            r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln10_1_fu_207_p1 <= k_0_reg_116(15 - 1 downto 0);
    trunc_ln10_fu_178_p1 <= j_0_reg_105(15 - 1 downto 0);
    trunc_ln7_fu_138_p1 <= phi_mul1_reg_94(15 - 1 downto 0);
    trunc_ln9_fu_192_p1 <= phi_mul_reg_127(15 - 1 downto 0);
    v_address0 <= zext_ln10_1_fu_216_p1(14 - 1 downto 0);
    v_address1 <= zext_ln10_2_fu_232_p1(14 - 1 downto 0);

    v_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            v_ce0 <= ap_const_logic_1;
        else 
            v_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    v_ce1_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            v_ce1 <= ap_const_logic_1;
        else 
            v_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln10_1_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln10_1_fu_211_p2),64));
    zext_ln10_2_fu_232_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln10_2_fu_227_p2),64));
    zext_ln10_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln10_fu_182_p2),64));
    zext_ln7_fu_148_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_83),32));
    zext_ln8_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_105),32));
end behav;
