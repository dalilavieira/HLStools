library verilog;
use verilog.vl_types.all;
entity altfp_divider64_altfp_div_csa_d3c is
    port(
        dataa           : in     vl_logic_vector(55 downto 0);
        datab           : in     vl_logic_vector(55 downto 0);
        result          : out    vl_logic_vector(55 downto 0)
    );
end altfp_divider64_altfp_div_csa_d3c;
