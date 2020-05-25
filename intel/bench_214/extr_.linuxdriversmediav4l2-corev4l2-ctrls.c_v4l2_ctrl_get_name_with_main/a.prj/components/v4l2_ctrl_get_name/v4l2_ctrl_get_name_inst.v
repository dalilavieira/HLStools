// Example instance of the top level module for: 
//     v4l2_ctrl_get_name
// To include this component in your design, include: 
//     v4l2_ctrl_get_name.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

v4l2_ctrl_get_name v4l2_ctrl_get_name_inst (
  // Interface: clock (clock end)
  .clock     ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn    ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start     ( ), // 1-bit valid input
  .busy      ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done      ( ), // 1-bit valid output
  .stall     ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata( ), // 64-bit data output
  // Interface: id (conduit sink)
  .id        ( )  // 32-bit data input
);
