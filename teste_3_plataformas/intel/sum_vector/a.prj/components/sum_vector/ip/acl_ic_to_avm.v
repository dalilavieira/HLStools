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

module acl_ic_to_avm #(
    parameter integer DATA_W = 256,
    parameter integer BURSTCOUNT_W = 6,
    parameter integer ADDRESS_W = 32,
    parameter integer BYTEENA_W = DATA_W / 8,
    parameter integer ID_W = 1,
    parameter integer LATENCY = 0,
    parameter integer USE_WRITE_ACK = 0,
    parameter integer NO_IDLE_STALL = 0,    // De-assert upstream wait_request when the input is idle to allow upstream read/writes to propagate to interface
    parameter         ASYNC_RESET=1,        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
    parameter         SYNCHRONIZE_RESET=0,   // set to '1' to pass the incoming reset signal through a synchronizer before use
    parameter integer ENABLE_WAITREQUEST_ALLOWANCE = 0 // Causes avm_read/write to deassert immediately when avm_waitrequest is asserted. This makes the AVM interface compatible with a waitrequest-allowance AVMM interface.
)
(
    // Clock/Reset
    input wire clock,
    input wire resetn,

    // AVM interface
    output logic avm_enable,
    output logic avm_read,
    output logic avm_write,
    output logic [DATA_W-1:0] avm_writedata,
    output logic [BURSTCOUNT_W-1:0] avm_burstcount,
    output logic [ADDRESS_W-1:0] avm_address,
    output logic [BYTEENA_W-1:0] avm_byteenable,
    input wire  avm_waitrequest,
    input wire  avm_readdatavalid,
    input wire  [DATA_W-1:0] avm_readdata,
    input wire  avm_writeack,   // not a true Avalon signal, so ignore this

    // IC interface
    input wire  ic_arb_request,
    input wire  ic_arb_enable,
    input wire  ic_arb_read,
    input wire  ic_arb_write,
    input wire  [DATA_W-1:0] ic_arb_writedata,
    input wire  [BURSTCOUNT_W-1:0] ic_arb_burstcount,
    input wire  [ADDRESS_W-$clog2(DATA_W / 8)-1:0] ic_arb_address,
    input wire  [BYTEENA_W-1:0] ic_arb_byteenable,
    input wire  [ID_W-1:0] ic_arb_id,

    output logic ic_arb_stall,

    output logic ic_wrp_ack,

    output logic ic_rrp_datavalid,
    output logic [DATA_W-1:0] ic_rrp_data
);
    logic readdatavalid;
    logic waitrequest;

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 1;
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
    
    
    assign avm_enable = ic_arb_enable;
    // If ENABLE_WAITREQUEST_ALLOWANCE==1 then avm_read/write must de-assert immediately when avm_waitrequest is asserted.
    assign avm_read = ic_arb_read && (!avm_waitrequest || !ENABLE_WAITREQUEST_ALLOWANCE);
    assign avm_write = ic_arb_write && (!avm_waitrequest || !ENABLE_WAITREQUEST_ALLOWANCE);
    assign avm_writedata = ic_arb_writedata;
    assign avm_burstcount = ic_arb_burstcount;
    assign avm_address = {ic_arb_address, {$clog2(DATA_W / 8){1'b0}}};
    assign avm_byteenable = ic_arb_byteenable;

    assign ic_arb_stall = NO_IDLE_STALL ? waitrequest && (ic_arb_read || ic_arb_write) : waitrequest;
    assign ic_rrp_datavalid = readdatavalid;
    assign ic_rrp_data = avm_readdata;
    
    generate
        if (USE_WRITE_ACK == 1) begin
            assign ic_wrp_ack = avm_writeack;
        end else begin
            assign ic_wrp_ack = avm_write & ~waitrequest;
        end
    
        if (LATENCY == 0) begin
            assign readdatavalid = avm_readdatavalid;
            assign waitrequest   = avm_waitrequest;
        end else begin
            logic [LATENCY-1:0] readdatavalid_sr;

            always @(posedge clock or negedge aclrn) begin
                if (~aclrn) begin
                    readdatavalid_sr <= {LATENCY{1'b0}};
                end else begin
                    for (integer i = LATENCY-1; i > 0; i--) begin
                        readdatavalid_sr[i] <= readdatavalid_sr[i-1];
                    end
                    readdatavalid_sr[0] <= avm_read;
                    if (~sclrn[0]) readdatavalid_sr <= {LATENCY{1'b0}};
                end
            end

            assign readdatavalid = readdatavalid_sr[LATENCY-1];
            assign waitrequest   = 1'b0;
        end
    endgenerate

endmodule

`default_nettype wire
