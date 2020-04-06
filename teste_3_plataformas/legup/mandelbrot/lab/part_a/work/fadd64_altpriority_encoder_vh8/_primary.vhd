library verilog;
use verilog.vl_types.all;
entity fadd64_altpriority_encoder_vh8 is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(2 downto 0);
        zero            : out    vl_logic
    );
end fadd64_altpriority_encoder_vh8;
