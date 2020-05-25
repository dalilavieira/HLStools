// Example instance of the top level module for: 
//     emscripten_dom_vk_to_string
// To include this component in your design, include: 
//     emscripten_dom_vk_to_string.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

emscripten_dom_vk_to_string emscripten_dom_vk_to_string_inst (
  // Interface: clock (clock end)
  .clock      ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn     ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start      ( ), // 1-bit valid input
  .busy       ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done       ( ), // 1-bit valid output
  .stall      ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata ( ), // 64-bit data output
  // Interface: dom_vk_code (conduit sink)
  .dom_vk_code( )  // 32-bit data input
);
