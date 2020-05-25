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


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                        //
//  HLD GLOBAL LOAD STORE                                                                                                                                                 //
//  Architected and implemented by: Jason Thong                                                                                                                           //
//                                                                                                                                                                        //
//  This is the top-level module for the feature-based LSU (load store unit). Unlike previous LSU implementations in which the implementation defined the features and    //
//  the compiler had to choose the best implementation for the desired features, this LSU allows one to select the features and the implementation just deals with it.    //
//                                                                                                                                                                        //
//  This LSU was optimized for high latency stallable memory access. It will function properly with low latency and/or non-stallable memory, however there are other      //
//  implementations which use significantly less area for that use case.                                                                                                  //
//                                                                                                                                                                        //
//  This module is a wrapper around the core LSU itself, and the following features are provided in this wrapper:                                                         //
//  1. Optional width adaption between the kernel data path width and the core LSU's kernel data width                                                                    //
//       - this enables the kernel width to be arbitrarily larger than the memory width, this feature is necessary if kernel width > 2 * memory width since the core      //
//         LSU can only handle one kernel word spanning up to 3 memory words                                                                                              //
//       - even if kernel width is not that wide, may still want this feature to save area at the expense of throughput                                                   //
//  2. Optional width adaption between the memory data path width and the core LSU's memory data width                                                                    //
//       - one can save lots of area by narrowing the typically wide fifos at the memory interface, this may result in some throughput loss although it should be small   //
//         if the kernel width is significantly smaller than the memory width, beware that                                                                                //
//       - burst coalescing will be disabled if memory width adaption is used, supporting both burst coalescing and memory width adaption requires the wide fifos that    //
//         we were trying to remove in the first place by using width adaption                                                                                            //
//       - memory width adaption results in inefficient use of memory bandwidth, e.g. if the core LSU readdata is one quarter the width of the memory readdata, then      //
//         three quarters of the data read is discarded and only one quarter of the readdata is returned to the core LSU                                                  //
//  3. Optional cache, only for read LSU                                                                                                                                  //
//       - this is a bump-in-the-wire between the core LSU memory interface and the actual memory interface, there must be a positive edge on the i_flush_cache signal    //
//         every time the contents of memory can change, typically this is every time a kernel starts                                                                     //
//       - the cache data width is a memory word, if memory width adaption is used then the cache shares the same memory width as the core LSU                            //
//       - cache is most beneficial when the access pattern reuses data that was read recently, cache hits mean less demand on global memory bandwidth (free it up for    //
//         other LSUs in the system) and the kernel data path will have lower latency (possibly useful if the nature of the design prevents lots of outstanding           //
//         transactions to global memory), obviously this comes at an expense of increased area, both registers and M20K                                                  //
//  4. Allow valids to be released to kernel downstream before the corresponding writeack                                                                                 //
//       - this has no effect on o_active (which must deassert before declaring the kernel is done) and has no effect on the core LSU                                     //
//       - this feature is implemented for legacy reasons, if there is no dependency on the data written then the compiler should connect stall/valid (or stall latency)  //
//         around the LSU instead of through the LSU, e.g the LSU's kernel downstream interface should be dangling with i_stall=0 and o_vaild ignored, unfortunately      //
//         there are cases where the compiler is still wiring the stall/valid handshaking through the LSU, so this wrapper implements the shortcut                        //
//                                                                                                                                                                        //
//  The features of the core LSU itself are described the comments at the beginning of hld_lsu.sv.                                                                        //
//                                                                                                                                                                        //
//  Required files:                                                                                                                                                       //
//  - LSU:   hld_global_load_store.sv hld_lsu.sv hld_lsu_burst_coalescer.sv hld_lsu_coalescer_dynamic_timeout.sv hld_lsu_data_aligner.sv hld_lsu_read_cache.sv            //
//           hld_lsu_read_data_alignment.sv hld_lsu_unaligned_controller.sv hld_lsu_word_coalescer.sv hld_lsu_write_data_alignment.sv hld_lsu_write_kernel_downstream.sv  //
//  - fifo:  hld_fifo.sv acl_low_latency_fifo.sv acl_mid_speed_fifo.sv acl_lfsr.sv acl_tessellated_incr_decr_threshold.sv                                                 //
//  - other: acl_parameter_assert.svh acl_reset_handler.sv acl_burst_splitter.sv acl_shift_register_no_reset.sv                                                           //
//                                                                                                                                                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

`default_nettype none
`include "acl_parameter_assert.svh"

