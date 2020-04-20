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

module acl_ic_slave_wrp #(
    parameter integer DATA_W = 32,              // > 0
    parameter integer BURSTCOUNT_W = 4,         // > 0
    parameter integer ADDRESS_W = 32,           // > 0
    parameter integer BYTEENA_W = DATA_W / 8,   // > 0
    parameter integer ID_W = 1,                 // > 0

    parameter integer NUM_MASTERS = 1,          // > 0
    // If the fifo depth is zero, the module will perform the write ack here,
    // otherwise it will take the write ack from the input s_writeack.
    parameter integer FIFO_DEPTH = 0,           // >= 0 (0 disables)
    parameter integer PIPELINE = 1,             // 0|1

    parameter ASYNC_RESET=1,                    // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
    parameter SYNCHRONIZE_RESET=0               // set to '1' to pass the incoming reset signal through a synchronizer before use
)
(
    input wire clock,
    input wire resetn,

    acl_arb_intf m_intf,

    input wire s_writeack,

    acl_ic_wrp_intf wrp_intf,

    output logic stall
);

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

    generate
    if( NUM_MASTERS > 1 )
    begin
        // This slave endpoint may not directly talk to the ACTUAL slave.  In
        // this case we need a fifo to store which master each write ack should
        // go to.  If FIFO_DEPTH is 0 then we assume the writeack can be
        // generated right here (the way it was done originally)
        if( FIFO_DEPTH > 0 )
        begin
            // We don't have to worry about bursts, we'll fifo each transaction
            // since writeack behaves like readdatavalid
            logic rf_empty, rf_full;

            acl_ll_fifo #(
                .WIDTH( ID_W ),
                .DEPTH( FIFO_DEPTH ),
                .ASYNC_RESET(ASYNC_RESET),
                .SYNCHRONIZE_RESET(0)
            )
            write_fifo(
                .clk( clock ),
                .reset( ~resetn_synchronized ),
                .data_in( m_intf.req.id ),
                .write( ~m_intf.stall & m_intf.req.write ),
                .data_out( wrp_intf.id ),
                .read( wrp_intf.ack & ~rf_empty),
                .empty( rf_empty ),
                .full( rf_full )
            );

            // Register slave writeack to guarantee fifo output is ready
            always @( posedge clock or negedge aclrn )
            begin
                if( ~aclrn ) begin
                    wrp_intf.ack <= 1'b0;
                end else begin
                    wrp_intf.ack <= s_writeack;
                    if (~sclrn[0]) wrp_intf.ack <= 1'b0;
                end
            end

            assign stall = rf_full;
            
        end
        else if( PIPELINE == 1 )
        begin
            assign stall = 1'b0;
            always @( posedge clock or negedge aclrn )
                if( ~aclrn )
                begin
                    wrp_intf.ack <= 1'b0;
                    wrp_intf.id <= 'x;      // don't need to reset
                end
                else
                begin
                    // Always register the id. The ack signal acts as the enable.
                    wrp_intf.id <= m_intf.req.id;
                    wrp_intf.ack <= 1'b0;

                    if( ~m_intf.stall & m_intf.req.write )
                        // A valid write cycle. Ack it.
                        wrp_intf.ack <= 1'b1;
                    if (~sclrn[0]) wrp_intf.ack <= 1'b0;
                end
        end
        else
        begin
            assign wrp_intf.id = m_intf.req.id;
            assign wrp_intf.ack = ~m_intf.stall & m_intf.req.write;
            assign stall = 1'b0;
        end
    end
    else // NUM_MASTERS == 1
    begin
        // Only one master so don't need to check the id.
        if ( FIFO_DEPTH == 0 )
        begin
            assign wrp_intf.ack = ~m_intf.stall & m_intf.req.write;
            assign stall = 1'b0;
        end
        else
        begin
            assign wrp_intf.ack = s_writeack;
            assign stall = 1'b0;
        end
    end
    endgenerate

endmodule

`default_nettype wire
