// Example instance of the top level module for: 
//     cmain
// To include this component in your design, include: 
//     cmain.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

cmain cmain_inst (
  // Interface: clock (clock end)
  .clock ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start ( ), // 1-bit valid input
  .busy  ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done  ( ), // 1-bit valid output
  .stall ( )  // 1-bit stall input
);
