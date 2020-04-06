-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sobel is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    image1_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    image1_ce0 : OUT STD_LOGIC;
    image1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    image1_address1 : OUT STD_LOGIC_VECTOR (13 downto 0);
    image1_ce1 : OUT STD_LOGIC;
    image1_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    image2_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    image2_ce0 : OUT STD_LOGIC;
    image2_we0 : OUT STD_LOGIC;
    image2_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of sobel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "sobel,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.365000,HLS_SYN_LAT=317129,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=2150,HLS_SYN_LUT=4146,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (34 downto 0) := "00000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (34 downto 0) := "00000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (34 downto 0) := "00000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (34 downto 0) := "00000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (34 downto 0) := "00000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (34 downto 0) := "00000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (34 downto 0) := "00001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (34 downto 0) := "00010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (34 downto 0) := "00100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (34 downto 0) := "01000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (34 downto 0) := "10000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv7_63 : STD_LOGIC_VECTOR (6 downto 0) := "1100011";
    constant ap_const_lv7_7F : STD_LOGIC_VECTOR (6 downto 0) := "1111111";
    constant ap_const_lv14_64 : STD_LOGIC_VECTOR (13 downto 0) := "00000001100100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv12_C01 : STD_LOGIC_VECTOR (11 downto 0) := "110000000001";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv32_35 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110101";
    constant ap_const_lv32_54 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010100";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_179 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal mul_ln11_2_fu_200_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_ln11_2_reg_586 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln8_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mul_ln11_3_fu_210_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_ln11_3_reg_593 : STD_LOGIC_VECTOR (13 downto 0);
    signal j_fu_216_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_reg_600 : STD_LOGIC_VECTOR (6 downto 0);
    signal mul_ln11_4_fu_226_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_ln11_4_reg_605 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln11_3_fu_244_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln11_3_reg_615 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln9_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal image1_load_1_reg_635 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_277_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_reg_640 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln11_7_fu_283_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln11_7_reg_645 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln11_fu_332_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_reg_666 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_15_fu_342_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_15_reg_671 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_16_fu_347_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_16_reg_676 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_17_fu_352_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_17_reg_681 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln11_3_fu_357_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_3_reg_686 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_2_fu_374_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_2_reg_691 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal sub_ln11_4_fu_393_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_4_reg_707 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_5_fu_416_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_5_reg_712 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal add_ln11_8_fu_430_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_8_reg_718 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_171_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_reg_723 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_174_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_assign_reg_728 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state33 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state33 : signal is "none";
    signal p_Val2_6_fu_571_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_6_reg_733 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state34 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state34 : signal is "none";
    signal j_0_reg_148 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_0_reg_159 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state35 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state35 : signal is "none";
    signal zext_ln11_4_fu_253_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_5_fu_263_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_6_fu_272_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_8_fu_292_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_9_fu_306_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_10_fu_315_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_12_fu_380_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_13_fu_384_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_14_fu_579_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal add_ln11_fu_190_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal mul_ln11_2_fu_200_p0 : STD_LOGIC_VECTOR (6 downto 0);
    signal mul_ln11_3_fu_210_p0 : STD_LOGIC_VECTOR (6 downto 0);
    signal mul_ln11_4_fu_226_p0 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln11_2_fu_238_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln11_3_fu_248_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_9_fu_258_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_10_fu_268_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_12_fu_287_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_13_fu_302_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln11_14_fu_311_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal shl_ln11_fu_297_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_4_fu_320_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_5_fu_326_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln11_11_fu_338_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal shl_ln11_1_fu_363_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln11_1_fu_369_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_6_fu_388_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln11_2_fu_399_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_7_fu_411_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln11_3_fu_405_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_1_fu_426_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_fu_422_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_s_fu_436_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_V_1_fu_457_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal mantissa_V_fu_461_p4 : STD_LOGIC_VECTOR (53 downto 0);
    signal tmp_V_fu_447_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln502_fu_475_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln502_fu_479_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln1311_fu_493_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal isNeg_fu_485_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln1311_fu_499_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ush_fu_503_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln1311_1_fu_511_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln1285_fu_519_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal zext_ln682_fu_471_p1 : STD_LOGIC_VECTOR (136 downto 0);
    signal zext_ln1287_fu_515_p1 : STD_LOGIC_VECTOR (136 downto 0);
    signal r_V_fu_523_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal tmp_3_fu_535_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_1_fu_529_p2 : STD_LOGIC_VECTOR (136 downto 0);
    signal zext_ln662_fu_543_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_547_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_5_fu_557_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_439_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_V_1_fu_565_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (34 downto 0);
    signal mul_ln11_2_fu_200_p00 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_ln11_3_fu_210_p00 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_ln11_4_fu_226_p00 : STD_LOGIC_VECTOR (13 downto 0);

    component sobel_sitodp_32ns_64_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component sobel_dsqrt_64ns_64ns_64_21_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    sobel_sitodp_32ns_64_4_1_U1 : component sobel_sitodp_32ns_64_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => add_ln11_8_reg_718,
        ce => ap_const_logic_1,
        dout => grp_fu_171_p1);

    sobel_dsqrt_64ns_64ns_64_21_1_U2 : component sobel_dsqrt_64ns_64ns_64_21_1
    generic map (
        ID => 1,
        NUM_STAGE => 21,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ap_const_lv64_0,
        din1 => tmp_reg_723,
        ce => ap_const_logic_1,
        dout => grp_fu_174_p2);





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


    i_0_reg_159_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_reg_159 <= ap_const_lv7_1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state35)) then 
                i_0_reg_159 <= i_reg_640;
            end if; 
        end if;
    end process;

    j_0_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln9_fu_232_p2 = ap_const_lv1_1))) then 
                j_0_reg_148 <= j_reg_600;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_0_reg_148 <= ap_const_lv7_1;
            end if; 
        end if;
    end process;

    reg_179_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                reg_179 <= image1_q1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                reg_179 <= image1_q0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_ln11_15_reg_671 <= add_ln11_15_fu_342_p2;
                add_ln11_16_reg_676 <= add_ln11_16_fu_347_p2;
                add_ln11_17_reg_681 <= add_ln11_17_fu_352_p2;
                sub_ln11_3_reg_686 <= sub_ln11_3_fu_357_p2;
                sub_ln11_reg_666 <= sub_ln11_fu_332_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                add_ln11_8_reg_718 <= add_ln11_8_fu_430_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_reg_640 <= i_fu_277_p2;
                image1_load_1_reg_635 <= image1_q1;
                    zext_ln11_7_reg_645(6 downto 0) <= zext_ln11_7_fu_283_p1(6 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                j_reg_600 <= j_fu_216_p2;
                    mul_ln11_2_reg_586(13 downto 2) <= mul_ln11_2_fu_200_p2(13 downto 2);
                    mul_ln11_3_reg_593(13 downto 2) <= mul_ln11_3_fu_210_p2(13 downto 2);
                    mul_ln11_4_reg_605(13 downto 2) <= mul_ln11_4_fu_226_p2(13 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state34)) then
                p_Val2_6_reg_733 <= p_Val2_6_fu_571_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                sub_ln11_2_reg_691 <= sub_ln11_2_fu_374_p2;
                sub_ln11_4_reg_707 <= sub_ln11_4_fu_393_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                sub_ln11_5_reg_712 <= sub_ln11_5_fu_416_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp_reg_723 <= grp_fu_171_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state33)) then
                x_assign_reg_728 <= grp_fu_174_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln9_fu_232_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    zext_ln11_3_reg_615(6 downto 0) <= zext_ln11_3_fu_244_p1(6 downto 0);
            end if;
        end if;
    end process;
    mul_ln11_2_reg_586(1 downto 0) <= "00";
    mul_ln11_3_reg_593(1 downto 0) <= "00";
    mul_ln11_4_reg_605(1 downto 0) <= "00";
    zext_ln11_3_reg_615(13 downto 7) <= "0000000";
    zext_ln11_7_reg_645(13 downto 7) <= "0000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln8_fu_184_p2, ap_CS_fsm_state3, icmp_ln9_fu_232_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln8_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln9_fu_232_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln11_10_fu_268_p2 <= std_logic_vector(unsigned(mul_ln11_4_reg_605) + unsigned(zext_ln11_3_reg_615));
    add_ln11_12_fu_287_p2 <= std_logic_vector(unsigned(mul_ln11_2_reg_586) + unsigned(zext_ln11_7_fu_283_p1));
    add_ln11_13_fu_302_p2 <= std_logic_vector(unsigned(mul_ln11_3_reg_593) + unsigned(zext_ln11_7_reg_645));
    add_ln11_14_fu_311_p2 <= std_logic_vector(unsigned(mul_ln11_4_reg_605) + unsigned(zext_ln11_7_reg_645));
    add_ln11_15_fu_342_p2 <= std_logic_vector(unsigned(mul_ln11_2_reg_586) + unsigned(zext_ln11_11_fu_338_p1));
    add_ln11_16_fu_347_p2 <= std_logic_vector(unsigned(mul_ln11_4_reg_605) + unsigned(zext_ln11_11_fu_338_p1));
    add_ln11_17_fu_352_p2 <= std_logic_vector(unsigned(mul_ln11_3_reg_593) + unsigned(zext_ln11_11_fu_338_p1));
    add_ln11_2_fu_238_p2 <= std_logic_vector(signed(ap_const_lv7_7F) + signed(i_0_reg_159));
    add_ln11_3_fu_248_p2 <= std_logic_vector(unsigned(mul_ln11_2_reg_586) + unsigned(zext_ln11_3_fu_244_p1));
    add_ln11_4_fu_320_p2 <= std_logic_vector(unsigned(shl_ln11_fu_297_p2) + unsigned(image1_q0));
    add_ln11_5_fu_326_p2 <= std_logic_vector(unsigned(reg_179) + unsigned(add_ln11_4_fu_320_p2));
    add_ln11_6_fu_388_p2 <= std_logic_vector(unsigned(sub_ln11_3_reg_686) + unsigned(reg_179));
    add_ln11_7_fu_411_p2 <= std_logic_vector(unsigned(sub_ln11_4_reg_707) + unsigned(shl_ln11_2_fu_399_p2));
    add_ln11_8_fu_430_p2 <= std_logic_vector(unsigned(mul_ln11_1_fu_426_p2) + unsigned(mul_ln11_fu_422_p2));
    add_ln11_9_fu_258_p2 <= std_logic_vector(unsigned(mul_ln11_3_reg_593) + unsigned(zext_ln11_3_fu_244_p1));
    add_ln11_fu_190_p2 <= std_logic_vector(unsigned(j_0_reg_148) + unsigned(ap_const_lv7_7F));
    add_ln502_fu_479_p2 <= std_logic_vector(signed(ap_const_lv12_C01) + signed(zext_ln502_fu_475_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state33 <= ap_CS_fsm(32);
    ap_CS_fsm_state34 <= ap_CS_fsm(33);
    ap_CS_fsm_state35 <= ap_CS_fsm(34);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln8_fu_184_p2)
    begin
        if (((icmp_ln8_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln8_fu_184_p2)
    begin
        if (((icmp_ln8_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_277_p2 <= std_logic_vector(unsigned(ap_const_lv7_1) + unsigned(i_0_reg_159));
    icmp_ln8_fu_184_p2 <= "1" when (j_0_reg_148 = ap_const_lv7_63) else "0";
    icmp_ln9_fu_232_p2 <= "1" when (i_0_reg_159 = ap_const_lv7_63) else "0";

    image1_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state6, zext_ln11_4_fu_253_p1, zext_ln11_6_fu_272_p1, zext_ln11_9_fu_306_p1, zext_ln11_12_fu_380_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            image1_address0 <= zext_ln11_12_fu_380_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            image1_address0 <= zext_ln11_9_fu_306_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            image1_address0 <= zext_ln11_6_fu_272_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            image1_address0 <= zext_ln11_4_fu_253_p1(14 - 1 downto 0);
        else 
            image1_address0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    image1_address1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state6, zext_ln11_5_fu_263_p1, zext_ln11_8_fu_292_p1, zext_ln11_10_fu_315_p1, zext_ln11_13_fu_384_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            image1_address1 <= zext_ln11_13_fu_384_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            image1_address1 <= zext_ln11_10_fu_315_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            image1_address1 <= zext_ln11_8_fu_292_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            image1_address1 <= zext_ln11_5_fu_263_p1(14 - 1 downto 0);
        else 
            image1_address1 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    image1_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            image1_ce0 <= ap_const_logic_1;
        else 
            image1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    image1_ce1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            image1_ce1 <= ap_const_logic_1;
        else 
            image1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    image2_address0 <= zext_ln11_14_fu_579_p1(14 - 1 downto 0);

    image2_ce0_assign_proc : process(ap_CS_fsm_state35)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state35)) then 
            image2_ce0 <= ap_const_logic_1;
        else 
            image2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    image2_d0 <= p_Val2_6_reg_733;

    image2_we0_assign_proc : process(ap_CS_fsm_state35)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state35)) then 
            image2_we0 <= ap_const_logic_1;
        else 
            image2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    isNeg_fu_485_p3 <= add_ln502_fu_479_p2(11 downto 11);
    j_fu_216_p2 <= std_logic_vector(unsigned(j_0_reg_148) + unsigned(ap_const_lv7_1));
    mantissa_V_fu_461_p4 <= ((ap_const_lv1_1 & tmp_V_1_fu_457_p1) & ap_const_lv1_0);
    mul_ln11_1_fu_426_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(sub_ln11_5_reg_712) * signed(sub_ln11_5_reg_712))), 32));
    mul_ln11_2_fu_200_p0 <= mul_ln11_2_fu_200_p00(7 - 1 downto 0);
    mul_ln11_2_fu_200_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_fu_190_p2),14));
    mul_ln11_2_fu_200_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln11_2_fu_200_p0) * unsigned(ap_const_lv14_64), 14));
    mul_ln11_3_fu_210_p0 <= mul_ln11_3_fu_210_p00(7 - 1 downto 0);
    mul_ln11_3_fu_210_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_148),14));
    mul_ln11_3_fu_210_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln11_3_fu_210_p0) * unsigned(ap_const_lv14_64), 14));
    mul_ln11_4_fu_226_p0 <= mul_ln11_4_fu_226_p00(7 - 1 downto 0);
    mul_ln11_4_fu_226_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_216_p2),14));
    mul_ln11_4_fu_226_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln11_4_fu_226_p0) * unsigned(ap_const_lv14_64), 14));
    mul_ln11_fu_422_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(sub_ln11_2_reg_691) * signed(sub_ln11_2_reg_691))), 32));
    p_Result_s_fu_439_p3 <= p_Val2_s_fu_436_p1(63 downto 63);
    p_Val2_5_fu_557_p3 <= 
        zext_ln662_fu_543_p1 when (isNeg_fu_485_p3(0) = '1') else 
        tmp_6_fu_547_p4;
    p_Val2_6_fu_571_p3 <= 
        result_V_1_fu_565_p2 when (p_Result_s_fu_439_p3(0) = '1') else 
        p_Val2_5_fu_557_p3;
    p_Val2_s_fu_436_p1 <= x_assign_reg_728;
    r_V_1_fu_529_p2 <= std_logic_vector(shift_left(unsigned(zext_ln682_fu_471_p1),to_integer(unsigned('0' & zext_ln1287_fu_515_p1(31-1 downto 0)))));
    r_V_fu_523_p2 <= std_logic_vector(shift_right(unsigned(mantissa_V_fu_461_p4),to_integer(unsigned('0' & zext_ln1285_fu_519_p1(31-1 downto 0)))));
    result_V_1_fu_565_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(p_Val2_5_fu_557_p3));
        sext_ln1311_1_fu_511_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ush_fu_503_p3),32));

        sext_ln1311_fu_499_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln1311_fu_493_p2),12));

    shl_ln11_1_fu_363_p2 <= std_logic_vector(shift_left(unsigned(image1_q0),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    shl_ln11_2_fu_399_p2 <= std_logic_vector(shift_left(unsigned(image1_q0),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    shl_ln11_3_fu_405_p2 <= std_logic_vector(shift_left(unsigned(image1_q1),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    shl_ln11_fu_297_p2 <= std_logic_vector(shift_left(unsigned(image1_load_1_reg_635),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    sub_ln11_1_fu_369_p2 <= std_logic_vector(unsigned(sub_ln11_reg_666) - unsigned(shl_ln11_1_fu_363_p2));
    sub_ln11_2_fu_374_p2 <= std_logic_vector(unsigned(sub_ln11_1_fu_369_p2) - unsigned(image1_q1));
    sub_ln11_3_fu_357_p2 <= std_logic_vector(unsigned(reg_179) - unsigned(image1_q0));
    sub_ln11_4_fu_393_p2 <= std_logic_vector(unsigned(add_ln11_6_fu_388_p2) - unsigned(image1_q1));
    sub_ln11_5_fu_416_p2 <= std_logic_vector(unsigned(add_ln11_7_fu_411_p2) - unsigned(shl_ln11_3_fu_405_p2));
    sub_ln11_fu_332_p2 <= std_logic_vector(unsigned(add_ln11_5_fu_326_p2) - unsigned(image1_q1));
    sub_ln1311_fu_493_p2 <= std_logic_vector(unsigned(ap_const_lv11_3FF) - unsigned(tmp_V_fu_447_p4));
    tmp_3_fu_535_p3 <= r_V_fu_523_p2(53 downto 53);
    tmp_6_fu_547_p4 <= r_V_1_fu_529_p2(84 downto 53);
    tmp_V_1_fu_457_p1 <= p_Val2_s_fu_436_p1(52 - 1 downto 0);
    tmp_V_fu_447_p4 <= p_Val2_s_fu_436_p1(62 downto 52);
    ush_fu_503_p3 <= 
        sext_ln1311_fu_499_p1 when (isNeg_fu_485_p3(0) = '1') else 
        add_ln502_fu_479_p2;
    zext_ln11_10_fu_315_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_14_fu_311_p2),64));
    zext_ln11_11_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_159),14));
    zext_ln11_12_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_15_reg_671),64));
    zext_ln11_13_fu_384_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_16_reg_676),64));
    zext_ln11_14_fu_579_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_17_reg_681),64));
    zext_ln11_3_fu_244_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_2_fu_238_p2),14));
    zext_ln11_4_fu_253_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_3_fu_248_p2),64));
    zext_ln11_5_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_9_fu_258_p2),64));
    zext_ln11_6_fu_272_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_10_fu_268_p2),64));
    zext_ln11_7_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_fu_277_p2),14));
    zext_ln11_8_fu_292_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_12_fu_287_p2),64));
    zext_ln11_9_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln11_13_fu_302_p2),64));
    zext_ln1285_fu_519_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln1311_1_fu_511_p1),54));
    zext_ln1287_fu_515_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln1311_1_fu_511_p1),137));
    zext_ln502_fu_475_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_V_fu_447_p4),12));
    zext_ln662_fu_543_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_535_p3),32));
    zext_ln682_fu_471_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mantissa_V_fu_461_p4),137));
end behav;
