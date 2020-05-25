// Example instance of the top level module for: 
//     ff_snow_horizontal_compose97i
// To include this component in your design, include: 
//     ff_snow_horizontal_compose97i.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

ff_snow_horizontal_compose97i ff_snow_horizontal_compose97i_inst (
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
  // Interface: b (conduit sink)
  .b                   ( ), // 64-bit data input
  // Interface: temp (conduit sink)
  .temp                ( ), // 64-bit data input
  // Interface: width (conduit sink)
  .width               ( ), // 32-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address   ( ), // 64-bit address output
  .avmm_0_rw_byteenable( ), // 8-bit byteenable output
  .avmm_0_rw_read      ( ), // 1-bit read output
  .avmm_0_rw_readdata  ( ), // 64-bit readdata input
  .avmm_0_rw_write     ( ), // 1-bit write output
  .avmm_0_rw_writedata ( )  // 64-bit writedata output
);
