// Example instance of the top level module for: 
//     ff_rgb24toyv12_c
// To include this component in your design, include: 
//     ff_rgb24toyv12_c.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

ff_rgb24toyv12_c ff_rgb24toyv12_c_inst (
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
  // Interface: src (conduit sink)
  .src                 ( ), // 64-bit data input
  // Interface: ydst (conduit sink)
  .ydst                ( ), // 64-bit data input
  // Interface: udst (conduit sink)
  .udst                ( ), // 64-bit data input
  // Interface: vdst (conduit sink)
  .vdst                ( ), // 64-bit data input
  // Interface: width (conduit sink)
  .width               ( ), // 32-bit data input
  // Interface: height (conduit sink)
  .height              ( ), // 32-bit data input
  // Interface: lumStride (conduit sink)
  .lumStride           ( ), // 32-bit data input
  // Interface: chromStride (conduit sink)
  .chromStride         ( ), // 32-bit data input
  // Interface: srcStride (conduit sink)
  .srcStride           ( ), // 32-bit data input
  // Interface: rgb2yuv (conduit sink)
  .rgb2yuv             ( ), // 64-bit data input
  // Interface: BU_IDX (conduit sink)
  .BU_IDX              ( ), // 64-bit data input
  // Interface: BV_IDX (conduit sink)
  .BV_IDX              ( ), // 64-bit data input
  // Interface: BY_IDX (conduit sink)
  .BY_IDX              ( ), // 64-bit data input
  // Interface: GU_IDX (conduit sink)
  .GU_IDX              ( ), // 64-bit data input
  // Interface: GV_IDX (conduit sink)
  .GV_IDX              ( ), // 64-bit data input
  // Interface: GY_IDX (conduit sink)
  .GY_IDX              ( ), // 64-bit data input
  // Interface: RGB2YUV_SHIFT (conduit sink)
  .RGB2YUV_SHIFT       ( ), // 64-bit data input
  // Interface: RU_IDX (conduit sink)
  .RU_IDX              ( ), // 64-bit data input
  // Interface: RV_IDX (conduit sink)
  .RV_IDX              ( ), // 64-bit data input
  // Interface: RY_IDX (conduit sink)
  .RY_IDX              ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address   ( ), // 64-bit address output
  .avmm_0_rw_byteenable( ), // 8-bit byteenable output
  .avmm_0_rw_read      ( ), // 1-bit read output
  .avmm_0_rw_readdata  ( ), // 64-bit readdata input
  .avmm_0_rw_write     ( ), // 1-bit write output
  .avmm_0_rw_writedata ( )  // 64-bit writedata output
);
