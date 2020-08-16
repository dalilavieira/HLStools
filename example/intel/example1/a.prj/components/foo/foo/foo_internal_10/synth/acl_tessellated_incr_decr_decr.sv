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


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Occupancy tracking with one increment and two decrement updates per clock cycle                                                                                                                                   //
//  Designed and optimized by: Jason Thong                                                                                                                                                                            //
//                                                                                                                                                                                                                    //
//  This module reports whether the occupancy is above some user-predefined threshold. There is no access to the occupancy itself since the implementation is highly tessellated. The occupancy can only be modified  //
//  through updates. Each clock cycle, the occupancy may change by -2, -1, 0, or +1. The inputs "decr_a" and "decr_b" are interchangable in the sense that they do the same thing and one can be asserted while the   //
//  other is not or vice versa. Each contributes a -1 to the occupancy update. Likewise the input "incr" contributes a +1 update.                                                                                     //
                                                                                                                                                                                                                      //
//  The "threshold_reached" output is registered. For high fmax, it is strongly recommneded that the "incr", "decr_a", and "decr_b" inputs are all registered. Unlike acl_tessellated_incr_decr_threshold.sv which    //
//  has "raw" and "no_overflow" versions of increment, this module only has the "no_overflow" version. Therefore WRITE_AND_READ_DURING_FULL is implicitly 1. What this means is that if occupancy it at capacity and  //
//  both incr and decr_a are asserted, for example, then occupancy will stay at capacity, e.g. we won't ignore incr.                                                                                                  //
//                                                                                                                                                                                                                    //
//  The design of this module, specifically the tessllation and maximum lateness of each bit, is based on the same priniples from acl_tessellated_incr_decr_threshold.sv. For more information, please see Jason's    //
//  technical deep dive powerpoint in perforce:                                                                                                                                                                       //
//  //depot/docs/hld/ip/acl_incr_decr_threshold.pptx                                                                                                                                                                  //
//                                                                                                                                                                                                                    //
//  Required files:                                                                                                                                                                                                   //
//  - acl_tessellated_incr_decr_decr.sv                                                                                                                                                                               //
//  - acl_tessellated_incr_decr_threshold.sv                                                                                                                                                                          //
//  - acl_reset_handler.sv                                                                                                                                                                                            //
//  - acl_fanout_pipeline.sv                                                                                                                                                                                          //
//  - acl_std_synchronizer_nocut.v                                                                                                                                                                                    //
//                                                                                                                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

