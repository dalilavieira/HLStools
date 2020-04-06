// Example instance of the top level module for: 
//     mandelbrot
// To include this component in your design, include: 
//     mandelbrot.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

mandelbrot mandelbrot_inst (
  // Interface: clock (clock end)
  .clock  ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start  ( ), // 1-bit valid input
  .busy   ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done   ( ), // 1-bit valid output
  .stall  ( ), // 1-bit stall input
  // Interface: xmax (conduit sink)
  .xmax   ( ), // 32-bit data input
  // Interface: xmin (conduit sink)
  .xmin   ( ), // 32-bit data input
  // Interface: ymax (conduit sink)
  .ymax   ( ), // 32-bit data input
  // Interface: ymin (conduit sink)
  .ymin   ( ), // 32-bit data input
  // Interface: maxiter (conduit sink)
  .maxiter( ), // 32-bit data input
  // Interface: xres (conduit sink)
  .xres   ( ), // 32-bit data input
  // Interface: yres (conduit sink)
  .yres   ( ), // 32-bit data input
  // Interface: dx (conduit sink)
  .dx     ( ), // 32-bit data input
  // Interface: dy (conduit sink)
  .dy     ( )  // 32-bit data input
);
