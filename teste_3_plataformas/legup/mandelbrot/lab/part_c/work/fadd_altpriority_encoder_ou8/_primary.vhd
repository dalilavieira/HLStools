library verilog;
use verilog.vl_types.all;
entity fadd_altpriority_encoder_ou8 is
    port(
        aclr            : in     vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        q               : out    vl_logic_vector(4 downto 0)
    );
end fadd_altpriority_encoder_ou8;
