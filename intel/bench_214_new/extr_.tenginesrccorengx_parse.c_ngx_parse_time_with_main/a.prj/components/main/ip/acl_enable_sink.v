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


`default_nettype none

module acl_enable_sink 
#(
    parameter integer DATA_WIDTH = 32,         
    parameter integer PIPELINE_DEPTH = 32,
    parameter integer SCHEDULEII = 1,

    // these parameters are dependent on the latency of the cluster entry and exit nodes
    // overall latency of this IP
    parameter integer IP_PIPELINE_LATENCY_PLUS1 = 1,

    // to support the 0-latency stall free entry, add one more valid bit
    parameter integer ZERO_LATENCY_OFFSET = 1,
    
    parameter ASYNC_RESET=1,                              // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
    parameter SYNCHRONIZE_RESET=0                         // set to '1' to pass the incoming reset signal through a synchronizer before use
)
(
    input  wire  clock,
    input  wire  resetn,
    input  wire  [DATA_WIDTH-1:0] data_in,  
    output logic [DATA_WIDTH-1:0] data_out,
    input  wire  input_accepted,
    input  wire  valid_in,
    output logic valid_out,
    input  wire  stall_in,
    output logic stall_entry,
    output logic enable,
    input  wire  inc_pipelined_thread,
    input  wire  dec_pipelined_thread,
    output logic valid_mask 
);


    wire throttle_pipelined_iterations;  
    
    wire [1:0] threads_count_update;
    wire [$clog2(SCHEDULEII):0] threads_count_update_extended;

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 3;
   logic                         aclrn;
   logic [NUM_RESET_COPIES-1:0]  sclrn;
   logic                         resetn_synchronized;
   acl_reset_handler #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
      .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES)
   ) acl_reset_handler_inst (
      .clk                    (clock),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );
    
    //output of the enable cluster
    assign data_out = data_in;
    assign valid_out = valid_in;
    // if there is no register at the output of this IP than we need to add the valid input to the enable to ensure a capacity of 1
    // Only the old backend has ip latency > 0
    assign enable = (IP_PIPELINE_LATENCY_PLUS1 == 1) ? (~valid_out | ~stall_in) : ~stall_in;
    assign stall_entry = ~enable | throttle_pipelined_iterations;

    // This will be used to mask the valid in order to indicate whether an input is 
    // accepted or not. An input is accepted when valid_mask is 0.
    assign valid_mask = (PIPELINE_DEPTH == 0) ? throttle_pipelined_iterations : stall_entry;

    assign threads_count_update = inc_pipelined_thread - dec_pipelined_thread;
    assign threads_count_update_extended = $signed(threads_count_update);

    //handle II > 1
    reg[$clog2(SCHEDULEII):0] IIschedcount;
    reg[$clog2(SCHEDULEII):0] threads_count;

    always @(posedge clock or negedge aclrn)
    begin
      if (~aclrn) begin
        IIschedcount <= '0;
        threads_count <= '0;
      end else begin
      
        if(enable) begin

          // do not increase the counter if a thread is exiting
          // increasing threads_count is already decreasing the window
          // increasing IIschedcount ends up accepting the next thread too early
          IIschedcount <= (input_accepted && dec_pipelined_thread) ? IIschedcount : (IIschedcount == (SCHEDULEII - 1) ? 0 : (IIschedcount + 1));
          
          if (input_accepted) begin
            threads_count <= threads_count + threads_count_update_extended;
          end
          
        end

        if (~sclrn[0]) begin
          IIschedcount <= '0;
          threads_count <= '0;
        end

      end
    end 

    // allow threads in a window of the II cycles
    // this prevents the next iteration from entering too early
    assign throttle_pipelined_iterations = (IIschedcount >= (threads_count > 0 ? threads_count : 1));

endmodule

`default_nettype wire
