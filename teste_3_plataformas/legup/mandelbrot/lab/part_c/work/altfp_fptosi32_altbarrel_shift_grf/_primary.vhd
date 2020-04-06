library verilog;
use verilog.vl_types.all;
entity altfp_fptosi32_altbarrel_shift_grf is
    port(
        aclr            : in     vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(53 downto 0);
        distance        : in     vl_logic_vector(5 downto 0);
        result          : out    vl_logic_vector(53 downto 0)
    );
end altfp_fptosi32_altbarrel_shift_grf;
