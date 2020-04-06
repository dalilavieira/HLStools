library verilog;
use verilog.vl_types.all;
entity altfp_subtractor_altpriority_encoder_ii9 is
    port(
        data            : in     vl_logic_vector(15 downto 0);
        q               : out    vl_logic_vector(3 downto 0);
        zero            : out    vl_logic
    );
end altfp_subtractor_altpriority_encoder_ii9;
