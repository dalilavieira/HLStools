// (C) 1992-2019 Intel Corporation.                            
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

module acl_mem1x
#(
  parameter DEPTH_WORDS=1,
  parameter WIDTH=32,
  /*  With ENABLED==0 (ie. the avs_port_enable inputs are not used), MEM_LATENCY specifies the total round-trip latency through this module, 
      from the request input (avs_port_read/write) to when the readdata is output (avs_port_readdatavalid).
      The latency TO the memory is the same for both read and write requests. If MEM_LATENCY == 1, then this latency to the memory is 1. If MEM_LATENCY >= 3, then
      the latency is (INPUT_PIPE_DEPTH + 1)

      A MEM_LATENCY value of 1 enables LOW_LATENCY mode where the input request is fed directly to the altsyncram and its output registers are disabled.
      A value of 2 is *not supported*.
      A value >= 3 adds additional pipelining outside the altsyncram. Approximately half of the additional pipelining is added on the request input side and the rest
      is placed on the output (read-data) side.
  */
  parameter MEM_LATENCY=3,   
  parameter RDW_MODE="DONT_CARE",                       // OLD_DATA | DONT_CARE | NEW_DATA
  parameter RAM_OPERATION_MODE = "BIDIR_DUAL_PORT",     // altsyncram's OPERATION_MODE parameter
  parameter RAM_BLOCK_TYPE = "AUTO",                    // altsyncram's RAM_BLOCK_TYPE parameter
  parameter INTENDED_DEVICE_FAMILY = "Stratix IV",      // altsyncram's INTENDED_DEVICE_FAMILY parameter
  parameter ENABLED = 0, //use enable inputs
  /*MAXIMUM_DEPTH gets passed straight to the altsyncram maximum_depth parameter which controls the maximum physical depth of the M20K being instantiated. This helps override the quartus heuristic that decides whether to width-stich or depth-stich M20Ks to create a large memory. The default value is 0 which puts no restriction on the M20K depth.*/
  /*TODO: At some point we probably want to width-slice the rams differently when ecc is enabled so that we aren't grouping e.g. 4.5 rams which will end up needing 5. May as well use up all the bits for those 5 rams.*/
  parameter MAXIMUM_DEPTH = 0,
  parameter MIF_FILE = "UNUSED",
  parameter ASYNC_RESET = 1,                             // 1 = Registers are reset asynchronously. 0 = Registers are reset synchronously -- the reset signal is pipelined before consumption. In both cases, some registesr are not reset at all.
  parameter SYNCHRONIZE_RESET = 0,                       // 1 = resetn is synchronized before consumption. The consumption itself is either asynchronous or synchronous, as specified by ASYNC_RESET.
  parameter enable_ecc = "FALSE",                        // Enable error correction coding
  parameter USE_BYTEENA = 0,
  parameter do_not_connect_read_enable = 1               // Indicates to wrapper to not connect rden_a and rden_b signals when they aren't being used
)
(
    input wire clk,
    input wire resetn,                                  // Reset must be asserted for a minimum pulse duration of MEM_LATENCY (it's actually a bit less than this, but specifying MEM_LATENCY to have some margin)
    input wire avs_port1_enable,
    input wire avs_port2_enable,
    input wire [WIDTH-1:0] avs_port1_writedata,
    input wire [WIDTH-1:0] avs_port2_writedata,
    input wire [WIDTH/8-1:0] avs_port1_byteenable,
    input wire [WIDTH/8-1:0] avs_port2_byteenable,
    input wire [$clog2(DEPTH_WORDS)-1:0] avs_port1_address,
    input wire [$clog2(DEPTH_WORDS)-1:0] avs_port2_address,
    input wire avs_port1_read,
    input wire avs_port2_read,
    input wire avs_port1_write,
    input wire avs_port2_write,
    output logic [WIDTH-1:0] avs_port1_readdata,
    output logic [WIDTH-1:0] avs_port2_readdata,
    output logic avs_port1_readdatavalid,
    output logic avs_port2_readdatavalid,
    output logic avs_port1_waitrequest,
    output logic avs_port2_waitrequest,
    output logic  [1:0] ecc_err_status  // ecc status signals
    );
  
localparam LOG2DEPTH = $clog2( DEPTH_WORDS );
localparam LOW_LATENCY = MEM_LATENCY < 3 ? 1 : 0;

