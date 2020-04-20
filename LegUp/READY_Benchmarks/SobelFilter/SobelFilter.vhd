-- ----------------------------------------------------------------------------
-- LegUp High-Level Synthesis Tool Version 7.5 (http://legupcomputing.com)
-- Copyright (c) 2015-2019 LegUp Computing Inc. All Rights Reserved.
-- For technical issues, please contact: support@legupcomputing.com
-- For general inquiries, please contact: info@legupcomputing.com
-- Date: Mon Apr 20 11:20:15 2020
-- ----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


library work;
use work.legup_types_pkg.all;
entity top_vhdl is
port (
	       i_clk	:	in	std_logic;
	     i_reset	:	in	std_logic;
	     i_start	:	in	std_logic;
	    o_finish	:	out	std_logic;
	o_return_val	:	out	std_logic_vector(31 downto 0)
);
end top_vhdl;

architecture behavior of top_vhdl is

component top
port (
	       clk	:	in	std_logic;
	     reset	:	in	std_logic;
	     start	:	in	std_logic;
	    finish	:	out	std_logic;
	return_val	:	out	std_logic_vector(31 downto 0)
);
end component;

begin


top_inst : top
port map (
	         clk	=>	i_clk,
	       reset	=>	i_reset,
	       start	=>	i_start,
	      finish	=>	o_finish,
	  return_val	=>	o_return_val
);


end behavior;
