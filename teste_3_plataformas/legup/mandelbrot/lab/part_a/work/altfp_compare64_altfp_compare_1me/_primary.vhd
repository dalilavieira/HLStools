library verilog;
use verilog.vl_types.all;
entity altfp_compare64_altfp_compare_1me is
    port(
        aeb             : out    vl_logic;
        agb             : out    vl_logic;
        ageb            : out    vl_logic;
        alb             : out    vl_logic;
        aleb            : out    vl_logic;
        aneb            : out    vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(63 downto 0);
        datab           : in     vl_logic_vector(63 downto 0);
        unordered       : out    vl_logic
    );
end altfp_compare64_altfp_compare_1me;
