-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity nfs_open_file_remove_open_find_top is
    port (
        nofp_nof_access : in  std_logic_vector(32 - 1 downto 0);
        nofp_nof_deny : in  std_logic_vector(32 - 1 downto 0);
        nofp_nof_d_r : in  std_logic_vector(32 - 1 downto 0);
        nofp_nof_d_r_drw : in  std_logic_vector(32 - 1 downto 0);
        accessMode : in  std_logic_vector(32 - 1 downto 0);
        denyMode : in  std_logic_vector(32 - 1 downto 0);
        newAccessMode : out  std_logic_vector(32 - 1 downto 0);
        newAccessMode_ap_vld : out  std_logic;
        newDenyMode : out  std_logic_vector(32 - 1 downto 0);
        newDenyMode_ap_vld : out  std_logic;
        delegated : out  std_logic_vector(32 - 1 downto 0);
        delegated_ap_vld : out  std_logic;
        ap_start : in  std_logic;
        ap_ready : out  std_logic;
        ap_done : out  std_logic;
        ap_idle : out  std_logic
    );

-- attributes begin
-- attributes end
end entity;

architecture behav of nfs_open_file_remove_open_find_top is
    component nfs_open_file_remove_open_find is
        port (
            nofp_nof_access : in  std_logic_vector(32 - 1 downto 0);
            nofp_nof_deny : in  std_logic_vector(32 - 1 downto 0);
            nofp_nof_d_r : in  std_logic_vector(32 - 1 downto 0);
            nofp_nof_d_r_drw : in  std_logic_vector(32 - 1 downto 0);
            accessMode : in  std_logic_vector(32 - 1 downto 0);
            denyMode : in  std_logic_vector(32 - 1 downto 0);
            newAccessMode : out  std_logic_vector(32 - 1 downto 0);
            newAccessMode_ap_vld : out  std_logic;
            newDenyMode : out  std_logic_vector(32 - 1 downto 0);
            newDenyMode_ap_vld : out  std_logic;
            delegated : out  std_logic_vector(32 - 1 downto 0);
            delegated_ap_vld : out  std_logic;
            ap_start : in  std_logic;
            ap_ready : out  std_logic;
            ap_done : out  std_logic;
            ap_idle : out  std_logic
        );
    end component;


begin
    nfs_open_file_remove_open_find_U  : component nfs_open_file_remove_open_find
        port map (
            nofp_nof_access => nofp_nof_access,
            nofp_nof_deny => nofp_nof_deny,
            nofp_nof_d_r => nofp_nof_d_r,
            nofp_nof_d_r_drw => nofp_nof_d_r_drw,
            accessMode => accessMode,
            denyMode => denyMode,
            newAccessMode => newAccessMode,
            newAccessMode_ap_vld => newAccessMode_ap_vld,
            newDenyMode => newDenyMode,
            newDenyMode_ap_vld => newDenyMode_ap_vld,
            delegated => delegated,
            delegated_ap_vld => delegated_ap_vld,
            ap_start => ap_start,
            ap_ready => ap_ready,
            ap_done => ap_done,
            ap_idle => ap_idle
        );

end architecture;