/*  
   The internal latency through the altsyncram is 2 (inputs are registered once internally and read data is registered once internally).
*/
localparam INTERNAL_ALTSYNCRAM_LATENCY = 2;
localparam EXTERNAL_ALTSYNCRAM_LATENCY = MEM_LATENCY - INTERNAL_ALTSYNCRAM_LATENCY; // The amount of latency specified to be outside the altsyncram (ie. added by this module)
/* These parameters define the amount of input and output pipeline adding inside this module, around the altsyncram, to comprise EXTERNAL_ALTSYNCRAM_LATENCY.
   Half of the external latency (rounded up) is allocated to the input side of the altsyncram (on the read/write request input).
   The remainder is placed on the output side of the altsyncram (the read data output).
   Read and write requests experience the same latency *to* the memory.
   Here is a table of sample values that result from the parameter calculations:
   MEM_LATENCY   EXTERNAL_ALTSYNCRAM_LATENCY   INPUT_PIPE_DEPTH    READ_DATA_OUTPUT_PIPE_DEPTH
    1             N/A (LOW_LATENCY mode is used)
    2             Not supported.
    3             1                             1                   0
    4             2                             1                   1
    5             3                             2                   1
    6             4                             2                   2
    10            8                             4                   4
   A value of <= 0 on INPUT_PIPE_DEPTH is not supported, but won't be possible as long as MEM_LATENCY takes on values of 1 or 3+
*/
localparam INPUT_PIPE_DEPTH = ((EXTERNAL_ALTSYNCRAM_LATENCY % 2) > 0)? ((EXTERNAL_ALTSYNCRAM_LATENCY/2)+1) : (EXTERNAL_ALTSYNCRAM_LATENCY/2);
localparam READ_DATA_OUTPUT_PIPE_DEPTH = EXTERNAL_ALTSYNCRAM_LATENCY - INPUT_PIPE_DEPTH;

localparam RAM_RDW_MODE = (RDW_MODE == "OLD_DATA") ? "OLD_DATA" : "DONT_CARE";
assign avs_port1_waitrequest=1'b0;
assign avs_port2_waitrequest=1'b0;

wire port1_enable;
wire port2_enable;

localparam                    NUM_RESET_COPIES = 2;
localparam                    RESET_PIPE_DEPTH = 3;
logic                         aclrn;
logic [NUM_RESET_COPIES-1:0]  sclrn;
logic                         resetn_synchronized;

/*
  If SYNCHRONIZE_RESET==1, the synchronized version of resetn is distributed down the hierarchy to submodules, and submodules will not synchronize again.
*/
acl_reset_handler
#(
    .ASYNC_RESET            (ASYNC_RESET),
    .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
    .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
    .PIPE_DEPTH             (RESET_PIPE_DEPTH),
    .NUM_COPIES             (NUM_RESET_COPIES) 
)
acl_reset_handler_inst
(
    .clk                    (clk),
    .i_resetn               (resetn),
    .o_aclrn                (aclrn),
    .o_resetn_synchronized  (resetn_synchronized),  
    .o_sclrn                (sclrn)
);

generate
if (ENABLED) begin
    assign port1_enable = avs_port1_enable;
    assign port2_enable = avs_port2_enable;
end else begin
    assign port1_enable = 1'b1;
    assign port2_enable = 1'b1;
end
endgenerate

generate
if (LOW_LATENCY) 
begin
   always @(posedge clk or negedge aclrn)
   begin
      if (!aclrn) begin
         avs_port1_readdatavalid <= '0;
         avs_port2_readdatavalid <= '0;
      end else begin
         if (port1_enable) begin
            avs_port1_readdatavalid <= avs_port1_read;
         end
         if (port2_enable) begin
            avs_port2_readdatavalid <= avs_port2_read;
         end
         if (!sclrn[0]) begin
            avs_port1_readdatavalid <= '0;
            avs_port2_readdatavalid <= '0;
         end
      end
   end
