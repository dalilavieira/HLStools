library verilog;
use verilog.vl_types.all;
entity altfp_sitofp32_altpriority_encoder_qb6 is
    port(
        data            : in     vl_logic_vector(31 downto 0);
        q               : out    vl_logic_vector(4 downto 0)
    );
end altfp_sitofp32_altpriority_encoder_qb6;
