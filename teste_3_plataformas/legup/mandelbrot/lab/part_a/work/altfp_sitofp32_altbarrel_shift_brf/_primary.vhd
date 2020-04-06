library verilog;
use verilog.vl_types.all;
entity altfp_sitofp32_altbarrel_shift_brf is
    port(
        aclr            : in     vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        distance        : in     vl_logic_vector(4 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end altfp_sitofp32_altbarrel_shift_brf;