module hld_global_load_store #(
    //LSU type
    parameter bit READ,                         //0 = write lsu, 1 = read lsu
    
    //reset configuration, the reset is always synchronized before consumption (no option to disable this), but once synchronized one may choose how registers consume that synchronized reset
    parameter bit ASYNC_RESET,                  //0 = registers consume reset synchronously, 1 = registers consume reset asynchronously
    
    //address configuration is the same for kernel interface and memory interface
    parameter int ADDR_WIDTH,                   //width of address bus, for addresses that are byte addresses
    parameter int ADDR_ALIGNMENT_BITS,          //indicates how many least significant bits of i_address are known to be 0, e.g. set this parameter to 3 if kernel accesses are 8-byte aligned
    
    //kernel interface
    parameter int KER_DATA_BYTES,               //width of kernel data path in bytes, does not need to be a power of 2
    parameter int KER_DATA_BYTES_INTERNAL,      //width adaptation can be done between kernel data path and core LSU kernel interface, this is the core LSU's kernel data width in bytes, need not be a power of 2
    
    //memory interface
    parameter int MEM_DATA_BYTES,               //width of memory data path in bytes, must be a power of 2
    parameter int MEM_DATA_BYTES_INTERNAL,      //width adaptation can be done between memory data path and core LSU memory interface, this is the core LSU's memory data width in bytes, must be a power of 2
    parameter int BURSTCOUNT_WIDTH,             //width of avalon burst count signal, max burst size is 2**(BURSTCOUNT_WIDTH-1)
    
    //stall latency can be configured independently for kernel upstream and kernel downstream, there is no stall latency available for memory interface
    //there is no support for stall in earliness, mid speed fifo doesn't get any smaller registering i_stall outside of the fifo will give a similar fmax boost anyways
    parameter int KER_UP_STALL_LATENCY,         //0 = use stall/valid, 1 or larger = use stall latency and the value indicates the upstream roundtrip latency (from o_stall to i_valid)
    parameter int KER_DOWN_STALL_LATENCY,       //0 = use stall/valid, 1 or larger = use stall latency and the value indicates the downstream roundtrip latency (from i_stall to o_valid)
    
    //amount of pipelining in data aligner
    parameter int DATA_ALIGNER_MUX_PER_PIPE,    //0 = use comb logic for data alignment mux, 1 or more = max number of 2:1 muxes before a pipeline stage is added, e.g. 2 means up to 4:1 mux between reg
    
    //coalescing -- there is no option to set the timeout because it is dynamic, timeout increases if could have coalesced but timed out, timeout decreases if access pattern looks like random access
    parameter bit ENABLE_WORD_COALESCE,         //whether to coalesce kernel words together within the same memory word
    parameter bit ENABLE_BURST_COALESCE,        //whether to coalesce sequential memory words together to make a burst, feature will be disabled (parameter value ignored) if width adaption on the memory interface is used
    
    //reduce area if certain functionality is not needed
    parameter bit USE_PREDICATE,                //set to 0 if i_predicate is always 0, this will save some area
    parameter bit USE_BYTE_ENABLE,              //set to 0 if i_byteenable is always all ones, this will save some area, only write LSU consumes this parameter
    
    //legacy support
    parameter bit USE_WRITE_ACK,                //only affects write LSU, 0 means valids can be released to kernel downstream before that thread's data commits to memory, this bypass has no influence on the core LSU
    
    //throughput features
    parameter bit HIGH_THROUGHPUT_MODE,         //0 = use N clock cycles to process a kernel word that spans N memory words, 1 = use minimum amount of time to process kernel words, only matters if N >= 2
    parameter int CACHE_SIZE_BYTES              //0 = no cache, otherwise this specifies the cache size in bytes which must be a power of 2, this can only be used with the read LSU
) (
    input  wire                             clock,
    input  wire                             resetn,
    
    //side-band signals
    input  wire                             i_flush_cache,          //if using read cache, must provide a positive edge on this signal any time the contents of memory could have changed, typically this is when a kernel starts
    output logic                            o_active,               //indicates that the LSU has accepted some threads from kernel upstream but not yet released them to kernel downstream
    
    //kernel upstream
    input  wire                             i_valid,                //kernel upstream has a transaction available, LSU can but does not need to accept it if using stall valid, must accept it if using stall latency
    output logic                            o_stall,                //backpressure to kernel upstream
    input  wire            [ADDR_WIDTH-1:0] i_address,              //byte address, where should data be written to or read from in memory
    input  wire      [8*KER_DATA_BYTES-1:0] i_writedata,            //data to write to memory, only used by write LSU
    input  wire        [KER_DATA_BYTES-1:0] i_byteenable,           //byte enable for the write data, only used by write LSU
    input  wire                             i_predicate,            //if 1 then don't perform the read or write, but still need to release this thread later on o_valid
    
    //kernel downstream
    output logic                            o_valid,                //LSU has a transaction available, kernel downstream can but does not need to accept it if using stall valid, must accept it if using stall latency
    input  wire                             i_stall,                //backpressure from kernel downstream
    output logic     [8*KER_DATA_BYTES-1:0] o_readdata,             //data read from memory, only used by read LSU
    output logic                            o_empty,                //LSU does not have a transaction available for kernel downstream, meant to be used with stall latency
    output logic                            o_almost_empty,         //LSU downstream interface does not have at least KER_DOWN_STALL_LATENCY transactions ready to be released
    
    //memory interface
    output logic                            avm_write,              //avalon write request, accepted only if ~avm_waitrequest
    output logic                            avm_read,               //avalon read request, accepted only if ~avm_waitrequest
    output logic           [ADDR_WIDTH-1:0] avm_address,            //byte address, avalon spec says this must be word aligned (the bottom bits for within a memory word must be 0)
    output logic     [BURSTCOUNT_WIDTH-1:0] avm_burstcount,         //how large is the burst, tied to 1 if burst coalescing is not used
    output logic     [8*MEM_DATA_BYTES-1:0] avm_writedata,          //data to write to memory, only used by write LSU
    output logic       [MEM_DATA_BYTES-1:0] avm_byteenable,         //byte enable for the write data, only used by write LSU
    input  wire                             avm_waitrequest,        //avalon backpressure
    input  wire                             avm_writeack,           //write has commited to memory, this must assert once per memory word (not one per burst like the avalon spec), only used by write LSU
    input  wire                             avm_readdatavalid,      //read data is being returned now, must accept it or it will be lost, only used by read LSU
    input  wire      [8*MEM_DATA_BYTES-1:0] avm_readdata            //data read from memory, only used by read LSU
);
    
    /////////////////////////////////
    //  Parameter Legality Checks  //
    /////////////////////////////////
    generate
    //memory width needs to be a power of 2, LSU memory data width cannot be larger than actual memory data width
    //also didn't want to deal with case of address bits within a memory word being 0, there is no real use case for this
    `ACL_PARAMETER_ASSERT(MEM_DATA_BYTES == 2**$clog2(MEM_DATA_BYTES))
    `ACL_PARAMETER_ASSERT(MEM_DATA_BYTES_INTERNAL == 2**$clog2(MEM_DATA_BYTES_INTERNAL))
    `ACL_PARAMETER_ASSERT(MEM_DATA_BYTES >= MEM_DATA_BYTES_INTERNAL)
    `ACL_PARAMETER_ASSERT(MEM_DATA_BYTES >= 2)
    `ACL_PARAMETER_ASSERT(MEM_DATA_BYTES_INTERNAL >= 2)
    
    //avalon spec requires burst count width be at least 1
    `ACL_PARAMETER_ASSERT(BURSTCOUNT_WIDTH >= 1)
    
    //LSU kernel data width cannot be larger than actual kernel data width
    `ACL_PARAMETER_ASSERT(KER_DATA_BYTES >= 1)
    `ACL_PARAMETER_ASSERT(KER_DATA_BYTES_INTERNAL >= 1)
    `ACL_PARAMETER_ASSERT(KER_DATA_BYTES >= KER_DATA_BYTES_INTERNAL)
    
    //core LSU only allows a kernel word to span 3 memory words, this can be enforced by not letting the kernel width be more than twice the memory width
    `ACL_PARAMETER_ASSERT(KER_DATA_BYTES_INTERNAL <= 2*MEM_DATA_BYTES_INTERNAL)
    
    //ensure the address space size isn't something trivial
    `ACL_PARAMETER_ASSERT(ADDR_WIDTH >= $clog2(MEM_DATA_BYTES + BURSTCOUNT_WIDTH-1))
    `ACL_PARAMETER_ASSERT(ADDR_WIDTH >= $clog2(KER_DATA_BYTES))
    
    //cache can only be used with the read LSU, size must be a power of 2
    //also didn't want to deal with cache being the entire memory size, and supporting only 1 cache line, there is no real use case for either of these
    `ACL_PARAMETER_ASSERT(CACHE_SIZE_BYTES == 0 || READ == 1)
    `ACL_PARAMETER_ASSERT(CACHE_SIZE_BYTES == 0 || CACHE_SIZE_BYTES == 2**$clog2(CACHE_SIZE_BYTES))
    `ACL_PARAMETER_ASSERT(CACHE_SIZE_BYTES == 0 || CACHE_SIZE_BYTES >= 2*MEM_DATA_BYTES_INTERNAL)
    `ACL_PARAMETER_ASSERT(CACHE_SIZE_BYTES == 0 || $clog2(CACHE_SIZE_BYTES) < ADDR_WIDTH)
    endgenerate
    
    
    
    /////////////////////////
    //  Special Constants  //
    /////////////////////////
    
    //these constants are deliberately NOT exposed to the compiler because it is extremely unlikely the compiler can do anything smarter
    
    //special constants that maximize usage of the hardened resources inside the FPGA
    localparam int MLAB_FIFO_DEPTH = 32;            //use a shallow fifo if handshaking is expected to take a few clocks (or if capacity can be borrowed from a nearby deep fifo), if we need an MLAB may as well use all of it
    localparam int M20K_WIDE_FIFO_DEPTH = 512;      //use a deep fifo if handshaking is expected to take hundreds of clocks e.g. going off chip, for wide data path use M20K in shallowest mode, but may as well use all depth available
    localparam int M20K_NARROW_FIFO_DEPTH = 2048;   //if we need a deep fifo but the data path is narrow e.g. up to 10 bits which is the narrowest M20K on S10, can get additional depth for without needing more M20K
    localparam int TOTAL_OCC_LIMIT = 4096;          //loose upper bound on the maximum number of threads allowed inside the LSU at any time, this bounds the counter width for o_active
    localparam int WRITEACK_WIDTH = 10;             //writeack fifo indicate how many valids to release upon writeack, it uses narrow m20k, word coalescer stops to ensure value doesn't overflow narrow m20k width
    
    //special constants for hard limits dynamic timeout of coalescer, limit how large the dynamic timeout threshold can get so that we only need so many bits
    //for large enough N, if one has to wait more than N clocks for the next thread to arrive, memory access is so infrequent that coalescing will not help
    //here we have chosen N = 256 to limit the threshold implementation to 8 bits
    localparam int WORD_COAL_MAX_TIMEOUT_BIT = 8;   //limit how large the dynamic timeout threshold can get inside word coalescer
    localparam int BURST_COAL_MAX_TIMEOUT_BIT = 8;  //limit how large the dynamic timeout threshold can get inside burst coalescer
    
    
    
    //////////////////////////
    //  Derived Parameters  //
    //////////////////////////
    
    //if using width adaption, figure out how many slices we have
    localparam int NUM_MEM_SLICES = MEM_DATA_BYTES / MEM_DATA_BYTES_INTERNAL;  //both must be powers of 2, therefore this will divide evenly and NUM_MEM_SLICES will also be a power of 2
    localparam int NUM_KERNEL_SLICES = (KER_DATA_BYTES+KER_DATA_BYTES_INTERNAL-1) / KER_DATA_BYTES_INTERNAL;
    localparam int KER_DATA_BYTES_LAST = KER_DATA_BYTES - ((NUM_KERNEL_SLICES-1)*KER_DATA_BYTES_INTERNAL); //if MEM_DATA_BYTES does not evenly divide NUM_KERNEL_SLICES, the last slice will be smaller
    
    //byte address can be decomposed into the upper bits which specify the memory word and the lower bits which indicate position within that memory word
    localparam int INTRA_ADDR_WIDTH = $clog2(MEM_DATA_BYTES_INTERNAL);  //how many lower bits of the byte address are meant for indicating the position within a memory word
    localparam int WORD_ADDR_WIDTH = ADDR_WIDTH - INTRA_ADDR_WIDTH;     //how many upper bits of the byte address are meant for indicating which memory word to access
    
    //no point wasting logic for burst coal if the max burst size is 1, if doing width adaption at avalon interface then must shut off burst coal, if cache is doing burst coal then lsu doesn't need to
    localparam bit CACHE_ENABLE_BURST_COALESCE = ENABLE_BURST_COALESCE & (BURSTCOUNT_WIDTH >= 2) & (MEM_DATA_BYTES_INTERNAL==MEM_DATA_BYTES);
    localparam bit LSU_ENABLE_BURST_COALESCE = CACHE_ENABLE_BURST_COALESCE & (CACHE_SIZE_BYTES == 0);
    
    //can't take advantage of alignment more than memory width or kernel width as seen by the core LSU
    function automatic int get_max_alignment;   //returns log2 of the largest power of 2 that evenly divides the input, e.g. if input = 24 then 8 is the largest power of 2 that divides evenly, so return 3
    input int width;
    begin
        int result = 0;
        if (width == 0) result = 0;
        else begin
            while (((width >> result) & 1) == 0) result = result + 1;
        end
        get_max_alignment = result;
    end
    endfunction
    localparam int ALIGNMENT_BITS_MEM       = (ADDR_ALIGNMENT_BITS < get_max_alignment(MEM_DATA_BYTES_INTERNAL)) ? ADDR_ALIGNMENT_BITS : get_max_alignment(MEM_DATA_BYTES_INTERNAL);
    localparam int ALIGNMENT_BITS_KER_FIRST = (ADDR_ALIGNMENT_BITS < get_max_alignment(KER_DATA_BYTES_INTERNAL)) ? ADDR_ALIGNMENT_BITS : get_max_alignment(KER_DATA_BYTES_INTERNAL);
    localparam int ALIGNMENT_BITS_KER_LAST  = (ADDR_ALIGNMENT_BITS < get_max_alignment(KER_DATA_BYTES_LAST))     ? ADDR_ALIGNMENT_BITS : get_max_alignment(KER_DATA_BYTES_LAST);
    localparam int ALIGNMENT_BITS_KER       = (ALIGNMENT_BITS_KER_FIRST < ALIGNMENT_BITS_KER_LAST)               ? ALIGNMENT_BITS_KER_FIRST : ALIGNMENT_BITS_KER_LAST;
    localparam int LSU_ADDR_ALIGNMENT_BITS  = (ALIGNMENT_BITS_MEM < ALIGNMENT_BITS_KER)                          ? ALIGNMENT_BITS_MEM : ALIGNMENT_BITS_KER;
    
    //statically determine how many memory words a kernel word can touch, this applies to the underlying LSU after wide data serialization
    //it is possible for the outer LSU to unaligned, e.g. kernel width = 8 but only 4 byte aligned, but after slicing kernel data 2 ways, the underlying LSU is aligned
    localparam int MAX_MEM_WORDS_PER_KER_WORD = (2**LSU_ADDR_ALIGNMENT_BITS == KER_DATA_BYTES_INTERNAL) ? 1 : (KER_DATA_BYTES_INTERNAL <= MEM_DATA_BYTES_INTERNAL + (2**LSU_ADDR_ALIGNMENT_BITS)) ? 2 : 3;
    
    
    
    ///////////////
    //  Signals  //
    ///////////////
    
    //reset
    logic                                   aclrn, sclrn, resetn_synchronized;
    
    //o_active
    logic                                   active_incr, active_decr, nwa_decr;
    
    //kernel upstream width adaption
    logic                                   time_share_stall, lsu_i_valid, lsu_o_stall;
    logic                  [ADDR_WIDTH-1:0] lsu_i_address;
    logic   [8*KER_DATA_BYTES_INTERNAL-1:0] lsu_i_writedata;
    logic     [KER_DATA_BYTES_INTERNAL-1:0] lsu_i_byteenable;
    logic                                   lsu_i_predicate, lsu_i_more_wide_sections;
    
    //kernel downstream width adaption
    logic                                   lsu_o_valid, lsu_o_empty, lsu_o_almost_empty, lsu_i_stall;
    logic   [8*KER_DATA_BYTES_INTERNAL-1:0] lsu_o_readdata;
    
    //no write ack shortcut
    logic                                   nwa_o_valid, nwa_o_empty, nwa_o_almost_empty, nwa_i_stall;
    logic            [8*KER_DATA_BYTES-1:0] nwa_o_readdata;
    
    //read cache
    logic                                   cache_avm_write, cache_avm_read;
    logic                  [ADDR_WIDTH-1:0] cache_avm_address;
    logic            [BURSTCOUNT_WIDTH-1:0] cache_avm_burstcount;
    logic   [8*MEM_DATA_BYTES_INTERNAL-1:0] cache_avm_writedata;
    logic     [MEM_DATA_BYTES_INTERNAL-1:0] cache_avm_byteenable;
    logic                                   cache_avm_waitrequest, cache_avm_writeack, cache_avm_readdatavalid;
    logic   [8*MEM_DATA_BYTES_INTERNAL-1:0] cache_avm_readdata;
    
    //avalon width adaption
    logic                                   lsu_avm_write, lsu_avm_read;
    logic                  [ADDR_WIDTH-1:0] lsu_avm_address;
    logic            [BURSTCOUNT_WIDTH-1:0] lsu_avm_burstcount;
    logic   [8*MEM_DATA_BYTES_INTERNAL-1:0] lsu_avm_writedata;
    logic     [MEM_DATA_BYTES_INTERNAL-1:0] lsu_avm_byteenable;
    logic                                   lsu_avm_waitrequest, lsu_avm_writeack, lsu_avm_readdatavalid;
    logic   [8*MEM_DATA_BYTES_INTERNAL-1:0] lsu_avm_readdata;
    logic                                   lsu_avm_readdata_accepted;
    
    
    
    /////////////
    //  Reset  //
    /////////////
    
    // reset must be held for at least 10 clock cycles before being released
    // reset is synchronized before consumption, one reset synchronizer for the entire lsu (there is no option to disable this)
    // one can choose whether registers consume this reset asynchronously or synchronously
    
    acl_reset_handler
    #(
        .ASYNC_RESET            (ASYNC_RESET),
        .USE_SYNCHRONIZER       (1),
        .SYNCHRONIZE_ACLRN      (1),
        .PIPE_DEPTH             (3),
        .NUM_COPIES             (1)
    )
    acl_reset_handler_inst
    (
        .clk                    (clock),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (),         //this is immediately after synchronizing the reset, no pipelining for retiming added
        .o_sclrn                (sclrn)     //this has PIPE_DEPTH pipeline registers added after o_resetn_synchronized
    );
    //slightly non-standard way of using reset handler to avoid replicated reset pipelining
    //normally resetn_synchronized should come from the reset handler's o_resetn_synchronized and each submodule should set PIPE_DEPTH > 0 in its own reset handler
    //the pipelining on sclrn is declared as don't merge, so there would be separate reset pipelining for this module's sclrn vs any submodule's sclrn
    //this is overkill, quartus has since gotten better at dealing with reset fanout management compared to when acl_reset_handler was developed
    assign resetn_synchronized = (ASYNC_RESET) ? aclrn : sclrn;
    
    
    
    ////////////////
    //  Core LSU  //
    ////////////////
    
    hld_lsu #(
        .READ                           (READ),
        .ASYNC_RESET                    (ASYNC_RESET),
        .ADDR_WIDTH                     (ADDR_WIDTH),
        .ADDR_ALIGNMENT_BITS            (LSU_ADDR_ALIGNMENT_BITS),
        .INTRA_ADDR_WIDTH               (INTRA_ADDR_WIDTH),
        .WORD_ADDR_WIDTH                (WORD_ADDR_WIDTH),
        .KER_DATA_BYTES                 (KER_DATA_BYTES_INTERNAL),
        .KER_DATA_BYTES_LAST            (KER_DATA_BYTES_LAST),
        .MEM_DATA_BYTES                 (MEM_DATA_BYTES_INTERNAL),
        .BURSTCOUNT_WIDTH               (BURSTCOUNT_WIDTH),
        .KER_UP_STALL_LATENCY           (NUM_KERNEL_SLICES + KER_UP_STALL_LATENCY + 2),
        .KER_DOWN_STALL_LATENCY         (KER_DOWN_STALL_LATENCY),
        .DATA_ALIGNER_MUX_PER_PIPE      (DATA_ALIGNER_MUX_PER_PIPE),
        .ENABLE_WORD_COALESCE           (ENABLE_WORD_COALESCE),
        .ENABLE_BURST_COALESCE          (LSU_ENABLE_BURST_COALESCE),
        .USE_PREDICATE                  (USE_PREDICATE),
        .USE_BYTE_ENABLE                (USE_BYTE_ENABLE),
        .HIGH_THROUGHPUT_MODE           (HIGH_THROUGHPUT_MODE),
        .CACHE_SIZE_BYTES               (CACHE_SIZE_BYTES),
        .MAX_MEM_WORDS_PER_KER_WORD     (MAX_MEM_WORDS_PER_KER_WORD),
        .MLAB_FIFO_DEPTH                (MLAB_FIFO_DEPTH),
        .M20K_WIDE_FIFO_DEPTH           (M20K_WIDE_FIFO_DEPTH),
        .M20K_NARROW_FIFO_DEPTH         (M20K_NARROW_FIFO_DEPTH),
        .TOTAL_OCC_LIMIT                (TOTAL_OCC_LIMIT),
        .WRITEACK_WIDTH                 (WRITEACK_WIDTH),
        .BURST_COAL_MAX_TIMEOUT_BIT     (BURST_COAL_MAX_TIMEOUT_BIT),
        .WORD_COAL_MAX_TIMEOUT_BIT      (WORD_COAL_MAX_TIMEOUT_BIT)
    )
    hld_lsu_inst
    (
        .clock                          (clock),
        .resetn                         (resetn_synchronized),
        .i_valid                        (lsu_i_valid),
        .o_stall                        (lsu_o_stall),
        .i_address                      (lsu_i_address),
        .i_writedata                    (lsu_i_writedata),
        .i_byteenable                   (lsu_i_byteenable),
        .i_predicate                    (lsu_i_predicate),
        .i_more_wide_sections           (lsu_i_more_wide_sections),
        .o_readdata                     (lsu_o_readdata),
        .o_valid                        (lsu_o_valid),
        .o_empty                        (lsu_o_empty),
        .o_almost_empty                 (lsu_o_almost_empty),
        .i_stall                        (lsu_i_stall),
        .avm_write                      (lsu_avm_write),
        .avm_read                       (lsu_avm_read),
        .avm_waitrequest                (lsu_avm_waitrequest),
        .avm_address                    (lsu_avm_address),
        .avm_writedata                  (lsu_avm_writedata),
        .avm_byteenable                 (lsu_avm_byteenable),
        .avm_burstcount                 (lsu_avm_burstcount),
        .avm_writeack                   (lsu_avm_writeack),
        .avm_readdatavalid              (lsu_avm_readdatavalid),
        .avm_readdata                   (lsu_avm_readdata),
        .avm_readdata_accepted          (lsu_avm_readdata_accepted)
    );
    
    
    
    //////////////////
    //  LSU Active  //
    //////////////////
    
    //track how many items are inside of the LSU
    //every kernel transaction goes through the predicate fifo (or an occ tracker if predication isn't used), and then through the output data fifo in the read LSU (write LSU has an corresponding occ tracker)
    //therefore the total LSU occupancy is bounded by the capacity of the predicate fifo (M20K_NARROW_FIFO_DEPTH) plus the capacity of the output data fifo or occ tracker (MLAB_FIFO_DEPTH)
    //this limits the bit width of any counter that tracks all threads inside the LSU
    assign active_incr = i_valid & ((KER_UP_STALL_LATENCY) ? 1'b1 : ~o_stall);          //asserts when a thread is accepted by hld_global_load_store
    assign active_decr = o_valid & ((KER_DOWN_STALL_LATENCY) ? 1'b1 : ~i_stall);        //asserts when a thread is released by hld_global_load_store, can happen before the write commits to memory if USE_WRITE_ACK=0
    assign nwa_decr = nwa_o_valid & ((KER_DOWN_STALL_LATENCY) ? 1'b1 : ~nwa_i_stall);   //asserts when a thread is released by hld_lsu and gone through width adaption in hld_global_load_store
    
    acl_tessellated_incr_decr_threshold #(
        .CAPACITY                   (TOTAL_OCC_LIMIT),
        .THRESHOLD                  (1),
        .INITIAL_OCCUPANCY          (0),
        .THRESHOLD_REACHED_AT_RESET (0),
        .ASYNC_RESET                (ASYNC_RESET),
        .SYNCHRONIZE_RESET          (0)
    )
    o_active_inst
    (
        .clock                      (clock),
        .resetn                     (resetn_synchronized),
        .incr_no_overflow           (active_incr),
        .incr_raw                   (active_incr),  //without stall latency do not use unguarded incr, with valid_in = 1 during reset, threshold_reached will assert 1 clock too soon coming out of reset
        .decr_no_underflow          (nwa_decr),
        .decr_raw                   (nwa_decr),     //without stall latency do not use unguarded decr, may take more than 1 clock cycle to produce each valid, i_stall at that time leads to a false o_active=0
        .threshold_reached          (o_active)
    );
    
    
    
    ////////////////////////////////////////
    //  Kernel Upstream Width Adaptation  //
    ////////////////////////////////////////
    
    // suppose we want to serialize wide data from kernel upstream before it reaches the core LSU by slicing it into NUM_KERNEL_SLICES sections
    // backpressure to kernel upstream only deasserts once every NUM_KERNEL_SLICES clocks, so the width adapter only needs to sample new data once every NUM_KERNEL_SLICES clocks
    // over the next NUM_KERNEL_SLICES clocks, the captured data is transferred to the core LSU by shifting the write data and byte enable, and adding to the address
    
    generate
    if (NUM_KERNEL_SLICES == 1) begin : NO_KER_UP_WIDTH_ADAPT
        assign time_share_stall = 1'b0;
        assign lsu_i_valid = (KER_UP_STALL_LATENCY) ? i_valid : i_valid & ~o_stall;
        assign lsu_i_address = {i_address[ADDR_WIDTH-1:LSU_ADDR_ALIGNMENT_BITS], {LSU_ADDR_ALIGNMENT_BITS{1'h0}}};
        assign lsu_i_writedata = i_writedata;
        assign lsu_i_byteenable = (USE_BYTE_ENABLE) ? i_byteenable : '1;
        assign lsu_i_predicate = (USE_PREDICATE) ? i_predicate : 1'b0;
        assign lsu_i_more_wide_sections = 1'b0;
    end
    else begin : GEN_KER_UP_WIDTH_ADAPT
        //generate a stall signal that deasserts only once every NUM_KERNEL_SLICES clock cycles, this ensure the shift reg buffer below can fully drain before accepting another wide input
        //counter goes from NUM_KERNEL_SLICES-2 down to -1 inclusive, msb is the sign bit so it only asserts when value is -1, which means we can accept input on this clock cycle
        localparam COUNTER_BITS = $clog2(NUM_KERNEL_SLICES-1)+1;
        logic [COUNTER_BITS-1:0] counter;
        always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) counter <= '0;
            else begin
                counter <= (counter[COUNTER_BITS-1]) ? NUM_KERNEL_SLICES-2 : counter-1;
                if (~sclrn) counter <= '0;
            end
        end
        assign time_share_stall = ~counter[COUNTER_BITS-1];
        
        //shift reg buffer
        logic [$clog2(NUM_KERNEL_SLICES)-1:0] wide_adapter_section;
        logic input_more_wide_sections;
        logic [ADDR_WIDTH-1:0] i_address_add;
        logic [8*KER_DATA_BYTES-1:0] i_writedata_buffer;
        logic [KER_DATA_BYTES-1:0] i_byteenable_buffer;
        logic i_predicate_capture;
        always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) input_more_wide_sections <= 1'b0;
            else begin
                if (i_valid & ((KER_UP_STALL_LATENCY) ? 1'b1 : ~o_stall)) input_more_wide_sections <= 1'b1;
                else if (input_more_wide_sections) input_more_wide_sections <= (wide_adapter_section != 0); //wide_adapter_section is not reset, but its value gets set when input_more_wide_sections goes to 1
                if (~sclrn) input_more_wide_sections <= 1'b0;
            end
        end
        always_ff @(posedge clock) begin
            lsu_i_valid <= 1'b0;
            if (i_valid & ((KER_UP_STALL_LATENCY) ? 1'b1 : ~o_stall)) begin
                lsu_i_valid <= 1'b1;
                wide_adapter_section <= NUM_KERNEL_SLICES-2;
                i_address_add <= i_address;
                i_writedata_buffer <= i_writedata;
                i_byteenable_buffer <= i_byteenable;
                i_predicate_capture <= i_predicate;
            end
            else if (input_more_wide_sections) begin
                lsu_i_valid <= 1'b1;
                wide_adapter_section <= wide_adapter_section - 1;
                i_address_add <= i_address_add + KER_DATA_BYTES_INTERNAL;
                i_writedata_buffer <= i_writedata_buffer >> (8*KER_DATA_BYTES_INTERNAL);
                i_byteenable_buffer <= i_byteenable_buffer >> KER_DATA_BYTES_INTERNAL;
            end
        end
        assign lsu_i_more_wide_sections = (KER_DATA_BYTES_INTERNAL != KER_DATA_BYTES_LAST) ? input_more_wide_sections : 1'b0;
        assign lsu_i_address = {i_address_add[ADDR_WIDTH-1:LSU_ADDR_ALIGNMENT_BITS], {LSU_ADDR_ALIGNMENT_BITS{1'h0}}};
        assign lsu_i_writedata = i_writedata_buffer[8*KER_DATA_BYTES_INTERNAL-1:0];    //i_writedata_buffer is a shift register, eventually all input bits will have their turn to land in the lowest bits
        assign lsu_i_byteenable = (USE_BYTE_ENABLE) ? i_byteenable_buffer[KER_DATA_BYTES_INTERNAL-1:0] : '1;
        assign lsu_i_predicate = (USE_PREDICATE) ? i_predicate_capture : 1'b0;
    end
    endgenerate
    
    //register the output stall signal to kernel upstream
    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) o_stall <= 1'b1;
        else begin
            o_stall <= lsu_o_stall | time_share_stall;
            if (~sclrn) o_stall <= 1'b1;
        end
    end
    
    
    
    //////////////////////////////////////////
    //  Kernel Downstream Width Adaptation  //
    //////////////////////////////////////////
    
    // this is simply the reverse of width adaption on kernel upstream - the width adapter receives NUM_KERNEL_SLICES narrow kernel words from the core LSU, and it has to assemble this into one wide kernel word
    
    generate
    if (NUM_KERNEL_SLICES == 1) begin : NO_KER_DOWN_WIDTH_ADAPT
        assign nwa_o_valid = lsu_o_valid;
        assign nwa_o_empty = lsu_o_empty;
        assign nwa_o_almost_empty = lsu_o_almost_empty;
        assign nwa_o_readdata = lsu_o_readdata;
        assign lsu_i_stall = nwa_i_stall;
    end
    else begin : GEN_KER_DOWN_WIDTH_ADAPT
        logic [$clog2(NUM_KERNEL_SLICES)-1:0] loading_position;
        logic [NUM_KERNEL_SLICES*8*KER_DATA_BYTES_INTERNAL-1:0] readdata_wide;
        always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) begin
                loading_position <= '0;
                nwa_o_empty <= 1'b1;
            end
            else begin
                if (~lsu_i_stall) begin
                    readdata_wide[8*KER_DATA_BYTES_INTERNAL*loading_position +: 8*KER_DATA_BYTES_INTERNAL] <= lsu_o_readdata;
                    if (loading_position == (NUM_KERNEL_SLICES-1)) begin
                        loading_position <= 0;
                        nwa_o_empty <= 1'b0;
                    end
                    else begin
                        loading_position <= loading_position + 1;
                    end
                end
                if (~nwa_o_empty & ~nwa_i_stall) nwa_o_empty <= 1'b1;
                if (~sclrn) begin
                    loading_position <= '0;
                    nwa_o_empty <= 1'b1;
                end
            end
        end
        assign nwa_o_readdata = readdata_wide[8*KER_DATA_BYTES-1:0];
        assign lsu_i_stall = ~(~lsu_o_empty & (nwa_o_empty | ~nwa_i_stall));
        
        assign nwa_o_valid = (KER_DOWN_STALL_LATENCY) ? (~nwa_o_empty & ~nwa_i_stall) : ~nwa_o_empty;
        assign nwa_o_almost_empty = 1'b1;   //if downstream of here is a stall latency sync node it will always be stuck in slow read mode, we could add a wide fifo here to fix that (not implemented)
    end
    endgenerate
    
    
    
    ////////////////////////////
    //  No writeack shortcut  //
    ////////////////////////////
    
    // Note: this is only implemented for legacy reasons
    // When there is no dependency on the data being written, can release the valid to kernel downstream before the corresponding data commits to memory
    // This does not affect the o_active signal, which tracks whether all writes have commited and no threads are still inside the LSU
    // When one wants the functionality of USE_WRITE_ACK = 0, there should be nothing tied to the kernel downstream stall valid (or stall latency) interface, e.g. i_stall = 0 and o_valid ignored
    // Unfortunately at the time of creating this LSU, there are still some cases where the compiler is wiring up the kernel downstream interface
    // Implement the bypass here by tracking how many valids have been released to kernel downstream but not yet consumed from the core LSU
    // Notice that the core LSU does not have any option to bypass write ack, it will only assert o_valid when the write has committed
    
    generate
    if (USE_WRITE_ACK || READ) begin : GEN_USE_WRITE_ACK    //using writeack is the normal behavior of the core LSU, ignore USE_WRITE_ACK if read LSU
        assign o_valid = nwa_o_valid;
        assign o_empty = nwa_o_empty;
        assign o_almost_empty = nwa_o_almost_empty;
        assign o_readdata = nwa_o_readdata;
        assign nwa_i_stall = i_stall;
    end
    else begin : NO_USE_WRITE_ACK   //can release a thread to kernel downstream before getting o_valid from the core LSU
        //active_incr asserts when a thread enters hld_global_store, active_decr asserts when a thread exits hld_global_store, active_decr can assert before the write commits to memory if USE_WRITE_ACK=0
        //nwa_decr asserts when a thread exits hld_lsu and has gone through width adaption in hld_global_load_store
        logic not_o_empty;
        logic not_o_almost_empty;
        
        acl_tessellated_incr_decr_threshold #(
            .CAPACITY                   (TOTAL_OCC_LIMIT),
            .THRESHOLD                  (1),
            .INITIAL_OCCUPANCY          (0),
            .THRESHOLD_REACHED_AT_RESET (0),
            .ASYNC_RESET                (ASYNC_RESET),
            .SYNCHRONIZE_RESET          (0)
        )
        o_empty_inst
        (
            .clock                      (clock),
            .resetn                     (resetn_synchronized),
            .incr_no_overflow           (active_incr),
            .incr_raw                   (active_incr),
            .decr_no_underflow          (active_decr),
            .decr_raw                   (active_decr),
            .threshold_reached          (not_o_empty)
        );
        
        acl_tessellated_incr_decr_threshold #(
            .CAPACITY                   (TOTAL_OCC_LIMIT),
            .THRESHOLD                  (KER_DOWN_STALL_LATENCY+1), //convert from cutoff to threshold semantics
            .INITIAL_OCCUPANCY          (0),
            .THRESHOLD_REACHED_AT_RESET (0),
            .ASYNC_RESET                (ASYNC_RESET),
            .SYNCHRONIZE_RESET          (0)
        )
        o_almost_empty_inst
        (
            .clock                      (clock),
            .resetn                     (resetn_synchronized),
            .incr_no_overflow           (active_incr),
            .incr_raw                   (active_incr),
            .decr_no_underflow          (active_decr),
            .decr_raw                   (active_decr),
            .threshold_reached          (not_o_almost_empty)
        );
        
        //drive the kernel downstream outputs
        assign o_empty = ~not_o_empty;
        assign o_almost_empty = ~not_o_almost_empty;
        assign o_valid = (KER_DOWN_STALL_LATENCY) ? (~o_empty & ~i_stall) : ~o_empty;
        assign o_readdata = 'x;         //read data is not used by write lsu
        
        //keep track of how many threads have been released from hld_global_load_store but not yet from hld_lsu (after kernel downstream width adaption in hld_global_load_store)
        //if this count is nonzero, then we release backpressure to hld_lsu (after width adaption in hld_global_load_store)
        logic not_nwa_i_stall;
        acl_tessellated_incr_decr_threshold #(
            .CAPACITY                   (TOTAL_OCC_LIMIT),
            .THRESHOLD                  (1),
            .INITIAL_OCCUPANCY          (0),
            .THRESHOLD_REACHED_AT_RESET (0),
            .ASYNC_RESET                (ASYNC_RESET),
            .SYNCHRONIZE_RESET          (0)
        )
        nwa_i_stall_inst
        (
            .clock                      (clock),
            .resetn                     (resetn_synchronized),
            .incr_no_overflow           (active_decr),  //thread has been released from hld_global_load_store, increase the count of corresponding threads that have not yet been released by hld_lsu
            .incr_raw                   (active_decr),
            .decr_no_underflow          (nwa_decr),     //thread has been released from hld_lsu (after width adaption in hld_global_load_store), decrease the count of corrresponding threads not yet released
            .decr_raw                   (nwa_decr),
            .threshold_reached          (not_nwa_i_stall)
        );
        assign nwa_i_stall = ~not_nwa_i_stall;
    end
    endgenerate
    
    
    
    //////////////////
    //  Read Cache  //
    //////////////////
    
    generate
    if (CACHE_SIZE_BYTES) begin : GEN_CACHE
        hld_lsu_read_cache #(
            .ASYNC_RESET                    (ASYNC_RESET),
            .BURST_COAL_MAX_TIMEOUT_BIT     (BURST_COAL_MAX_TIMEOUT_BIT),
            .CACHE_SIZE_BYTES               (CACHE_SIZE_BYTES),
            .ADDR_WIDTH                     (ADDR_WIDTH),
            .INTRA_ADDR_WIDTH               (INTRA_ADDR_WIDTH),
            .WORD_ADDR_WIDTH                (WORD_ADDR_WIDTH),
            .BURSTCOUNT_WIDTH               (BURSTCOUNT_WIDTH),
            .MEM_DATA_BYTES                 (MEM_DATA_BYTES_INTERNAL),
            .MLAB_FIFO_DEPTH                (MLAB_FIFO_DEPTH),
            .M20K_WIDE_FIFO_DEPTH           (M20K_WIDE_FIFO_DEPTH),
            .ENABLE_BURST_COALESCE          (CACHE_ENABLE_BURST_COALESCE),
            .BYPASS_BURST_SPLITTER          (1),    //if cache is used and we want burst coalescing, lsu will disable burst coalescing and cache will enable burst coalescing
            .CACHE_NEVER_OVERFLOWS          (1),    //cache capacity is no less the lsu throttle logic threshold and lsu will never produce bursts, therefore cache will never backpressure lsu
            .BYPASS_LSU_DATA_FIFO           (1),    //by having to mux between hit and miss, readdata is now stallable, don't need avm_rd_data_fifo
            .PIPELINE_UPDATE_TO_CACHE       (1),    //add a pipeline stage before updating the cache, allows more time for routing between rsp fifo and cache
            .PIPELINE_READ_FROM_CACHE       (1)     //add a pipeline stage after reading from the cache, allows more time for routing from cache to order fifo, hit fifo, and burst coalescer
        )
        hld_lsu_read_cache
        (
            .clock                          (clock),
            .i_flush_cache                  (i_flush_cache),
            .resetn                         (resetn_synchronized),
            .k_read                         (lsu_avm_read),
            .k_address                      (lsu_avm_address),
            .k_burstcount                   (lsu_avm_burstcount),
            .k_waitrequest                  (),
            .k_readdatavalid                (lsu_avm_readdatavalid),
            .k_readdata                     (lsu_avm_readdata),
            .k_readdata_accepted            (lsu_avm_readdata_accepted),
            .m_read                         (cache_avm_read),
            .m_address                      (cache_avm_address),
            .m_burstcount                   (cache_avm_burstcount),
            .m_waitrequest                  (cache_avm_waitrequest),
            .m_readdatavalid                (cache_avm_readdatavalid),
            .m_readdata                     (cache_avm_readdata)
        );
        assign lsu_avm_waitrequest = 1'b0;  //cache will never backpressure lsu
        assign cache_avm_write = 1'b0;
        assign cache_avm_writedata = 'x;
        assign cache_avm_byteenable = 'x;
    end
    else begin : NO_CACHE
        assign cache_avm_write = lsu_avm_write;
        assign cache_avm_read = lsu_avm_read;
        assign cache_avm_address = lsu_avm_address;
        assign cache_avm_burstcount = lsu_avm_burstcount;
        assign cache_avm_writedata = lsu_avm_writedata;
        assign cache_avm_byteenable = lsu_avm_byteenable;
        assign lsu_avm_waitrequest = cache_avm_waitrequest;
        assign lsu_avm_writeack = cache_avm_writeack;
        assign lsu_avm_readdatavalid = cache_avm_readdatavalid;
        assign lsu_avm_readdata = cache_avm_readdata;
    end
    endgenerate
    
    
    
    ///////////////////////////////
    //  Avalon Width Adaptation  //
    ///////////////////////////////
    
    // if the core LSU memory width is less than the actual memory width, avalon requests need to be widened and responses need to be narrowed
    // since this is done without fifos, burst coalescing must be disabled if memory width adaption is used
    // as an example, suppose the actual memory width is 64 bytes but the core LSU memory width is 16 bytes
    // no adaption needs to be done to the address since it is a byte address
    // for the write lsu, mask off the byteenables for the address ranges not used, in this example addr[5:4] determines which quarter of the byteenables should not be masked, write data can simply be replicated
    // for the read lsu, track addr[5:4] in a fifo, when avalon read data arrives this info determines which quarter of the read data should be supplied to the core LSU (or cache if used)
    
    generate
    if (NUM_MEM_SLICES == 1) begin : NO_MEM_WIDTH_ADAPT
        assign avm_write = cache_avm_write;
        assign avm_read = cache_avm_read;
        assign avm_address = cache_avm_address;
        assign avm_burstcount = cache_avm_burstcount;
        assign avm_writedata = (READ) ? 'x : cache_avm_writedata;
        assign avm_byteenable = (READ) ? '1 : cache_avm_byteenable;
        assign cache_avm_waitrequest = avm_waitrequest;
        assign cache_avm_writeack = avm_writeack;
        assign cache_avm_readdatavalid = avm_readdatavalid;
        assign cache_avm_readdata = avm_readdata;
    end
    else begin : GEN_MEM_WIDTH_ADAPT
        localparam int ADDR_BITS_INSIDE_WIDE_MEM_WORD = $clog2(MEM_DATA_BYTES);
        localparam int ADDR_BITS_INSIDE_NARROW_MEM_WORD = $clog2(MEM_DATA_BYTES_INTERNAL);
        localparam int ADDR_ADAPT_BITS = ADDR_BITS_INSIDE_WIDE_MEM_WORD - ADDR_BITS_INSIDE_NARROW_MEM_WORD;
        
        logic [ADDR_ADAPT_BITS-1:0] addr_adapt;
        assign addr_adapt = cache_avm_address[ADDR_BITS_INSIDE_NARROW_MEM_WORD +: ADDR_ADAPT_BITS];
        
        assign avm_write = cache_avm_write;
        assign avm_read = cache_avm_read;
        assign avm_address = {cache_avm_address[ADDR_WIDTH-1:ADDR_BITS_INSIDE_WIDE_MEM_WORD], {ADDR_BITS_INSIDE_WIDE_MEM_WORD{1'h0}} };
        assign avm_burstcount = 1;  //burst coalescing must be disabled
        assign cache_avm_waitrequest = avm_waitrequest;
        assign cache_avm_writeack = avm_writeack;
        
        always_ff @(posedge clock) begin
            cache_avm_readdatavalid <= avm_readdatavalid;
        end
        
        if (READ) begin : READ_MEM_WIDTH_ADAPT
            logic [ADDR_ADAPT_BITS-1:0] addr_adapt_read_data;
            
            //IMPORANT ASSUMPTION: read request will not be serviced faster than the write-to-read latency through addr_adapt_fifo, which is 3 for mid speed fifo
            hld_fifo #(
                .WIDTH              (ADDR_ADAPT_BITS),
                .DEPTH              (M20K_WIDE_FIFO_DEPTH), //same depth as avm_rd_data_fifo, which has throttle logic to ensure lsu doesn't request more reads than there is space for
                .NEVER_OVERFLOWS    (1),
                .ASYNC_RESET        (ASYNC_RESET),
                .SYNCHRONIZE_RESET  (0),
                .STYLE              ("ms")
            )
            addr_adapt_fifo
            (
                .clock              (clock),
                .resetn             (resetn_synchronized),
                .i_valid            (avm_read & ~avm_waitrequest),
                .i_data             (addr_adapt),
                .o_stall            (),
                .o_almost_full      (),
                .o_valid            (),
                .o_data             (addr_adapt_read_data),
                .i_stall            (~avm_readdatavalid),
                .o_almost_empty     (),
                .o_empty            (),
                .ecc_err_status     ()
            );
            
            //this is a NUM_MEM_SLICES:1 mux, arbitrary amount of pipelining could be added here since readdatavalid can't be backpressured
            always_ff @(posedge clock) begin
                cache_avm_readdata <= 'x;
                for (int i=0; i<NUM_MEM_SLICES; i++) begin
                    if (i == addr_adapt_read_data) cache_avm_readdata <= avm_readdata[i*8*MEM_DATA_BYTES_INTERNAL +: 8*MEM_DATA_BYTES_INTERNAL];
                end
            end
            
            assign avm_byteenable = '1;
        end
        else begin : WRITE_MEM_WIDTH_ADAPT
            assign avm_writedata = {NUM_MEM_SLICES{cache_avm_writedata}};
            always_comb begin
                for (int i=0; i<NUM_MEM_SLICES; i++) begin
                    avm_byteenable[i*MEM_DATA_BYTES_INTERNAL +: MEM_DATA_BYTES_INTERNAL] = (i == addr_adapt) ? cache_avm_byteenable : '0;
                end
            end
        end
    end
    endgenerate
    
endmodule

`default_nettype wire
    
