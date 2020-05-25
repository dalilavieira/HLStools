// Example instance of the top level module for: 
//     v4l2_detect_cvt
// To include this component in your design, include: 
//     v4l2_detect_cvt.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

v4l2_detect_cvt v4l2_detect_cvt_inst (
  // Interface: clock (clock end)
  .clock                      ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                     ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start                      ( ), // 1-bit valid input
  .busy                       ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                       ( ), // 1-bit valid output
  .stall                      ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata                 ( ), // 1-bit data output
  // Interface: frame_height (conduit sink)
  .frame_height               ( ), // 32-bit data input
  // Interface: hfreq (conduit sink)
  .hfreq                      ( ), // 32-bit data input
  // Interface: vsync (conduit sink)
  .vsync                      ( ), // 32-bit data input
  // Interface: active_width (conduit sink)
  .active_width               ( ), // 32-bit data input
  // Interface: polarities (conduit sink)
  .polarities                 ( ), // 32-bit data input
  // Interface: interlaced (conduit sink)
  .interlaced                 ( ), // 1-bit data input
  // Interface: fmt (conduit sink)
  .fmt                        ( ), // 64-bit data input
  // Interface: CVT_CELL_GRAN (conduit sink)
  .CVT_CELL_GRAN              ( ), // 64-bit data input
  // Interface: CVT_C_PRIME (conduit sink)
  .CVT_C_PRIME                ( ), // 64-bit data input
  // Interface: CVT_HSYNC_PERCENT (conduit sink)
  .CVT_HSYNC_PERCENT          ( ), // 64-bit data input
  // Interface: CVT_MIN_VSYNC_BP (conduit sink)
  .CVT_MIN_VSYNC_BP           ( ), // 64-bit data input
  // Interface: CVT_MIN_V_BPORCH (conduit sink)
  .CVT_MIN_V_BPORCH           ( ), // 64-bit data input
  // Interface: CVT_MIN_V_PORCH_RND (conduit sink)
  .CVT_MIN_V_PORCH_RND        ( ), // 64-bit data input
  // Interface: CVT_M_PRIME (conduit sink)
  .CVT_M_PRIME                ( ), // 64-bit data input
  // Interface: CVT_PXL_CLK_GRAN (conduit sink)
  .CVT_PXL_CLK_GRAN           ( ), // 64-bit data input
  // Interface: CVT_PXL_CLK_GRAN_RB_V2 (conduit sink)
  .CVT_PXL_CLK_GRAN_RB_V2     ( ), // 64-bit data input
  // Interface: CVT_RB_H_BLANK (conduit sink)
  .CVT_RB_H_BLANK             ( ), // 64-bit data input
  // Interface: CVT_RB_H_SYNC (conduit sink)
  .CVT_RB_H_SYNC              ( ), // 64-bit data input
  // Interface: CVT_RB_MIN_V_BLANK (conduit sink)
  .CVT_RB_MIN_V_BLANK         ( ), // 64-bit data input
  // Interface: CVT_RB_MIN_V_BPORCH (conduit sink)
  .CVT_RB_MIN_V_BPORCH        ( ), // 64-bit data input
  // Interface: CVT_RB_V2_H_BLANK (conduit sink)
  .CVT_RB_V2_H_BLANK          ( ), // 64-bit data input
  // Interface: CVT_RB_V2_MIN_V_FPORCH (conduit sink)
  .CVT_RB_V2_MIN_V_FPORCH     ( ), // 64-bit data input
  // Interface: CVT_RB_V_BPORCH (conduit sink)
  .CVT_RB_V_BPORCH            ( ), // 64-bit data input
  // Interface: CVT_RB_V_FPORCH (conduit sink)
  .CVT_RB_V_FPORCH            ( ), // 64-bit data input
  // Interface: V4L2_DV_BT_656_1120 (conduit sink)
  .V4L2_DV_BT_656_1120        ( ), // 64-bit data input
  // Interface: V4L2_DV_BT_STD_CVT (conduit sink)
  .V4L2_DV_BT_STD_CVT         ( ), // 64-bit data input
  // Interface: V4L2_DV_FL_HALF_LINE (conduit sink)
  .V4L2_DV_FL_HALF_LINE       ( ), // 64-bit data input
  // Interface: V4L2_DV_FL_REDUCED_BLANKING (conduit sink)
  .V4L2_DV_FL_REDUCED_BLANKING( ), // 64-bit data input
  // Interface: V4L2_DV_HSYNC_POS_POL (conduit sink)
  .V4L2_DV_HSYNC_POS_POL      ( ), // 64-bit data input
  // Interface: V4L2_DV_INTERLACED (conduit sink)
  .V4L2_DV_INTERLACED         ( ), // 64-bit data input
  // Interface: V4L2_DV_PROGRESSIVE (conduit sink)
  .V4L2_DV_PROGRESSIVE        ( ), // 64-bit data input
  // Interface: V4L2_DV_VSYNC_POS_POL (conduit sink)
  .V4L2_DV_VSYNC_POS_POL      ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address          ( ), // 64-bit address output
  .avmm_0_rw_byteenable       ( ), // 8-bit byteenable output
  .avmm_0_rw_read             ( ), // 1-bit read output
  .avmm_0_rw_readdata         ( ), // 64-bit readdata input
  .avmm_0_rw_write            ( ), // 1-bit write output
  .avmm_0_rw_writedata        ( )  // 64-bit writedata output
);
