library verilog;
use verilog.vl_types.all;
entity altfp_sitofp32_altpriority_encoder_3v7 is
    port(
        data            : in     vl_logic_vector(1 downto 0);
        q               : out    vl_logic_vector(0 downto 0)
    );
end altfp_sitofp32_altpriority_encoder_3v7;
