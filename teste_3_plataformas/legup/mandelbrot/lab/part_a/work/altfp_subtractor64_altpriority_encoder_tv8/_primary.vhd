library verilog;
use verilog.vl_types.all;
entity altfp_subtractor64_altpriority_encoder_tv8 is
    port(
        data            : in     vl_logic_vector(31 downto 0);
        q               : out    vl_logic_vector(4 downto 0)
    );
end altfp_subtractor64_altpriority_encoder_tv8;