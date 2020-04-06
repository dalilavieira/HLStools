library verilog;
use verilog.vl_types.all;
entity altfp_adder64_altpriority_encoder_ina is
    port(
        aclr            : in     vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(63 downto 0);
        q               : out    vl_logic_vector(5 downto 0)
    );
end altfp_adder64_altpriority_encoder_ina;