end
else
begin
  _acl_mem1x_shiftreg readatavalid_1(.D(avs_port1_read), .clock(clk), .resetn(resetn_synchronized), .enable(port1_enable), .Q(avs_port1_readdatavalid));
    defparam readatavalid_1.WIDTH = 1;
    defparam readatavalid_1.DEPTH = MEM_LATENCY;
    defparam readatavalid_1.ASYNC_RESET = ASYNC_RESET;
    defparam readatavalid_1.SYNCHRONIZE_RESET = 0;

  _acl_mem1x_shiftreg readatavalid_2(.D(avs_port2_read), .clock(clk), .resetn(resetn_synchronized), .enable(port2_enable), .Q(avs_port2_readdatavalid));
    defparam readatavalid_2.WIDTH = 1;
    defparam readatavalid_2.DEPTH = MEM_LATENCY;
    defparam readatavalid_2.ASYNC_RESET = ASYNC_RESET;
    defparam readatavalid_2.SYNCHRONIZE_RESET = 0;
end
endgenerate


genvar b;
   
      reg [WIDTH-1:0]   r_port1_writedata;
      reg [WIDTH-1:0]   r_port2_writedata;
      reg [WIDTH/8-1:0] r_port1_byteenable;
      reg [WIDTH/8-1:0] r_port2_byteenable; 
      reg [LOG2DEPTH-1:0]  r_port1_address;
      reg [LOG2DEPTH-1:0]  r_port2_address;
      reg                  r_port1_write;
      reg                  r_port2_write;

      reg [INPUT_PIPE_DEPTH:1][WIDTH-1:0]   r_port1_writedata_input_pipe;
      reg [INPUT_PIPE_DEPTH:1][WIDTH-1:0]   r_port2_writedata_input_pipe;
      reg [INPUT_PIPE_DEPTH:1][WIDTH/8-1:0] r_port1_byteenable_input_pipe;
      reg [INPUT_PIPE_DEPTH:1][WIDTH/8-1:0] r_port2_byteenable_input_pipe; 
      reg [INPUT_PIPE_DEPTH:1][LOG2DEPTH-1:0]  r_port1_address_input_pipe;
      reg [INPUT_PIPE_DEPTH:1][LOG2DEPTH-1:0]  r_port2_address_input_pipe;
      reg  [INPUT_PIPE_DEPTH:1]                r_port1_write_input_pipe;
      reg  [INPUT_PIPE_DEPTH:1]                r_port2_write_input_pipe;



      reg [WIDTH-1:0]  port1_readdata;
      reg [WIDTH-1:0]  port2_readdata;
      reg [READ_DATA_OUTPUT_PIPE_DEPTH:1][WIDTH-1:0]  port1_readdata_output_pipe;
      reg [READ_DATA_OUTPUT_PIPE_DEPTH:1][WIDTH-1:0]  port2_readdata_output_pipe;

      wire [WIDTH-1:0]  port1_readdata_mem;
      wire [WIDTH-1:0]  port2_readdata_mem;
      
      // Bypass signals
      wire [WIDTH-1:0]  port1_bypass;
      wire [WIDTH-1:0]  port2_bypass;
      wire                 port1_bypass_valid_lookahead;
      wire                 port2_bypass_valid_lookahead;
      wire                 port1_bypass_valid;
      wire                 port2_bypass_valid;
      wire [WIDTH-1:0]  port1_readdata_new;
      wire [WIDTH-1:0]  port2_readdata_new;
      wire [WIDTH-1:0]  port1_readdata_staging_reg_output;
      wire [WIDTH-1:0]  port2_readdata_staging_reg_output;      
      wire [WIDTH/8-1:0] port1_byteenable_late;
      wire [WIDTH/8-1:0] port2_byteenable_late; 

