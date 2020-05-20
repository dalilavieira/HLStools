-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nfs_open_file_remove_open_find is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    nofp_nof_access : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_deny : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_r : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_r : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_rw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_rw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_r_dw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_r_dw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_rw_dw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_rw_dw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_r_drw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_r_drw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_w : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_w : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_w_dw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_w_dw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_w_drw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_w_drw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_rw_drw : IN STD_LOGIC_VECTOR (31 downto 0);
    nofp_nof_d_rw_drw : IN STD_LOGIC_VECTOR (31 downto 0);
    accessMode : IN STD_LOGIC_VECTOR (31 downto 0);
    denyMode : IN STD_LOGIC_VECTOR (31 downto 0);
    newAccessMode : OUT STD_LOGIC_VECTOR (31 downto 0);
    newAccessMode_ap_vld : OUT STD_LOGIC;
    newDenyMode : OUT STD_LOGIC_VECTOR (31 downto 0);
    newDenyMode_ap_vld : OUT STD_LOGIC;
    delegated : OUT STD_LOGIC_VECTOR (31 downto 0);
    delegated_ap_vld : OUT STD_LOGIC );
end;


architecture behav of nfs_open_file_remove_open_find is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "nfs_open_file_remove_open_find,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.546000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=93,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal icmp_ln75_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln76_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln95_fu_142_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln77_fu_153_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln95_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln77_fu_147_p2 : STD_LOGIC_VECTOR (0 downto 0);


begin



    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;

    delegated_assign_proc : process(ap_start, icmp_ln75_fu_124_p2, icmp_ln76_fu_130_p2, zext_ln95_fu_142_p1, zext_ln77_fu_153_p1)
    begin
        if (((icmp_ln76_fu_130_p2 = ap_const_lv1_1) and (icmp_ln75_fu_124_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1))) then 
            delegated <= zext_ln77_fu_153_p1;
        elsif (((icmp_ln76_fu_130_p2 = ap_const_lv1_1) and (icmp_ln75_fu_124_p2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1))) then 
            delegated <= zext_ln95_fu_142_p1;
        elsif ((((icmp_ln76_fu_130_p2 = ap_const_lv1_0) and (icmp_ln75_fu_124_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1)) or ((icmp_ln76_fu_130_p2 = ap_const_lv1_0) and (icmp_ln75_fu_124_p2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1)))) then 
            delegated <= ap_const_lv32_0;
        else 
            delegated <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    delegated_ap_vld_assign_proc : process(ap_start, icmp_ln75_fu_124_p2, icmp_ln76_fu_130_p2)
    begin
        if ((((icmp_ln76_fu_130_p2 = ap_const_lv1_1) and (icmp_ln75_fu_124_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1)) or ((icmp_ln76_fu_130_p2 = ap_const_lv1_0) and (icmp_ln75_fu_124_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1)) or ((icmp_ln76_fu_130_p2 = ap_const_lv1_1) and (icmp_ln75_fu_124_p2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1)) or ((icmp_ln76_fu_130_p2 = ap_const_lv1_0) and (icmp_ln75_fu_124_p2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1)))) then 
            delegated_ap_vld <= ap_const_logic_1;
        else 
            delegated_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln75_fu_124_p2 <= "1" when (denyMode = ap_const_lv32_0) else "0";
    icmp_ln76_fu_130_p2 <= "1" when (accessMode = ap_const_lv32_0) else "0";
    icmp_ln77_fu_147_p2 <= "0" when (nofp_nof_d_r = ap_const_lv32_0) else "1";
    icmp_ln95_fu_136_p2 <= "0" when (nofp_nof_d_r_drw = ap_const_lv32_0) else "1";
    newAccessMode <= nofp_nof_access;

    newAccessMode_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            newAccessMode_ap_vld <= ap_const_logic_1;
        else 
            newAccessMode_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    newDenyMode <= nofp_nof_deny;

    newDenyMode_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            newDenyMode_ap_vld <= ap_const_logic_1;
        else 
            newDenyMode_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln77_fu_153_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(icmp_ln77_fu_147_p2),32));
    zext_ln95_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(icmp_ln95_fu_136_p2),32));
end behav;
