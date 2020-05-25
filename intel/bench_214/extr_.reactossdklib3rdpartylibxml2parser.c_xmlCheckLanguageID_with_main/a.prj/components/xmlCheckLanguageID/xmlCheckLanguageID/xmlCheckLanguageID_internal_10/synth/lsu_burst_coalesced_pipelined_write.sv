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


// This module implements a burst-coalesced write LSU with extensive pipelining
// to acheive the best possible Fmax.  This module has been designed with a
// HyperFlex architecture in mind.
//
// An LSU is a 'load store unit'.  Since this is a Write LSU, it is really a
// store unit, meaning it stores data from a Kernel to global memory.  An LSU
// is essentially an adapter between the kernel side interface and the Avalon
// bus that connects to the memory interconnect.  
//
// The LSU also needs to pass valid signals (each valid is also called a 
// 'thread') on to the Kernel.  Every thread which enters the LSU must leave 
// the LSU.  If WRITEACK is enabled, then a thread can only leave once it's
// write data has reached the point in the interconnect where no other
// transaction can pass it.  This is used to guarantee functionality in
// cases that have memory dependencies.  If WRITEACK is disabled, a thread 
// is free to leave as soon as it enters.
//
// Along with the 'valid' signal, each thread has a 'predicate' signal.
// NOTE: the 'predicate' signal in this interface should actually be called
// 'predicate_n', since a '0' on this signal means the transaction is
// predicated (should generate a write to memory), and a '1' on this signal
// means the transaction is NOT predicated (should not generate any transaction
// to the memory).
//
// The 'coalescing' part of this LSU involves taking the data from several
// threads and grouping them together.  Data coming in from the kernel are
// called 'kernel words', and data being sent to the memory through the Avalon
// interface are called 'memory words'.  Kernel words may be smaller than or
// the same width as memory words.  There are two levels of coalescing, both
// of which are supported by this LSU.  Within-word coalescing involves taking
// several kernel words which all map to a single (larger) memory word and
// sending them as a single memory word write.  Burst coalescing invlovles
// taking several (possible within-word coalesced) adjacent memory words
// and grouping them together into a single Avalon burst.
//
// NOTE: This block depends on the write-to-empty latency of the FIFO.  If the
// FIFO implementation changes, there is a constant below that must be updated.
//
// Stall latency protocol is supported by this LSU, and is enabled by the
// USE_STALL_LATENCY parameter.  The internal i_stall to o_valid latency
// of the block is currently set to 0.
//
// Required files:
//    acl_reset_handler.sv
//    acl_high_speed_fifo.sv
//    acl_lfsr.sv
//    acl_tessellated_incr_decr_threshold.sv
//    hld_fifo.sv
//    acl_zero_latency_fifo.sv
//    acl_low_latency_fifo.sv
//    acl_tessellated_incr_lookahead.sv