`default_nettype none

module acl_tessellated_incr_decr_decr #(
    //general configuration
    parameter int CAPACITY,                       // occupancy starts at INITIAL_OCCUPANCY, incr_no_overflow and decr_no_underflow should never push occupancy below 0 or above CAPACITY
    parameter int THRESHOLD,                      // 1 or larger, up to CAPACITY, 1 checks for not empty, CAPACITY checks for full
    parameter int INITIAL_OCCUPANCY = 0,
    //WRITE_AND_READ_DURING_FULL is implicitly 1 in this implementation, e.g. we don't ignore incr even if occupancy is at capacity
    
    //special behavior needed for some cases in fifo
    parameter bit THRESHOLD_REACHED_AT_RESET = 0, // set to 1 if you want threshold_reached to be high at reset, e.g. fifo appears full at reset
    parameter int RESET_RELEASE_DELAY = 0,        // if tracking something like read_used_words inside a fifo and the fifo has initial occupancy, delay the reset release to match the write to read latency of the fifo
    
    //reset configuration
    parameter bit ASYNC_RESET = 1,                // how do we use reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
    parameter bit SYNCHRONIZE_RESET = 0,          // based on how reset gets to us, what do we need to do: 1 means synchronize reset before consumption (if reset arrives asynchronously), 0 means passthrough (managed externally)
    parameter bit RESET_EVERYTHING = 0,           // intended for partial reconfig debug, set to 1 to reset every register (normally async reset excludes data path and sync reset additionally excludes some control signals)
    parameter bit RESET_EXTERNALLY_HELD = 1       // set to 1 if resetn will be held for at least FIVE clock cycles, otherwise we will internally pulse stretch reset before consumption
)(
    input  wire     clock,
    input  wire     resetn,
    input  wire     incr,
    input  wire     decr_a,
    input  wire     decr_b,
    output logic    threshold_reached
);
    
    //functional model
    //always_ff @(posedge clock) begin
    //    occupancy <= occupancy + incr - decr_a - decr_b;
    //    if (~resetn) occupancy <= INITIAL_OCCUPANCY;
    //end
    //assign threshold_reached = (occupancy >= THRESHOLD);
    
    //reset
    genvar g;
    logic aclrn, sclrn;
    logic sclrn_before_pulse_stretch, sclrn_after_pulse_stretch, sclrn_base;
    logic [2:0] sclrn_chain;
    
    acl_reset_handler
    #(
        .ASYNC_RESET            (ASYNC_RESET),
        .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
        .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
        .PIPE_DEPTH             (0),
        .NUM_COPIES             (1)
    )
    acl_reset_handler_inst
    (
        .clk                    (clock),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (),
        .o_sclrn                (sclrn_before_pulse_stretch)
    );
    
    generate
    if (RESET_EXTERNALLY_HELD) begin : gen_direct_sclrn
        assign sclrn = sclrn_before_pulse_stretch;
    end
    else begin : gen_pulse_stretch_sclrn
        always_ff @(posedge clock) begin
            sclrn_chain <= (sclrn_chain << 1) | sclrn_before_pulse_stretch;
            sclrn_after_pulse_stretch <= &sclrn_chain;
            sclrn_base <= sclrn_after_pulse_stretch;
            sclrn <= sclrn_base;
        end
    end
    endgenerate
    
    //assuming occupancy starts at 0, if threshold_reached needs to be asserted during reset, we need a way to deassert it after reset is released
    logic [RESET_RELEASE_DELAY+1:0] resetn_delayed;
    generate
    always_comb begin
        resetn_delayed[0] = (ASYNC_RESET) ? aclrn : sclrn;      //delay 0 = original reset that threshold_reached would have consumed
    end
    for (g=1; g<=RESET_RELEASE_DELAY+1; g++) begin : gen_resetn_delayed
        always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) resetn_delayed[g] <= '0;
            else begin
                resetn_delayed[g] <= (g==1) ? 1'b1 : resetn_delayed[g-1];
                if (~sclrn) resetn_delayed[g] <= '0;
            end
        end
    end
    endgenerate
    
    
    // IMPORTANT: these comments are intended to summarize the design parameters. Be familiar with the concepts in acl_tessellated_incr_decr_threshold.sv BEFORE reading this.
    //
    // There are two main aspects to tessellated occupancy tracking:
    // 1. under what conditions do we activate or deactivate the "threshold_reached" output?
    // 2. how late can each bit of the occupancy be?
    //
    // For 1., in the original +1/-1 occupancy tracker, we turn on threshold_reached when occupancy==THRESHOLD-1 and increasing. We turn off threshold_Reach when occupanct==THRESHOLD and decreasing.
    // When we add a -2 update, there are a lot more ways we can activate and deactivate. The activation part is still the same, but now we deactivate when any of the following happen:
    // - occupancy==THRESHOLD and decreasing by 1
    // - occupancy==THRESHOLD and decreasing by 2
    // - occupancy==THRESHOLD+1 and decreasing by 2
    //
    // For 2., the same concepts still apply: bit N defines a group of size 2^N, and we know how far the occupancy can wander (given the allowed occupancy updates), so we can determine after how
    // many clock cycles will the occupancy potentially wander past the boundary of the group.
    //
    // The original code was designed for detecting a threshold of 14. For activation and deactivation of threshold_reach we are interested in detecting values 13, 14, and 15. For other threshold,
    // we simply offset the reset value, same strategy as in acl_tessellated_incr_decr_threshold.sv. Normally the reset values would come from the column under true occupancy = 0 (for threshold=14).
    // If we wanted to detect threshold = 13 for example, then the reset values would simply come from the true occupancy = 1. For each decrement in threshold, we shift the reset one column to the
    // right because we need 1 fewer increment to reach the threshold.
    //
    //
    // Bit range    | Name      | Max lateness  | Detection range boundary factoring in lateness
    // -------------+-----------+---------------+-------------------------------------------------
    // 2:0          | lo        | 0             | N/A - timing is exact
    // 3            | aux       | 1             | 12 to 19, are we in the right group of 8, this is basically bit 3 of (occupancy+4)
    // 4            | mid       | 3             | 8 to 23, are we in the right group of 16, this is basically bit 4 of (occupancy+8)
    // 5+           | hi        | 8             | 0 to 31, are we in the right group of 32
    //
    //                                                                        +-----------+
    // True occupancy: -1   0   1   2   3   4   5   6   7   8   9  10  11  12 |13  14  15 |16  17  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32
    //                                                                        +-----------+
    //             lo:  7   0   1   2   3   4   5   6   7   0   1   2   3   4 | 5   6   7 | 0   1   2   3   4   5   6   7   0   1   2   3   4   5   6   7   0
    //                                                                    +---+-----------+---------------+
    //            aux:  0   0   0   0   0   1   1   1   1   1   1   1   1 | 0   0   0   0   0   0   0   0 | 1   1   1   1   1   1   1   1   0   0   0   0   0
    //                                                    +---------------+-------------------------------+---------------+
    //            mid:  0   0   0   0   0   0   0   0   0 | 1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1 | 0   0   0   0   0   0   0   0   0
    //                    +-------------------------------+---------------------------------------------------------------+-------------------------------+
    //             hi: -1 | 0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 | 1
    //                    +-------------------------------------------------------------------------------------------------------------------------------+
    //
    
    localparam int INIT_OCC_TO_THRESH = THRESHOLD - INITIAL_OCCUPANCY;
    localparam bit THRESHOLD_REACHED_EXIT_RESET = (THRESHOLD > INITIAL_OCCUPANCY) ? 1'b0 : 1'b1;
    
    localparam bit [31:0] SIX_MINUS_INIT_OCC_TO_THRESH = 6 - INIT_OCC_TO_THRESH;
    localparam bit [2:0] LO_RESET = SIX_MINUS_INIT_OCC_TO_THRESH[2:0];
    localparam bit [1:0] LO_HELPER_RESET = (LO_RESET==3'h5) ? 2'h1 : (LO_RESET==3'h6) ? 2'h2 : (LO_RESET==3'h7) ? 2'h3 : 2'h0;
    
    localparam bit [31:0] FIVE_PLUS_INIT_OCC_TO_THRESH = 5 + INIT_OCC_TO_THRESH; //+3 to +10 maps to +8 to +15
    localparam bit AUX_RESET = FIVE_PLUS_INIT_OCC_TO_THRESH[3];
    
    localparam bit [31:0] INIT_OCC_TO_THRESH_MINUS_SEVEN = INIT_OCC_TO_THRESH - 7; //+7 to +22 maps to +0 to +15
    localparam bit MID_RESET = INIT_OCC_TO_THRESH_MINUS_SEVEN[4];
    
    localparam bit [31:0] FOURTEEN_MINUS_INIT_OCC_TO_THRESH = 14 - INIT_OCC_TO_THRESH;  //-17 to +14 maps to +31 to 0, +15 to +46 maps to -1 to -32
    localparam int HI_RESET = FOURTEEN_MINUS_INIT_OCC_TO_THRESH[31:5];
    
    localparam bit HI_EQ_ZERO_AND_MID_RESET = ((HI_RESET==0) && (MID_RESET==1'b1)) ? 1'b1 : 1'b0;
    localparam bit COUNT_AT_TARGET_RESET = ((HI_EQ_ZERO_AND_MID_RESET==1'b1) && (AUX_RESET==1'b0)) ? 1'b1 : 1'b0;
    
    logic [2:0] lo, lo_next, lo_prev;
    logic [1:0] lo_helper, lo_helper_next;
    logic lo_wrap_3_4, lo_wrap_7_0;
    logic aux, mid;
    logic incr_hi, decr_hi;
    logic hi_eq_zero, hi_eq_zero_and_mid;
    logic count_at_target;
    
    //use a 6-lut to udpate lo and lo_helper, written this way to avoid using carry chains for addition/subtraction
    //functionally this is equivalent to:
    //assign lo_next = lo + incr - decr_a - decr_b;
    //assign lo_helper_next = (lo_next==5) ? 1 : (lo_next==6) ? 2 : (lo_next==7) ? 3 : 0;
    always_comb begin
    case ({decr_b, decr_a, incr, lo})
    6'h00: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h01: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h02: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h03: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h04: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h05: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h06: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h07: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h08: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h09: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h0a: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h0b: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h0c: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h0d: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h0e: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h0f: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h10: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h11: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h12: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h13: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h14: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h15: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h16: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h17: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h18: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h19: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h1a: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h1b: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h1c: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h1d: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h1e: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h1f: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h20: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h21: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h22: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h23: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h24: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h25: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h26: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h27: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h28: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h29: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h2a: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h2b: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h2c: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h2d: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h2e: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h2f: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h30: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    6'h31: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h32: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h33: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h34: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h35: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h36: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h37: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h38: {lo_helper_next, lo_next} = {2'h3, 3'h7};
    6'h39: {lo_helper_next, lo_next} = {2'h0, 3'h0};
    6'h3a: {lo_helper_next, lo_next} = {2'h0, 3'h1};
    6'h3b: {lo_helper_next, lo_next} = {2'h0, 3'h2};
    6'h3c: {lo_helper_next, lo_next} = {2'h0, 3'h3};
    6'h3d: {lo_helper_next, lo_next} = {2'h0, 3'h4};
    6'h3e: {lo_helper_next, lo_next} = {2'h1, 3'h5};
    6'h3f: {lo_helper_next, lo_next} = {2'h2, 3'h6};
    endcase
    end
    
    //lo tracks bits 2:0 of occupancy and has exact timing
    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) begin
            lo <= LO_RESET;
            lo_prev <= LO_RESET;
            lo_helper <= LO_HELPER_RESET;
        end
        else begin
            lo <= lo_next;
            lo_helper <= lo_helper_next;
            lo_prev <= lo;
            if (~sclrn) lo <= LO_RESET;
            if (~sclrn && RESET_EVERYTHING) begin
                lo_prev <= LO_RESET;
                lo_helper <= LO_HELPER_RESET;
            end
        end
    end
    
    //aux tracks bit 3 of occupancy and is 1 clock later than lo
    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) begin
            aux <= AUX_RESET;
        end
        else begin
            aux <= aux ^ lo_wrap_3_4;                                   //1 clock later than lo
            if (~sclrn) aux <= AUX_RESET;
        end
    end
    assign lo_wrap_3_4 = (lo[2] ^ lo_prev[2]) & (lo[2] ^ lo[1]);        //helper for aux, equivalent to (lo==3 && lo_prev==4) || (lo==4 && lo_prev==3)
    
    //mid tracks bit 4 of occupancy and is 2 clocks later than lo
    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) begin
            mid <= MID_RESET;
            lo_wrap_7_0 <= 1'b0;
        end
        else begin
            lo_wrap_7_0 <= (lo[2] ^ lo_prev[2]) & (lo[2] ~^ lo[1]);     //1 clock later than lo, helper for mid, same idea as lo_wrap_3_4 but for 7 and 0
            mid <= mid ^ (lo_wrap_7_0 & aux);                           //2 clocks later than lo
            if (~sclrn) mid <= MID_RESET;
            if (~sclrn && RESET_EVERYTHING) lo_wrap_7_0 <= 1'b0;
        end
    end
    
    //hi tracks bits 5+ of occupancy and is up to 6 clocks later than lo
    //we then combine high and lo which is up to 7 clocks later than lo
    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) begin
            incr_hi <= 1'b0;
            decr_hi <= 1'b0;
            hi_eq_zero_and_mid <= HI_EQ_ZERO_AND_MID_RESET;
        end
        else begin
            incr_hi <= lo_wrap_7_0 & ~lo_prev[2] & ~aux & ~mid;         //2 clocks later than lo
            decr_hi <= lo_wrap_7_0 &  lo_prev[2] & ~aux & ~mid;         //2 clocks later than lo
            hi_eq_zero_and_mid <= hi_eq_zero & mid;                     //hi is up to 7 clocks later than lo, mid is 3 clocks later than lo
            if (~sclrn) begin
                incr_hi <= 1'b0;
                decr_hi <= 1'b0;
                hi_eq_zero_and_mid <= HI_EQ_ZERO_AND_MID_RESET;
            end
        end
    end
    generate
    if ($clog2(CAPACITY) >= 6) begin : gen_tess_hi
        localparam int COUNT_HI_WIDTH = $clog2(CAPACITY)-5;
        localparam int COUNT_HI_TESS_RAW = (COUNT_HI_WIDTH+1)/2;                        //ideally 2 bits per stage...
        localparam int COUNT_HI_TESS = (COUNT_HI_TESS_RAW > 4) ? 4 : COUNT_HI_TESS_RAW; //...but use more bits per stage so that we have up to 4 tessellation stages
    
        acl_tessellated_incr_decr #(
            .WIDTH              (COUNT_HI_WIDTH),
            .STAGES             (COUNT_HI_TESS),                        //max 4 so that hi_eq_zero is up to 6 clocks late
            .RESET_VALUE        (HI_RESET),
            .RESET_EVERYTHING   (RESET_EVERYTHING)
        )
        acl_tessellated_incr_decr_inst
        (
            .clock              (clock),
            .aclrn              (aclrn),
            .sclrn              (sclrn),
            .incr_in            (incr_hi),                              //2 clocks later than lo
            .decr_in            (decr_hi),
            .counter            (),
            .count_eq_zero      (hi_eq_zero)                            //2 + STAGES clock cycles late, up to 6
        );
    end
    else begin
        assign hi_eq_zero = 1'b1;
    end
    endgenerate
    
    //let quartus trim away stuff that isn't needed at smaller bit width
    //count_at_target tells us that bits 3+ of occupancy are at the right place, so the only information not yet integrated is lo
    generate
    if (CAPACITY <= 8) begin : gen_count_at_target_one
        assign count_at_target = 1'b1;
    end
    else if (CAPACITY <= 16) begin : gen_count_at_target_aux
        assign count_at_target = ~aux;
    end
    else begin : gen_count_at_target_full
        always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) count_at_target <= COUNT_AT_TARGET_RESET;
            else begin
                //aux is 1 clock behind lo, mid is 4 clocks behind lo, hi is 8 clocks behind lo
                count_at_target <= ~(aux ^ lo_wrap_3_4) & hi_eq_zero_and_mid;
                if (~sclrn && RESET_EVERYTHING) count_at_target <= COUNT_AT_TARGET_RESET;
            end
        end
    end
    endgenerate
    
    //use a special encoding to help us reduce the fan-in of threshold_reached
    //lo_helper == 2'h1 means that lo == 3'h5
    //lo_helper == 2'h2 means that lo == 3'h6
    //lo_helper == 2'h3 means that lo == 3'h7
    //lo_helper == 2'h0 means that lo is 0 to 4
    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) threshold_reached <= THRESHOLD_REACHED_AT_RESET;
        else begin
            if ( incr & ~decr_a & ~decr_b & (lo_helper==2'h1) & count_at_target) threshold_reached <= 1'b1;
            if ( incr &  decr_a &  decr_b & (lo_helper==2'h2) & count_at_target) threshold_reached <= 1'b0;
            if (~incr &  decr_a & ~decr_b & (lo_helper==2'h2) & count_at_target) threshold_reached <= 1'b0;
            if (~incr & ~decr_a &  decr_b & (lo_helper==2'h2) & count_at_target) threshold_reached <= 1'b0;
            if (~incr &  decr_a &  decr_b & (lo_helper==2'h2) & count_at_target) threshold_reached <= 1'b0;
            if (~incr &  decr_a &  decr_b & (lo_helper==2'h3) & count_at_target) threshold_reached <= 1'b0;
            if (~resetn_delayed[RESET_RELEASE_DELAY+1]) threshold_reached <= THRESHOLD_REACHED_EXIT_RESET;
            if (~resetn_delayed[RESET_RELEASE_DELAY]) threshold_reached <= THRESHOLD_REACHED_AT_RESET;
        end
    end
    
endmodule





module acl_tessellated_incr_decr #(
    parameter int WIDTH,
    parameter int STAGES,
    parameter int RESET_VALUE,
    parameter int RESET_EVERYTHING
)
(
    input  wire                 clock,
    input  wire                 aclrn,
    input  wire                 sclrn,
    input  wire                 incr_in,
    input  wire                 decr_in,
    output logic    [WIDTH-1:0] counter,
    output logic                count_eq_zero
);
    
    localparam bit [WIDTH-1:0] RV = RESET_VALUE;    //allows for bit extractions from RESET_VALUE
    
    logic [STAGES:0] inc, dec, cz;
    logic [WIDTH-1:0] cnt;
    assign inc[0] = incr_in;
    assign dec[0] = decr_in;
    assign cz[0] = 1'b1;
    assign count_eq_zero = cz[STAGES];
    assign counter = cnt;
    
    genvar g;
    generate
    for (g=0; g<STAGES; g=g+1) begin : gen_cnt
        localparam int HI = (g+1) * WIDTH / STAGES; //exclusive
        localparam int LO = (g) * WIDTH / STAGES;   //inclusive
        //at each stage we do the following:
        //increment out = (increment in) & (counter_bits_for_this_stage are all 1)
        //decrement out = (decrement in) & (counter_bits_for_this_stage are all 0)
        //count_equals_zero out = (count_equals_zero in) & (next state value of counter_bits_for_this_stage are all 0)
        //counter_bits_for_this_stage out = (counter_bits_for_this_stage in) + (increment in) - (decrement in)
        if ( HI - LO == 0 ) begin   //counter width is 0, this is just a pipeline stage
            always_ff @(posedge clock or negedge aclrn) begin
                if (~aclrn) begin
                    inc[g+1] <= 1'b0;
                    dec[g+1] <= 1'b0;
                    cz[g+1] <= 1'b1;
                end
                else begin
                    inc[g+1] <= inc[g];
                    dec[g+1] <= dec[g];
                    cz[g+1] <= cz[g];
                    if (~sclrn && RESET_EVERYTHING) begin
                        inc[g+1] <= 1'b0;
                        dec[g+1] <= 1'b0;
                        cz[g+1] <= 1'b1;
                    end
                end
            end
        end
        else if ( HI - LO == 1) begin       //counter width is 1
            always_ff @(posedge clock or negedge aclrn) begin
                if (~aclrn) begin
                    inc[g+1] <= 1'b0;
                    dec[g+1] <= 1'b0;
                    cz[g+1] <= ~(|RV[LO:0]);
                    cnt[LO] <= RV[LO];
                end
                else begin
                    inc[g+1] <= inc[g] & cnt[LO];
                    dec[g+1] <= dec[g] & ~cnt[LO];
                    cz[g+1] <= cz[g] & ~(cnt[LO] ^ inc[g] ^ dec[g]);
                    cnt[LO] <= cnt[LO] ^ inc[g] ^ dec[g];
                    if (~sclrn) begin
                        cnt[LO] <= RV[LO];
                        if (RESET_EVERYTHING) begin
                            inc[g+1] <= 1'b0;
                            dec[g+1] <= 1'b0;
                            cz[g+1] <= ~(|RV[LO:0]);
                        end
                    end
                end
            end
        end
        else begin
            logic [1:0] cnt_up;     //need to sign extend before adding       
            assign cnt_up[0] = inc[g] ^ dec[g];    //assert if intended effect is +1 or -1
            assign cnt_up[1] = ~inc[g] & dec[g];   //assert if intended effect is -1
            always_ff @(posedge clock or negedge aclrn) begin
                if (~aclrn) begin
                    inc[g+1] <= 1'b0;
                    dec[g+1] <= 1'b0;
                    cz[g+1] <= ~(|RV[HI-1:0]);
                    cnt[HI-1:LO] <= RV[HI-1:LO];
                end
                else begin
                    inc[g+1] <= inc[g] & (&cnt[HI-1:LO]);
                    dec[g+1] <= dec[g] & ~(|cnt[HI-1:LO]);
                    cz[g+1] <= cz[g] &
                        ((inc[g] & ~dec[g]) ? (&cnt[HI-1:LO]) :                     //increasing and cnt is all ones -> will become all zeros
                        ((~inc[g] & dec[g]) ? (~(|cnt[HI-1:LO+1]) & cnt[LO]) :      //decreasing and cnt is like 001 -> will become all zeros
                        ~(|cnt[HI-1:LO])));                                         //no change and cnt is already all zeros
                    cnt[HI-1:LO] <= cnt[HI-1:LO] + { {(HI-LO-1){cnt_up[1]}} , cnt_up[0] };
                    if (~sclrn) begin
                        cnt[HI-1:LO] <= RV[HI-1:LO];
                        if (RESET_EVERYTHING) begin
                            inc[g+1] <= 1'b0;
                            dec[g+1] <= 1'b0;
                            cz[g+1] <= ~(|RV[HI-1:0]);
                        end
                    end
                end
            end
        end
    end
    endgenerate
    
endmodule




`default_nettype wire
