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
// acl_ffwddst
// 
// This module is a 'fast forward destination'.  It is used by the HLD compiler as the endpoint to an acl_ffwdsrc
// (fast forward source) IP.  This module can be configured to have capacity of 0 or 1, and latency of 0 or 1.
// It can also be configured for the case where the input data (data_in port) is guaranteed to be valid at least
// one clock cycle before the valid (valid_in) arrives.  Setting DATA_IN_EARLINESS is purely an area optimization,
// it eliminates the need for a mux at the output of the internal data register.
// The purpose of this pair of IP blocks is to allow data to be forwarded later in the schedule without requiring 
// registers to delay the data, and can only be used in circumstances where the compiler can guarantee this is safe.

`default_nettype none

module acl_ffwddst #(
    parameter WIDTH             = 1,            // width of the source_in/source_out busses, minimum 1
    parameter STALL_FREE        = 1,            // When set to 1, stall_in is ignored and this block is implemented as wires from input to output
    parameter MAX_LATENCY       = 0,            // maximum latency allowed through this block, >=0, values >1 have no impact at the moment on actual latency
    parameter MIN_CAPACITY      = 0,            // Must be 0 when STALL_FREE=1, must be 1 when STALL_FREE=0
    parameter DATA_IN_EARLINESS = 0,            // 0 or 1.  When set to 1, indicates that the data_in port is guaranteed to have correct data 1 clock cycle before valid_in arrives (note data_in must hold that data until the valid has been accepted)
    parameter ASYNC_RESET       = 1,            // 1:resetn is used as an asynchonous reset, , 0:resetn is used as a synchronous reset
    parameter SYNCHRONIZE_RESET = 0             // 1 - add a local synchronizer to the incoming reset signal
) (
    input  wire                 clock  ,        // all inputs and outputs are synchronous with this clock
    input  wire                 resetn  ,       // all inputs and outputs are synchronous with this clock
    input  wire  [WIDTH-1:0]    data_in ,        // input data from the acl_ffwdsrc
    input  wire                 valid_in,        // valid signal from an upstream block (NOT the acl_ffwdsrc, which does not have a stall/valid interface)
    output logic                stall_out,        // upstream stall signal, a copy of the stall_in input
    output logic [WIDTH-1:0]    data_out ,        // data out of this block, qualified by valid_out/stall_in
    output logic                valid_out,        // output valid, comes from the valid_in signal and honours the stall/valid protocol by observing stall_in
    input  wire                 stall_in         // input stall from downstream, data_out will be held static if valid_out and stall_in are asserted (ignored if STALL_FREE=1)
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
        if (STALL_FREE != 0 && STALL_FREE != 1) 
            $fatal(1, "Illegal parameterization: expecting STALL_FREE = 0 or 1");
        if (MAX_LATENCY < 0) 
            $fatal(1, "Illegal parameterization: expecting MAX_LATENCY >= 0");
        if (MIN_CAPACITY != 0 && MIN_CAPACITY != 1) 
            $fatal(1, "Illegal parameterization: expecting MIN_CAPACITY = 0 or 1");
        if (DATA_IN_EARLINESS != 0 && DATA_IN_EARLINESS != 1) 
            $fatal(1, "Illegal parameterization: expecting DATA_IN_EARLINESS = 0 or 1");
        if (STALL_FREE == 0) begin
            if (MIN_CAPACITY != 1)
                $fatal(1, "Illegal parameterization: MIN_CAPACITY must be 1 when STALL_FREE = 0");
        end else begin
            if (MIN_CAPACITY != 0)
                $fatal(1, "Illegal parameterization: MIN_CAPACITY must be 0 when STALL_FREE = 1");
        end
    end

    ///////////////////////////////////////
    // Reset signal replication and pipelining
    //
    // In order to ensure that the reset signal is not a limiting factor when
    // doing retiming, we create multiple copies of the reset signal and
    // pipeline each adequately.
    ///////////////////////////////////////
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


    generate
        if ( STALL_FREE ) begin             : gen_stall_free

            assign stall_out = '0;
            assign data_out = data_in;
            assign valid_out = valid_in;

        end else begin                      : gen_stallable

            logic [WIDTH-1:0]   data_reg;       // register the input data
            logic               valid_reg;      // asserted when data_reg contains valid data

            // capture new data if we are not stalling
            always_ff @(posedge clock) begin
                if (~stall_out) begin
                    data_reg <= data_in;
                end
            end

            // track whether we have a valid word stored in this block
            always_ff @(posedge clock or negedge aclrn) begin
                if (~aclrn) begin
                    valid_reg <= '0;
                end else begin

                    if (MAX_LATENCY == 0) begin                     // when MAX_LATENCY=0, valid can flow from input straight to output without ever being stored in this block
                        if ( valid_in & ~stall_out & stall_in ) begin   // new valid accepted at input, being stalled at output, so we store the valid internaly
                            valid_reg <= '1;
                        end else if ( ~stall_in ) begin                 // no new valid coming in, current valid (if any) accepted at output, so clear internal valid
                            valid_reg <= '0;
                        end
                    end else begin                                  // when MAX_LATENCY=1, valid must be stored in this block before it can be output, no direct path from valid_in to valid_out on the same clock cycle
                        if ( valid_in & ~stall_out ) begin              // new valid accepted at input, MAX_LATENCY = 1 so all valids must go through this register, no direct path to output
                            valid_reg <= '1;
                        end else if ( ~stall_in ) begin                 // no new valid coming in, current valid (if any) is being accepted at output (no stall coming in), so clear internal valid
                            valid_reg <= '0;
                        end
                    end

                    if (~sclrn) begin
                        valid_reg <= '0;
                    end

                end
            end

            assign stall_out = valid_reg & stall_in;
            assign data_out = ( (MAX_LATENCY == 0) && (DATA_IN_EARLINESS == 0) ) ?      // when data in is avaliable early or we are allowed latency, we can always pass data_in through the register
                                ( valid_reg ? data_reg : data_in ) :    // input data must be able to pass straight to output when no valid data is stored in the local register
                                data_reg;                               // input data always flows through the local register
            assign valid_out = MAX_LATENCY == 0 ?
                                ( valid_reg | valid_in ) :              // if MAX_LATENCY=0, input valid can pass straight to output
                                valid_reg;                              // if MAX_LATENCY=1, input valid always flows through the local register

        end
    endgenerate

endmodule

`default_nettype wire