`default_nettype none

module lsu_burst_coalesced_pipelined_write #(
   parameter AWIDTH                    = 32,             // Address width of the Kernel and Avalon memory interfaces (address busses are byte based, not word based, so address bus widths are the same)

   parameter ALIGNMENT_ABITS           = 5,              // Kernel memory requests are guaranteed to have this many lower-order address bits set to '0'
                                                         // If ALIGNMENT_ABITS >= log2(WIDTH_BYTES), then this is an 'aligned' LSU, with all accesses aligned 
                                                         // Unaligned transactions require special handling since they may span two memory words.  This LSU does not support unaligned transactions.
   parameter WIDTH_BYTES               = 4,              // Width of the Kernel memory data bus in bytes, must be a power of 2
                                                         // (really should be called 'KWIDTH_BYTES', but leaving it as is for historical reasons)
   parameter USE_BYTE_EN               = 1,              // disable/enable the i_byteenable port on the Kernel memory interface

   parameter MWIDTH_BYTES              = 64,             // Width of the Avalon memory data bus in bytes, must be a power of 2
   parameter BURSTCOUNT_WIDTH          = 5,              // Size of Avalon burst count port
   
// TODO add MAX_THREADS_PER_BURST and/or MAX_MWORDS_PER_BURST parameters to force coalescing to stop?
//    MAX_THREADS would allow coalescing across words, but could end up breaking up bursts in odd places
//    Maybe have a MAX_THREADS and MIN_THREADS, and if > MIN and starting a new word, then end the burst?
   parameter MEMORY_SIDE_CAPACITY      = 2,              // number of outstanding requests that can be held in the interconnect awaiting generation of a writeack
   parameter USE_WRITE_ACK             = 0,              // 0 = threads (valids) can exit this block as soon as they enter, 1 = must wait for write ack from the interconnect before letting a thread leave
   parameter TIMEOUT                   = 16,             // Minimum 6.  Number of consecutive clock cycles with valid=0 that will cause the current coalescing transaction to be forced out
                                                         // TODO: implement dual timeout mode that has been added to lsu_bursting_write for MCP throughput improvements
   parameter MIN_THREAD_CAPACITY       = 128,            // minimum number of threads this block must be able to accept when backpressured (stall_in asserted).  Note that this block may still stall before reaching this capacity of the Avalon bus stalls
   parameter MIN_MEMORY_BUFFER_DEPTH   = ((2**(BURSTCOUNT_WIDTH-1)) * 2),     // minimum depth of the coalescing FIFOs.  Previous versions of the coalescing LSU increased the final multiplier to 3 when MWIDTH_BYTES == WIDTH_BYTES.
   parameter ASYNC_RESET               = 1,              // 1:i_resetn is used as an asynchonous reset, and resets all registers, 0:i_resetn is used as a synchronous reset, and resets only registers which require a reset 
   parameter SYNCHRONIZE_RESET         = 0,              // 1 - add a local synchronizer to the incoming reset signal
   parameter USE_STALL_LATENCY         = 0,              // 0 - legacy stall/valid protocol, 1 - enable stall latency protocol
   parameter UPSTREAM_STALL_LATENCY    = 0,              // round trip latency for the upstream (i_valid/o_stall) port, from o_stall being asserted to i_valid guaranteed deasserted.  Must be 0 if USE_STALL_LATENCY=0.
   parameter ALMOST_EMPTY_THRESH       = 1,              // almost empty threshold, o_almost_empty asserts if the number of available threads is <= this number, only applies if USE_STALL_LATENCY=1
   parameter ALLOW_HIGH_SPEED_FIFO_USAGE               = 1,              // choice of fifo style, 0 = mid speed fifo, 1 = high speed fifo
   parameter enable_ecc = "FALSE",                       // Enable error correction coding
   parameter AVM_WRITE_DATA_LATENESS   = 0,              // how many clock cycles late does avm_address, avm_burstcount, avm_writedata, and avm_byteenable arrive versus avm_write and avm_waitrequest
   parameter WIDE_DATA_SLICING         = 0               // for large MWIDTH_BYTES, a nonzero value indicate how wide to width-slice hld_fifo
) (
   input  wire                           clock,                // all inputs/outputs are synchronous with clock
   input  wire                           i_resetn,             // reset input, must be synchronized to clock, can be used as a synchronous or an asynchronous reset depending on the value of ASYNC_RESET
                                                               // i_resetn must be held asserted for at least 16 (to be conservative) clock cycles to completely reset this module
      
   // Kernel input interface  
   input  wire                           i_valid,              // stall/valid behaviour determined by USE_STALL_LATENCY
   output logic                          o_stall,
                                                               // NOTE that this signal is manually duplicated, one duplicate for internal use and one for the output.  It does not seem necessary (or possible) to add a 'dont_merge' constraint to an output signal.
   input  wire                           i_predicate,          // when asserted with i_valid, indicates a valid thread that should NOT generate a memory transaction (the thread should just pass through this module)
   input  wire   [AWIDTH-1:0]            i_address,            // byte address for the write, validated by i_valid
   input  wire   [(WIDTH_BYTES*8)-1:0]   i_writedata,          // write data, validated by i_valid (each byte is 8 bits)
   input  wire   [WIDTH_BYTES-1:0]       i_byteenable,         // byte enable, validated by i_valid
      
   // Kernel output interface 
   output logic                          o_valid,              // stall/valid behaviour determined by USE_STALL_LATENCY
   input  wire                           i_stall,
   output logic                          o_empty,              // empty/almost_empty only enabled when USE_STALL_LATENCY=1
   output logic                          o_almost_empty,
   output logic                          o_active,             // only de-asserted when this module is completely idle (no active threads or pending transactions)
   
   // Avalon interface  
   // TODO may need to update this interface when the new interconnect scheme has been implemented
   output logic                          avm_write,            // when avm_write is asserted and avm_waitrequest is not, a write transaction occurs, asserted for every data word transferred
   input  wire                           avm_waitrequest,      // asserted by the downstream block to prevent a new transaction TODO: add pipelining to this signal when "WAITREQUEST LATENCY" feature has been implemented in the interconnect
   output logic  [AWIDTH-1:0]            avm_address,          // byte address of the start of the burst
   output logic  [BURSTCOUNT_WIDTH-1:0]  avm_burstcount,       // number of words in the burst (note that this will NOT decrement as the burst progresses)
   output logic  [(MWIDTH_BYTES*8)-1:0]  avm_writedata,        // data word
   output logic  [MWIDTH_BYTES-1:0]      avm_byteenable,       // byte enables
   input  wire                           avm_writeack,          // asserted to indicate that the write transaction has reached its destination (no other transaction can now get in front of it)
                                                               // Note: asserted once per data word, not once per burst
   output logic  [1:0]                   ecc_err_status // ecc status signals
);

   // Parameters used across multiple internal blocks
   localparam                    KERNEL_WORD_ABITS = ($clog2(MWIDTH_BYTES/WIDTH_BYTES));     // number of address bits to select the position of the Kernel memory word within the Avalon memory word (if MWIDTH_BYTES==WIDTH_BYTES, this is 0, meaning no address bits are needed)
   localparam                    BYTE_ABITS = ($clog2(WIDTH_BYTES));                         // number of address bits to select the byte within the kernel memory word
   localparam                    MWORD_ABITS = ($clog2(MWIDTH_BYTES));                       // number of address bits to select byte position with the Avalon memory word, these bits are not needed by the Avalon interface
   localparam                    FIFO_STYLE = ALLOW_HIGH_SPEED_FIFO_USAGE ? "hs" : "ms";
   localparam                    FIFO_WRITE_TO_EMPTY_LATENCY = ALLOW_HIGH_SPEED_FIFO_USAGE ? 5 : 3;
   
   // signals used for feedback
   // most signals are feed-forward only, and so are declared as needed below, but these stall lookahead signals feed backwards to stall the pipeline
   logic                         last_fifo_stall_out_lookahead;                        // early stall signal from the data buffer FIFO, asserts when FIFO is near capacity (but is still able to absorb all words already in the pipeline)
   logic                         thread_count_fifo_stall_out_lookahead;                // early stall signal from the thread count FIFO (only used when writeack is enabled)
   logic                         valid_gen_stall_out_lookahead;                        // early stall signal from the valid generator, asserts when the counter is near capacity (but is still able to absorb all words already in the pipeline)
   
   ///////////////////////////////////////
   // Reset signal replication and pipelining
   //
   // In order to ensure that the reset signal is not a limiting factor when 
   // doing retiming, we create multiple copies of the reset signal and 
   // pipeline each adequately.
   ///////////////////////////////////////
   localparam                    NUM_RESET_COPIES = 2;
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
   // Capture incoming threads, generate stalls when necessary, and pre-calculate control signals for use later in the pipeline.
   ///////////////////////////////////////

   // Pipelined signals use the unpacked dimension to indicate location in the pipe.
   // Pipeline index N feeds into index N+1, and 1 is the first index used.
   // All signals at pipeline location N are co-timed with each other, so some signals will start later than
   // stage 1, and some will not persist for the full depth of the pipeline.
   localparam                    INPUT_PIPE_DEPTH = 2;                                       // if this number is to be changed, other code changes will also be required
   localparam                    INPUT_STALL_REACTION_CYCLES = 4;                            // this setting is conservative, indicates the number of additional valid threads that can pass through after the 'sloppy' stall signal is asserted
   logic                         valid_in_ipipe             [1:INPUT_PIPE_DEPTH];            // valid signal from the kernel, this signal qualifies all other signals in the (stall free) pipeline
   (* dont_merge *) logic        stall_out_ipipe            [0:0];                           // stage 0 drives the o_stall signal, which is 1 is co-timed with 1_valid, meaning it is 1 clock cycle earlier than stage 1 of this pipeline
   logic                         predicate_ipipe            [1:INPUT_PIPE_DEPTH];  
   logic [AWIDTH-1:0]            address_ipipe              [1:INPUT_PIPE_DEPTH];
   logic [(WIDTH_BYTES*8)-1:0]   writedata_ipipe            [1:INPUT_PIPE_DEPTH];
   logic [WIDTH_BYTES-1:0]       byteenable_ipipe           [1:INPUT_PIPE_DEPTH];
   logic [AWIDTH-1:MWORD_ABITS]  next_mword_address_ipipe   [2:INPUT_PIPE_DEPTH];            // address of the memory word after the current memory word (so current memory word address + 1)
                                                                                             // pre-calculated here for use later in the coalescer

   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         for (int i=1; i<=INPUT_PIPE_DEPTH; i++) begin
            valid_in_ipipe[i]             <= '0;
            address_ipipe[i]              <= '0;
            byteenable_ipipe[i]           <= '0;
            predicate_ipipe[i]            <= '0;
            writedata_ipipe[i]            <= '0;
         end
         for (int i=2; i<=INPUT_PIPE_DEPTH; i++) begin
            next_mword_address_ipipe[i]   <= '0;
         end
         stall_out_ipipe[0]               <= '1;
         o_stall                          <= '1;
      
      end else begin
   
         // valid pipeline, register the raw input then combine with the stall signal at the earliest opportunity
         // only the first stage of the valid pipeline is reset, the 0 will then propogate through the rest of the valid chain as long as i_resetn is held asserted long enough
         if (~sclrn[0]) begin
            valid_in_ipipe[1] <= 1'b0;
         end else begin
            if (USE_STALL_LATENCY) begin
               // when stall latency protocol is enabled, every valid MUST be accepted, regardless of state of o_stall
               valid_in_ipipe[1] <= i_valid;
            end else begin
               // when legacy stall/valid protocol is enabled, a thread is accepted only when o_stall=0 and i_valid=1
               valid_in_ipipe[1] <= i_valid & ~stall_out_ipipe[0];
            end
         end
         for (int i=2; i<=INPUT_PIPE_DEPTH; ++i) begin
            valid_in_ipipe[i] <= valid_in_ipipe[i-1];
         end
         
         // stall output and pipeline
         // the stall signal is an output, but we then capture it as part of the input pipeline to combine it with valid
         // stall_out_ipipe[0] is a copy of o_stall
         if (~sclrn[0]) begin
            stall_out_ipipe[0] <= 1'b1;         // assert o_stall during reset, so no threads can be lost if other blocks come out of reset before we do
            o_stall            <= 1'b1;         // duplicate of stall_out_ipipe[0], use the duplicate to allow internal retiming of stall_out_ipipe[0]
         end else begin
            // stall is generated from the same signals regardless of value of USE_STALL_LATENCY
            // when stall latency protocol is enabled, it changes the thresholds at which the 'stall_out_lookahed' signals are generated
            stall_out_ipipe[0] <= last_fifo_stall_out_lookahead | thread_count_fifo_stall_out_lookahead | valid_gen_stall_out_lookahead;     // we implement a 'sloppy' stall, where the stall-free pipeline will continue to flush after any of these signals asserts (which is why they are 'lookahead' signals)
            o_stall            <= last_fifo_stall_out_lookahead | thread_count_fifo_stall_out_lookahead | valid_gen_stall_out_lookahead;     // duplicate of stall_out_ipipe[0], use the duplicate to allow internal retiming of stall_out_ipipe[0]
         end
         
         // address pipelines
         // for predicated and invalid words, hold the previous value of address (and next mword address)
         // this makes processing downstream (where we are comparing to the last 'valid' address) easier
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         address_ipipe[1]     <= i_address;
         if (valid_in_ipipe[1] & ~predicate_ipipe[1]) begin
            address_ipipe[2]     <= address_ipipe[1];
            next_mword_address_ipipe[2] <= address_ipipe[1][AWIDTH-1:MWORD_ABITS] + 1;
         end
         for ( int i=3; i<=INPUT_PIPE_DEPTH; ++i ) begin
            address_ipipe[i]              <= address_ipipe[i-1] ;
            next_mword_address_ipipe[i]   <= next_mword_address_ipipe[i-1] ;
         end
         
         // byteenable pipeline
         
         // force byteenables to all 1 if the byteenable port is disabled
         if (USE_BYTE_EN) begin
            byteenable_ipipe[1]  <= i_byteenable;
         end else begin
            byteenable_ipipe[1]  <= '1;
         end

         // set byteenables to all 0 if this is a predicated write or an invalid write, to make downstream logic simpler
         for ( int i=2; i<=INPUT_PIPE_DEPTH-1; ++i ) begin
            byteenable_ipipe[i]     <= byteenable_ipipe[i-1] ;
         end
         if ( predicate_ipipe[INPUT_PIPE_DEPTH-1] | ~valid_in_ipipe[INPUT_PIPE_DEPTH-1] ) begin
            byteenable_ipipe[INPUT_PIPE_DEPTH] <= '0;
         end else begin
            byteenable_ipipe[INPUT_PIPE_DEPTH] <= byteenable_ipipe[INPUT_PIPE_DEPTH-1];
         end

         // predicate and data signals just shift down the pipeline, no special cases
         predicate_ipipe[1]    <= i_predicate; 
         writedata_ipipe[1]    <= i_writedata;
         for ( int i=2; i<=INPUT_PIPE_DEPTH; ++i ) begin
            predicate_ipipe[i]    <= predicate_ipipe[i-1] ;
            writedata_ipipe[i]    <= writedata_ipipe[i-1] ;
         end
         
      end
         
   end
   
   // generate the input_active signal
   logic                         input_active;                                               // asserted if there are any active threads in the input pipeline
   logic                         input_active_comb;                                          // combinatorial version of input_active, used to drive the input_active register
   always_comb begin
      input_active_comb = 1'b0;
      for( int i=1; i<=INPUT_PIPE_DEPTH; i++ ) begin
         input_active_comb = input_active_comb | valid_in_ipipe[i];
      end
   end
   always_ff @(posedge clock) begin
      input_active <= input_active_comb;
   end
 

   ///////////////////////////////////////
   // Coalescer (full burst coalescing)
   //
   // Place incoming kernel data and bytenable signals in the correct location on the memory bus.
   // Coalesce incoming threads as long as their address is in the same memory word, otherwise push out the current memory word and start coalescing with the new thread.
   // If the new thread is in the next sequential memory address, coalesce multiple memory words into a larger burst (subject to burst size limits).
   // A timeout can also cause a word to be pushed out to the Avalon interface.
   //
   // Downstream pipelines within this LSU assume that a predicated transaction out of the coalescer will always be burst length 1 (ie won't coalesce multiple predicated transactions into a larger burst)
   // This does NOT mean that predicates can not be coalesced with non-predicated transactions, but such a burst will NOT be marked as predicated coming out of the coalescer.
   // Predicate out of the coalescer means the entire word is predicated, and so no AVMM write is generated.  Predicates mixed in with real writes do still result in an AVMM write.
   ///////////////////////////////////////

   localparam                          COALESCER_PIPE_DEPTH = 4;                                         // if this number is to be changed, other code changes will also be required
   localparam                          MAX_THREADS_PER_MWORD = ((MWIDTH_BYTES/WIDTH_BYTES)*2*2);         // maximum number of threads that can be contained in a single Avalon memory data word, 
                                                                                                         // first 2x factor is there to allow some number of predicated writes to be included within the words
                                                                                                         // second 2x factor is so we can use the msb as a sloppy 'almost full' bit to flush the current word without being in danger of this counter overflowing
   localparam                          THREADS_PER_MWORD_WIDTH = ($clog2(MAX_THREADS_PER_MWORD+1));      // number of bits required to store the number of threads in a single memory word
   localparam                          TIMEOUT_CNT_WIDTH = ($clog2(TIMEOUT)+1);                          // number of bits for the timeout counter, extra bit (+1) is because the counter counts down from TIMEOUT-1 to -1
   logic [KERNEL_WORD_ABITS:0]         kernel_word_addr_cpipe     [1:1];      // address bits which indicate the position of the Kernel word within the Memory word
                                                                              // note that this bus has an extra lsb (which will be assigned to '0') to handle the case where WIDTH_BYTES==MWIDTH_BYTES,
                                                                              //+in which case normally no address bits would be required to specify the Kernel word position, having at least 1 bit
                                                                              //+makes coding much simpler
   logic                               valid_in_cpipe             [1:COALESCER_PIPE_DEPTH];              // valid signal from the kernel, this signal qualifies all other signals in the (stall free) pipeline
   logic                               predicate_cpipe            [1:COALESCER_PIPE_DEPTH];  
   logic [AWIDTH-1:0]                  address_cpipe              [1:COALESCER_PIPE_DEPTH];
   logic [(WIDTH_BYTES*8)-1:0]         writedata_cpipe            [1:2];                                 // write data before coalescing happens
   logic [(MWIDTH_BYTES*8)-1:0]        writedata_coalesced_cpipe  [3:COALESCER_PIPE_DEPTH];              // starting with pipeline stage 3 of the Coalescer, we use the memory bus widths for data
   logic [WIDTH_BYTES-1:0]             byteenable_cpipe           [1:1];                                 // byte enables before coalescing happens
   logic [MWIDTH_BYTES-1:0]            byteenable_coalesced_cpipe [2:COALESCER_PIPE_DEPTH];              // starting with pipeline stage 2 of the Coalescer, we use the memory bus widthbyteenable (required one clock cycle before coalescing happens)
   logic [AWIDTH-1:MWORD_ABITS]        next_mword_address_cpipe   [1:1];                                 // address of the memory word after the current memory word (so current memory word address + 1)
   logic                               same_mword_as_prev_cpipe   [1:1];                                          // asserted when this address lies within the same memory word as the previous address
   logic                               next_mword_to_prev_cpipe   [1:2];                                          // asserted when this address lies within the memory word of the previous address + 1
   logic                               cross_burst_boundary_cpipe [1:2];                                          // if next_mword_to_prev is asserted, then this signal indicates that we have crossed a burst boundary (otherwise this signal must be ignored)
   logic [TIMEOUT_CNT_WIDTH-1:0]       timeout_cnt_cpipe          [1:1];                                          // timeout counter, counts down to -1
   logic                               new_mword_cpipe            [2:2];                                          // asserted to indicate that this word should be the start of a new memory word for coalescing (the previous word, if one exists, must be pushed out)
   logic [THREADS_PER_MWORD_WIDTH-1:0] thread_count_cpipe         [3:COALESCER_PIPE_DEPTH];                       // number of threads coalesced into the data word
   logic                               thread_count_valid_cpipe   [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // assert when the thread count is ready to be written into the thread count FIFO
   logic [BURSTCOUNT_WIDTH-1:0]        burst_count_cpipe          [3:COALESCER_PIPE_DEPTH];                       // number of words in the coalesced Avalon burst
   logic                               last_word_in_burst_cpipe   [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // asserted high for the last data word in an Avalon burst
   logic                               write_data_word_cpipe      [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // write a data word (data, bytenables, thread count) from the coalescer to the buffer
   logic                               write_control_word_cpipe   [COALESCER_PIPE_DEPTH:COALESCER_PIPE_DEPTH];    // write a control word (address, burst_length, predicate) from the coalescer to the buffer
   logic                               deactivate_coalescer_timeout;                                              // if we backpressure kernel upstream, don't timeout waiting to coalesce more stuff
   
                                                                              
   // implement the Coalescer pipeline
   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         for (int i=1; i<=COALESCER_PIPE_DEPTH; i++) begin
            valid_in_cpipe             [i] <= '0;
            predicate_cpipe            [i] <= '0;
            address_cpipe              [i] <= '0;
         end
         for (int i=1; i<=2; i++) begin
            next_mword_to_prev_cpipe   [i] <= '0;
            cross_burst_boundary_cpipe [i] <= '0;
            writedata_cpipe            [i] <= '0;
         end
         for (int i=2; i<=COALESCER_PIPE_DEPTH; i++) begin
            byteenable_coalesced_cpipe [i] <= '0;
         end
         for (int i=3; i<=COALESCER_PIPE_DEPTH; i++) begin
            thread_count_cpipe         [i] <= '0;
            burst_count_cpipe          [i] <= {{(BURSTCOUNT_WIDTH-1){1'b0}},{1'b1}};      // reset the burst counter to 1
            writedata_coalesced_cpipe  [i] <= '0;
         end
         byteenable_cpipe           [1] <= '0;
         next_mword_address_cpipe   [1] <= '0;
         same_mword_as_prev_cpipe   [1] <= '0;
         timeout_cnt_cpipe          [1] <= '0;
         new_mword_cpipe            [2] <= '0;
         thread_count_valid_cpipe   [COALESCER_PIPE_DEPTH] <= '0;
         write_data_word_cpipe      [COALESCER_PIPE_DEPTH] <= '0;
         write_control_word_cpipe   [COALESCER_PIPE_DEPTH] <= '0;
         kernel_word_addr_cpipe     [1] <= '0;
      
      end else begin

         ///////////////////////////////
         // Pipeline Stage 1

         valid_in_cpipe[1]             <= valid_in_ipipe[INPUT_PIPE_DEPTH]; 
         predicate_cpipe[1]            <= predicate_ipipe[INPUT_PIPE_DEPTH];
         writedata_cpipe[1]            <= writedata_ipipe[INPUT_PIPE_DEPTH];
         byteenable_cpipe[1]           <= byteenable_ipipe[INPUT_PIPE_DEPTH];

         // select the address bits that determine the location of the Kernel word within the Memory word
         if (KERNEL_WORD_ABITS == 0 ) begin           // kernel word size equals memory word size, kernel_word_addr is just one bit wide, and is forced to 0
            kernel_word_addr_cpipe[1] <= 1'b0;  
         end else begin                               // kernel word size is smaller than memory word size, kernel_word_addr selects proper bits from the addr bus and tacks a '0' on as the lsb
            kernel_word_addr_cpipe[1] <= { address_ipipe[INPUT_PIPE_DEPTH][ BYTE_ABITS +: (KERNEL_WORD_ABITS==0) ? 1 : KERNEL_WORD_ABITS ], 1'b0 };
         end
         
         // address and next_mword_address are 'held' at the last valid, non-predicated value in the input pipeline stage, so we can just pass them straight through here
         address_cpipe[1]              <= address_ipipe[INPUT_PIPE_DEPTH];
         next_mword_address_cpipe[1]   <= next_mword_address_ipipe[INPUT_PIPE_DEPTH];
         
         // determine if this address can be coalesced with the last valid address to enter the pipeline
         // note that this could be a very large comparison plus the predicate check, but the retimer should have lots of registers to pull in from the input pipe where address simply gets shifted along
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         if (  (address_ipipe[INPUT_PIPE_DEPTH][AWIDTH-1:MWORD_ABITS] == address_cpipe[1][AWIDTH-1:MWORD_ABITS]) || 
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
         if ( address_ipipe[INPUT_PIPE_DEPTH][AWIDTH-1:MWORD_ABITS] == next_mword_address_cpipe[1][AWIDTH-1:MWORD_ABITS] ) begin 
            next_mword_to_prev_cpipe[1] <= 1'b1;
         end else begin
            next_mword_to_prev_cpipe[1] <= 1'b0;
         end
         
         // determine if the transition from the previous memory word to this one will cross a burst boundary
         // Note that this signal is only valid when next_mword_to_prev is asserted (in other words it is only valid for consecutive memory words)
         // it is an Avalon requirement that no burst be allowed to cross a burst boundary
         // The convoluted logic below selects the appropriate bits to see if they are 0, when BURSTCOUNT_WIDTH == 1, the statement below always evaluates 
         // to 'true' so cross_burst_boundary_cpipe is always set to 1, as it should be.  The logic is implemented in this way so that no special 'generate'
         // statements are required to handle the BURSTCOUNT_WIDTH==1 case.
         if ( (address_ipipe[INPUT_PIPE_DEPTH] & { {(AWIDTH-(MWORD_ABITS+BURSTCOUNT_WIDTH-1)){1'b0}}, {(BURSTCOUNT_WIDTH-1){1'b1}}, {(MWORD_ABITS){1'b0}} }) == {(AWIDTH){1'b0}} ) begin
            cross_burst_boundary_cpipe[1] <= 1'b1;
         end else begin
            cross_burst_boundary_cpipe[1] <= 1'b0;
         end
         
         // timeout counter
         // counts down from TIMEOUT-1 to -1, counter is reset by any incoming valid signal or if it rolls over
         // note that the counter can only reach the timeout value (indicated by the msb being '1') when valid_in_cpipe[2] == 0 (so only timeout on an 'invalid' word)
         // the counter does not continue to count if there is no valid word waiting to be pushed out
         if ( valid_in_ipipe[INPUT_PIPE_DEPTH] | timeout_cnt_cpipe[1][TIMEOUT_CNT_WIDTH-1] | ~valid_in_cpipe[3] | deactivate_coalescer_timeout ) begin
            timeout_cnt_cpipe[1] <= TIMEOUT-1;
         end else begin
            timeout_cnt_cpipe[1] <= timeout_cnt_cpipe[1]-1;
         end

         ///////////////////////////////
         // Pipeline Stage 2

         // straight passthrough signals
         valid_in_cpipe[2]             <= valid_in_cpipe[1]; 
         predicate_cpipe[2]            <= predicate_cpipe[1];
         address_cpipe[2]              <= address_cpipe[1];
         writedata_cpipe[2]            <= writedata_cpipe[1];
         next_mword_to_prev_cpipe[2]   <= next_mword_to_prev_cpipe[1];
         cross_burst_boundary_cpipe[2] <= cross_burst_boundary_cpipe[1];

         // set byteenables based on the address bits selected by the kernel_word_addr signal
         // there is an extra lsb tacked on the end of kernel_word_addr, but it is hard-wired to 0, so it will get optimized away (it is just there to make this code simpler)
         // Therefore there are KERNEL_WORD_ABITS + 1 (the signal from byteenable_ipipe) bits feeding each byteenable_cpipe register
         // as long as MWIDTH_BYTES/WIDTH_BYTES <= 32 (which for a 512 bit memory bus, means a minimum 16 bit kernel memory width), this logic will fit in 1 6-LUT
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         // might want to consider adding an extra register stage here for the retimer to work with to handle the case of MWIDTH_BYTES/WIDTH_BYTES > 32, should be able to add it anywhere in the pipeline (so maybe the pipeline will already be deep enough)
         for ( int i=0; i < 2*(MWIDTH_BYTES/WIDTH_BYTES); i=i+2 ) begin     // increment by 2 due to the extra lsb on kernel_word_addr (effectively multiplies the address by 2)
            if ( kernel_word_addr_cpipe[1] == i[KERNEL_WORD_ABITS:0] ) begin   
               byteenable_coalesced_cpipe[2][(i/2)*WIDTH_BYTES +: WIDTH_BYTES] <= byteenable_cpipe[1];
            end else begin
               byteenable_coalesced_cpipe[2][(i/2)*WIDTH_BYTES +: WIDTH_BYTES] <= '0;
            end
         end
         
         // determine if this thread will be the start of a new memory word for coalescing
         // this uses more than 6 input bits, can push bottom 2 lines of this back a clock cycle and pre-compute, which will reduce number of signals to 6
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         if (  ( ~valid_in_cpipe[3] & ~valid_in_cpipe[2]) |                      // if the current word is not valid, and no valid word will load on the next cycle, this will always be the start of a new word for coalescing
               ( thread_count_cpipe[3][THREADS_PER_MWORD_WIDTH-1] ) |            // force a new word if we have reached the maximum number of threads to coalesce into a single word
               ( new_mword_cpipe[2] & ~valid_in_cpipe[2] ) |                     // force a new word if the current word is being shifted out, and there is not a new valid word starting
               ( new_mword_cpipe[2] & valid_in_cpipe[2] & predicate_cpipe[2] ) | // force a new word if a new word is being started with a predicated operation (no point in coalescing with a single predicated write, might as well let it proceed immediately)
               ( ~same_mword_as_prev_cpipe[1] & ~predicate_cpipe[1] ) |          // force a new word if incoming write is in a different memory word
               ( timeout_cnt_cpipe[1][TIMEOUT_CNT_WIDTH-1] )                     // force a new word if the timeout counter expires (note that this can never happen when the current word is a valid word)
         ) begin
            new_mword_cpipe[2] <= 1'b1;
         end else begin
            new_mword_cpipe[2] <= 1'b0;
         end
         
         ///////////////////////////////
         // Pipeline Stage 3
         // 
         // This is where the coalescing within a memory word happens.  Stage 3 is 'special' in the pipeline, as this is where
         // coalesced words are assembled.  So stage 3 of the pipeline may hold valid data for many clock cycles before it is
         // 'pushed out' (by a timeout, or a new memory transaction that can't be coalesced) into stage 4.
         // 
         // This stage of the pipeline holds some state and is not purely feed-forward, so some resets are introduced here.

         // combine current writedata with incoming writedata, masked by incoming byteenable
         // byteenable is forced to all 0's earlier in the pipeline if predicate = 1 or valid = 0, so this is always a safe operations
         // no need to reset the writedata when loading a new word, as byteenable gets cleared with each new word, and data is only relevant when qualified with byteenable
         for ( int k=0; k < MWIDTH_BYTES/WIDTH_BYTES; k++ ) begin // loop through each Kernel width word that fits into a Memory width word
            for ( int i=0; i < WIDTH_BYTES; i++ ) begin              // loop through each byte in each Kernel width word
               for ( int j=0; j < 8; j++ ) begin                        // loop through each bit in each byte
                  writedata_coalesced_cpipe[3][(k*WIDTH_BYTES*8)+(i*8)+j] <= (writedata_coalesced_cpipe[3][(k*WIDTH_BYTES*8)+(i*8)+j] & ~byteenable_coalesced_cpipe[2][(k*WIDTH_BYTES)+i]) | (writedata_cpipe[2][(i*8)+j] & byteenable_coalesced_cpipe[2][(k*WIDTH_BYTES)+i]);
               end
            end
         end
         
         // create byteenable signals
         // byteenable is forced to all 0's earlier in the pipeline if predicate = 1 or valid = 0, so no need to check predicate or valid
         if ( ~sclrn[1] ) begin             // reset byteenables
            byteenable_coalesced_cpipe[3] <= '0;
         end else begin
            if ( new_mword_cpipe[2] ) begin        // when pushing out the current word, load the incoming byteenable register in full
               byteenable_coalesced_cpipe[3]  <= byteenable_coalesced_cpipe[2];
            end else begin                         // coalescing within a word, or the current byteenable with the incoming byteenable
               byteenable_coalesced_cpipe[3] <= byteenable_coalesced_cpipe[3] | byteenable_coalesced_cpipe[2];
            end
         end
         
         // valid depends on incoming valid from previous state or can hold its current state while coalescing is occuring
         if ( ~sclrn[0] ) begin             // reset this valid, since it has feedback and might not flush properly just by setting the incoming valid signal to 0
            valid_in_cpipe[3] <= 1'b0;
         end else begin
            if ( new_mword_cpipe[2] ) begin     // if we are pushing out the current word, load the new valid bit
               valid_in_cpipe[3] <= valid_in_cpipe[2];
            end                                 // if not resetting and not pushing out the current word, hold the old value
         end

         // predicate should only be set when the entire memory word contains only predicated writes
         if ( new_mword_cpipe[2] ) begin                 // when starting a new coalescing word, feed predicate signal from previous stage forward
            predicate_cpipe[3] <= predicate_cpipe[2];
         end else if ( valid_in_cpipe[2] ) begin         // when coalescing within a word, any non-predicated write makes the entire word not predicated
            predicate_cpipe[3] <= predicate_cpipe[3] & predicate_cpipe[2];
         end                                             // when no valid word is coming in, hold current value of predicate

         // count the number of threads within the coalesced memory words
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         if ( ~sclrn[0] ) begin
            thread_count_cpipe[3] <= '0;                 // reset the counter to 0
         end else begin
            if ( new_mword_cpipe[2] ) begin              // set the counter to 1 (if a valid thread comes with the new mword) or 0 (if no valid thread is incoming)
               thread_count_cpipe[3] <= { {(THREADS_PER_MWORD_WIDTH-1){1'b0}}, valid_in_cpipe[2] };
            end else begin                               // not starting a new word, increment the counter for each valid thread
               thread_count_cpipe[3] <= thread_count_cpipe[3] + { {(THREADS_PER_MWORD_WIDTH-1){1'b0}}, valid_in_cpipe[2] };
            end
         end
         
         // count the length of the burst as we coalesce multiple memory words together
         // Note that we rely on detection of crossing a burst boundary to end burst coalescing, which eliminates the need to check the actual burst count
         // NOTE the RESET assignment happens AFTER this logic
         // TODO this is a potential performance bottleneck, but at the moment the retimer seems to handle it well
         if ( new_mword_cpipe[2] ) begin                          // we will be shifting in a new word on the next clock cycle
            if ( next_mword_to_prev_cpipe[2] & ~cross_burst_boundary_cpipe[2] & valid_in_cpipe[2] & valid_in_cpipe[3] & ~predicate_cpipe[3] ) begin    // the new word will be part of the same burst
               burst_count_cpipe[3] <= burst_count_cpipe[3] + 1;                                                                       // increment the burst counter   
               address_cpipe[3] <= address_cpipe[3];                                                                                   // hold the current address value (which is the address of the start of the burst)   
            end else begin                                                                                                          // the new word is the start of a new burst
               burst_count_cpipe[3] <= {{(BURSTCOUNT_WIDTH-1){1'b0}},{1'b1}};                                                          // reset the burst counter to 1
               address_cpipe[3] <= {{address_cpipe[2][AWIDTH-1:MWORD_ABITS]},{(MWORD_ABITS){1'b0}}}; // load the new address value (and eliminate low order bits which indicate position within the memory word)
            end
         end                                                      // if no new word comes in, hold the current value of burst_count
         if ( ~sclrn[0] ) begin    // if reset is asserted, this assignment overrides the assignment above
            burst_count_cpipe[3] <= {{(BURSTCOUNT_WIDTH-1){1'b0}},{1'b1}};       // reset the counter to 1
         end

            
         ///////////////////////////////
         // Final Pipeline Stage
         
         // straight passthrough signals
         valid_in_cpipe             [COALESCER_PIPE_DEPTH] <= valid_in_cpipe              [3];
         predicate_cpipe            [COALESCER_PIPE_DEPTH] <= predicate_cpipe             [3];
         writedata_coalesced_cpipe  [COALESCER_PIPE_DEPTH] <= writedata_coalesced_cpipe   [3];
         byteenable_coalesced_cpipe [COALESCER_PIPE_DEPTH] <= byteenable_coalesced_cpipe  [3];
         thread_count_cpipe         [COALESCER_PIPE_DEPTH] <= thread_count_cpipe          [3];
         burst_count_cpipe          [COALESCER_PIPE_DEPTH] <= burst_count_cpipe           [3];
         address_cpipe              [COALESCER_PIPE_DEPTH] <= address_cpipe               [3];

         // burst count always 1, since we are not doing any coalescing between memory words

         // write a data word when there is a new coalesce starting, and the current word is valid and not predicated
         write_data_word_cpipe      [COALESCER_PIPE_DEPTH] <= valid_in_cpipe[3] & ~predicate_cpipe[3] & new_mword_cpipe[2];

         // generate signals to write into the Avalon control word fifo and into the thread_count FIFO
         // predicated operations do not go to the Avalon FIFO (no Avalon transaction generated for predicated writes)
         // write a control word only when a complete burst has been generated
         // Note that we rely on detection of crossing a burst boundary to end burst coalescing, which eliminates the need to check the actual burst count
         if ( valid_in_cpipe[3] & new_mword_cpipe[2] ) begin                  // only write a control word when the current word at position 3 in the pipe is valid, and it will be pushed out on the next clock cycle
            thread_count_valid_cpipe[COALESCER_PIPE_DEPTH] <= 1'b1;                                            // write into the thread count FIFO for every data word (including predicated transactions)
            if ( next_mword_to_prev_cpipe[2] & ~cross_burst_boundary_cpipe[2] & valid_in_cpipe[2] ) begin      // if the new word fits in a burst with the current word, DO NOT write a new control word with this data word (only one control word per burst)
               write_control_word_cpipe[COALESCER_PIPE_DEPTH] <= 1'b0;
            end else begin                                                                                     // if the new word will be the start of a different burst, write the control word
               write_control_word_cpipe[COALESCER_PIPE_DEPTH] <= ~predicate_cpipe[3];                             // don't write predicated operations to the Avalon FIFO
            end
         end else begin
            write_control_word_cpipe[COALESCER_PIPE_DEPTH] <= 1'b0;
            thread_count_valid_cpipe[COALESCER_PIPE_DEPTH] <= 1'b0;
         end

      end
   
   end
   
   assign last_word_in_burst_cpipe[COALESCER_PIPE_DEPTH] = write_control_word_cpipe[COALESCER_PIPE_DEPTH];       // a control word is written along with the last data word in each burst
   
   // generate the coalescer_active signal
   logic                               coalescer_active;                      // asserted if there are any active threads in the coalescer pipeline
   logic                               coalescer_active_comb;                 // combinatorial version of coalascer_active, used to drive the coalescer_active register
   always_comb begin
      coalescer_active_comb = 1'b0;
      for( int i=1; i<=COALESCER_PIPE_DEPTH; i++ ) begin
         coalescer_active_comb = coalescer_active_comb | valid_in_cpipe[i];
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
   // Store coalesced transactions in a FIFO to be read out by the Avalon interface
   // There are two FIFOs, one for data words and one for control info.  There is always at least
   // one data word per control word, even for predicated operations (in which case the data will
   // be ignored but still must be read from the FIFO and discarded).
   // The almost_full flag from the data FIFO (data FIFO will always fill first, 
   // since it contains one or more words per control word, and the two FIFOs are the same size) 
   // is fed back to the input block to stop the flow of new kernel write operations.  The 
   // threshold is set to ensure the FIFO will have enough room to accept all
   // words in the pipeline when the signal asserts.
   ///////////////////////////////////////

   localparam LAST_FIFO_READ_TO_FULL_LATENCY = 2;    //do not change value, last_fifo_stall_in is combinational logic so add some pipelining before it reaches the incr/decr/thresh for computing last_fifo_stall_out_lookahead
   localparam TOTAL_UPSTREAM_STALL_LATENCY = INPUT_PIPE_DEPTH + COALESCER_PIPE_DEPTH + UPSTREAM_STALL_LATENCY + INPUT_STALL_REACTION_CYCLES + LAST_FIFO_READ_TO_FULL_LATENCY;   // latency from when a stall is asserted to when the last valid thread will be received
   localparam MIN_FIFO_DEPTH_FOR_PIPELINE = 2 * (TOTAL_UPSTREAM_STALL_LATENCY+FIFO_WRITE_TO_EMPTY_LATENCY);                                    // make sure FIFO will not have time to empty after stall de-asserted before new valid threads reach it
   localparam MIN_FIFO_DEPTH = MIN_MEMORY_BUFFER_DEPTH > MIN_FIFO_DEPTH_FOR_PIPELINE ? MIN_MEMORY_BUFFER_DEPTH : MIN_FIFO_DEPTH_FOR_PIPELINE;  // choose the larger of the two minimums
   localparam FIFO_DEPTH_LOG2 = $clog2(MIN_FIFO_DEPTH);
   localparam FIFO_DEPTH = (2**FIFO_DEPTH_LOG2);                                                     // round the FIFO depth up to the nearest power of 2
   localparam DATA_FIFO_WIDTH = ((MWIDTH_BYTES*8) + MWIDTH_BYTES);                               // stores data, byteenables
   localparam CONTROL_FIFO_WIDTH = (AWIDTH -(MWORD_ABITS) + BURSTCOUNT_WIDTH );     // stores address (don't store lower address bits which are forced to 0) and burst count
   localparam FIFO_STALL_OUT_LOOKAHEAD_COUNT = TOTAL_UPSTREAM_STALL_LATENCY;        // must provide space in the FIFO for the pipeline feeding the FIFO to completely flush, including time for the input circuit to react

   // connections to data FIFO buffer -- the control for this has been moved to last_fifo
   // no pipeline here, all connections are direct to the FIFO ports
   logic                               data_fifo_stall_in;
   logic                               last_fifo_stall_in;        // COMBINATORIAL - stall signal (~read enable) into the data FIFO buffer
   logic                               last_fifo_valid_out;       // indicates a valid data word is available
   logic [(MWIDTH_BYTES*8)-1:0]        writedata_fifo;            // data out of the data FIFO
   logic [MWIDTH_BYTES-1:0]            byteenable_fifo;           // byteenable signals out of the data FIFO
   logic                               last_word_in_burst_fifo;   // asserted when the current word is the last word in an Avalon burst
   logic                               last_fifo_stall_in_prev;   // register last_fifo_stall_in before using to generate data fifo almost full
   logic                               last_fifo_valid_out_prev;  // since stall_in is delayed, also delay valid_out to determine if we read from the fifo one clock ago
   logic                               last_fifo_decr;            // decrement signal to incr/decr/thresh for producing data fifo almost full

   // connections to control FIFO buffer
   // no pipeline here, all connections are direct to the FIFO ports
   logic                               burst_fifo_valid_out;             // indicates a valid control word is available
   logic                               control_fifo_stall_in;
   logic                               burst_fifo_stall_in;              // COMBINATORIAL - combined with valid_out to accept a word out of the control FIFO
   logic [AWIDTH-1:0]                  address_fifo;                       // start address of the Avalon burst
   logic [BURSTCOUNT_WIDTH-1:0]        burst_count_fifo;                   // number of words in the coalesced Avalon burst

   logic [1:0] ecc_err_status_0, ecc_err_status_1, ecc_err_status_2, ecc_err_status_3;

   // data fifo stores data bus and byte enables, and last fifo stores last_word_in_burst signal
   // these two fifos are always written to at the same time
   // - without write data lateness, we read data_fifo and last_fifo at the same time
   // - with write data lateness, the read from data_fifo is just a delayed version of that from last_fifo
   
   logic write_data_word_cpipe_early;   //combinational logic that drives the register write_data_word_cpipe[COALESCER_PIPE_DEPTH] -- needed to get valid in earliness
   assign write_data_word_cpipe_early = valid_in_cpipe[3] & ~predicate_cpipe[3] & new_mword_cpipe[2];
   
   hld_fifo #(
      .WIDTH                        (DATA_FIFO_WIDTH),
      .DEPTH                        (FIFO_DEPTH),
      .ALMOST_EMPTY_CUTOFF          (0),
      .ALMOST_FULL_CUTOFF           (0),
      .INITIAL_OCCUPANCY            (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),     // resetn is already synchronized by the time it reaches this FIFO
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1),
      .STALL_IN_EARLINESS           (AVM_WRITE_DATA_LATENESS),
      .VALID_IN_EARLINESS           (1),
      .MAX_SLICE_WIDTH              (WIDE_DATA_SLICING),
      .REGISTERED_DATA_OUT_COUNT    (0),
      .NEVER_OVERFLOWS              (1),     // almost full has already been integrated into i_valid a few clocks ago
      .HOLD_DATA_OUT_WHEN_EMPTY     (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .USE_STALL_LATENCY_UPSTREAM   (0),
      .USE_STALL_LATENCY_DOWNSTREAM (0),
      .STYLE                        (FIFO_STYLE),
      .enable_ecc                   (enable_ecc)
   )
   data_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),        // synchronized version of reset, so no need for an internal synchronizer inside the FIFO
      .i_valid                      (write_data_word_cpipe_early),
      .o_stall                      (),                           // i_valid guarded by o_almost_full a few clocks ago
      .o_almost_full                (),                           // handled separately so that we can add pipelining to stall_in
      .i_data                       ({writedata_coalesced_cpipe[COALESCER_PIPE_DEPTH], byteenable_coalesced_cpipe[COALESCER_PIPE_DEPTH]}),
      .o_valid                      (),                           // handled by last_fifo_valid_out
      .o_almost_empty               (),                           // not used
      .i_stall                      (data_fifo_stall_in),         // drive low to read a word from the FIFO
      .o_data                       ({writedata_fifo, byteenable_fifo}),
      .o_empty                      (),
      .ecc_err_status               (ecc_err_status_0)
   );
   
   // isolate the last_word_in_burst signal from the data_fifo since it is needed to decide whether to transact on the avm interface
   hld_fifo #(
      .WIDTH                        (1),
      .DEPTH                        (FIFO_DEPTH),
      .ALMOST_EMPTY_CUTOFF          (0),
      .ALMOST_FULL_CUTOFF           (0),
      .INITIAL_OCCUPANCY            (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),     // resetn is already synchronized by the time it reaches this FIFO
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1),
      .STALL_IN_EARLINESS           (0),
      .VALID_IN_EARLINESS           (0),
      .REGISTERED_DATA_OUT_COUNT    (1),     // register o_data
      .NEVER_OVERFLOWS              (1),     // almost full has already been integrated into i_valid a few clocks ago
      .HOLD_DATA_OUT_WHEN_EMPTY     (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .USE_STALL_LATENCY_UPSTREAM   (0),
      .USE_STALL_LATENCY_DOWNSTREAM (0),
      .STYLE                        (FIFO_STYLE),
      .enable_ecc                   (enable_ecc)
   )
   last_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),        // synchronized version of reset, so no need for an internal synchronizer inside the FIFO
      .i_valid                      (write_data_word_cpipe[COALESCER_PIPE_DEPTH]),
      .o_stall                      (),                           // i_valid guarded by o_almost_full a few clocks ago
      .o_almost_full                (),                           // handled separately so that we can add pipelining to stall_in
      .i_data                       (last_word_in_burst_cpipe[COALESCER_PIPE_DEPTH]),
      .o_valid                      (last_fifo_valid_out),
      .o_almost_empty               (),                           // not used
      .i_stall                      (last_fifo_stall_in),         // drive low to read a word from the FIFO
      .o_data                       (last_word_in_burst_fifo),
      .o_empty                      (),
      .ecc_err_status               (ecc_err_status_1)
   );
   
   //implement a sloppy almost full by adding 2 pipeline registers before driving the decr part of incr/decr/thresh
   //we compensate for this lateness by reducing the almost full threshold by 2 (adding 2 more spots of dead space)
   //motivation for doing this is to reduce fan-out of last_fifo_stall_in and to allow more flexibility in physical placement (the almost full could get pulled by kernel upstream logic)
   //the original almost full produced by the fifo will be swept away due to no fan-out, so we are not creating an extra instance of incr/decr/thresh
   always_ff @(posedge clock or negedge aclrn) begin
       if (~aclrn) begin
          last_fifo_decr <= 1'b0;
          last_fifo_stall_in_prev <= 1'b1;
          last_fifo_valid_out_prev <= 1'b0;
       end
       else begin
          last_fifo_stall_in_prev <= last_fifo_stall_in;
          last_fifo_valid_out_prev <= last_fifo_valid_out;
          last_fifo_decr <= ~last_fifo_stall_in_prev & last_fifo_valid_out_prev;
          if (~sclrn) begin
             last_fifo_decr <= 1'b0;
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
   last_fifo_almost_full
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .incr_no_overflow             (write_data_word_cpipe[COALESCER_PIPE_DEPTH]),
      .incr_raw                     (write_data_word_cpipe[COALESCER_PIPE_DEPTH]),
      .decr_no_underflow            (last_fifo_decr),
      .decr_raw                     (last_fifo_decr),
      .threshold_reached            (last_fifo_stall_out_lookahead)  // this signal is fed back to stall the input section before the FIFO(s) can overflow
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
   last_fifo_somewhat_full
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .incr_no_overflow             (write_data_word_cpipe[COALESCER_PIPE_DEPTH]),
      .incr_raw                     (write_data_word_cpipe[COALESCER_PIPE_DEPTH]),
      .decr_no_underflow            (last_fifo_decr),
      .decr_raw                     (last_fifo_decr),
      .threshold_reached            (deactivate_coalescer_timeout)
   );
   
   
   // control fifo, stores address, burst count, and predicate
   hld_fifo #(
      .WIDTH                        (CONTROL_FIFO_WIDTH),
      .DEPTH                        (FIFO_DEPTH),
      .ALMOST_EMPTY_CUTOFF          (0),
      .ALMOST_FULL_CUTOFF           (0),
      .INITIAL_OCCUPANCY            (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1),
      .STALL_IN_EARLINESS           (AVM_WRITE_DATA_LATENESS),
      .VALID_IN_EARLINESS           (0),
      .REGISTERED_DATA_OUT_COUNT    (0),
      .NEVER_OVERFLOWS              (1),    // data fifo almost full has already been integrated into i_valid a few clocks ago
      .HOLD_DATA_OUT_WHEN_EMPTY     (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .USE_STALL_LATENCY_UPSTREAM   (0),
      .USE_STALL_LATENCY_DOWNSTREAM (0),
      .STYLE                        (FIFO_STYLE),
      .enable_ecc                   (enable_ecc)
   )
   control_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .i_valid                      (write_control_word_cpipe[COALESCER_PIPE_DEPTH]),
      .o_stall                      (),                         // use stall_out_lookahead instead of stall_out
      .o_almost_full                (),                         // not used (we rely on the stall_out_lookahead from the data FIFO to determine when to stall)
      .i_data                       ({address_cpipe[COALESCER_PIPE_DEPTH][AWIDTH-1:MWORD_ABITS], burst_count_cpipe[COALESCER_PIPE_DEPTH]}),
      .o_valid                      (),                         // handled by burst_fifo_valid_out
      .o_almost_empty               (),                         // not used
      .i_stall                      (control_fifo_stall_in),    // drive low to read a word from the FIFO
      .o_data                       ({address_fifo[AWIDTH-1:MWORD_ABITS], burst_count_fifo}),
      .o_empty                      (),
      .ecc_err_status               (ecc_err_status_2)
   );
   assign address_fifo[MWORD_ABITS-1:0] = '0;    // these address bits unused at this point, carry them around for simplicity
   
   
   // occ tracker for control_fifo which is on-time, the data from control_fifo is read late if write data lateness is used
   logic [FIFO_WRITE_TO_EMPTY_LATENCY-2:0] burst_fifo_valid_in_delayed; //index N is N+1 clocks late
   
   always_ff @(posedge clock or negedge aclrn) begin
      if (~aclrn) begin
         burst_fifo_valid_in_delayed <= '0;
      end
      else begin
         burst_fifo_valid_in_delayed <= (burst_fifo_valid_in_delayed << 1) | write_control_word_cpipe[COALESCER_PIPE_DEPTH];
         if (~sclrn) burst_fifo_valid_in_delayed <= '0;
      end
   end
   
   //this is functionally equivalent to a zero width mid speed fifo
   acl_tessellated_incr_decr_threshold #(
      .CAPACITY                     (FIFO_DEPTH),
      .THRESHOLD                    (1),    //threshold = 1 detects not empty
      .INITIAL_OCCUPANCY            (0),
      .WRITE_AND_READ_DURING_FULL   (0),
      .THRESHOLD_REACHED_AT_RESET   (0),
      .RESET_RELEASE_DELAY          (0),
      .ASYNC_RESET                  (ASYNC_RESET),
      .SYNCHRONIZE_RESET            (0),
      .RESET_EVERYTHING             (0),
      .RESET_EXTERNALLY_HELD        (1)
   )
   burst_fifo
   (
      .clock                        (clock),
      .resetn                       (resetn_synchronized),
      .incr_no_overflow             (burst_fifo_valid_in_delayed[FIFO_WRITE_TO_EMPTY_LATENCY-2]),    //for a fifo with write-to-read latency N, delay valid_in by N-1 clocks before feeding the occ tracker for valid_out
      .incr_raw                     (burst_fifo_valid_in_delayed[FIFO_WRITE_TO_EMPTY_LATENCY-2]),
      .decr_no_underflow            (~burst_fifo_stall_in & burst_fifo_valid_out),
      .decr_raw                     (~burst_fifo_stall_in),
      .threshold_reached            (burst_fifo_valid_out)
   );
   
   // generate the fifo_active signal
   // can't simply use the empty signal from the FIFO, since there could be high latency between a new write and empty being de-asserted
   // only can be inactive if empty is asserted N clock cycles after the last write, where N is the latency from write to empty
   // WARNING: if the latency of the FIFO changes, the value below MUST be updated
   localparam                          FIFO_EMPTY_CNT_WIDTH = ($clog2(FIFO_WRITE_TO_EMPTY_LATENCY+1) + 1);     // counter counts down to -1, so need an extra bit of width
   logic [FIFO_EMPTY_CNT_WIDTH-1:0]    fifo_empty_counter;                    // count down from time of last write to the FIFO to determine when EMPTY flag can be trusted
   logic                               fifo_active;                           // asserted if there are any pending memory transactions in the FIFO
   
   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
         fifo_empty_counter <= '1;     // initialize the counter to -1, indicating no pending memory transactions in the FIFO
         fifo_active <= '0;
      end else begin
      
         // implement a counter that compensates for the latency between writing to the FIFO and the valid output (~empty) being asserted
         if( ~sclrn[0] ) begin
            fifo_empty_counter <= '1;                                   // initialize the counter to -1, indicating no pending memory transactions in the FIFO
         end else begin
            if( write_data_word_cpipe[COALESCER_PIPE_DEPTH] ) begin     // writing a new word into the FIFO
               fifo_empty_counter <= FIFO_WRITE_TO_EMPTY_LATENCY - 1;      // load the counter to begin a countdown
            end else begin
               if( ~fifo_empty_counter[FIFO_EMPTY_CNT_WIDTH-1] ) begin     // only count down until counter rolls over to -1
                  fifo_empty_counter <= fifo_empty_counter - 1;
               end
            end
         end
         
         // generate the fifo_active signal
         // assert if there is valid data in the fifo, or a new word is being written to the FIFO, or the counter to compensate for FIFO latency has not yet counted down to -1
         if( last_fifo_valid_out | write_data_word_cpipe[COALESCER_PIPE_DEPTH] | ~fifo_empty_counter[FIFO_EMPTY_CNT_WIDTH-1] ) begin
            fifo_active <= 1'b1;
         end else begin
            fifo_active <= 1'b0;
         end
         
      end
      
   end

   
   ///////////////////////////////////////
   // Avalon Interface
   //
   // Reads commands out of the FIFO Buffers and sends them as avalon write commands.
   // This pipeline is NOT stall-free.
   ///////////////////////////////////////
   
   // stall logic to the control and data fifos
   assign burst_fifo_stall_in = avm_waitrequest | ~last_word_in_burst_fifo;
   assign last_fifo_stall_in = avm_waitrequest | ~burst_fifo_valid_out;
   
   generate
   if (AVM_WRITE_DATA_LATENESS == 0) begin : NO_AVM_DATA_LATENESS
      assign control_fifo_stall_in = burst_fifo_stall_in;
      assign data_fifo_stall_in = last_fifo_stall_in;
   end
   else begin : GEN_AVM_DATA_LATENESS
      //if we read from burst_fifo, then AVM_WRITE_DATA_LATENESS clocks later we will read from control_fifo
      //burst_fifo and control_fifo are written to at the same time, so if we delay the read to control_fifo, then control_fifo_stall_in must be high expect when the read happens, otherwise we could read from control_fifo too soon
      assign control_fifo_stall_in = burst_fifo_stall_in | ~burst_fifo_valid_out;
      assign data_fifo_stall_in = last_fifo_stall_in | ~last_fifo_valid_out;
   end
   endgenerate
   
   
   // generate the avalon_active signal
   logic                               avalon_active;                         // asserted if there are any active threads in the avalon pipeline
   logic                               avalon_active_early1;
   logic                               avalon_active_early2;
   logic                               avalon_active_comb;                    // combinatorial version of avalon_active, used to drive the avalon_active register
   assign avalon_active_comb = avm_write;
   always_ff @(posedge clock or negedge aclrn) begin
      if (~aclrn) begin
         avalon_active_early1 <= '0;
         avalon_active_early2 <= '0;
         avalon_active        <= '0;
      end else begin
         avalon_active_early1 <= avalon_active_comb;  
         avalon_active_early2 <= avalon_active_early1 | avalon_active_comb;
         avalon_active <= avalon_active_early1 | avalon_active_early2 | avalon_active_comb;   // hold active for two extra clock cycles, to allow valid generator active signal time to assert
      end
   end
   
   // connect Avalon output ports
   assign avm_write      = burst_fifo_valid_out;
   assign avm_address    = address_fifo;
   assign avm_burstcount = burst_count_fifo;
   assign avm_writedata  = writedata_fifo;
   assign avm_byteenable = byteenable_fifo;
   
   
   ///////////////////////////////////////
   // Valid Generator
   //
   // Accumulates threads as they are processed, and releases them to the kernel output interface.
   ///////////////////////////////////////

   localparam                          FIFO_AND_IC_CAPACITY = ((FIFO_DEPTH+MEMORY_SIDE_CAPACITY) * MAX_THREADS_PER_MWORD);    // maximum number of threads that could be sitting in the FIFO buffers and in the interconnect
   localparam                          VALID_COUNT_MIN_CAPACITY = (MIN_THREAD_CAPACITY > FIFO_AND_IC_CAPACITY) ? MIN_THREAD_CAPACITY : FIFO_AND_IC_CAPACITY;   // choose the larger number as the minimum capacity
   localparam                          VALID_COUNT_CAPACITY = (VALID_COUNT_MIN_CAPACITY < 64) ? 64 : VALID_COUNT_MIN_CAPACITY;         // do not allow a capacity of less than 64, regardless of input parameter settings
   localparam                          VALID_COUNT_WIDTH = ( $clog2(VALID_COUNT_CAPACITY) + 2);       // one extra bit to allow counter to be negative, another to make sure we can't overflow after stalling while the pipeline flushes
   localparam                          VALID_GEN_THREAD_COUNT_PIPE_DEPTH = 4;                                                                // if this number is to be changed, other code changes will also be required
   logic [VALID_COUNT_WIDTH-1:0]       thread_count_inc_vpipe        [1:VALID_GEN_THREAD_COUNT_PIPE_DEPTH];                                 // amount to increment the thread_count counter by, this can be +N (from the FIFO), or +N-1.  N can be 0, so this could also be a 'decrement' value.
   logic                               thread_count_inc_valid_vpipe  [1:1];
   logic [VALID_COUNT_WIDTH-1:0]       thread_count_inc_minus1_vpipe [3:3];                                 // pre-calculate thread_count_inc - 1, for cases where a valid is leaving the block
   logic [VALID_COUNT_WIDTH-1:0]       thread_count;                 // stores number of valids - 3, so a count value of -3 means no threads are available, -2 means 1 thread available, -1 means 2 threads available ...
   logic                               valid_gen_active;             // asserted when the valid generator is still processing threads
   
   // generate appropriate circuits depending on whether writeack is enabled or disabled
   generate
   
      if (USE_WRITE_ACK == 1 ) begin   : GENBLK_USE_WRITE_ACK     // must wait for writeack signal before releasing valid threads
      
         localparam                                FIFO_LATENCY = FIFO_WRITE_TO_EMPTY_LATENCY;        // latency through FIFO from data being written to being available at FIFO output
         logic                                     thread_count_fifo_predicated_out;
         logic                                     thread_count_fifo_valid_out;                       // used to generate the valid_gen_active signal
      
         // accumulate writeacks and make sure they don't collide with predicated threads as they leave the thread_count_fifo
         logic                                     thread_count_fifo_stall_in;                        // stall the thread count FIFO, to prevent a word from being read out TODO replicate this signal so FIFO gets it's own dedicated copy
         logic [VALID_COUNT_WIDTH-1:0]             writeack_count;                                    // TODO this counter seems wider than needed, but I'm not sure how much it could be safely reduced
         logic [VALID_COUNT_WIDTH-1:0]             writeack_count_inc;                                // amount to increment/decrement writeack count on each clock cycle (+1, 0, or -1)
         
         always_ff @(posedge clock or negedge aclrn) begin
         
            if (~aclrn) begin

               writeack_count_inc   <= '0;
               writeack_count       <= {{(VALID_COUNT_WIDTH-2){1'b1}}, {2'b10}};     // reset to -2
            
            end else begin

               // counter keeps track of writeacks that have been received and not passed on
               // -2 = 0 writeacks available, -1 = 1 writeack available, 0 = 2 writeacks available, ...
               if (~thread_count_fifo_stall_in & ~thread_count_fifo_predicated_out) begin          // a writeack is being consumed
                  if (avm_writeack) begin                                                             // a new writeack has been received
                     writeack_count_inc <= '0;                                                           // no change in writeack count
                  end else begin                                                                      // no new writeack has been received
                     writeack_count_inc <= '1;                                                           // set inc to -1
                  end
               end else begin                                                                      // no writeack is being consumed
                  if (avm_writeack) begin                                                             // a new writeack has been received
                     writeack_count_inc <= 'b1;                                                          // set inc to +1
                  end else begin                                                                      // no new writeack has been received
                     writeack_count_inc <= '0;                                                           // set inc to 0
                  end
               end
               if (~sclrn[0]) begin
                  writeack_count <= {{(VALID_COUNT_WIDTH-2){1'b1}}, {2'b10}};     // reset to -2
               end else begin
                  writeack_count <= writeack_count + writeack_count_inc;
               end
               
            end
         
         end
         
         // this combinatorial signal uses 4 inputs, then feeds the 'stall_in' (~read) input to a FIFO - this could be a problem
         // TODO: if this limits performance, will need some lookahead in the FIFO on the predicated signal somehow (maybe implement separate register-based FIFO for predicate signal?)
         always @* begin         // always_comb was generating warnings from Modelsim here about Modelsim not having certain checks, so switched to @* to eliminate all compile warnings
            if (thread_count_fifo_predicated_out) begin                 // if current word out of thread_count_fifo is predicated, no need to stall (even if not valid, no need for a stall)
               thread_count_fifo_stall_in = '0;
            end else begin
               if (~writeack_count[VALID_COUNT_WIDTH-1]) begin             // msb is 0, so count value >=0, so there are at least 2 writeacks available, so safe to release a writeack
                  thread_count_fifo_stall_in = '0;
               end else begin
                  if (writeack_count[0]) begin                                // msb is 1, lsb is 1, so count value = -1 (only goes down to -2, in which case lsb would be 0), so only 1 writeack is available
                     if (writeack_count_inc[VALID_COUNT_WIDTH-1]) begin          // inc value is -ve, so the 1 available writeack has already been consumed
                        thread_count_fifo_stall_in = '1;
                     end else begin                                              // inc value is 0 or +ve, so safe to release a writeack
                        thread_count_fifo_stall_in = '0;
                     end
                  end else begin                                              // msb is 1, lsb is 0, so count value = -1 (only goes down to -2), so 0 writeacks available
                     thread_count_fifo_stall_in = '1;
                  end
               end
            end
         end
                     
         
         // FIFO to hold thread_count values while waiting for writeack
         logic [THREADS_PER_MWORD_WIDTH-1:0]       thread_count_fifo_data_out;
         hld_fifo #(
             .WIDTH                        (THREADS_PER_MWORD_WIDTH+1), // extra bit to store the predicated signal
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
             .REGISTERED_DATA_OUT_COUNT    (1),    // only register the predicated bit, since it feeds combinsatorial logic
             .NEVER_OVERFLOWS              (1),    // almost full has already been integrated into i_valid a few clocks ago
             .HOLD_DATA_OUT_WHEN_EMPTY     (0),
             .WRITE_AND_READ_DURING_FULL   (0),
             .USE_STALL_LATENCY_UPSTREAM   (0),
             .USE_STALL_LATENCY_DOWNSTREAM (0),
             .STYLE                        (FIFO_STYLE),
             .enable_ecc                   (enable_ecc)
         )
         thread_count_fifo
         (
             .clock                        (clock),
             .resetn                       (resetn_synchronized),
             .i_valid                      (thread_count_valid_cpipe[COALESCER_PIPE_DEPTH]),
             .o_stall                      (),                         // use stall_out_lookahead instead of stall_out
             .o_almost_full                (),                         // not used (we rely on the stall_out_lookahead from the data FIFO to determine when to stall)
             .i_data                       ({thread_count_cpipe[COALESCER_PIPE_DEPTH], predicate_cpipe[COALESCER_PIPE_DEPTH]}),
             .o_valid                      (thread_count_fifo_valid_out),
             .o_almost_empty               (),                         // not used
             .i_stall                      (thread_count_fifo_stall_in),    // drive low to read a word from the FIFO
             .o_data                       ({thread_count_fifo_data_out, thread_count_fifo_predicated_out}),
             .o_empty                      (),
             .ecc_err_status               (ecc_err_status_3)
         );
         
         logic thread_count_fifo_decr, thread_count_fifo_stall_in_prev, thread_count_fifo_valid_out_prev;
         always_ff @(posedge clock or negedge aclrn) begin
             if (~aclrn) begin
                 thread_count_fifo_decr <= 1'b0;
                 thread_count_fifo_stall_in_prev <= 1'b1;
                 thread_count_fifo_valid_out_prev <= 1'b0;
             end
             else begin
                 thread_count_fifo_stall_in_prev <= thread_count_fifo_stall_in;
                 thread_count_fifo_valid_out_prev <= thread_count_fifo_valid_out;
                 thread_count_fifo_decr <= ~thread_count_fifo_stall_in_prev & thread_count_fifo_valid_out_prev;
                 if (~sclrn) begin
                     thread_count_fifo_decr <= 1'b0;
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
         thread_count_fifo_almost_full
         (
             .clock                        (clock),
             .resetn                       (resetn_synchronized),
             .incr_no_overflow             (thread_count_valid_cpipe[COALESCER_PIPE_DEPTH]),
             .incr_raw                     (thread_count_valid_cpipe[COALESCER_PIPE_DEPTH]),
             .decr_no_underflow            (thread_count_fifo_decr),
             .decr_raw                     (thread_count_fifo_decr),
             .threshold_reached            (thread_count_fifo_stall_out_lookahead)  // causes a stall upstream
         );
         

         // count the total number of threads in the LSU, so we can stall if we are in danger of overflowing any counters
         // this counter is slightly delayed in updating relative to the input/output signals, but counter widths are large enough to tolerate this
         // We need to make sure that none of the internal thread counters can overflow while waiting for writeack signals, and this global LSU counter
         // is simpler to implement than counters at other stages in the pipeline (for example, counting outstanding threads waiting for writeacks)
         logic                                     lsu_thread_out;      // a thread is leaving the LSU
         logic                                     lsu_thread_in;       // a thread is entering the LSU
         logic [VALID_COUNT_WIDTH-1:0]             lsu_thread_count;    // total threads currently in the LSU (with a few clock cycles delay), -1 = 0 threads, 0 = 1 thread, ...
         logic [VALID_COUNT_WIDTH-1:0]             lsu_thread_inc;      // amount to increment/decrement the lsu_thread_count on the next clock cycle
         always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) begin
               lsu_thread_out                <= '0;
               lsu_thread_in                 <= '0;
               lsu_thread_inc                <= '0;
               lsu_thread_count              <= '1;      // initialize counter to -1
               valid_gen_stall_out_lookahead <= '0;
               valid_gen_active              <= '0;
            end else begin
               lsu_thread_out <= USE_STALL_LATENCY ? o_valid : o_valid & ~i_stall;  // asserted when a thread leaves the LSU
               lsu_thread_in <= valid_in_ipipe[1];                                  // asserted when a thread enters the LSU
               if (lsu_thread_in & ~lsu_thread_out ) begin                 // new thread coming in to the LSU, no thread leaving
                  lsu_thread_inc <= 'b1;                                      // set increment to +1
               end else if (~lsu_thread_in & lsu_thread_out) begin         // no thread coming in, thread leaving
                  lsu_thread_inc <= '1;                                       // set increment to -1
               end else begin                                              // either no threads entering or leaving, or one entering and one leaving at the same time
                  lsu_thread_inc <= '0;                                       // set increment to 0
               end
               if (~sclrn[0]) begin
                  lsu_thread_count <= '1;                                  // initialize counter to -1
               end else begin
                  lsu_thread_count <= lsu_thread_count + lsu_thread_inc;
               end
               
               valid_gen_stall_out_lookahead <= ~lsu_thread_count[VALID_COUNT_WIDTH-1] & lsu_thread_count[VALID_COUNT_WIDTH-2];        // stall when the counter reaches half its maximum positive value, to prevent internal counters from overflowing
               valid_gen_active <= ~lsu_thread_count[VALID_COUNT_WIDTH-1];                      // if msb is 0, then there is at least one thread still in the LSU, assert valid_gen_active
            end
         end
         
  
         // start of pipeline for determining amount to increment/decrement thread_count
         // stages of the pipeline after stage 3 is implemented outside this generate statement (same whether using write-ack or not)
         always_ff @(posedge clock or negedge aclrn) begin
         
            if (~aclrn) begin
               
               for (int i=1; i<=VALID_GEN_THREAD_COUNT_PIPE_DEPTH-1; i++) begin
                  thread_count_inc_vpipe     [i]   <= '0;
               end
               thread_count_inc_valid_vpipe[1]  <= '0;
               thread_count_inc_minus1_vpipe[3] <= '0;
            
            end else begin
            
               // Pipeline stage 1
               thread_count_inc_vpipe[1] <= thread_count_fifo_data_out;    // first stage, register value out of FIFO
               thread_count_inc_valid_vpipe[1] <= ~thread_count_fifo_stall_in & thread_count_fifo_valid_out;
               
               // Pipeline stage 2, set inc to 0 if not valid
               thread_count_inc_vpipe[2] <= thread_count_inc_valid_vpipe[1] == 1'b1 ? thread_count_inc_vpipe[1] : '0;
               
               // Pipeline stage 3, pre-calculate increment value - 1, which is used if a valid is leaving this block at the same time the increment happens
               thread_count_inc_vpipe[3] <= thread_count_inc_vpipe[2];     // basic inc just passes unaltered to next stage of pipeline
               thread_count_inc_minus1_vpipe[3] <= thread_count_inc_vpipe[2] - 1;
               
            end
            
         end
         
      end else begin                      : GENBLK_IGNORE_WRITE_ACK  // writeack not used, threads can exit this block as soon as they are received

         always_ff @(posedge clock or negedge aclrn) begin
         
            if (~aclrn) begin
            
               for (int i=1; i<=VALID_GEN_THREAD_COUNT_PIPE_DEPTH-1; i++) begin
                  thread_count_inc_vpipe     [i]      <= '0;
               end
               thread_count_inc_valid_vpipe[1]        <= '0;
               thread_count_inc_minus1_vpipe[3]       <= '0;
               valid_gen_stall_out_lookahead          <= '0;
               valid_gen_active                       <= '0;
               thread_count_fifo_stall_out_lookahead  <= '0;
               
            end else begin

               // Pipeline stages 1 and 2 are not needed
               thread_count_inc_vpipe[1] <= '0;
               thread_count_inc_valid_vpipe[1] <= '0;
               thread_count_inc_vpipe[2] <= '0;
               
               // Pipeline stage 3, determine increment value (0 or 1) and increment value - 1 (-1 or 0)
               if (valid_in_ipipe[INPUT_PIPE_DEPTH] == 1'b1) begin      // a new thread has been accepted at the input
                  thread_count_inc_vpipe[3] <= { {(VALID_COUNT_WIDTH-1){1'b0}}, {1'b1} };       // +1
                  thread_count_inc_minus1_vpipe[3] <= '0;                                       // 0
               end else begin
                  thread_count_inc_vpipe[3] <= '0;                                              // 0
                  thread_count_inc_minus1_vpipe[3] <= '1;                                       // -1
               end
               
               valid_gen_stall_out_lookahead <= ~thread_count[VALID_COUNT_WIDTH-1] & thread_count[VALID_COUNT_WIDTH-2];       // stall when the counter reaches half its maximum positive value
               thread_count_fifo_stall_out_lookahead <= '0;                                                                   // no thread count fifo, so no need to stall
               valid_gen_active <= ~(thread_count[VALID_COUNT_WIDTH-1] & ~thread_count[1] & thread_count[0]);                 // if thread_count != -3, then we still have threads to process

            end

         end
         assign ecc_err_status_3 = 2'h0;
      end
      
   endgenerate
   
   logic valid_int;           // internal valid signal, used to generate o_valid (and o_empty) based on setting of USE_STALL_LATENCY
   logic thread_accepted;     // combination of o_valid and i_stall, based on setting of USE_STALL_LATENCY
   logic almost_empty_vpipe   [1:1];      // single pipeline stage for calculating almost_empty;
   
   assign thread_accepted = USE_STALL_LATENCY ? o_valid : (o_valid & ~i_stall);     // when USE_STALL_LATENCY is enabled, every assertion of o_valid must be accepted regardless of current state of i_stall
   
   // common part of the valid pipeline (same whether writeack is used or not)
   always_ff @(posedge clock or negedge aclrn) begin
   
      if (~aclrn) begin
      
         thread_count_inc_vpipe[VALID_GEN_THREAD_COUNT_PIPE_DEPTH]   <= '0;
         thread_count                                                <= { {(VALID_COUNT_WIDTH-2){1'b1}}, {2'b01} };    // reset the counter to -3, which means no threads are available;
         valid_int                                                   <= '0;
         o_almost_empty                                              <= '1;
         
      end else begin
      
         // select either thread_count_inc or thread_count_inc_minus1, depending on whether a thread is leaving the block or not
         if (thread_accepted) begin
            thread_count_inc_vpipe[VALID_GEN_THREAD_COUNT_PIPE_DEPTH] <= thread_count_inc_minus1_vpipe[3];
         end else begin
            thread_count_inc_vpipe[VALID_GEN_THREAD_COUNT_PIPE_DEPTH] <= thread_count_inc_vpipe[3];
         end
         
         // update the thread counter
         if (~sclrn[0]) begin
            thread_count <= { {(VALID_COUNT_WIDTH-2){1'b1}}, {2'b01} };    // reset the counter to -3, which means no threads are available
         end else begin
            thread_count <= thread_count + thread_count_inc_vpipe[VALID_GEN_THREAD_COUNT_PIPE_DEPTH];      // add the selected increment value to the current thread counter
         end
         
         // determine when to assert valid based on the thread counter, and some 'peeking' at new incoming and outgoing threads
         // this logic is complex, but only uses 6 signals so should fit in one LUT: msb and two lsbs from thread_count, msb from thread_count_inc_vpipe[4], o_valid, and i_stall
         if (thread_count[VALID_COUNT_WIDTH-1]==1'b0) begin                   // thread_count >=0, means there are at least 3 threads available, so always safe to release a thread next clock cycle
            valid_int <= 1'b1;
         end else begin                                                       // thread_count < 0 (remember -3 means no threads available, -2 means 1 thread available, -1 meand 2 threads availabe)
            if (thread_count[1:0] == 2'b01) begin                                // thread_count = -3, meaning no threads available, so don't assert valid
               valid_int <= 1'b0;
            end else if (thread_count[1:0] == 2'b10) begin                       // thread_count = -2, meaning one thread avaliable, so only assert valid if no decrements are coming down the pipeline
               if (  (thread_count_inc_vpipe[4][VALID_COUNT_WIDTH-1]==1'b0) &&      // thread_count_inc is not negative AND . . .
                     (~thread_accepted)                                             // valid is not being accepted downstream on this clock cycle
               ) begin
                  valid_int <= 1'b1;                                                   // assert valid for the one thread stored in thread_count
               end else begin                                                       // there is a decrement coming down the pipeline
                  valid_int <= 1'b0;                                                   // not safe to assert valid next clock cycle since we only have 1 valid
               end
            end else begin                                                       // thread_count = -1 (only option left, since count is never allowed to go below -3), meaning 2 threads available, so can assert valid if one or zero decrement is in the pipeline
               if (  (thread_count_inc_vpipe[4][VALID_COUNT_WIDTH-1]==1'b1) &&      // thread_count_inc is negative AND . . .
                     (thread_accepted)                                              // valid is being accepted downstream on this clock cycle
               ) begin
                  valid_int <= 1'b0;                                                   // two decrements coming, so not safe to assert valid next clock cycle
               end else begin
                  valid_int <= 1'b1;                                                   // one or zero decrements coming, and 2 valids available, so safe to assert valid next clock cycle
               end
            end
         end
         
         // determine when to assert almost_empty
         // this is a 'sloppy' calculation, we assert when thread_count indicates ALMOST_EMPTY_THRESH+4 threads available (to allow for calculation to propogate to o_almost_empty)
         // subtract 3 from (ALMOST_EMPTY_THRESH+4) because thread_count == -3 indicates 0 threads available
         if ($signed(thread_count) > $signed(ALMOST_EMPTY_THRESH+4-3)) begin
            almost_empty_vpipe[1] <= '0;
         end else begin
            almost_empty_vpipe[1] <= '1;
         end
         o_almost_empty <= almost_empty_vpipe[1];
         
         if (~sclrn[0]) begin         // hold valid inactive and o_almost_empty active during reset (overrides assignments above)
            valid_int <= 1'b0;
            o_almost_empty <= '1;
         end
         
      end
      
   end
   
   assign o_valid = USE_STALL_LATENCY ? (valid_int & ~i_stall) : valid_int;      // for stall latency with internal latency 0, we must de-assert o_valid whenever i_stall is asserted
   assign o_empty = USE_STALL_LATENCY ? (~valid_int) : '0;                       // o_empty not used when USE_STALL_LATENCY is disabled
   

   ///////////////////////////////////////
   // output active signal, combine active signals from other blocks
   // no dedicated active signal needed for valid generator, o_active is only relevant after all threads have already passed through the valid generator
   ///////////////////////////////////////
   always_ff @(posedge clock or negedge aclrn) begin
      if (~aclrn) begin
         o_active <= '0;
      end else begin
         o_active <= input_active | coalescer_active | fifo_active | avalon_active | valid_gen_active;      
      end
   end

   assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1 | ecc_err_status_2 | ecc_err_status_3;

endmodule

  
`default_nettype wire
