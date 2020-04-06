library verilog;
use verilog.vl_types.all;
entity altfp_divider_altfp_div_csa_c3c is
    port(
        dataa           : in     vl_logic_vector(27 downto 0);
        datab           : in     vl_logic_vector(27 downto 0);
        result          : out    vl_logic_vector(27 downto 0)
    );
end altfp_divider_altfp_div_csa_c3c;
