library verilog;
use verilog.vl_types.all;
entity altfp_divider64_altfp_div_csa_ivc is
    port(
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        dataa           : in     vl_logic_vector(52 downto 0);
        datab           : in     vl_logic_vector(52 downto 0);
        result          : out    vl_logic_vector(52 downto 0)
    );
end altfp_divider64_altfp_div_csa_ivc;
