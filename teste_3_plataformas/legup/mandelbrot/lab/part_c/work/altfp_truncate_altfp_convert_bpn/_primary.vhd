library verilog;
use verilog.vl_types.all;
entity altfp_truncate_altfp_convert_bpn is
    port(
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(63 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end altfp_truncate_altfp_convert_bpn;
