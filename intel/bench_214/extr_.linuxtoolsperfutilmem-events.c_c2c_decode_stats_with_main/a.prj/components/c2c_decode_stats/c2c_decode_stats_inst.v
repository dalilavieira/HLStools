// Example instance of the top level module for: 
//     c2c_decode_stats
// To include this component in your design, include: 
//     c2c_decode_stats.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

c2c_decode_stats c2c_decode_stats_inst (
  // Interface: clock (clock end)
  .clock               ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn              ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start               ( ), // 1-bit valid input
  .busy                ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                ( ), // 1-bit valid output
  .stall               ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata          ( ), // 32-bit data output
  // Interface: stats (conduit sink)
  .stats               ( ), // 64-bit data input
  // Interface: mi (conduit sink)
  .mi                  ( ), // 64-bit data input
  // Interface: PERF_MEM_LOCK_LOCKED (conduit sink)
  .PERF_MEM_LOCK_LOCKED( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_HIT (conduit sink)
  .PERF_MEM_LVL_HIT    ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_IO (conduit sink)
  .PERF_MEM_LVL_IO     ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_L1 (conduit sink)
  .PERF_MEM_LVL_L1     ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_L2 (conduit sink)
  .PERF_MEM_LVL_L2     ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_L3 (conduit sink)
  .PERF_MEM_LVL_L3     ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_LFB (conduit sink)
  .PERF_MEM_LVL_LFB    ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_LOC_RAM (conduit sink)
  .PERF_MEM_LVL_LOC_RAM( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_MISS (conduit sink)
  .PERF_MEM_LVL_MISS   ( ), // 64-bit data input
  // Interface: PERF_MEM_LVL_UNC (conduit sink)
  .PERF_MEM_LVL_UNC    ( ), // 64-bit data input
  // Interface: PERF_MEM_OP_LOAD (conduit sink)
  .PERF_MEM_OP_LOAD    ( ), // 64-bit data input
  // Interface: PERF_MEM_OP_STORE (conduit sink)
  .PERF_MEM_OP_STORE   ( ), // 64-bit data input
  // Interface: PERF_MEM_SNOOP_HIT (conduit sink)
  .PERF_MEM_SNOOP_HIT  ( ), // 64-bit data input
  // Interface: PERF_MEM_SNOOP_HITM (conduit sink)
  .PERF_MEM_SNOOP_HITM ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address   ( ), // 64-bit address output
  .avmm_0_rw_byteenable( ), // 8-bit byteenable output
  .avmm_0_rw_read      ( ), // 1-bit read output
  .avmm_0_rw_readdata  ( ), // 64-bit readdata input
  .avmm_0_rw_write     ( ), // 1-bit write output
  .avmm_0_rw_writedata ( )  // 64-bit writedata output
);
