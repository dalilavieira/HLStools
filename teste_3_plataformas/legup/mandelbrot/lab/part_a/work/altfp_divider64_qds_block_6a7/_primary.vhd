library verilog;
use verilog.vl_types.all;
entity altfp_divider64_qds_block_6a7 is
    port(
        aclr            : in     vl_logic;
        clken           : in     vl_logic;
        clock           : in     vl_logic;
        decoder_bus     : in     vl_logic_vector(11 downto 0);
        decoder_output  : out    vl_logic_vector(2 downto 0)
    );
end altfp_divider64_qds_block_6a7;