library verilog;
use verilog.vl_types.all;
entity altfp_multiplier_altfp_mult_4do is
    port(
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(31 downto 0);
        datab           : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end altfp_multiplier_altfp_mult_4do;
