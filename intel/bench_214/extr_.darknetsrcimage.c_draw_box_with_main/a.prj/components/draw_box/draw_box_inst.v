// Example instance of the top level module for: 
//     draw_box
// To include this component in your design, include: 
//     draw_box.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

draw_box draw_box_inst (
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
  // Interface: a (conduit sink)
  .a                   ( ), // 128-bit data input
  // Interface: x1 (conduit sink)
  .x1                  ( ), // 32-bit data input
  // Interface: y1 (conduit sink)
  .y1                  ( ), // 32-bit data input
  // Interface: x2 (conduit sink)
  .x2                  ( ), // 32-bit data input
  // Interface: y2 (conduit sink)
  .y2                  ( ), // 32-bit data input
  // Interface: r (conduit sink)
  .r                   ( ), // 32-bit data input
  // Interface: g (conduit sink)
  .g                   ( ), // 32-bit data input
  // Interface: b (conduit sink)
  .b                   ( ), // 32-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address   ( ), // 64-bit address output
  .avmm_0_rw_byteenable( ), // 8-bit byteenable output
  .avmm_0_rw_read      ( ), // 1-bit read output
  .avmm_0_rw_readdata  ( ), // 64-bit readdata input
  .avmm_0_rw_write     ( ), // 1-bit write output
  .avmm_0_rw_writedata ( )  // 64-bit writedata output
);
