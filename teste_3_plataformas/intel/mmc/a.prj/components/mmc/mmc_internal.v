// (C) 1992-2019 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 

// Generated by Intel(R) HLS Compiler, Version 19.4.0 Build 64

/////////////////////////////////////////////////////////////////
// MODULE mmc_internal
/////////////////////////////////////////////////////////////////
module mmc_internal
(
   input logic clock,
   input logic resetn,
   input logic [31:0] a,
   input logic [31:0] b,
   input logic start,
   output logic busy,
   output logic done,
   input logic stall,
   output logic [31:0] returndata
);
   // INST mmc_internal of mmc_function_wrapper
   mmc_function_wrapper mmc_internal
   (
      .clock(clock),
      .resetn(resetn),
      .a(a),
      .b(b),
      .start(start),
      .busy(busy),
      .done(done),
      .stall(stall),
      .returndata(returndata)
   );

endmodule

