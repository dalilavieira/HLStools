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


// This module implements a burst-coalesced read LSU with extensive pipelining
// to acheive the best possible Fmax.  This module has been designed with a
// HyperFlex architecture in mind.
//
// An LSU is a 'load store unit'.  Since this is a Read LSU, it is really a
// load unit, meaning it fetches data from global memory for a kernel.  An LSU
// is essentially an adapter between the kernel side interface and the Avalon
// bus that connects to the memory interconnect.  
//
// The LSU also needs to pass valid signals (each valid is also called a 
// 'thread') on to the Kernel.  Every thread which enters the LSU must leave 
// the LSU.  For a read LSU, every thread is associated with a word of data.
//
// Along with the 'valid' signal, each incoming thread has a 'predicate' signal.
// NOTE: the 'predicate' signal in this interface should actually be called
// 'predicate_n', since a '0' on this signal means the transaction is
// predicated (should generate a write to memory), and a '1' on this signal
// means the transaction is NOT predicated (should not generate any transaction
// to the memory).
//
// The 'coalescing' part of this LSU involves taking the addresses from several
// threads and grouping them together.  Data sent to the kernel are
// called 'kernel words', and data from the memory through the Avalon
// interface are called 'memory words'.  Kernel words may be smaller than or
// the same width as memory words.  There are two levels of coalescing, both
// of which are supported by this LSU.  Within-word coalescing involves taking
// several kernel words which all map to a single (larger) memory word and
// sending them as a single memory word read.  Burst coalescing invlovles
// taking several (possible within-word coalesced) adjacent memory words
// and grouping them together into a single Avalon burst.
//
// Stall latency protocol is supported by this LSU, and is enabled by the
// USE_STALL_LATENCY parameter.  The internal i_stall to o_valid latency
// of the block is controlled by the DOWNSTREAM_STALL_IN_EARLINESS parameter.
//
// Required files:
//    acl_reset_handler.sv
//    acl_std_synchronizer_nocut.v
//    acl_fanout_pipeline.sv
//    acl_high_speed_fifo.sv
//    acl_lfsr.sv
//    acl_tessellated_incr_decr_threshold.sv
//    hld_fifo.sv
//    acl_zero_latency_fifo.sv
//    acl_low_latency_fifo.sv
//    acl_tessellated_incr_lookahead.sv



