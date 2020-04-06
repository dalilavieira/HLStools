//// (C) 1992-2019 Intel Corporation.                            
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

//
// acl_ffwdsrc
//
// This module is a 'fast forward source'.  It is used by the HLD compiler as the source to drive an acl_ffwddst
// (fast forward destination) IP.  This module can be configured to have capacity of 0 or 1, and latency of 0 or 1.
// The purpose of this pair of IP blocks is to allow data to be forwarded later in the schedule without requiring 
// registers to delay the data, and can only be used in circumstances where the compiler can guarantee this is safe.

`default_nettype none

module acl_ffwdsrc #(
    parameter WIDTH           = 1,              // width of the source_in/source_out busses, minimum 1
    parameter MAX_LATENCY     = 1,              // maximum latency allowed through this block, >=0, values >1 have no impact at the moment on actual latency
    parameter MIN_CAPACITY    = 1               // only a value of 1 is supported, this is here to emphasize that increasing MAX_LATENCY does NOT guarantee any capacity in this block
) (
    input  wire                 clock,          // all inputs and outputs are synchronous with this clock
    input  wire  [WIDTH-1:0]    source_in,
    output logic [WIDTH-1:0]    source_out,
    input  wire                 predicate_in,   // 1 = input is NOT valid and should be ignored, 0 = input is valid
    input  wire                 valid_in
);

    ///////////////////////////////////////
    // Parameter checking
    //
    // Generate an error if any illegal parameter settings or combinations are used
    ///////////////////////////////////////
    initial /* synthesis enable_verilog_initial_construct */
    begin
        if (WIDTH<=0) 
            $fatal(1, "Illegal parameterization: expecting WIDTH > 0");
        if (MAX_LATENCY < 0) 
            $fatal(1, "Illegal parameterization: expecting MAX_LATENCY >= 0");
        if (MIN_CAPACITY != 1) 
            $fatal(1, "Illegal parameterization: expecting MIN_CAPACITY = 1");
    end

    // capture the incoming data into a local register
    logic [WIDTH-1:0] source_NO_SHIFT_REG;      // name has special significance, a .qsf assignment can be used to ensure this register does not bet combined into a shift register
    always_ff @(posedge clock) begin
        if (valid_in & ~predicate_in) begin
            source_NO_SHIFT_REG <= source_in;
        end
    end

    // when MAX_LATENCY = 0, input data must pass through to output immediately, otherwise always use data stored in the local register
    assign source_out = (valid_in == 1'b1 && predicate_in == 1'b0 && MAX_LATENCY == 0) ? source_in : source_NO_SHIFT_REG;

endmodule

`default_nettype wire