generate
      if (LOW_LATENCY) 
      begin
         assign r_port1_writedata = avs_port1_writedata;
         assign r_port2_writedata = avs_port2_writedata;
         assign r_port1_byteenable = avs_port1_byteenable;
         assign r_port2_byteenable = avs_port2_byteenable;
         assign r_port1_address = avs_port1_address;
         assign r_port2_address = avs_port2_address;
         assign r_port1_write = avs_port1_write;
         assign r_port2_write = avs_port2_write;
      end
      else
      begin
         always @(posedge clk or negedge aclrn)
         begin
            if (!aclrn)
            begin
              r_port1_writedata_input_pipe[1]  <= 'x;
              r_port1_byteenable_input_pipe[1] <= 'x;
              r_port1_address_input_pipe[1]    <= 'x;            
              r_port1_write_input_pipe[1] <= 1'b0;
            end else begin
               if (port1_enable) begin

                  // Implement the input pipeline for the requests
                  r_port1_writedata_input_pipe[1]  <= avs_port1_writedata;
                  r_port1_byteenable_input_pipe[1] <= avs_port1_byteenable;
                  r_port1_address_input_pipe[1]    <= avs_port1_address;
                  r_port1_write_input_pipe[1]      <= avs_port1_write; 

                  for (int i=2;i<=INPUT_PIPE_DEPTH;i++) begin
                     r_port1_writedata_input_pipe[i]  <= r_port1_writedata_input_pipe[i-1];
                     r_port1_byteenable_input_pipe[i] <= r_port1_byteenable_input_pipe[i-1];
                     r_port1_address_input_pipe[i]    <= r_port1_address_input_pipe[i-1];
                     r_port1_write_input_pipe[i]      <= r_port1_write_input_pipe[i-1];      
                  end

               end

               if (!sclrn[0]) begin
                 r_port1_write_input_pipe[1]  <= 1'b0;   // Reset only the head of the pipeline and let it trickle through.
               end             
            end
         end

         // Grab the pipeline outputs
         assign r_port1_writedata   = r_port1_writedata_input_pipe[INPUT_PIPE_DEPTH];
         assign r_port1_byteenable  = r_port1_byteenable_input_pipe[INPUT_PIPE_DEPTH];
         assign r_port1_address     = r_port1_address_input_pipe[INPUT_PIPE_DEPTH];
         assign r_port1_write       = r_port1_write_input_pipe[INPUT_PIPE_DEPTH];   

         always @(posedge clk or negedge aclrn)
         begin
            if (!aclrn)
            begin
              r_port2_writedata_input_pipe[1]  <= 'x;
              r_port2_byteenable_input_pipe[1] <= 'x;
              r_port2_address_input_pipe[1]    <= 'x;            
              r_port2_write_input_pipe[1] <= 1'b0;
            end else begin
            
               if (port2_enable) begin

                  // Implement the input pipeline for the requests
                  r_port2_writedata_input_pipe[1] <= avs_port2_writedata;
                  r_port2_byteenable_input_pipe[1] <= avs_port2_byteenable;
                  r_port2_address_input_pipe[1] <= avs_port2_address;
                  r_port2_write_input_pipe[1] <= avs_port2_write; 

                  for (int i=2;i<=INPUT_PIPE_DEPTH;i++) begin
                     r_port2_writedata_input_pipe[i] <= r_port2_writedata_input_pipe[i-1];
                     r_port2_byteenable_input_pipe[i] <= r_port2_byteenable_input_pipe[i-1];
                     r_port2_address_input_pipe[i] <= r_port2_address_input_pipe[i-1];
                     r_port2_write_input_pipe[i] <= r_port2_write_input_pipe[i-1];      
                  end
                  
               end

               if (!sclrn[1]) begin
                 r_port2_write_input_pipe[1] <= 1'b0;  // Reset only the head of the pipeline and let it trickle through.
               end         
            end
         end

         // Grab the pipeline outputs
         assign r_port2_writedata   = r_port2_writedata_input_pipe[INPUT_PIPE_DEPTH];
         assign r_port2_byteenable  = r_port2_byteenable_input_pipe[INPUT_PIPE_DEPTH];
         assign r_port2_address     = r_port2_address_input_pipe[INPUT_PIPE_DEPTH];
         assign r_port2_write       = r_port2_write_input_pipe[INPUT_PIPE_DEPTH];
      end
endgenerate

      /*
         In Stratix-10, True Dual Port (TDP) memories only support DONT_CARE for read-during-write (RDW) so TDP can't support memory dependencies.
         Simple Dual Port (SDP) does support OLD_DATA however.
         So a bypass is implemented here to present the new data for RDW. This register usage of this bypass scales with MEM_LATENCY
         so a future optimization can be to only use it for TDP on Stratix-10.

         This mode is not used for any families older than Stratix 10 as they all
         support OLD_DATA and we only need one or the other to break mem deps
     */