`default_nettype none

module lsu_burst_coalesced_pipelined_read #(
   parameter AWIDTH                    = 32,             // Address width of the Kernel and Avalon memory interfaces (address busses are byte based, not word based, so address bus widths are the same)

   parameter ALIGNMENT_ABITS           = 5,              // Kernel memory requests are guaranteed to have this many lower-order address bits set to '0'
                                                         // If ALIGNMENT_ABITS >= log2(WIDTH_BYTES), then this is an 'aligned' LSU, with all accesses aligned (no need for separate 'ALIGNED' parameter)
   parameter WIDTH_BYTES               = 4,              // Width of the Kernel memory data bus in bytes, must be a power of 2
                                                         // (really should be called 'KWIDTH_BYTES', but leaving it as is for historical reasons)
   parameter MWIDTH_BYTES              = 64,             // Width of the Avalon memory data bus in bytes, must be a power of 2
   parameter BURSTCOUNT_WIDTH          = 5,              // Size of Avalon burst count port
   parameter MAX_THREADS_PER_BURST_LOG2            = $clog2( ((MWIDTH_BYTES/WIDTH_BYTES) * 2**(BURSTCOUNT_WIDTH-1) * 2) ), // 2^MAX_THREADS_PER_BURST_LOG2 is the maximum number of threads to coalesce into a single burst
   parameter END_BURST_MWORD_BOUNDRY_THREADS_LOG2  = MAX_THREADS_PER_BURST_LOG2-1,                                         // if a new MWORD starts and the burst has 2^END_BURST_MWORD_BOUNDRY_THREADS_LOG2 or more threads, the burst will terminate
                                                                                                                           // the purpose of this is to encourage bursts to end on MWORD boundries when we get close to the maximum number of threads
   parameter TIMEOUT                   = 16,             // Minimum 6.  Number of consecutive clock cycles without a new valid transaction in before coalescing will be forced to end
   parameter MIN_THREAD_CAPACITY       = 128,            // minimum number of threads this block must be able to accept when backpressured
   parameter MIN_MEMORY_BUFFER_DEPTH   = 256,            // minimum depth of the coalescing FIFOs
   parameter ACL_PROFILE               = 0,              // set to 1 to enable profiling
   parameter ASYNC_RESET               = 1,              // 1:i_resetn is used as an asynchonous reset, and resets all registers, 0:i_resetn is used as a synchronous reset, and resets only registers which require a reset 
   parameter SYNCHRONIZE_RESET         = 0,              // 1 - add a local synchronizer to the incoming reset signal
   parameter USE_STALL_LATENCY         = 0,              // 0 - legacy stall/valid protocol, 1 - enable stall latency protocol
   parameter UPSTREAM_STALL_LATENCY    = 0,              // round trip latency for the upstream (i_valid/o_stall) port, from o_stall being asserted to i_valid guaranteed deasserted.  Must be 0 if USE_STALL_LATENCY=0.
   parameter DOWNSTREAM_STALL_IN_EARLINESS = 0,          // the i_stall signal is internally delayed by this amount.  Recommended setting with USE_STALL_LATENCY=1 is 3, must be 0 if USE_STALL_LATENCY=0.
   parameter ALMOST_EMPTY_THRESH       = 1,              // almost empty threshold, o_almost_empty asserts if the number of available threads is <= this number, only applies if USE_STALL_LATENCY=1
   parameter ALLOW_HIGH_SPEED_FIFO_USAGE = 1,            // choice of hld_fifo style, 0 = mid speed fifo, 1 = high speed fifo
   parameter enable_ecc = "FALSE",                       // Enable error correction coding
   parameter AVM_READ_DATA_LATENESS    = 0,              // fmax and area optimization - avm_readdata is late by this many clocks compared to avm_readdatavalid
   parameter WIDE_DATA_SLICING         = 0               // for large MWIDTH_BYTES, a nonzero value indicate how wide to width-slice hld_fifo, also mux select signals for memory to kernel read data are replicated based on width needed
) (
   input  wire                            clock,               // all inputs/outputs are synchronous with clock
   input  wire                            i_resetn,             // reset input, must be synchronized to clock, can be used as a synchronous or an asynchronous reset depending on the value of ASYNC_RESET
                                                               // i_resetn must be held asserted for at least 16 (to be conservative) clock cycles to completely reset this module
      
   // Kernel input interface  
   input  wire                            i_valid,             // stall/valid behaviour determined by USE_STALL_LATENCY
   output logic                           o_stall,             
   input  wire                            i_predicate,         // when asserted with i_valid, indicates a valid thread that should NOT generate a memory transaction (the thread should just pass through this module)
   input  wire    [AWIDTH-1:0]            i_address,           // byte address for the write, validated by i_valid
 
   // Kernel output interface 
   output logic                           o_valid,             // stall/valid behaviour determined by USE_STALL_LATENCY
   input  wire                            i_stall,             
   output logic                           o_empty,             // empty/almost_empty only enabled when USE_STALL_LATENCY=1
   output logic                           o_almost_empty,
   output logic   [(WIDTH_BYTES*8)-1:0]   o_readdata,          // data read from the global memory, qualified by o_valid/i_stall
   output logic                           o_active,            // only de-asserted when this module is completely idle (no active threads or pending transactions)
   
   // Avalon interface  
   output logic                           avm_read,            // when avm_write is asserted and avm_waitrequest is not, a write transaction occurs, asserted for every data word transferred
   input  wire                            avm_waitrequest,     // asserted by the downstream block to prevent a new transaction TODO: add pipelining to this signal when "WAITREQUEST LATENCY" feature has been implemented in the interconnect
   output logic  [AWIDTH-1:0]             avm_address,         // byte address of the start of the burst
   output logic  [BURSTCOUNT_WIDTH-1:0]   avm_burstcount,      // number of words in the burst (note that this will NOT decrement as the burst progresses)
   output logic  [MWIDTH_BYTES-1:0]       avm_byteenable,      // byte enables
   input  wire   [(MWIDTH_BYTES*8)-1:0]   avm_readdata,        // data word
   input  wire                            avm_readdatavalid,   // asserted to indicate incoming read data is valid
   output logic                           extra_unaligned_reqs,// TODO profiling signal, not relevant since this LSU currently only supports aligned accesses
   output logic                     [1:0] ecc_err_status       // ecc status signals
);

   localparam                    GENERATE_DEBUG_CODE = 0;                                    // when true, generate extra circuits useful for debug

   // Parameters used across multiple internal blocks
   localparam                    KERNEL_WORD_ABITS = ($clog2(MWIDTH_BYTES/WIDTH_BYTES));     // number of address bits to select the position of the Kernel memory word within the Avalon memory word (if MWIDTH_BYTES==WIDTH_BYTES, this is 0, meaning no address bits are needed)
   localparam                    BYTE_ABITS = ($clog2(WIDTH_BYTES));                         // number of address bits to select the byte within the kernel memory word
   localparam                    MWORD_ABITS = ($clog2(MWIDTH_BYTES));                       // number of address bits to select byte position with the Avalon memory word, these bits are not needed by the Avalon interface
   localparam                    FIFO_STYLE = ALLOW_HIGH_SPEED_FIFO_USAGE ? "hs" : "ms";
   localparam                    FIFO_WRITE_TO_EMPTY_LATENCY = ALLOW_HIGH_SPEED_FIFO_USAGE ? 5 : 3;

   // signals used for feedback
   // most signals are feed-forward only, and so are declared as needed below, but these stall lookahead signals feed backwards to stall the pipeline
   logic                         fifo_stall_out_lookahead;                             // signal indicating FIFO buffers are almost full, so must stop generating new valid words
   
   ///////////////////////////////////////
   // Reset signal replication and pipelining
   //
   // In order to ensure that the reset signal is not a limiting factor when 
   // doing retiming, we create multiple copies of the reset signal and 
   // pipeline each adequately.
   ///////////////////////////////////////
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
      .i_resetn               (i_resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );

   
   ///////////////////////////////////////
   // Input block
   //
   // Capture incoming threads and data, generate stalls when necessary, and pre-calculate control signals for use later in the pipeline.
   ///////////////////////////////////////

   // Pipelined signals use the unpacked dimension to indicate location in the pipe.
   // Pipeline index N feeds into index N+1, and 1 is the first index used.
   // All signals at pipeline location N are co-timed with each other, so some signals will start later than
   // stage 1, and some will not persist for the full depth of the pipeline.
   localparam                    INPUT_PIPE_DEPTH = 3;                                       // if this number is to be changed to add additional pipelining, other code changes will also be required
   localparam                    INPUT_STALL_REACTION_CYCLES = 4;                            // this setting is conservative, indicates the number of additional valid threads that can pass through after the 'sloppy' stall signal is asserted
   logic                         valid_ipipe                [1:INPUT_PIPE_DEPTH];            // valid signal from the kernel, this signal qualifies all other signals in the (stall free) pipeline
   (* dont_merge *) logic        stall_out_ipipe            [0:1];                           // this is a bit backwards, stage 0 drives the o_stall signal, stage 1 is one clock delayed from stage 0
   logic                         predicate_ipipe            [1:INPUT_PIPE_DEPTH];  
   logic [AWIDTH-1:0]            address_ipipe              [1:INPUT_PIPE_DEPTH];
   logic [AWIDTH-1:MWORD_ABITS]  next_mword_address_ipipe   [2:INPUT_PIPE_DEPTH];            // address of the memory word after the current memory word (so current memory word address + 1)
                                                                                             // pre-calculated here for use later in the coalescer

   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         for (int i=1; i<=INPUT_PIPE_DEPTH; i++) begin
            valid_ipipe                [i]      <= '0;
            predicate_ipipe            [i]      <= '0;
            address_ipipe              [i]      <= '0;
         end
         for (int i=0; i<=1; i++) begin
            stall_out_ipipe            [i]      <= '0;
         end
         for (int i=2; i<=INPUT_PIPE_DEPTH; i++) begin
            next_mword_address_ipipe      [i]   <= '0;
         end
         o_stall                                <= '0;
      
      end else begin
      
         // valid pipeline, register the raw input then combine with the stall signal at the earliest opportunity
         // only the first stage of the valid pipeline is reset, the 0 will then propogate through the rest of the valid chain as long as i_resetn is held asserted long enough
         if (~sclrn[0]) begin
            valid_ipipe[1] <= 1'b0;
         end else begin
            if (USE_STALL_LATENCY) begin
               // when stall latency protocol is enabled, every valid MUST be accepted, regardless of state of o_stall
               valid_ipipe[1] <= i_valid;
            end else begin
               // when legacy stall/valid protocol is enabled, a thread is accepted only when o_stall=0 and i_valid=1
               valid_ipipe[1] <= i_valid & ~stall_out_ipipe[0];
            end
         end
         for (int i=2; i<=INPUT_PIPE_DEPTH; ++i) begin
            valid_ipipe[i] <= valid_ipipe[i-1];
         end
         
         // stall output and pipeline
         // the stall signal is an output, but we then capture it as part of the input pipeline to combine it with valid
         // stall_out_ipipe[0] is a copy of o_stall
         if (~sclrn[0]) begin
            stall_out_ipipe[0] <= 1'b1;         // assert o_stall during reset, so no threads can be lost if other blocks come out of reset before we do
            o_stall <= 1'b1;                    // duplicate of stall_out_ipipe[0], use the duplicate to allow internal retiming of stall_out_ipipe[0]
         end else begin
            // stall is generated from the same signals regardless of value of USE_STALL_LATENCY
            // when stall latency protocol is enabled, it changes the thresholds at which the 'stall_out_lookahed' signals are generated
            stall_out_ipipe[0] <= fifo_stall_out_lookahead;    // we implement a 'sloppy' stall, where the stall-free pipeline will continue to flush after this signal asserts (which is why it is a 'lookahead' signals)
            o_stall <= fifo_stall_out_lookahead;               // duplicate of stall_out_ipipe[0], use the duplicate to allow internal retiming of stall_out_ipipe[0]
         end
         stall_out_ipipe[1] <= stall_out_ipipe[0];
         
         // address pipelines
         // for predicated and invalid words, hold the previous value of address (and next mword address)
         // this makes processing downstream (where we are comparing to the last 'valid' address) easier
         address_ipipe[1]     <= i_address;
         if (valid_ipipe[1] & ~predicate_ipipe[1]) begin
            address_ipipe[2]     <= address_ipipe[1];
            next_mword_address_ipipe[2] <= address_ipipe[1][AWIDTH-1:MWORD_ABITS] + 1;
         end
         for ( int i=3; i<=INPUT_PIPE_DEPTH; ++i ) begin
            address_ipipe[i]              <= address_ipipe[i-1] ;
            next_mword_address_ipipe[i]   <= next_mword_address_ipipe[i-1] ;
         end
         
         // predicate and data signals just shift down the pipeline, no special cases
         predicate_ipipe[1]    <= i_predicate; 
         for ( int i=2; i<=INPUT_PIPE_DEPTH; ++i ) begin
            predicate_ipipe[i]    <= predicate_ipipe[i-1] ;
         end

      end
         
   end
   
   // generate the input_active signal
   logic                         input_active;                                               // asserted if there are any active threads in the input pipeline
   logic                         input_active_comb;                                          // combinatorial version of input_active, used to drive the input_active register
   always_comb begin
      input_active_comb = 1'b0;
      for( int i=1; i<=INPUT_PIPE_DEPTH; i++ ) begin
         input_active_comb = input_active_comb | valid_ipipe[i];
      end
   end
   always_ff @(posedge clock) begin
      input_active <= input_active_comb;
   end
 

   ///////////////////////////////////////
   // Coalescer (full burst coalescing)
   //
   // Coalesce incoming threads as long as their address is in range to be part of the same burst, otherwise push out the current read burst and 
   // start coalescing with the new thread.
   // A timeout (too long between valid incoming threads) can also cause a burst to be pushed out to the Avalon interface.
   ///////////////////////////////////////

   localparam                          COALESCER_PIPE_DEPTH = 5;                                         // if this number is to be changed, other code changes will also be required
   localparam                          TIMEOUT_CNT_WIDTH = ($clog2(TIMEOUT)+1);                          // number of bits for the timeout counter, extra bit (+1) is because the counter counts down from TIMEOUT-1 to -1
   logic                               valid_cpipe                [1:4];                                          // valid signal from the kernel, this signal qualifies all other signals in the (stall free) pipeline
   logic                               predicate_cpipe            [1:COALESCER_PIPE_DEPTH];                       // predicate, indicates no Avalon read required for this thread  
   logic [AWIDTH-1:MWORD_ABITS]        mword_address_cpipe        [1:COALESCER_PIPE_DEPTH];                       // address bits that specify the memory word address (lower bits that specify position within memory word not stored here)
   logic [MWORD_ABITS-ALIGNMENT_ABITS:0] kword_address_cpipe      [1:COALESCER_PIPE_DEPTH];                       // address bits that specify the position of the kernel word within the memory (Avalon) data word
                                                                                                                  // This bus has an extra msb so that even when ALIGNMENT_ABITS==MWORD_ABITS, this will still be a valid variable
                                                                                                                  // The one extra msb will be set to 0
   logic [AWIDTH-1:MWORD_ABITS]        next_mword_address_cpipe   [1:1];                                          // address of the memory word after the current memory word (so current memory word address + 1)
   logic                               same_mword_as_prev_cpipe   [1:1];                                          // asserted when this address lies within the same memory word as the previous address
   logic                               next_mword_to_prev_cpipe   [1:1];                                          // asserted when this address lies within the memory word of the previous address + 1
   logic                               cross_burst_boundary_cpipe [1:1];                                          // if next_mword_to_prev is asserted, then this signal indicates that we have crossed a burst boundary (otherwise this signal must be ignored)
   logic [TIMEOUT_CNT_WIDTH-1:0]       timeout_cnt_cpipe          [1:1];                                          // timeout counter, counts down to -1
   logic                               new_mword_cpipe            [2:3];                                          // asserted to indicate that this word should be the start of a new memory word (so burst_count will need to increment)
   logic                               new_burst_cpipe            [2:3];                                          // asserted to indicate that this word should be the start of a new memory word (so burst_count will need to increment)
   logic                               avalon_valid_cpipe         [4:4];
   logic [MAX_THREADS_PER_BURST_LOG2:0]   thread_count_cpipe      [4:4];                                          // number of threads coalesced into the current burst
   logic [BURSTCOUNT_WIDTH-1:0]        burst_count_cpipe          [4:COALESCER_PIPE_DEPTH];                       // number of words in the coalesced Avalon burst
   logic                               last_thread_in_mword_cpipe [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // indicates that the next thread requires data from a new readdata memory word
   logic                               write_thread_fifo_cpipe    [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // write to the thread FIFO
   logic                               write_avalon_fifo_cpipe    [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // write to the avalon FIFO
   logic                               deactivate_coalescer_timeout;                                              // if we backpressure kernel upstream, don't timeout waiting to coalesce more stuff
   
                                                                              
   // select the address bits that determine the location of the Kernel word within the Memory word
   generate
      if (MWORD_ABITS-ALIGNMENT_ABITS == 0 ) begin  : GENBLK_ABITS_EQ_0    // alignment of kernel word equals memory word size, kword_address is just one bit wide, and is forced to 0
         always_ff @(posedge clock) begin
            kword_address_cpipe[1] <= 1'b0;
         end
      end else begin                      : GENBLK_ABITS_NE_0     // alignment of kernel word is smaller than memory word size, kernel_word_addr selects proper bits from the addr bus and tacks a '0' on as the msb
         always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) begin
               kword_address_cpipe[1] <= '0;
            end else begin
               kword_address_cpipe[1] <= { 1'b0, address_ipipe[INPUT_PIPE_DEPTH][MWORD_ABITS-1:ALIGNMENT_ABITS] };
            end
         end
      end
   endgenerate
   
   // implement the Coalescer pipeline
   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         for (int i=1; i<=COALESCER_PIPE_DEPTH; i++) begin
            predicate_cpipe            [i]         <= '0;
            mword_address_cpipe        [i]         <= '0;
         end
         for (int i=2; i<=COALESCER_PIPE_DEPTH; i++) begin
            kword_address_cpipe        [i]         <= '0;
         end
         for (int i=1; i<=4; i++) begin
            valid_cpipe                [i]         <= '0;
         end
         for (int i=4; i<=COALESCER_PIPE_DEPTH; i++) begin
            burst_count_cpipe          [i]         <= '0;
         end
         for (int i=2; i<=3; i++) begin
            new_mword_cpipe            [i]         <= '0;
            new_burst_cpipe            [i]         <= '0;
         end
         next_mword_address_cpipe      [1]         <= '0;
         same_mword_as_prev_cpipe      [1]         <= '0;
         next_mword_to_prev_cpipe      [1]         <= '0;
         cross_burst_boundary_cpipe    [1]         <= '0;
         timeout_cnt_cpipe             [1]         <= '0;
         avalon_valid_cpipe            [4]         <= '0;
         thread_count_cpipe            [4]         <= '0;
         last_thread_in_mword_cpipe [COALESCER_PIPE_DEPTH]  <= '0;
         write_thread_fifo_cpipe    [COALESCER_PIPE_DEPTH]  <= '0;
         write_avalon_fifo_cpipe    [COALESCER_PIPE_DEPTH]  <= '0;

      end else begin

         ///////////////////////////////
         // Pipeline Stage 1

         valid_cpipe[1]                <= valid_ipipe[INPUT_PIPE_DEPTH]; 
         predicate_cpipe[1]            <= predicate_ipipe[INPUT_PIPE_DEPTH];
         
         // address and next_mword_address are 'held' at the last valid, non-predicated value in the input pipeline stage, so we can just pass them straight through here
         mword_address_cpipe[1]        <= address_ipipe[INPUT_PIPE_DEPTH][AWIDTH-1:MWORD_ABITS];
         // kword_address_cpipe[1] is set in the generate statement above
         next_mword_address_cpipe[1]   <= next_mword_address_ipipe[INPUT_PIPE_DEPTH];
         
         // determine if this address can be coalesced with the last valid address to enter the pipeline
         // note that this could be a very large comparison plus the predicate check, but the retimer should have lots of registers to pull in from the input pipe where address simply gets shifted along
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         if (  (address_ipipe[INPUT_PIPE_DEPTH][AWIDTH-1:MWORD_ABITS] == mword_address_cpipe[1]) || 
               (predicate_ipipe[INPUT_PIPE_DEPTH] == 1'b1) 
         ) begin
            same_mword_as_prev_cpipe[1] <= 1'b1;
         end else begin
            same_mword_as_prev_cpipe[1] <= 1'b0;
         end

         // determine if this address is in the memory word immediately after the current word, and therefore could be coalesced into a larger burst
         // note that this could be a very large comparison, but the retimer should have lots of registers to pull in from the input pipe where address simply gets shifted along
         // no need to check predicate here, if predicate=1, same_mword will be set, so next_mword is not relevant
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         if ( address_ipipe[INPUT_PIPE_DEPTH][AWIDTH-1:MWORD_ABITS] == next_mword_address_cpipe[1] ) begin 
            next_mword_to_prev_cpipe[1] <= 1'b1;
         end else begin
            next_mword_to_prev_cpipe[1] <= 1'b0;
         end
         
         // determine if the transition from the previous memory word to this one will cross a burst boundary
         // Note that this signal is only valid when next_mword_to_prev is asserted (in other words it is only valid for consecutive addresses)
         // The convoluted logic below selects the appropriate bits to see if they are 0, when BURSTCOUNT_WIDTH == 1, the statement below always evaluates 
         // to 'true' so cross_burst_boundary_cpipe is always set to 1, as it should be
         if ( (address_ipipe[INPUT_PIPE_DEPTH] & { {(AWIDTH-(MWORD_ABITS+BURSTCOUNT_WIDTH-1)){1'b0}}, {(BURSTCOUNT_WIDTH-1){1'b1}}, {(MWORD_ABITS){1'b0}} }) == {(AWIDTH){1'b0}} ) begin
            cross_burst_boundary_cpipe[1] <= 1'b1;
         end else begin
            cross_burst_boundary_cpipe[1] <= 1'b0;
         end
         
         // timeout counter
         // counts down from TIMEOUT-1 to -1, counter is reset by any incoming valid signal
         // counter will continue to count and will roll-over if no incoming valids are received, but additional timeouts with no valid data will be ignored
         if ( valid_ipipe[INPUT_PIPE_DEPTH] | deactivate_coalescer_timeout ) begin
            timeout_cnt_cpipe[1] <= TIMEOUT-1;
         end else begin
            timeout_cnt_cpipe[1] <= timeout_cnt_cpipe[1]-1;
         end


         ///////////////////////////////
         // Pipeline Stage 2
         //
         // Partial determination of new_mword and new_burst signals (remainder of logic happens in the next pipeline stage)

         // straight passthrough signals
         valid_cpipe[2]                <= valid_cpipe[1]; 
         predicate_cpipe[2]            <= predicate_cpipe[1];
         mword_address_cpipe[2]        <= mword_address_cpipe[1];
         kword_address_cpipe[2]        <= kword_address_cpipe[1];

         // determine if this thread will be the start of a new memory word (not yet taking into account the number of threads that have been coalesced)
         new_mword_cpipe[2] <= (
            ( timeout_cnt_cpipe[1][TIMEOUT_CNT_WIDTH-1] ) |                                        // timeout has occured
            ( valid_cpipe[1] & ~same_mword_as_prev_cpipe[1] ) );                                   // this thread is not part of the same memory word (predicated threads will be considered part of the same word)
            
         // deterime if this thread will be the start of a new burst (not yet taking into account the number of threads that have been coalesced)
         new_burst_cpipe[2] <= (
            ( timeout_cnt_cpipe[1][TIMEOUT_CNT_WIDTH-1] ) |                                        // timeout has occured
            ( valid_cpipe[1] & ~same_mword_as_prev_cpipe[1] & ~next_mword_to_prev_cpipe[1] ) |     // starting a new MWORD that is not at a sequential MWORD address
            ( valid_cpipe[1] & ~same_mword_as_prev_cpipe[1] & 
              next_mword_to_prev_cpipe[1] & cross_burst_boundary_cpipe[1] ) );                     // starting a new MWORD that crosses a burst boundry
         
         ///////////////////////////////
         // Pipeline Stage 3
         
         // straight passthrough signals
         valid_cpipe[3]                <= valid_cpipe[2]; 
         predicate_cpipe[3]            <= predicate_cpipe[2];
         mword_address_cpipe[3]        <= mword_address_cpipe[2];
         kword_address_cpipe[3]        <= kword_address_cpipe[2];
         
         // combine new_mword signal with information about thread_count
         new_mword_cpipe[3] <= (
            ( new_mword_cpipe[2] ) |                                                               // already determined this will be the start of a new mword, regardless of thread_count
            ( valid_cpipe[2] & thread_count_cpipe[4][MAX_THREADS_PER_BURST_LOG2] ) );              // forcing a new burst because we've reached the maximum thread count

         // combine new_burst signal with information about thread count
         new_burst_cpipe[3] <= (
            ( new_burst_cpipe[2] ) |                                                               // already determined this will be the start of a new burst, regardless of thread_count
            ( valid_cpipe[2] & thread_count_cpipe[4][MAX_THREADS_PER_BURST_LOG2] ) |               // forcing a new burst because we've reached the maximum thread count
            ( valid_cpipe[2] & new_mword_cpipe[2] & 
              thread_count_cpipe[4][END_BURST_MWORD_BOUNDRY_THREADS_LOG2] ) );                     // starting a new MWORD and we have reached the threshold in threads in a burst where we will terminate on an MWORD boundry

         ///////////////////////////////
         // Pipeline Stage 4
         // 
         // This stage of the pipeline holds some state and is not purely feed-forward, so some resets are introduced here.

         // Signals that feed the thread FIFO
         // A thread will be held here (at pipeline stage 4) until a new (valid) thread comes along to push it out, or
         // some other event causes the current burst to terminate (timeout or max thread count reached)
         if ( valid_cpipe[3] | new_burst_cpipe[3] ) begin
            valid_cpipe[4] <= valid_cpipe[3];
            predicate_cpipe[4] <= predicate_cpipe[3];
            kword_address_cpipe[4] <= kword_address_cpipe[3];
         end
         if ( ~sclrn[0] ) begin                // reset this valid, since it has feedback and might not flush properly just by setting the incoming valid signal to 0
            valid_cpipe[4] <= 1'b0;
            // values of predicate and address are irrelevant if valid==0, so no need to reset them
         end
         
         // avalon_valid depends on incoming valid from previous state or can hold its current state while coalescing is occuring
         if ( new_burst_cpipe[3] ) begin           // if we are stopping coalescing, load the new valid bit
            avalon_valid_cpipe[4] <= valid_cpipe[3] & ~predicate_cpipe[3];    // predicated threads do not lead to any avalon transaction
         end else begin                            // not starting a new burst, combine incoming valid/predicate bits with current bit (so valid will get set when a new burst begins)
            avalon_valid_cpipe[4] <= avalon_valid_cpipe[4] | (valid_cpipe[3] & ~predicate_cpipe[3]);
         end
         if ( ~sclrn[0] ) begin             // reset this valid, since it has feedback and might not flush properly just by setting the incoming valid signal to 0
            avalon_valid_cpipe[4] <= 1'b0;
         end

         // count the number of threads within the coalesced burst
         // This counter is implemented in a 'sloppy' way that results in some variablility as to exactly when a burst will
         // be terminated.  First, it will include predicated threads that come before the actual coalescing begins, even though
         // these threads will not be 'waiting' for the result of any read.  Second, this counter is used back in pipeline stage
         // 3, but is not calculated until pipeline stage 4, so it is slightly 'stale' when used.  This may result in one
         // more threads than the 'maximum' number being coalesced into the burst.
         if ( new_burst_cpipe[3] ) begin              // set the counter to 1 (if a valid thread comes with the new mword) or 0 (if no valid thread is incoming)
            thread_count_cpipe[4] <= { {(MAX_THREADS_PER_BURST_LOG2-1){1'b0}}, valid_cpipe[3] };
         end else begin                               // not starting a new burst, increment the counter for each valid thread
            thread_count_cpipe[4] <= thread_count_cpipe[4] + { {(MAX_THREADS_PER_BURST_LOG2-1){1'b0}}, valid_cpipe[3] };
         end
         if ( ~sclrn[0] ) begin
            thread_count_cpipe[4] <= '0;                 // reset the counter to 0
         end
         
         // generate burst_count and memory address (which does not change as we coalesce a burst)
         // Note that we rely on detection of crossing a burst boundary to end burst coalescing, which eliminates the need to check the actual burst count
         // NOTE the RESET assignment happens AFTER this logic
         if ( new_burst_cpipe[3] | ~avalon_valid_cpipe[4] ) begin    // incoming thread is the start of a new burst (or potentially the start of a new burst, since no valid burst has started yet)
            burst_count_cpipe[4] <= {{(BURSTCOUNT_WIDTH-1){1'b0}},{1'b1}};       // reset the burst counter to 1
            mword_address_cpipe[4] <= mword_address_cpipe[3];                    // load the new address value
         end else if ( new_mword_cpipe[3] ) begin                    // incoming thread is the start of a new memory word within the same burst
            burst_count_cpipe[4] <= burst_count_cpipe[4] + 1;                    // increment the burst counter   
            mword_address_cpipe[4] <= mword_address_cpipe[4];                    // hold the current address value (which is the address of the start of the burst)
         end
         if ( ~sclrn[0] ) begin    // if reset is asserted, this assignment overrides the assignment above
            burst_count_cpipe[4] <= {{(BURSTCOUNT_WIDTH-1){1'b0}},{1'b1}};       // reset the counter to 1
         end
         

            
         ///////////////////////////////
         // Final Pipeline Stage
         
         // straight passthrough signals
         predicate_cpipe            [COALESCER_PIPE_DEPTH] <= predicate_cpipe          [4];
         burst_count_cpipe          [COALESCER_PIPE_DEPTH] <= burst_count_cpipe        [4];
         kword_address_cpipe        [COALESCER_PIPE_DEPTH] <= kword_address_cpipe      [4];
         mword_address_cpipe        [COALESCER_PIPE_DEPTH] <= mword_address_cpipe      [4];

         
         // if the incoming thread (valid or not) to the previous stage represents a new MWORD, then the current thread must be the last thread in the current MWORD, UNLESS
         // the current thread is not associated with an MWORD (as indicated by avalon_valid == 0) - this case can happen when a predicated thread is received when no burst is being actively coalesced
         // this signal essentially 'skips' a pipeline stage, which changes it's meaing from 'new mword' (this is the first thread in an mword) to 'last_thread' (this is the LAST thread in an mword)
         last_thread_in_mword_cpipe[COALESCER_PIPE_DEPTH] <= new_mword_cpipe[3] & avalon_valid_cpipe[4];

         // determine when to write to the thread FIFO
         // write when there is a valid thread sitting in the previous stage, AND that thread is being forced out by a new incoming thread or some other reason for terminating a burst (such as a timeout)
         write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH] <= valid_cpipe[4] & (valid_cpipe[3] | new_burst_cpipe[3]);
         
         // determine when to write to the Avalon FIFO
         // write when there is a valid burst sitting in the previous stage, AND that burst is being forced out by a new incoming burst
         write_avalon_fifo_cpipe[COALESCER_PIPE_DEPTH] <= avalon_valid_cpipe[4] & new_burst_cpipe[3];

      end
         
   end
   
   
   // generate the coalescer_active signal
   logic                               coalescer_active;                      // asserted if there are any active threads in the coalescer pipeline
   logic                               coalescer_active_comb;                 // combinatorial version of coalascer_active, used to drive the coalescer_active register
   always_comb begin
      coalescer_active_comb = write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH] | write_avalon_fifo_cpipe[COALESCER_PIPE_DEPTH];
      for( int i=1; i<COALESCER_PIPE_DEPTH; i++ ) begin
         coalescer_active_comb = coalescer_active_comb | valid_cpipe[i];
      end
   end
   always_ff @(posedge clock or negedge aclrn) begin
      if (~aclrn) begin
         coalescer_active <= '0;
      end else begin
         coalescer_active <= coalescer_active_comb;
      end
   end

   
   ///////////////////////////////////////
   // FIFO Buffers
   //
   // There are three FIFOs, one for threads waiting for data (thread_fifo), one for Avalon 
   // transactions waiting to be sent to the global memory interconnect (avalon_fifo), and
   // one to store returned read data (readdata_fifo).
   // 
   // The stall_lookahead (almost_full) flag from the thread FIFO is fed back to the input 
   // block to stop the flow of new threads.  The stall_lookahead threshold is set to 
   // ensure the FIFO will have enough room to accept all words in the pipeline when the 
   // signal asserts.  There will be at least one thread per avalon transaction and at least
   // one thread per returned data word, so the other fifos are guaranteed to fill up no sooner
   // than the thread_fifo, thus their almost_full flags can be safely ignored.
   ///////////////////////////////////////

   localparam  THREAD_FIFO_READ_TO_FULL_LATENCY = 2;    //do not change value, thread_fifo_stall_in is combinational logic so add some pipelining before it reaches the incr/decr/thresh for computing fifo_stall_out_lookahead
   localparam  TOTAL_UPSTREAM_STALL_LATENCY = INPUT_PIPE_DEPTH + COALESCER_PIPE_DEPTH + UPSTREAM_STALL_LATENCY + INPUT_STALL_REACTION_CYCLES + THREAD_FIFO_READ_TO_FULL_LATENCY;   // latency from when a stall is asserted to when the last valid thread will be received
   localparam  MIN_FIFO_DEPTH_FOR_PIPELINE = (2 * TOTAL_UPSTREAM_STALL_LATENCY );                                                               // make sure FIFO will not have time to empty after stall de-asserted before new valid threads reach it
   localparam  MIN_FIFO_DEPTH = MIN_MEMORY_BUFFER_DEPTH > MIN_FIFO_DEPTH_FOR_PIPELINE ? MIN_MEMORY_BUFFER_DEPTH : MIN_FIFO_DEPTH_FOR_PIPELINE;  // choose the larger of the two minimums
   localparam  FIFO_DEPTH_LOG2 = $clog2(MIN_FIFO_DEPTH);
   localparam  FIFO_DEPTH = (2**FIFO_DEPTH_LOG2);                                  // round the FIFO depth up to the nearest power of 2
   localparam  THREAD_FIFO_WIDTH = ((MWORD_ABITS-ALIGNMENT_ABITS+1)+1+1);          // address bits to determine kernel word position within the memory word, predicate bit, and last_thread_in_mword bit
   localparam  AVALON_FIFO_WIDTH = ((AWIDTH-MWORD_ABITS)+ BURSTCOUNT_WIDTH);       // address bits to specify location of memory word, and burstcount bits
   localparam  FIFO_STALL_OUT_LOOKAHEAD_COUNT = TOTAL_UPSTREAM_STALL_LATENCY;      // must provide space in the FIFO for the pipeline feeding the FIFO to completely flush, including time for the input circuit to react
   localparam  READDATA_FIFO_STALL_IN_EARLINESS = (ALLOW_HIGH_SPEED_FIFO_USAGE) ? 4 : 2;    // how many clock cycles ahead of time do we compute i_stall for readdata_fifo, do not modify
   
   // connections to the thread_fifo
   logic                               thread_fifo_valid_out_early;
   logic                               thread_fifo_stall_in;
   logic                               thread_fifo_stall_in_prev, thread_fifo_valid_out_prev;
   logic                               thread_fifo_decr;
   logic [MWORD_ABITS-ALIGNMENT_ABITS:0]  kword_address_thread_fifo, kword_address_thread_early;
   logic [MWORD_ABITS-ALIGNMENT_ABITS:0]  kword_address_thread_fifo_pipe [1:READDATA_FIFO_STALL_IN_EARLINESS];
   logic                               predicate_thread_fifo_early;
   logic                               last_word_in_mword_thread_fifo_early;
   
   // connections to the avalon_fifo
   logic                               avalon_fifo_valid_out;
   logic                               avalon_fifo_stall_in;
   logic [AWIDTH-1:0]                  address_avalon_fifo;       // lower bits are hard-coded to 0
   logic [BURSTCOUNT_WIDTH-1:0]        burst_count_avalon_fifo;
   
   // connections to the readdata_fifo
   logic                               readdata_fifo_valid_out_early;
   logic                               readdata_fifo_stall_in_early;
   logic [MWIDTH_BYTES*8-1:0]          dout_readdata_fifo;

   logic [1:0] ecc_err_status_0, ecc_err_status_1, ecc_err_status_2, ecc_err_status_3;
   

   // thread_fifo
   hld_fifo #(
      .WIDTH                        (THREAD_FIFO_WIDTH),
      .DEPTH                        (FIFO_DEPTH),
      .ALMOST_EMPTY_CUTOFF          (0),
      .ALMOST_FULL_CUTOFF           (0),
      .INITIAL_OCCUPANCY            (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1),
      .STALL_IN_EARLINESS           (0),
      .VALID_IN_EARLINESS           (0),
      .REGISTERED_DATA_OUT_COUNT    (2),    // predicate and last_word_in_mword are control signals, register just these bits of o_data
      .NEVER_OVERFLOWS              (1),    // incoming data can't be stalled
      .HOLD_DATA_OUT_WHEN_EMPTY     (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .USE_STALL_LATENCY_UPSTREAM   (0),
      .USE_STALL_LATENCY_DOWNSTREAM (0),
      .STYLE                        (FIFO_STYLE),
      .enable_ecc                   (enable_ecc)
   )
   thread_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .i_valid                      (write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH]),
      .o_stall                      (),                         // i_valid guarded by o_almost_full a few clocks ago
      .o_almost_full                (),                         // handled separately so that we can add pipelining to stall_in
      .i_data                       ({kword_address_cpipe[COALESCER_PIPE_DEPTH], predicate_cpipe[COALESCER_PIPE_DEPTH], last_thread_in_mword_cpipe[COALESCER_PIPE_DEPTH]}),
      .o_valid                      (thread_fifo_valid_out_early),
      .o_almost_empty               (),                         // not used
      .i_stall                      (thread_fifo_stall_in),     // drive low to read a word from the FIFO
      .o_data                       ({kword_address_thread_early, predicate_thread_fifo_early, last_word_in_mword_thread_fifo_early}),
      .o_empty                      (),
      .ecc_err_status               (ecc_err_status_0)
   );
   
   //we use incr/decr/thresh to track the early-by-4 read-side occupancy of readdata fifo
   //whether we want to read 4 clocks early depends on whether that fifo is empty 4 clocks ahead of time, and predicate_thread_fifo_early which comes from thread_fifo
   //if we decide to read from readdata fifo, then the data will arrive in 4 clocks from now
   //we want to insert all data into the data pipeline (the "dpipe" signals) at the same time, so we need to keep kword_address live for another 4 clocks
   //this is still a big area win because kword_address is a handful of bits whereas READDATA_FIFO_STALL_IN_EARLINESS = 4 gets rid of the prefetch in a wide fifo
   always_ff @(posedge clock or negedge aclrn) begin
       if (~aclrn) begin
          kword_address_thread_fifo_pipe[1] <= '0;
       end
       else begin
          kword_address_thread_fifo_pipe[1] <= kword_address_thread_early;
          for (int i=2; i<=READDATA_FIFO_STALL_IN_EARLINESS; i++) kword_address_thread_fifo_pipe[i] <= kword_address_thread_fifo_pipe[i-1];
          
       end
   end
   assign kword_address_thread_fifo = kword_address_thread_fifo_pipe[READDATA_FIFO_STALL_IN_EARLINESS];
   
   //implement a sloppy almost full by adding 2 pipeline registers before driving the decr part of incr/decr/thresh
   //we compensate for this lateness by reducing the almost full threshold by 2 (adding 2 more spots of dead space)
   //motivation for doing this is to reduce fan-out of thread_fifo_stall_in and to allow more flexibility in physical placement (the almost full could get pulled by kernel upstream logic)
   //the original almost full produced by the fifo will be swept away due to no fan-out, so we are not creating an extra instance of incr/decr/thresh
   always_ff @(posedge clock or negedge aclrn) begin
       if (~aclrn) begin
          thread_fifo_decr <= 1'b0;
          thread_fifo_stall_in_prev <= 1'b1;
          thread_fifo_valid_out_prev <= 1'b0;
       end
       else begin
          thread_fifo_stall_in_prev <= thread_fifo_stall_in;
          thread_fifo_valid_out_prev <= thread_fifo_valid_out_early;
          thread_fifo_decr <= ~thread_fifo_stall_in_prev & thread_fifo_valid_out_prev;
          if (~sclrn) begin
             thread_fifo_decr <= 1'b0;
          end
       end
   end
   
   acl_tessellated_incr_decr_threshold #(
      .CAPACITY                     (FIFO_DEPTH),
      .THRESHOLD                    (FIFO_DEPTH - FIFO_STALL_OUT_LOOKAHEAD_COUNT),  //convert almost full cutoff into threshold
      .INITIAL_OCCUPANCY            (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .THRESHOLD_REACHED_AT_RESET   (1),    //stall should be asserted during reset
      .RESET_RELEASE_DELAY          (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1)
   )
   thread_fifo_almost_full
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .incr_no_overflow             (write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH]),
      .incr_raw                     (write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH]),
      .decr_no_underflow            (thread_fifo_decr),
      .decr_raw                     (thread_fifo_decr),
      .threshold_reached            (fifo_stall_out_lookahead)  // this signal is fed back to stall the input section before the FIFO(s) can overflow
   );
   
   
   // When the lsu occupancy is high, deactivate the coalescer timeout.  The reason for the timeout is to allow threads to progress through
   // the coalescer if no new threads are available.  As long as the occupancy of the LSU is high, there is no point in allowing threads to
   // progress as they will just get stuck in a FIFO within the LSU.  Better to wait and give more threads a chance to coalesce and thus form
   // longer bursts.  This also prevents the case of the LSU reaching maximum capacity and then stalling upstream from causing a timeout (the
   // coalescer can't tell the difference between a lack of valids due to a lack of new threads, and a lack of valids due to stalling by the LSU).
   // Roughly speaking, occupancy has to drop below FIFO_DEPTH - FIFO_STALL_OUT_LOOKAHEAD_COUNT to deassert backpressure, and it could take another FIFO_STALL_OUT_LOOKAHEAD_COUNT clocks before a new valid arrives
   // So if occupancy is below FIFO_DEPTH - (2*FIFO_STALL_OUT_LOOKAHEAD_COUNT) then it is safe to use the coalescer timeout
   // Note that this is the MAXIMUM value to ignore timeout, a lower value could also be used safely, as long as the LSU is far from empty
   acl_tessellated_incr_decr_threshold #(
      .CAPACITY                     (FIFO_DEPTH),
      .THRESHOLD                    (FIFO_DEPTH - (2*FIFO_STALL_OUT_LOOKAHEAD_COUNT)),  //convert almost full cutoff into threshold
      .INITIAL_OCCUPANCY            (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .THRESHOLD_REACHED_AT_RESET   (0),
      .RESET_RELEASE_DELAY          (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1)
   )
   thread_fifo_somewhat_full
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .incr_no_overflow             (write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH]),
      .incr_raw                     (write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH]),
      .decr_no_underflow            (thread_fifo_decr),
      .decr_raw                     (thread_fifo_decr),
      .threshold_reached            (deactivate_coalescer_timeout)
   );
   
   
   // avalon_fifo
   hld_fifo #(
      .WIDTH                        (AVALON_FIFO_WIDTH),
      .DEPTH                        (FIFO_DEPTH),
      .ALMOST_EMPTY_CUTOFF          (0),
      .ALMOST_FULL_CUTOFF           (0),
      .INITIAL_OCCUPANCY            (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1),
      .STALL_IN_EARLINESS           (0),
      .VALID_IN_EARLINESS           (0),
      .REGISTERED_DATA_OUT_COUNT    (0),
      .NEVER_OVERFLOWS              (1),    // incoming data can't be stalled
      .HOLD_DATA_OUT_WHEN_EMPTY     (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .USE_STALL_LATENCY_UPSTREAM   (0),
      .USE_STALL_LATENCY_DOWNSTREAM (0),
      .STYLE                        (FIFO_STYLE),
      .enable_ecc                   (enable_ecc)
   )
   avalon_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .i_valid                      (write_avalon_fifo_cpipe[COALESCER_PIPE_DEPTH]),
      .o_stall                      (),                         // i_valid guarded by o_almost_full a few clocks ago
      .o_almost_full                (),                         // not used (we rely on the stall_out_lookahead from the thread_fifo to determine when to stall)
      .i_data                       ({mword_address_cpipe[COALESCER_PIPE_DEPTH], burst_count_cpipe[COALESCER_PIPE_DEPTH]}),
      .o_valid                      (avalon_fifo_valid_out),
      .o_almost_empty               (),                         // not used
      .i_stall                      (avalon_fifo_stall_in),     // drive low to read a word from the FIFO
      .o_data                       ({address_avalon_fifo[AWIDTH-1:MWORD_ABITS], burst_count_avalon_fifo}),
      .o_empty                      (),
      .ecc_err_status               (ecc_err_status_1)
   );
   assign address_avalon_fifo[MWORD_ABITS-1:0] = '0;      // these address bits unused at this point, carry them around for simplicity in connecting ports

   
   // readdata_fifo
   hld_fifo #(
      .WIDTH                        (MWIDTH_BYTES*8),
      .DEPTH                        (FIFO_DEPTH),
      .ALMOST_EMPTY_CUTOFF          (0),
      .ALMOST_FULL_CUTOFF           (0),
      .INITIAL_OCCUPANCY            (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1),
      .STALL_IN_EARLINESS           (READDATA_FIFO_STALL_IN_EARLINESS), // how many clocks ahead of time is i_stall
      .VALID_IN_EARLINESS           (AVM_READ_DATA_LATENESS),
      .MAX_SLICE_WIDTH              (WIDE_DATA_SLICING),
      .REGISTERED_DATA_OUT_COUNT    (0),
      .NEVER_OVERFLOWS              (1),    // incoming read data can't be stalled
      .HOLD_DATA_OUT_WHEN_EMPTY     (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .USE_STALL_LATENCY_UPSTREAM   (0),
      .USE_STALL_LATENCY_DOWNSTREAM (0),
      .STYLE                        (FIFO_STYLE),
      .enable_ecc                   (enable_ecc)
   )
   readdata_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .i_valid                      (avm_readdatavalid),
      .o_stall                      (),                             // incoming read data can't be stalled
      .o_almost_full                (),                             // not used (we rely on the stall_out_lookahead from the thread_fifo to determine when to stall)
      .i_data                       (avm_readdata),
      .o_valid                      (),
      .o_almost_empty               (),                             // not used
      .i_stall                      (readdata_fifo_stall_in_early), // drive low to read a word from the FIFO in STALL_IN_EARLINESS clocks from now
      .o_data                       (dout_readdata_fifo),
      .o_empty                      (),
      .ecc_err_status               (ecc_err_status_2)
   );
   
   
   // incr to readdata_fifo_early_valid_detect is readdata_fifo i_valid delayed by 0 clocks
   // normally we should delay by 4 clocks to track read_used_words of high_speed_fifo (delay by write to read latency of fifo minus 1)
   // delaying by N less effectively reduces the write to read latency by N, so we know empty N clocks earlier than normal
   // essentially we have turned high speed fifo into low latency fifo, but the read data comes out 4 clocks after it was promised (when valid_out & ~stall_in)
   
   // correct the timing of the readdatavalid signal for the occupancy tracker below
   logic avm_readdatavalid_delayed [AVM_READ_DATA_LATENESS:0];  //index N is late by N clocks, so N=0 is original timing
   logic avm_readdatavalid_correct_timing;
   genvar g;
   generate
   always_comb begin
      avm_readdatavalid_delayed[0] = avm_readdatavalid;
   end
   for (g=1; g<=AVM_READ_DATA_LATENESS; g++) begin : GEN_AVM_READ_DATA_LATENESS
      always_ff @(posedge clock) begin  //no reset
         avm_readdatavalid_delayed[g] <= avm_readdatavalid_delayed[g-1];
      end
   end
   endgenerate
   assign avm_readdatavalid_correct_timing = avm_readdatavalid_delayed[AVM_READ_DATA_LATENESS];
   
   acl_tessellated_incr_decr_threshold #(
      .CAPACITY                     (FIFO_DEPTH),
      .THRESHOLD                    (1),
      .INITIAL_OCCUPANCY            (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .THRESHOLD_REACHED_AT_RESET   (0),
      .RESET_RELEASE_DELAY          (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1)
   )
   readdata_fifo_early_valid_detect
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .incr_no_overflow             (avm_readdatavalid_correct_timing),
      .incr_raw                     (avm_readdatavalid_correct_timing),
      .decr_no_underflow            (~readdata_fifo_stall_in_early & readdata_fifo_valid_out_early),
      .decr_raw                     (~readdata_fifo_stall_in_early),
      .threshold_reached            (readdata_fifo_valid_out_early)
   );
   
   // generate the fifo_active signal
   // can't simply use the empty signal from the FIFO, since there could be high latency between a new write and empty being de-asserted
   // only can be inactive if empty is asserted N clock cycles after the last write, where N is the latency from write to empty
   localparam                          FIFO_EMPTY_CNT_WIDTH = ($clog2(FIFO_WRITE_TO_EMPTY_LATENCY+1) + 1);     // counter counts down to -1, so need an extra bit of width
   logic [FIFO_EMPTY_CNT_WIDTH-1:0]    fifo_empty_counter;                    // count down from time of last write to the FIFO to determine when EMPTY flag can be trusted
   logic                               fifo_active;                           // asserted if there are any pending memory transactions in the FIFO
   
   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         fifo_empty_counter      <= '0;
         fifo_active             <= '0;
      
      end else begin
      
         // implement a counter that compensates for the latency between writing to the FIFO and the valid output (~empty) being asserted
         if( ~sclrn[0] ) begin
            fifo_empty_counter <= {{FIFO_EMPTY_CNT_WIDTH}{1'b1}};       // initialize the counter to -1, indicating no pending memory transactions in the FIFO
         end else begin
            if( write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH] ) begin   // writing a new word into the FIFO
               fifo_empty_counter <= FIFO_WRITE_TO_EMPTY_LATENCY - 1;      // load the counter to begin a countdown
            end else begin
               if( ~fifo_empty_counter[FIFO_EMPTY_CNT_WIDTH-1] ) begin     // only count down until counter rolls over to -1
                  fifo_empty_counter <= fifo_empty_counter - 1;
               end
            end
         end
         
         // generate the fifo_active signal
         // assert if there is valid data in the fifo, or a new word is being written to the FIFO, or the counter to compensate for FIFO latency has not yet counted down to -1
         if( thread_fifo_valid_out_early | write_thread_fifo_cpipe[COALESCER_PIPE_DEPTH] | ~fifo_empty_counter[FIFO_EMPTY_CNT_WIDTH-1] ) begin
            fifo_active <= 1'b1;
         end else begin
            fifo_active <= 1'b0;
         end
      
      end
      
   end



   ///////////////////////////////////////
   // Avalon Interface
   //
   // Reads commands out of the FIFO Buffer and sends them as avalon read commands.
   // At the moment, this interface is simply direct connections to the avalon_fifo.  Pipelining
   // may be added in the future, especially to deal with unaligned reads.
   ///////////////////////////////////////

   localparam                          AVALON_PIPE_DEPTH = 0;  // currently no pipeline needed here

   assign avm_read = avalon_fifo_valid_out;
   assign avalon_fifo_stall_in = avm_waitrequest;
   assign avm_address = address_avalon_fifo;
   assign avm_burstcount = burst_count_avalon_fifo;
   assign avm_byteenable = '1;                                 // unused for reads, set all bits to 1

   // generate the avalon_active signal
   logic                               avalon_active;                         // asserted if there are any active threads in the avalon pipeline
   assign avalon_active = 1'b0;                                               // this signal not used at the moment
   
   
   ///////////////////////////////////////
   // Data Pipeline
   //
   // Pull read data from the readdata_fifo, and threads from the thread_fifo,
   // and combine them to write into the output_fifo.  This pipeline only stalls
   // when the output fifo signals almost full.
   //
   // TODO: If the zero-cycle stall interface is replaced with the stall latency scheme
   //       (or something similar), we can do away with the final output FIFO.
   ///////////////////////////////////////
   
   localparam                          DATA_PIPE_DEPTH = 3;    // TODO make this a function of the size of the mux required?
   localparam                          DOUT_FIFO_VALID_IN_EARLINESS = 1;    //intended for hld_fifo with width slicing at very wide widths, but no harm in always leaving this enabled, just peek ahead in the valid pipeline
   localparam                          MUX_SELECT_COPIES_RAW = (WIDE_DATA_SLICING==0) ? 1 : (MWIDTH_BYTES*8+WIDE_DATA_SLICING-1) / WIDE_DATA_SLICING; //width-slice only if needed, num slices = ceiling(mword width / slice width)
   localparam                          MUX_SELECT_COPIES = (MUX_SELECT_COPIES_RAW < 1) ? 1 : (MUX_SELECT_COPIES_RAW > WIDTH_BYTES*8) ? WIDTH_BYTES*8 : MUX_SELECT_COPIES_RAW;   //minimum 1, maximum kword width
   
   logic                               data_pipe_stall_out_lookahead_early;    // stall from the FIFO at the end of the data pipe, TODO can be replaced with incoming stall if stall_latency supported in the future
   logic                               valid_dpipe                   [1:DATA_PIPE_DEPTH];    // valid signal at each stage of the pipeline
   logic [MWORD_ABITS-ALIGNMENT_ABITS:0]  kword_address_dpipe        [1:1][MUX_SELECT_COPIES] /* synthesis dont_merge */;   //replicate for each section of the wide data
   logic [MWIDTH_BYTES*8-1:0]          mword_data_dpipe              [1:1];
   logic [WIDTH_BYTES*8-1:0]           kword_data_dpipe              [2:DATA_PIPE_DEPTH];
   
   logic                               early_valid_dpipe             [1:READDATA_FIFO_STALL_IN_EARLINESS];
   
   // Determine when to stall the readdata_fifo
   // If we are stalling from downstream, then always stall
   // Othrwise, if the thread leaving the thread fifo is NOT the last thread in this MWORD, then stall.
   // If the readdata_fifo does not have valid data, then state of stall is irrelevant.  If it DOES have
   // valid data, then we know the thread fifo will also have valid data (threads will always reach the
   // FIFOs before returned readdata), so no need to check the valid signals from either FIFO.
   
   // This *looks* like combinational logic driving the stall_in to a wide fifo, however since READDATA_FIFO_STALL_IN_EARLINESS == 4
   // then hld_fifo will absorb the excess earliness by adding one pipeline register before the stall_in port of acl_high_speed_fifo
   
   // Beware that we don't actually get output data from the readdata fifo until 4 clocks from after we read from the fifo
   assign readdata_fifo_stall_in_early = data_pipe_stall_out_lookahead_early | ~last_word_in_mword_thread_fifo_early;
   
   // Determine when to stall the thread_fifo.
   // If we are stalling from downstream, then always stall
   // Otherwise, don't stall if the current thread is predicated (no need to wait for readdata) or if
   // readdata is available.  If the thread fifo does not have valid data, then the state of stall is
   // irrelevant, so no need to check the thread_fifo valid output.
   
   // This is still combinational logic, however it only drives a narrow prefetch and the read address inside high speed fifo
   // The almost full for backpressuring upstream from the outside world is handled separately with a registered version of this read ack
   assign thread_fifo_stall_in = data_pipe_stall_out_lookahead_early | (~predicate_thread_fifo_early & ~readdata_fifo_valid_out_early);
   
   
   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin

         for (int i=1; i<=DATA_PIPE_DEPTH;i++) begin
            valid_dpipe                   [i]   <= '0;
         end
         kword_data_dpipe                 [3]   <= '0;
         for (int i=0; i<MUX_SELECT_COPIES; i++) begin
            kword_address_dpipe           [1][i]<= '0;
         end
         mword_data_dpipe                 [1]   <= '0;
         for (int i=1; i<=READDATA_FIFO_STALL_IN_EARLINESS; i++) begin
            early_valid_dpipe             [i]   <= '0;
         end
      
      end else begin
         // retimed lookahead before the pipeline itself
         // determine when a valid thread has entered the pipeline
         // do not accept any new threads into pipeline when stalling due to downstream fifo
         // otherwise accept if a valid predicated thread is available (it doesn't have to wait for readdata) or valid read data is available (items always reach thread_fifo before readdata_fifo)
         early_valid_dpipe[1] <= (data_pipe_stall_out_lookahead_early) ? 1'b0 : ((thread_fifo_valid_out_early & predicate_thread_fifo_early) | readdata_fifo_valid_out_early);
         for (int i=2; i<=READDATA_FIFO_STALL_IN_EARLINESS; i++) early_valid_dpipe[i] <=early_valid_dpipe[i-1];
      
         ///////////////////////////////
         // Pipeline Stage 1
         
         // signals that just pass straight through
         valid_dpipe[1]          <= early_valid_dpipe[READDATA_FIFO_STALL_IN_EARLINESS];
         for (int i=0; i<MUX_SELECT_COPIES; i++) begin
            kword_address_dpipe[1][i] <= kword_address_thread_fifo;
         end
         mword_data_dpipe[1]     <= dout_readdata_fifo;
         
         
         ///////////////////////////////
         // Pipeline Stage 2
         
         // valid is just passed along
         valid_dpipe[2]          <= valid_dpipe[1];
         
         // implement the mux to select the appropriate data bits here in this pipeline stage
         // mux is implemented below in a generate statement
         // rely on the retimer to push register stages into the muxes as required

         ///////////////////////////////
         // Pipeline Stage 3
         
         // all signals simply pass through
         // this stage exists to provide the retimer with extra registers for implementing the mux to
         // select the appropriate data signals
         valid_dpipe[3]          <= valid_dpipe[2];
         kword_data_dpipe[3]     <= kword_data_dpipe[2];
         
      end
      
   end
   
   // This generate statement is part of Pipeline stage 2
   // create a MUX to select the proper bits from the memory word data
   // This uses a generate statement, so has to be outside the always block above
   generate
      if (MWORD_ABITS-ALIGNMENT_ABITS == 0 ) begin  : GENBLK_NOMUX   // alignment of kernel word equals memory word size
         always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) begin
               kword_data_dpipe[2] <= '0;
            end else begin
               kword_data_dpipe[2] <= mword_data_dpipe[1][WIDTH_BYTES*8-1:0];
            end
         end
      end else begin                      : GENBLK_GENMUX            // alignment of kernel word is smaller than memory word size
         //a given width-sliced copy of the select controls output bits KWORD_START (low inclusive) to KWORD_END (high exclusive)
         for (g=0; g<MUX_SELECT_COPIES; g++) begin : GENBLK_GENMUX_COPIES
            localparam KWORD_START = g*WIDTH_BYTES*8 / MUX_SELECT_COPIES;
            localparam KWORD_END   = (g+1)*WIDTH_BYTES*8 / MUX_SELECT_COPIES;
            localparam KWORD_WIDTH = KWORD_END - KWORD_START;
            always_ff @(posedge clock or negedge aclrn) begin
               if (~aclrn) begin
                  kword_data_dpipe[2][KWORD_START +: KWORD_WIDTH] <= '0;
               end else begin
                  for (int i=0; i<MUX_SELECT_COPIES; i++) begin
                     kword_data_dpipe[2][KWORD_START +: KWORD_WIDTH] <= mword_data_dpipe[1][ (kword_address_dpipe[1][g][MWORD_ABITS-ALIGNMENT_ABITS-1:0] * (2**(ALIGNMENT_ABITS+3))) + KWORD_START +: KWORD_WIDTH ];
                  end
               end
            end
         end
      end
   endgenerate
   
   // output FIFO for final readdata 
   hld_fifo #(
      .WIDTH                          ( WIDTH_BYTES*8 ),         // data bits
      .DEPTH                          ( 32 ),                    // Only a small FIFO is required here, enough to ensure constant data flow without introducing bubbles
      .ALMOST_EMPTY_CUTOFF            ( ALMOST_EMPTY_THRESH ),                     
      .ALMOST_FULL_CUTOFF             ( DATA_PIPE_DEPTH+2+READDATA_FIFO_STALL_IN_EARLINESS ),     // need to be able to accept all data in the data pipe after asserting stall_lookahead
      .ASYNC_RESET                    ( ASYNC_RESET ),
      .SYNCHRONIZE_RESET              ( 0 ),
      .RESET_EVERYTHING               ( 0 ),
      .RESET_EXTERNALLY_HELD          ( 1 ),
      .STALL_IN_EARLINESS             ( DOWNSTREAM_STALL_IN_EARLINESS ),
      .VALID_IN_EARLINESS             ( DOUT_FIFO_VALID_IN_EARLINESS ),
      .MAX_SLICE_WIDTH                ( WIDE_DATA_SLICING ),
      .REGISTERED_DATA_OUT_COUNT      ( 0 ),
      .NEVER_OVERFLOWS                ( 1 ),
      .HOLD_DATA_OUT_WHEN_EMPTY       ( 0 ),
      .USE_STALL_LATENCY_UPSTREAM     ( 1 ),
      .USE_STALL_LATENCY_DOWNSTREAM   ( USE_STALL_LATENCY ),
      .STYLE                          ( FIFO_STYLE ),
      .enable_ecc                     (enable_ecc)
   ) 
   dout_fifo
   (
      .clock            ( clock ),
      .resetn           ( resetn_synchronized ),
      .i_valid          ( valid_dpipe[DATA_PIPE_DEPTH-DOUT_FIFO_VALID_IN_EARLINESS] ),  //earliness = peek ahead in the valid_dpipe pipeline
      .o_stall          ( data_pipe_stall_out_lookahead_early ),
      .o_almost_full    (  ),
      .i_data           ( kword_data_dpipe[DATA_PIPE_DEPTH] ),
      .o_valid          ( o_valid ),
      .i_stall          ( i_stall ),
      .o_almost_empty   ( o_almost_empty ),
      .o_empty          ( o_empty ),
      .o_data           ( o_readdata ),
      .ecc_err_status   (ecc_err_status_3)
   );

   // generate the dpipe_active signal
   // can't simply use the empty signal from the FIFO, since there could be high latency between a new write and empty being de-asserted
   // only can be inactive if empty is asserted N clock cycles after the last write, where N is the latency from write to empty
   logic [FIFO_EMPTY_CNT_WIDTH-1:0]    dfifo_empty_counter;                   // count down from time of last write to the FIFO to determine when EMPTY flag can be trusted
   logic                               dfifo_active;                          // asserted if there are any pending memory transactions in the FIFO
   logic                               dpipe_active_comb;
   logic                               dpipe_active;
   logic                               early_dpipe_active;
   logic                               early_dpipe_active_comb;

   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         dfifo_empty_counter  <= '0;
         dfifo_active         <= '0;
         dpipe_active         <= '0;
         early_dpipe_active   <= '0;
      
      end else begin
      
         // implement a counter that compensates for the latency between writing to the FIFO and the valid output (~empty) being asserted
         if( ~sclrn[0] ) begin
            dfifo_empty_counter <= {{FIFO_EMPTY_CNT_WIDTH}{1'b1}};      // initialize the counter to -1, indicating no pending memory transactions in the FIFO
         end else begin
            if( valid_dpipe[DATA_PIPE_DEPTH] ) begin   // writing a new word into the FIFO
               dfifo_empty_counter <= FIFO_WRITE_TO_EMPTY_LATENCY - 1;      // load the counter to begin a countdown
            end else begin
               if( ~dfifo_empty_counter[FIFO_EMPTY_CNT_WIDTH-1] ) begin     // only count down until counter rolls over to -1
                  dfifo_empty_counter <= dfifo_empty_counter - 1;
               end
            end
         end
         
         if( o_valid | valid_dpipe[DATA_PIPE_DEPTH] | ~dfifo_empty_counter[FIFO_EMPTY_CNT_WIDTH-1] ) begin
            dfifo_active <= 1'b1;
         end else begin
            dfifo_active <= 1'b0;
         end
         
         dpipe_active <= dpipe_active_comb;
         early_dpipe_active <= early_dpipe_active_comb;
        
      end
      
   end
   
   always_comb begin
      dpipe_active_comb = dfifo_active;
      for (int i=1; i<=DATA_PIPE_DEPTH; i++) begin
         dpipe_active_comb = dpipe_active_comb | valid_dpipe[i];
      end
      early_dpipe_active_comb = '0;
      for (int i=1; i<=READDATA_FIFO_STALL_IN_EARLINESS; i++) begin
         early_dpipe_active_comb = early_dpipe_active_comb | early_valid_dpipe[i];
      end
   end

   
   ///////////////////////////////////////
   // output active signal, combine active signals from other blocks
   // no dedicated active signal needed for valid generator, o_active is only relevant after all threads have already passed through the valid generator
   ///////////////////////////////////////
   always_ff @(posedge clock or negedge aclrn) begin
      if (~aclrn) begin
         o_active <= '0;
      end else begin
         o_active <= input_active | coalescer_active | fifo_active | avalon_active | dpipe_active | early_dpipe_active;      
      end
   end

   assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1 | ecc_err_status_2 | ecc_err_status_3;

endmodule

  
`default_nettype wire
