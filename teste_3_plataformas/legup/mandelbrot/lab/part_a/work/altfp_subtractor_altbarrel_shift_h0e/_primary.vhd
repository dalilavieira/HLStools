library verilog;
use verilog.vl_types.all;
entity altfp_subtractor_altbarrel_shift_h0e is
    port(
        aclr            : in     vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(25 downto 0);
        distance        : in     vl_logic_vector(4 downto 0);
        result          : out    vl_logic_vector(25 downto 0)
    );
end altfp_subtractor_altbarrel_shift_h0e;
