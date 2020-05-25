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
// C backend 'pipeline' primitive
//
//===----------------------------------------------------------------------===//

`default_nettype none

module acl_pipeline (
	clock,
	resetn,
	data_in,
    valid_out,
    stall_in,
    stall_out,
    valid_in,
    data_out,
	initeration_in,
    initeration_stall_out,
    initeration_valid_in,
    not_exitcond_in,
    not_exitcond_stall_out,
    not_exitcond_valid_in,
    pipeline_valid_out,
    pipeline_stall_in,
    exiting_valid_out,
    ecc_err_status
);

    parameter FIFO_DEPTH = 1;
    parameter string STYLE = "SPECULATIVE";     // "NON_SPECULATIVE"/"SPECULATIVE"
    parameter ENABLED = 0;
    parameter bit ASYNC_RESET = 1;          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
    parameter bit SYNCHRONIZE_RESET = 0;    // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)
    parameter enable_ecc = "FALSE";         // Enable error correction coding
    
input wire clock, resetn, stall_in, valid_in, initeration_valid_in, not_exitcond_valid_in, pipeline_stall_in;
output logic stall_out, valid_out, initeration_stall_out, not_exitcond_stall_out, pipeline_valid_out;
input wire data_in, initeration_in, not_exitcond_in;
output logic data_out;
output logic exiting_valid_out;
output logic  [1:0] ecc_err_status;  // ecc status signals

  generate
    // Instantiate 2 pops and 1 push
    if (STYLE == "SPECULATIVE")
    begin
    
logic aclrn, sclrn, resetn_synchronized;
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
    .o_resetn_synchronized  (resetn_synchronized),
    .o_sclrn                (sclrn)
);

logic valid_pop1, valid_pop2;
logic stall_push, stall_pop2;
logic data_pop2, data_push;

acl_pop pop1(
   .clock(clock),
   .resetn(resetn_synchronized),
   .dir(data_in),
   .predicate(1'b0),
   .data_in(1'b1),
   .valid_out(valid_pop1),
   .stall_in(stall_pop2),
   .stall_out(stall_out),
   .valid_in(valid_in),
   .data_out(data_pop2),
   .feedback_in(initeration_in),
   .feedback_valid_in(initeration_valid_in),
   .feedback_stall_out(initeration_stall_out)
);

defparam pop1.DATA_WIDTH = 1;
defparam pop1.ASYNC_RESET = ASYNC_RESET;
defparam pop1.SYNCHRONIZE_RESET = 0;

acl_pop pop2(
   .clock(clock),
   .resetn(resetn_synchronized),
   .dir(data_pop2),
   .predicate(1'b0),
   .data_in(1'b0),
   .valid_out(valid_pop2),
   .stall_in(stall_push),
   .stall_out(stall_pop2),
   .valid_in(valid_pop1),
   .data_out(data_push),
   .feedback_in(~not_exitcond_in),
   .feedback_valid_in(not_exitcond_valid_in),
   .feedback_stall_out(not_exitcond_stall_out)
);

defparam pop2.DATA_WIDTH = 1;
defparam pop2.ASYNC_RESET = ASYNC_RESET;
defparam pop2.SYNCHRONIZE_RESET = 0;

logic p_out, p_valid_out, p_stall_in;

acl_push push(
   .clock(clock),
   .resetn(resetn_synchronized),
   .dir(1'b1),
   .predicate(1'b0),
   .data_in(~data_push),
   .valid_out(valid_out),
   .stall_in(stall_in),
   .stall_out(stall_push),
   .valid_in(valid_pop2),
   .data_out(data_out),
   .feedback_out(p_out),
   .feedback_valid_out(p_valid_out),
   .feedback_stall_in(p_stall_in),
   .ecc_err_status(ecc_err_status)
);

// signal when to spawn a new iteration
assign pipeline_valid_out = p_out & p_valid_out;
assign p_stall_in = pipeline_stall_in;

// signal when the last iteration is exiting 
assign exiting_valid_out = ~p_out & p_valid_out & ~pipeline_stall_in; 

defparam push.DATA_WIDTH = 1;
defparam push.FIFO_DEPTH = FIFO_DEPTH;
defparam push.ENABLED = ENABLED;
defparam push.ASYNC_RESET = ASYNC_RESET;
defparam push.SYNCHRONIZE_RESET = 0;
defparam push.enable_ecc = enable_ecc;

    end
    // Instantiate 1 pop and 1 push
    else
    begin

//////////////////////////////////////////////////////
// If there is no speculation, directly connect
// exit condition to valid

logic valid_pop2;
logic stall_push;
logic data_push;

logic p_out, p_valid_out, p_stall_in;

assign p_out = not_exitcond_in;
assign p_valid_out = not_exitcond_valid_in ;
assign not_exitcond_stall_out = p_stall_in;
acl_staging_reg asr(
	.clk(clock), .reset(~resetn),
	.i_valid( valid_in ), .o_stall(stall_out),
	.o_valid( valid_out), .i_stall(stall_in)
	);
defparam asr.ASYNC_RESET = ASYNC_RESET;
defparam asr.SYNCHRONIZE_RESET = SYNCHRONIZE_RESET;

// signal when to spawn a new iteration
assign pipeline_valid_out = p_out & p_valid_out;
assign p_stall_in = pipeline_stall_in;

// signal when the last iteration is exiting 
assign exiting_valid_out = ~p_out & p_valid_out & ~pipeline_stall_in; 


assign initeration_stall_out = 1'b0;  // never stall
    end

  endgenerate

endmodule

`default_nettype wire