generate
      if (RDW_MODE == "NEW_DATA")
      begin
        // Do not reset the data path
        _acl_mem1x_shiftreg bypass_1(.D(r_port2_writedata), .clock(clk), .resetn(1'b1), .enable(port1_enable), .Q(port1_bypass));
          defparam bypass_1.WIDTH = WIDTH;
          defparam bypass_1.DEPTH = LOW_LATENCY ? 1 : INTERNAL_ALTSYNCRAM_LATENCY;
          defparam bypass_1.ASYNC_RESET = ASYNC_RESET;
          defparam bypass_1.SYNCHRONIZE_RESET = 0;
        _acl_mem1x_shiftreg bypass_2(.D(r_port1_writedata), .clock(clk), .resetn(1'b1), .enable(port2_enable), .Q(port2_bypass));
          defparam bypass_2.WIDTH = WIDTH;
          defparam bypass_2.DEPTH = LOW_LATENCY ? 1 : INTERNAL_ALTSYNCRAM_LATENCY;
          defparam bypass_2.ASYNC_RESET = ASYNC_RESET;
          defparam bypass_2.SYNCHRONIZE_RESET = 0;

         // When a read occurs, if that same address is being written to on the other port, forward that writedata to the readdata output.
         // These bypass_valid signals indicate that this forwarding should be done. To be clear, the memory is set up to read all the time, so only
         // the addresses need to be compared (ie. don't need to look at r_port1/2_read)
        assign port1_bypass_valid_lookahead = (RDW_MODE == "NEW_DATA") & (r_port1_address == r_port2_address) & r_port2_write & port2_enable;
        assign port2_bypass_valid_lookahead = (RDW_MODE == "NEW_DATA") & (r_port1_address == r_port2_address) & r_port1_write & port1_enable;
        _acl_mem1x_shiftreg bypass_valid_1(.D(port1_bypass_valid_lookahead), .clock(clk), .resetn(resetn_synchronized), .enable(port1_enable), .Q(port1_bypass_valid));
          defparam bypass_valid_1.WIDTH = 1;
          defparam bypass_valid_1.DEPTH = LOW_LATENCY ? 1 : INTERNAL_ALTSYNCRAM_LATENCY;
          defparam bypass_valid_1.ASYNC_RESET = ASYNC_RESET;
          defparam bypass_valid_1.SYNCHRONIZE_RESET = 0;
        _acl_mem1x_shiftreg bypass_valid_2(.D(port2_bypass_valid_lookahead), .clock(clk), .resetn(resetn_synchronized), .enable(port2_enable), .Q(port2_bypass_valid));
          defparam bypass_valid_2.WIDTH = 1;
          defparam bypass_valid_2.DEPTH = LOW_LATENCY ? 1 : INTERNAL_ALTSYNCRAM_LATENCY;
          defparam bypass_valid_2.ASYNC_RESET = ASYNC_RESET;
          defparam bypass_valid_2.SYNCHRONIZE_RESET = 0;

        _acl_mem1x_shiftreg byteenable_1(.D(r_port1_byteenable), .clock(clk), .resetn(resetn_synchronized), .enable(port2_enable), .Q(port1_byteenable_late));
          defparam byteenable_1.WIDTH = WIDTH/8;
          defparam byteenable_1.DEPTH = LOW_LATENCY ? 1 : INTERNAL_ALTSYNCRAM_LATENCY;
          defparam byteenable_1.ASYNC_RESET = ASYNC_RESET;
          defparam byteenable_1.SYNCHRONIZE_RESET = 0;
        _acl_mem1x_shiftreg byteenable_2(.D(r_port2_byteenable), .clock(clk), .resetn(resetn_synchronized), .enable(port1_enable), .Q(port2_byteenable_late));
          defparam byteenable_2.WIDTH = WIDTH/8;
          defparam byteenable_2.DEPTH = LOW_LATENCY ? 1 : INTERNAL_ALTSYNCRAM_LATENCY;
          defparam byteenable_2.ASYNC_RESET = ASYNC_RESET;
          defparam byteenable_2.SYNCHRONIZE_RESET = 0;

        // Using byte enable, compose the return value from the value read
        // from memory and the bypass value. Note that port1_bypass is actually the writedata from port2.
        for(b=0; b<WIDTH/8; b++)
        begin : byte_b
          assign port1_readdata_new[b*8+:8] = (port1_bypass_valid & port2_byteenable_late[b]) ? port1_bypass[b*8+:8] : port1_readdata_mem[b*8+:8];
          assign port2_readdata_new[b*8+:8] = (port2_bypass_valid & port1_byteenable_late[b]) ? port2_bypass[b*8+:8] : port2_readdata_mem[b*8+:8];
        end
      end
      else
      begin    // If not using NEW_DATA mode, grab the read data directly from the altsyncram output
        assign port1_readdata_new = port1_readdata_mem;
        assign port2_readdata_new = port2_readdata_mem;
      end
endgenerate

     acl_altera_syncram_wrapped  altsyncram_component (
      .clock0 (clk),
      .wren_a (r_port1_write & port1_enable),
      .wren_b (r_port2_write & port2_enable),
      .address_a (r_port1_address),
      .address_b (r_port2_address),
      .data_a (r_port1_writedata),
      .data_b (r_port2_writedata),
      .q_a (port1_readdata_mem),
      .q_b (port2_readdata_mem),
      .aclr0 (~aclrn),
      .aclr1 (1'b0),
      .sclr (~sclrn[0]),
      .addressstall_a (~port1_enable),
      .addressstall_b (~port2_enable),
      .byteena_a (r_port1_byteenable),
      .byteena_b (r_port2_byteenable),
      .clock1 (1'b1),
      .clocken0 (1'b1),
      .clocken1 (1'b1),
      .rden_a (1'b1),
      .rden_b (1'b1),
      // TODO: All the ecc logic will be operating on the 2x clock. Okay for now, but later for qor we will probably want 4 encoders/decoders on the 1x clock 
      .ecc_err_status (ecc_err_status));
     defparam
      altsyncram_component.address_reg_b = "CLOCK0",
      altsyncram_component.maximum_depth = MAXIMUM_DEPTH,
      altsyncram_component.clock_enable_input_a = "BYPASS",
      altsyncram_component.clock_enable_input_b = "BYPASS",
      altsyncram_component.clock_enable_output_a = "BYPASS",
      altsyncram_component.clock_enable_output_b = "BYPASS",
      altsyncram_component.rdcontrol_reg_b = "CLOCK0",
      altsyncram_component.byteena_reg_b = "CLOCK0",
      altsyncram_component.indata_reg_b = "CLOCK0",
      altsyncram_component.intended_device_family = INTENDED_DEVICE_FAMILY,
      altsyncram_component.lpm_type = "altsyncram",
      altsyncram_component.numwords_a = DEPTH_WORDS,
      altsyncram_component.numwords_b = DEPTH_WORDS,
      altsyncram_component.operation_mode = RAM_OPERATION_MODE,
      altsyncram_component.outdata_aclr_a = "NONE",
      altsyncram_component.outdata_aclr_b = "NONE",
      altsyncram_component.outdata_reg_a = LOW_LATENCY ? "UNREGISTERED" : "CLOCK0",
      altsyncram_component.outdata_reg_b = LOW_LATENCY ? "UNREGISTERED" : "CLOCK0",
      altsyncram_component.power_up_uninitialized = "FALSE",
      altsyncram_component.read_during_write_mode_mixed_ports = RAM_RDW_MODE,
      altsyncram_component.read_during_write_mode_port_a = "DONT_CARE",
      altsyncram_component.read_during_write_mode_port_b = "DONT_CARE",
      altsyncram_component.widthad_a = LOG2DEPTH,
      altsyncram_component.widthad_b = LOG2DEPTH,
      altsyncram_component.width_a = WIDTH,
      altsyncram_component.width_b = WIDTH,
      altsyncram_component.width_byteena_a = WIDTH/8,
      altsyncram_component.width_byteena_b = WIDTH/8,
      //altsyncram_component.wrcontrol_wraddress_reg_b = "CLOCK0",
      altsyncram_component.ram_block_type = RAM_BLOCK_TYPE,
      altsyncram_component.init_file = MIF_FILE,
      altsyncram_component.connect_clr_to_ram = 0,
      altsyncram_component.enable_ecc = enable_ecc,
      altsyncram_component.use_byteena = USE_BYTEENA,
      altsyncram_component.do_not_connect_addressstall = !ENABLED,
      altsyncram_component.do_not_connect_read_enable = do_not_connect_read_enable;
      
      /*
         When enables are used (ie. ENABLED==1), the only part of this module that can't be disabled (ie. stalled/frozen) is the syncram, whose internal latency is 2.
         acl_mem_staging_reg is a 2-deep buffer that is used to catch the 2 readdata words that are in-flight in the syncram when
         this module is disabled. It has capacity-2, latency 0.
      */
generate
      if (ENABLED) begin
          acl_mem_staging_reg #(
             .WIDTH       (WIDTH),
             .LOW_LATENCY (LOW_LATENCY)
          ) data_a_acl_mem_staging_reg (
             .clk (clk),
             .resetn (resetn),
             .enable (port1_enable),
             .rdata_in (port1_readdata_new),
             .rdata_out(port1_readdata_staging_reg_output)
          );

          acl_mem_staging_reg #(
             .WIDTH(WIDTH),
             .LOW_LATENCY (LOW_LATENCY)
          ) data_b_acl_mem_staging_reg (
             .clk (clk),
             .resetn (resetn),
             .enable (port2_enable),
             .rdata_in (port2_readdata_new),
             .rdata_out(port2_readdata_staging_reg_output)
          );
      end else begin    // If not using the avs_port_enable inputs, pass the read data through to the output.
          assign port1_readdata_staging_reg_output = port1_readdata_new;
          assign port2_readdata_staging_reg_output = port2_readdata_new;
      end
endgenerate

      // Implement the output pipeline for the read data (after the staging-reg) and feed it to the output
generate
      if (READ_DATA_OUTPUT_PIPE_DEPTH < 1) begin // No output pipe, pass the data straight through
         assign port1_readdata = port1_readdata_staging_reg_output;
         assign port2_readdata = port2_readdata_staging_reg_output;
      end else begin
         always @(posedge clk) begin
            if (port1_enable) begin
               port1_readdata_output_pipe[1] <= port1_readdata_staging_reg_output;
               for (int i=2;i<=READ_DATA_OUTPUT_PIPE_DEPTH;i++) begin
                  port1_readdata_output_pipe[i] <= port1_readdata_output_pipe[i-1];
               end
            end
            
            if (port2_enable) begin
               port2_readdata_output_pipe[1] <= port2_readdata_staging_reg_output;
               for (int i=2;i<=READ_DATA_OUTPUT_PIPE_DEPTH;i++) begin
                  port2_readdata_output_pipe[i] <= port2_readdata_output_pipe[i-1];
               end
            end
         end
         // Grab the pipe outputs
         assign port1_readdata = port1_readdata_output_pipe[READ_DATA_OUTPUT_PIPE_DEPTH];
         assign port2_readdata = port2_readdata_output_pipe[READ_DATA_OUTPUT_PIPE_DEPTH];
      end
endgenerate

      // Assign the final readdata output from this block
      assign avs_port1_readdata = port1_readdata;
      assign avs_port2_readdata = port2_readdata;      

endmodule


/*********************************************************************************
 * Support components
 *********************************************************************************/

// If this shift register is used on the datapath, consider not resetting it (ie. tying resetn to 1'b1) for performance.
module _acl_mem1x_shiftreg(D, clock, resetn, enable, Q);
   parameter WIDTH = 32;
   parameter DEPTH = 1;
   parameter ASYNC_RESET = 1;        // 1 = Registers that are reset asynchronously consume resetn. 0 = registers that are reset synchronously consume a synchronized and pipelined version of resetn.
   parameter SYNCHRONIZE_RESET = 0;  // 1 = resetn is synchronized before consumption. The consumption itself is either asynchronous or synchronous, as specified by ASYNC_RESET.
   input logic [WIDTH-1:0] D;
   input logic clock, resetn, enable;
   output logic [WIDTH-1:0] Q;
  
   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 3;
   logic                         aclrn;
   logic [NUM_RESET_COPIES-1:0]  sclrn;

  acl_reset_handler
  #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
      .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES) 
  )
  acl_reset_handler_inst
  (
      .clk                    (clock),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_resetn_synchronized  (),
      .o_sclrn                (sclrn)
  );


   reg [DEPTH-1:0][WIDTH-1:0] local_ffs;

    always @(posedge clock or negedge aclrn) begin
      if (!aclrn) begin
        local_ffs <= '0;
      end else begin
        if (enable) begin
          if (DEPTH > 1)
            local_ffs <= {local_ffs[DEPTH-2:0], D};
          else
            local_ffs <= D;
        end

        if (!sclrn[0]) begin
           local_ffs <= '0;
        end
      end    
    end
    
   assign Q = local_ffs[DEPTH-1];
endmodule

// vim:set filetype=verilog:
`default_nettype wire
