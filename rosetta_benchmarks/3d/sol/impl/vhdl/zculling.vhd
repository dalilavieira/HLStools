-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zculling is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    counter : IN STD_LOGIC_VECTOR (11 downto 0);
    fragments_x_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    fragments_x_ce0 : OUT STD_LOGIC;
    fragments_x_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    fragments_y_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    fragments_y_ce0 : OUT STD_LOGIC;
    fragments_y_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    fragments_z_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    fragments_z_ce0 : OUT STD_LOGIC;
    fragments_z_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    fragments_color_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    fragments_color_ce0 : OUT STD_LOGIC;
    fragments_color_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    size : IN STD_LOGIC_VECTOR (31 downto 0);
    pixels_x_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    pixels_x_ce0 : OUT STD_LOGIC;
    pixels_x_we0 : OUT STD_LOGIC;
    pixels_x_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    pixels_y_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    pixels_y_ce0 : OUT STD_LOGIC;
    pixels_y_we0 : OUT STD_LOGIC;
    pixels_y_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    pixels_color_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    pixels_color_ce0 : OUT STD_LOGIC;
    pixels_color_we0 : OUT STD_LOGIC;
    pixels_color_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of zculling is 
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
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal z_buffer_address0 : STD_LOGIC_VECTOR (15 downto 0);
    signal z_buffer_ce0 : STD_LOGIC;
    signal z_buffer_we0 : STD_LOGIC;
    signal z_buffer_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal z_buffer_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln205_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln205_reg_357 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_245_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_reg_364 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln209_fu_259_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal zext_ln209_reg_369 : STD_LOGIC_VECTOR (17 downto 0);
    signal icmp_ln207_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_274_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal n_fu_303_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal n_reg_392 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln222_fu_309_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln222_reg_397 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln220_fu_298_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal fragments_x_load_reg_418 : STD_LOGIC_VECTOR (7 downto 0);
    signal fragments_y_load_reg_423 : STD_LOGIC_VECTOR (7 downto 0);
    signal z_buffer_addr_1_reg_428 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln222_fu_328_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln222_reg_433 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_0_reg_197 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln209_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_0_reg_208 : STD_LOGIC_VECTOR (8 downto 0);
    signal n_0_reg_219 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln211_1_fu_289_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln222_1_fu_323_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln224_fu_334_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal pixel_cntr_1_fu_66 : STD_LOGIC_VECTOR (31 downto 0);
    signal pixel_cntr_fu_341_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_251_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln211_fu_280_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal add_ln211_fu_284_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal zext_ln220_fu_294_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_315_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln224_fu_334_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal pixel_cntr_fu_341_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component zculling_z_buffer IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    z_buffer_U : component zculling_z_buffer
    generic map (
        DataWidth => 8,
        AddressRange => 65536,
        AddressWidth => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => z_buffer_address0,
        ce0 => z_buffer_ce0,
        we0 => z_buffer_we0,
        d0 => z_buffer_d0,
        q0 => z_buffer_q0);





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


    i_0_reg_197_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln205_fu_233_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_197 <= ap_const_lv9_0;
            elsif (((icmp_ln209_fu_268_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_197 <= i_reg_364;
            end if; 
        end if;
    end process;

    j_0_reg_208_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln209_fu_268_p2 = ap_const_lv1_0))) then 
                j_0_reg_208 <= j_fu_274_p2;
            elsif (((icmp_ln205_reg_357 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln207_fu_239_p2 = ap_const_lv1_0))) then 
                j_0_reg_208 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    n_0_reg_219_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                n_0_reg_219 <= n_reg_392;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln207_fu_239_p2 = ap_const_lv1_1) or (icmp_ln205_reg_357 = ap_const_lv1_0)))) then 
                n_0_reg_219 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    pixel_cntr_1_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln222_reg_433 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                pixel_cntr_1_fu_66 <= pixel_cntr_fu_341_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln207_fu_239_p2 = ap_const_lv1_1) or (icmp_ln205_reg_357 = ap_const_lv1_0)))) then 
                pixel_cntr_1_fu_66 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                fragments_x_load_reg_418 <= fragments_x_q0;
                fragments_y_load_reg_423 <= fragments_y_q0;
                z_buffer_addr_1_reg_428 <= zext_ln222_1_fu_323_p1(16 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln205_reg_357 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_reg_364 <= i_fu_245_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                icmp_ln205_reg_357 <= icmp_ln205_fu_233_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                icmp_ln222_reg_433 <= icmp_ln222_fu_328_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                n_reg_392 <= n_fu_303_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln205_reg_357 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln207_fu_239_p2 = ap_const_lv1_0))) then
                    zext_ln209_reg_369(16 downto 8) <= zext_ln209_fu_259_p1(16 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln220_fu_298_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    zext_ln222_reg_397(30 downto 0) <= zext_ln222_fu_309_p1(30 downto 0);
            end if;
        end if;
    end process;
    zext_ln209_reg_369(7 downto 0) <= "00000000";
    zext_ln209_reg_369(17) <= '0';
    zext_ln222_reg_397(63 downto 31) <= "000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln205_reg_357, ap_CS_fsm_state2, icmp_ln207_fu_239_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, icmp_ln220_fu_298_p2, icmp_ln209_fu_268_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((icmp_ln207_fu_239_p2 = ap_const_lv1_1) or (icmp_ln205_reg_357 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln209_fu_268_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln220_fu_298_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
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
    add_ln211_fu_284_p2 <= std_logic_vector(unsigned(zext_ln209_reg_369) + unsigned(zext_ln211_fu_280_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4, icmp_ln220_fu_298_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln220_fu_298_p2 = ap_const_lv1_0)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state4, icmp_ln220_fu_298_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln220_fu_298_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= pixel_cntr_1_fu_66;
    fragments_color_address0 <= zext_ln222_reg_397(9 - 1 downto 0);

    fragments_color_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            fragments_color_ce0 <= ap_const_logic_1;
        else 
            fragments_color_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    fragments_x_address0 <= zext_ln222_fu_309_p1(9 - 1 downto 0);

    fragments_x_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            fragments_x_ce0 <= ap_const_logic_1;
        else 
            fragments_x_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    fragments_y_address0 <= zext_ln222_fu_309_p1(9 - 1 downto 0);

    fragments_y_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            fragments_y_ce0 <= ap_const_logic_1;
        else 
            fragments_y_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    fragments_z_address0 <= zext_ln222_reg_397(9 - 1 downto 0);

    fragments_z_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            fragments_z_ce0 <= ap_const_logic_1;
        else 
            fragments_z_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_245_p2 <= std_logic_vector(unsigned(i_0_reg_197) + unsigned(ap_const_lv9_1));
    icmp_ln205_fu_233_p2 <= "1" when (counter = ap_const_lv12_0) else "0";
    icmp_ln207_fu_239_p2 <= "1" when (i_0_reg_197 = ap_const_lv9_100) else "0";
    icmp_ln209_fu_268_p2 <= "1" when (j_0_reg_208 = ap_const_lv9_100) else "0";
    icmp_ln220_fu_298_p2 <= "1" when (signed(zext_ln220_fu_294_p1) < signed(size)) else "0";
    icmp_ln222_fu_328_p2 <= "1" when (unsigned(fragments_z_q0) < unsigned(z_buffer_q0)) else "0";
    j_fu_274_p2 <= std_logic_vector(unsigned(j_0_reg_208) + unsigned(ap_const_lv9_1));
    n_fu_303_p2 <= std_logic_vector(unsigned(n_0_reg_219) + unsigned(ap_const_lv31_1));
    pixel_cntr_fu_341_p0 <= pixel_cntr_1_fu_66;
    pixel_cntr_fu_341_p2 <= std_logic_vector(signed(pixel_cntr_fu_341_p0) + signed(ap_const_lv32_1));
    pixels_color_address0 <= sext_ln224_fu_334_p1(9 - 1 downto 0);

    pixels_color_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            pixels_color_ce0 <= ap_const_logic_1;
        else 
            pixels_color_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pixels_color_d0 <= fragments_color_q0;

    pixels_color_we0_assign_proc : process(icmp_ln222_reg_433, ap_CS_fsm_state7)
    begin
        if (((icmp_ln222_reg_433 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            pixels_color_we0 <= ap_const_logic_1;
        else 
            pixels_color_we0 <= ap_const_logic_0;
        end if; 
    end process;

    pixels_x_address0 <= sext_ln224_fu_334_p1(9 - 1 downto 0);

    pixels_x_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            pixels_x_ce0 <= ap_const_logic_1;
        else 
            pixels_x_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pixels_x_d0 <= fragments_x_load_reg_418;

    pixels_x_we0_assign_proc : process(icmp_ln222_reg_433, ap_CS_fsm_state7)
    begin
        if (((icmp_ln222_reg_433 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            pixels_x_we0 <= ap_const_logic_1;
        else 
            pixels_x_we0 <= ap_const_logic_0;
        end if; 
    end process;

    pixels_y_address0 <= sext_ln224_fu_334_p1(9 - 1 downto 0);

    pixels_y_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            pixels_y_ce0 <= ap_const_logic_1;
        else 
            pixels_y_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pixels_y_d0 <= fragments_y_load_reg_423;

    pixels_y_we0_assign_proc : process(icmp_ln222_reg_433, ap_CS_fsm_state7)
    begin
        if (((icmp_ln222_reg_433 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            pixels_y_we0 <= ap_const_logic_1;
        else 
            pixels_y_we0 <= ap_const_logic_0;
        end if; 
    end process;

    sext_ln224_fu_334_p0 <= pixel_cntr_1_fu_66;
        sext_ln224_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln224_fu_334_p0),64));

    tmp_1_fu_251_p3 <= (i_0_reg_197 & ap_const_lv8_0);
    tmp_2_fu_315_p3 <= (fragments_y_q0 & fragments_x_q0);

    z_buffer_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, z_buffer_addr_1_reg_428, ap_CS_fsm_state6, zext_ln211_1_fu_289_p1, zext_ln222_1_fu_323_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            z_buffer_address0 <= z_buffer_addr_1_reg_428;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            z_buffer_address0 <= zext_ln222_1_fu_323_p1(16 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            z_buffer_address0 <= zext_ln211_1_fu_289_p1(16 - 1 downto 0);
        else 
            z_buffer_address0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    z_buffer_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            z_buffer_ce0 <= ap_const_logic_1;
        else 
            z_buffer_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    z_buffer_d0_assign_proc : process(fragments_z_q0, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            z_buffer_d0 <= fragments_z_q0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            z_buffer_d0 <= ap_const_lv8_FF;
        else 
            z_buffer_d0 <= "XXXXXXXX";
        end if; 
    end process;


    z_buffer_we0_assign_proc : process(ap_CS_fsm_state3, icmp_ln222_fu_328_p2, ap_CS_fsm_state6, icmp_ln209_fu_268_p2)
    begin
        if ((((icmp_ln222_fu_328_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln209_fu_268_p2 = ap_const_lv1_0)))) then 
            z_buffer_we0 <= ap_const_logic_1;
        else 
            z_buffer_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln209_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_251_p3),18));
    zext_ln211_1_fu_289_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln211_fu_284_p2),64));
    zext_ln211_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_208),18));
    zext_ln220_fu_294_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_0_reg_219),32));
    zext_ln222_1_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_315_p3),64));
    zext_ln222_fu_309_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_0_reg_219),64));
end behav;
