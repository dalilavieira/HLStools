library verilog;
use verilog.vl_types.all;
entity altfp_divider64_srt_block_int_ghk is
    port(
        aclr            : in     vl_logic;
        clken           : in     vl_logic;
        clock           : in     vl_logic;
        divider         : in     vl_logic_vector(52 downto 0);
        divider_reg     : out    vl_logic_vector(52 downto 0);
        Rk              : in     vl_logic_vector(53 downto 0);
        Rk_next         : out    vl_logic_vector(53 downto 0);
        rom             : out    vl_logic_vector(2 downto 0)
    );
end altfp_divider64_srt_block_int_ghk;
