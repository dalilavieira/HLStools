library verilog;
use verilog.vl_types.all;
entity round_robin_arbiter is
    generic(
        N               : integer := 4
    );
    port(
        rst_an          : in     vl_logic;
        clk             : in     vl_logic;
        req_in          : in     vl_logic_vector;
        grant_final     : out    vl_logic_vector;
        waitrequest     : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end round_robin_arbiter;
