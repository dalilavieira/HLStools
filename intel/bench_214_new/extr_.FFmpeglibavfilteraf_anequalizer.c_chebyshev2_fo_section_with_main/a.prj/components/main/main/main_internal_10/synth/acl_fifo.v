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


//===----------------------------------------------------------------------===//
//
// Parameterized FIFO with input and output registers and ACL pipeline
// protocol ports.
//
//===----------------------------------------------------------------------===//

`default_nettype none

module acl_fifo (
	clock,
	resetn,
	data_in,
	data_out,
	valid_in,
	valid_out,
	stall_in,
	stall_out,
	usedw,
	empty,
	full,
	almost_full,
  ecc_err_status);

	function integer my_local_log;
	input [31:0] value;
		for (my_local_log=0; value>0; my_local_log=my_local_log+1)
			value = value>>1;
	endfunction		
	
	parameter DATA_WIDTH = 32;
	parameter DEPTH = 256;
	parameter NUM_BITS_USED_WORDS = DEPTH == 1 ? 1 : my_local_log(DEPTH-1);
	parameter ALMOST_FULL_VALUE = 0;
	parameter LPM_HINT = "unused";
    parameter string IMPL = "basic";   // impl: (basic|pow_of_2_full|pow_of_2_full_reg_data_in|pow_of_2_full_reg_output_accepted|pow_of_2_full_reg_data_in_reg_output_accepted)
    parameter bit ASYNC_RESET = 1;          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
    parameter bit SYNCHRONIZE_RESET = 0;    // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)
    parameter enable_ecc = "FALSE";               // Enable error correction coding

	input wire clock, stall_in, valid_in, resetn;
	output logic stall_out, valid_out;
	input wire [DATA_WIDTH-1:0] data_in;
	output logic [DATA_WIDTH-1:0] data_out;
	output logic [NUM_BITS_USED_WORDS-1:0] usedw;
    output logic empty, full, almost_full;
    output logic [1:0] ecc_err_status; // ecc status signals
    
    logic aclrn, sclrn;
    acl_reset_handler
    #(
        .ASYNC_RESET            (ASYNC_RESET),
        .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
        .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
        .PULSE_EXTENSION        (0),
        .PIPE_DEPTH             (1),
        .NUM_COPIES             (1)
    )
    acl_reset_handler_inst
    (
        .clk                    (clock),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (),
        .o_sclrn                (sclrn)
    );
    

  generate
    if ((IMPL == "pow_of_2_full") || 
        (IMPL == "pow_of_2_full_reg_output_accepted") ||
        (IMPL == "pow_of_2_full_reg_data_in") ||
        (IMPL == "pow_of_2_full_reg_data_in_reg_output_accepted"))
    begin
          localparam DEPTH_LOG2 = $clog2(DEPTH);
          localparam DEPTH_SNAPPED_TO_POW_OF_2 = 1 << DEPTH_LOG2;
          localparam FULL_COUNTER_OFFSET = DEPTH_SNAPPED_TO_POW_OF_2 - DEPTH;
          
          local