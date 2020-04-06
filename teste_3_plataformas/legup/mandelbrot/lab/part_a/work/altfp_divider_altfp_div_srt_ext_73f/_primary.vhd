library verilog;
use verilog.vl_types.all;
entity altfp_divider_altfp_div_srt_ext_73f is
    port(
        aclr            : in     vl_logic;
        clken           : in     vl_logic;
        clock           : in     vl_logic;
        denom           : in     vl_logic_vector(23 downto 0);
        divider         : out    vl_logic_vector(23 downto 0);
        numer           : in     vl_logic_vector(23 downto 0);
        quotient        : out    vl_logic_vector(27 downto 0);
        remain          : out    vl_logic_vector(23 downto 0)
    );
end altfp_divider_altfp_div_srt_ext_73f;
