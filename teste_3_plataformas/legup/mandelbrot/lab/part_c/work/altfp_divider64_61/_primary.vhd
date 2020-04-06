library verilog;
use verilog.vl_types.all;
entity altfp_divider64_61 is
    port(
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(63 downto 0);
        datab           : in     vl_logic_vector(63 downto 0);
        result          : out    vl_logic_vector(63 downto 0)
    );
end altfp_divider64_61;
