library verilog;
use verilog.vl_types.all;
entity altfp_subtractor64_altpriority_encoder_bv7 is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(2 downto 0)
    );
end altfp_subtractor64_altpriority_encoder_bv7;
