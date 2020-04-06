library verilog;
use verilog.vl_types.all;
entity altfp_divider64_altfp_div_csa_k0f is
    port(
        aclr            : in     vl_logic;
        clken           : in     vl_logic;
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(55 downto 0);
        datab           : in     vl_logic_vector(55 downto 0);
        result          : out    vl_logic_vector(55 downto 0)
    );
end altfp_divider64_altfp_div_csa_k0f;
