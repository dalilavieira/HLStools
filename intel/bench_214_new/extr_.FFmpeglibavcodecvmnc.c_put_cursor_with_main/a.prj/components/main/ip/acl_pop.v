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
// C backend 'pop' primitive
//
//===----------------------------------------------------------------------===//

// altera message_off 10230

`default_nettype none

module acl_pop (
        clock,
        resetn,

        // input stream from kernel pipeline
        dir,
        valid_in,
        data_in,
        stall_out,
        predicate,

        // downstream, to kernel pipeline
        valid_out,
        stall_in,
        data_out,

        // feedback downstream, from feedback acl_push
        feedback_in,
        feedback_valid_in,
        feedback_stall_out
);

parameter DATA_WIDTH = 32;
parameter string STYLE = "REGULAR";  // REGULAR vs COALESCE
parameter COALESCE_DISTANCE = 1;
parameter INF_LOOP = 0;
parameter bit ASYNC_RESET = 1;          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
parameter bit SYNCHRONIZE_RESET = 0;    // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)

    // this will pop garbage off of the feedback
localparam POP_GARBAGE = STYLE == "COALESCE" ? 1 : 0;

input wire clock, resetn, stall_in, valid_in, feedback_valid_in;
output logic stall_out, valid_out, feedback_stall_out;
input wire [DATA_WIDTH-1:0] data_in;
input wire dir;
input wire predicate;
output logic [DATA_WIDTH-1:0] data_out;
input wire [DATA_WIDTH-1:0] feedback_in;

localparam DISTANCE_WIDTH = ((POP_GARBAGE == 1) && (COALESCE_DISTANCE > 1)) ? $clog2(COALESCE_DISTANCE) : 1;

logic feedback_downstream, data_downstream;

logic pop_garbage;
logic actual_dir;

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
if (STYLE == "BYPASS") begin
  // Turn this pop into wires
  assign valid_out = valid_in;
  assign stall_out = stall_in;
  assign feedback_stall_out = 1'b0;
  assign data_out = data_in;
end else begin
  if(POP_GARBAGE == 0) begin
    // For non-coalesced pops, we don't need to generate the
    // counter logic. Though quartus probably would have sweeped
    // away the extraneous logic, this makes it clear.
    assign pop_garbage = 0;
  end else begin
    logic [DISTANCE_WIDTH-1:0] garbage_count;
    logic pop_garbage_r;
    always @(posedge clock or negedge aclrn)
    begin
      if ( !aclrn ) begin
        pop_garbage_r = 0;
      end
      else begin
        if ( ( garbage_count == {(DISTANCE_WIDTH){1'b0}} ) && (valid_out & ~stall_in & ~predicate) ) begin
          // If the garbage count will hit -1 next cycle then we can start popping garbage
          pop_garbage_r = POP_GARBAGE;
        end
        if ( !sclrn ) begin
          pop_garbage_r = 0;
        end
      end
    end

    assign pop_garbage = pop_garbage_r;

    always @(posedge clock or negedge aclrn)
    begin
      if ( !aclrn ) begin
        garbage_count = COALESCE_DISTANCE-1;
      end
      else begin
        if ( valid_out & ~stall_in & ~predicate) begin
          // If we're predicated then we can't decrement the garbage count this cycle because valid data wasn't fed into the push
          garbage_count = garbage_count - 1'b1;
        end
        if ( !sclrn ) begin
          garbage_count = COALESCE_DISTANCE-1;
        end
      end
    end
  end

  if (INF_LOOP == 1) begin
    // If we're in an infinite loop where feedback_in clears to the value of data_in, we don't need
    // to ever select data_in.  Case:432276
    assign actual_dir = 1'b0;
  end else begin
    assign actual_dir = dir;
  end

  assign feedback_downstream = valid_in & ~actual_dir & feedback_valid_in;
  assign data_downstream = valid_in & actual_dir;

  assign valid_out = feedback_downstream | ( data_downstream & (~pop_garbage | feedback_valid_in ) ) ;

  assign data_out = ~actual_dir ? feedback_in : data_in;

  //assign stall_out = stall_in;
  //assign stall_out = valid_in & ~((feedback_downstream | data_downstream) & ~stall_in);
  // assign stall_out = ~((feedback_downstream | data_downstream) & ~stall_in);
  // stall upstream if
  //   downstream is stalling (stall_in)
  //   I'm waiting for data from feedback (valid_in&~actual_dir&~feedback_valid_in)
  assign stall_out = ( valid_in & ( ( ~actual_dir & ~feedback_valid_in ) |  ( actual_dir & ~feedback_valid_in & pop_garbage ) )  ) | stall_in;

  // don't accept data if:
  //  downstream cannot accept data (stall_in)
  //  data from upstream is selected (data_downstream)
  //  no thread exists to read data (~valid_in)
  //  predicate is high
  assign feedback_stall_out = stall_in  | (data_downstream & ~pop_garbage) | ~valid_in | predicate;

end
endgenerate

endmodule

`default_nettype wire

