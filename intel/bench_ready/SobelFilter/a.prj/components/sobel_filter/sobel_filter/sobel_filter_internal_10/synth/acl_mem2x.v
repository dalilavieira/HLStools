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


// NOTE: We don't properly handle the interaction of loads and stores on
// different 2x cycles but the same 1x cycle.  As such to ensure the proper
// read during write behaviour you must follow these constraints:
// In "NEW_DATA" mode stores should be to ports 2 and 4.
// In "OLD_DATA" mode stores should be to ports 1 and 3.
// Currently this is enforced in PortAssignments.cpp

`default_nettype none

module acl_mem2x
#(
  parameter DEPTH_WORDS=1,
  parameter WIDTH=32,
  parameter RDW_MODE="DONT_CARE",
  parameter RAM_OPERATION_MODE = "BIDIR_DUAL_PORT",     // altsyncram's OPERATION_MODE parameter
  parameter RAM_BLOCK_TYPE = "AUTO",                    // altsyncram's RAM_BLOCK_TYPE parameter
  parameter INTENDED_DEVICE_FAMILY = "Stratix IV",      // altsyncram's INTENDED_DEVICE_FAMILY parameter
  parameter ENABLED = 0, //use enable inputs
  //MAXIMUM_DEPTH gets passed straight to the altsyncram maximum_depth parameter which controls the maximum physical depth of the M20K being instantiated. This helps override the quartus heuristic that decides whether to width-stich or depth-stich M20Ks to create a large memory. The default value is 0 which puts no restriction on the M20K depth.
  parameter MAXIMUM_DEPTH = 0,
  parameter MIF_FILE = "UNUSED",
  parameter ASYNC_RESET=1,                              // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
  parameter SYNCHRONIZE_RESET=0,                        // set to '1' to pass the incoming reset signal through a synchronizer before use. Note that resets to registers on the 2x clock are always synchronized,
                                                        // as they require a false-path to meet timing   
  parameter enable_ecc = "FALSE",                       // Enable error correction coding
  parameter USE_BYTEENA=0,
  parameter do_not_connect_read_enable = 1              // Indicates to wrapper to not connect rden_a and rden_b signals when they aren't being used
)
(
    input wire clk,
    input wire clk2x,
    input wire resetn,
    input wire avs_port1_enable,
    input wire avs_port2_enable,
    input wire avs_port3_enable,
    input wire avs_port4_enable,
    input wire [WIDTH-1:0] avs_port1_writedata,
    input wire [WIDTH-1:0] avs_port2_writedata,
    input wire [WIDTH-1:0] avs_port3_writedata,
    input wire [WIDTH-1:0] avs_port4_writedata,
    input wire [WIDTH/8-1:0] avs_port1_byteenable,
    input wire [WIDTH/8-1:0] avs_port2_byteenable,
    input wire [WIDTH/8-1:0] avs_port3_byteenable,
    input wire [WIDTH/8-1:0] avs_port4_byteenable,
    input wire [$clog2(DEPTH_WORDS)-1:0] avs_port1_address,
    input wire [$clog2(DEPTH_WORDS)-1:0] avs_port2_address,
    input wire [$clog2(DEPTH_WORDS)-1:0] avs_port3_address,
    input wire [$clog2(DEPTH_WORDS)-1:0] avs_port4_address,
    input wire avs_port1_read,
    input wire avs_port2_read,
    input wire avs_port3_read,
    input wire avs_port4_read,
    input wire avs_port1_write,
    input wire avs_port2_write,
    input wire avs_port3_write,
    input wire avs_port4_write,
    output reg [WIDTH-1:0] avs_port1_readdata,
    output reg [WIDTH-1:0] avs_port2_readdata,
    output reg [WIDTH-1:0] avs_port3_readdata,
    output reg [WIDTH-1:0] avs_port4_readdata,
    output wire avs_port1_readdatavalid,
    output wire avs_port2_readdatavalid,
    output wire avs_port3_readdatavalid,
    output wire avs_port4_readdatavalid,
    output wire avs_port1_waitrequest,
    output wire avs_port2_waitrequest,
    output wire avs_port3_waitrequest,
    output wire avs_port4_waitrequest,
    output logic  [1:0] ecc_err_status // ecc status signals
    );

  localparam LOG2DEPTH = $clog2( DEPTH_WORDS );
  localparam RAM_RDW_MODE = (RDW_MODE == "OLD_DATA") ? "OLD_DATA" : "DONT_CARE";

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
      .clk                    (clk),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );
   logic                         aclrn_clk2x;
   logic [NUM_RESET_COPIES-1:0]  sclrn_clk2x;
   logic                         resetn_synchronized_clk2x;
   acl_reset_handler #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (1),
      .SYNCHRONIZE_ACLRN      (1),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES)
   ) acl_reset_handler_clk2x_inst (
      .clk                    (clk2x),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn_clk2x),
      .o_sclrn                (sclrn_clk2x),
      .o_resetn_synchronized  (resetn_synchronized_clk2x)
   );
  
  
  assign avs_port1_waitrequest=1'b0;
  assign avs_port2_waitrequest=1'b0;
  assign avs_port3_waitrequest=1'b0;
  assign avs_port4_waitrequest=1'b0;

  wire port1_enable;
  wire port2_enable;
  wire port3_enable;
  wire port4_enable;

  logic stall_port_a;
  logic stall_port_b;

generate
if (ENABLED) begin
    assign port1_enable = avs_port1_enable;
    assign port2_enable = avs_port2_enable;
    assign port3_enable = avs_port3_enable;
    assign port4_enable = avs_port4_enable;
end else begin
    assign port1_enable = 1'b1;
    assign port2_enable = 1'b1;
    assign port3_enable = 1'b1;
    assign port4_enable = 1'b1;
end
endgenerate


  wire [WIDTH-1:0] data_out_a_mem;
  wire [WIDTH-1:0] data_out_b_mem;
  wire [WIDTH-1:0] data_out_a_unreg;
  wire [WIDTH-1:0] data_out_b_unreg;
  reg  [WIDTH-1:0] data_out_a_reg;
  reg  [WIDTH-1:0] data_out_b_reg;
  reg  [WIDTH-1:0] data_out_a_reg2;
  reg  [WIDTH-1:0] data_out_b_reg2;

  _acl_mem2x_shiftreg readatavalid_1(.D(avs_port1_read), .clock(clk), .resetn(resetn_synchronized), .enable(port1_enable), .Q(avs_port1_readdatavalid));
    defparam readatavalid_1.WIDTH = 1;
    defparam readatavalid_1.DEPTH = 4;
    defparam readatavalid_1.ASYNC_RESET = ASYNC_RESET;

  _acl_mem2x_shiftreg readatavalid_2(.D(avs_port2_read), .clock(clk), .resetn(resetn_synchronized), .enable(port2_enable), .Q(avs_port2_readdatavalid));
    defparam readatavalid_2.WIDTH = 1;
    defparam readatavalid_2.DEPTH = 4;
    defparam readatavalid_2.ASYNC_RESET = ASYNC_RESET;

  _acl_mem2x_shiftreg readatavalid_3(.D(avs_port3_read), .clock(clk), .resetn(resetn_synchronized), .enable(port3_enable), .Q(avs_port3_readdatavalid));
    defparam readatavalid_3.WIDTH = 1;
    defparam readatavalid_3.DEPTH = 4;
    defparam readatavalid_3.ASYNC_RESET = ASYNC_RESET;

  _acl_mem2x_shiftreg readatavalid_4(.D(avs_port4_read), .clock(clk), .resetn(resetn_synchronized), .enable(port4_enable), .Q(avs_port4_readdatavalid));
    defparam readatavalid_4.WIDTH = 1;
    defparam readatavalid_4.DEPTH = 4;
    defparam readatavalid_4.ASYNC_RESET = ASYNC_RESET;


assign stall_port_a = ENABLED && (~port1_enable & ~port2_enable); //ports 1 and 2 must share the same enable source
assign stall_port_b = ENABLED && (~port3_enable & ~port4_enable); //ports 3 and 4 must share the same enable source

genvar b;
   

      reg [LOG2DEPTH-1:0] addr_1_reg2x;
      reg [LOG2DEPTH-1:0] addr_2_reg2x;
      reg write_1_reg2x;
      reg write_2_reg2x;
      
      reg [LOG2DEPTH-1:0] addr_1_reg;
      reg [LOG2DEPTH-1:0] addr_2_reg;
      reg [LOG2DEPTH-1:0] addr_3_reg;
      reg [LOG2DEPTH-1:0] addr_4_reg;
      reg write_1_reg, write_2_reg;
      reg write_3_reg, write_4_reg;

      reg [WIDTH-1:0] data_1_reg2x;
      reg [WIDTH-1:0] data_2_reg2x;
      reg [WIDTH/8-1:0] byteen_1_reg2x;
      reg [WIDTH/8-1:0] byteen_2_reg2x;

      reg [WIDTH-1:0] data_1_reg;
      reg [WIDTH-1:0] data_2_reg;
      reg [WIDTH-1:0] data_3_reg;
      reg [WIDTH-1:0] data_4_reg;
      reg [WIDTH/8-1:0] byteen_1_reg;
      reg [WIDTH/8-1:0] byteen_2_reg;
      reg [WIDTH/8-1:0] byteen_3_reg;
      reg [WIDTH/8-1:0] byteen_4_reg;

      // Bypass signals (all in 2x domain)
      wire [WIDTH-1:0]  port1_bypass;
      wire [WIDTH-1:0]  port2_bypass;
      wire                 port1_bypass_valid_lookahead;
      wire                 port2_bypass_valid_lookahead;
      wire                 port1_bypass_valid;
      wire                 port2_bypass_valid;
      wire [WIDTH-1:0]  port1_readdata_new;
      wire [WIDTH-1:0]  port2_readdata_new;
      wire [WIDTH/8-1:0] port1_byteenable_late;
      wire [WIDTH/8-1:0] port2_byteenable_late; 

      reg clk_1x_toggle;            // toggles on every rising edge of clk
      reg clk_1x_toggle_clk2x;      // clk_1x_toggle clocked onto the clk2x clock
      reg clk_1x_toggle_clk2x_dly;  // clk_1x_toggle_clk2x delyaed by one clk2x clock cycle
      reg sel2x /* sytnthesis maxfan=32 */;      // sel2x = ~clk, output synchronous with clk2x

      always @(posedge clk or negedge aclrn) begin
         if (~aclrn) begin                      // reset only necessary for simulation, in real HW phase of this signal is not relevant
            clk_1x_toggle <= 1'b0;
         end else begin
            clk_1x_toggle <= ~clk_1x_toggle;    // toggle on every cycle of clk
            if (~sclrn[0]) clk_1x_toggle <= 1'b0;
         end
      end
      
      always @(posedge clk2x) begin
         clk_1x_toggle_clk2x <= clk_1x_toggle;                    // bring clk_1x_toggle into the clk2x clock domain
         clk_1x_toggle_clk2x_dly <= clk_1x_toggle_clk2x;          // delay by one clk2x clock cycle
         if (clk_1x_toggle_clk2x == clk_1x_toggle_clk2x_dly ) begin
            sel2x <= 1'b1;
         end else begin
            sel2x <= 1'b0;
         end
      end

      always@(posedge clk2x or negedge aclrn_clk2x)
      begin
       if (~aclrn_clk2x) begin
          addr_1_reg2x <= 'x;
          addr_2_reg2x <= 'x;
          write_1_reg2x <= 1'b0;
          write_2_reg2x <= 1'b0;
       end else begin
          if(!ENABLED | (port1_enable | port2_enable)) begin
             addr_1_reg2x <= (!sel2x) ? addr_2_reg : addr_1_reg;
             write_1_reg2x <= (!sel2x) ? write_2_reg : write_1_reg;
          end

          if(!ENABLED | (port3_enable | port4_enable)) begin
             addr_2_reg2x <= (!sel2x) ? addr_4_reg : addr_3_reg;
             write_2_reg2x <= (!sel2x) ? write_4_reg : write_3_reg;
          end
          
          if (~sclrn_clk2x[0]) begin
            write_1_reg2x <= 1'b0;
            write_2_reg2x <= 1'b0;
          end
            
       end
      end

      always@(posedge clk or negedge aclrn)
      begin
       if (~aclrn) begin
          addr_1_reg <= 'x;
          addr_2_reg <= 'x;
          addr_3_reg <= 'x;
          addr_4_reg <= 'x;
          write_1_reg <= 1'b0;
          write_2_reg <= 1'b0;
          write_3_reg <= 1'b0;
          write_4_reg <= 1'b0;
       end else begin
          if(!ENABLED | port1_enable) begin
             addr_1_reg <= avs_port1_address;
             write_1_reg <= avs_port1_write;
          end

          if(!ENABLED | port2_enable) begin
             addr_2_reg <= avs_port2_address;
             write_2_reg <= avs_port2_write;
          end

          if(!ENABLED | port3_enable) begin
             addr_3_reg <= avs_port3_address;
             write_3_reg <= avs_port3_write;
          end

          if(!ENABLED | port4_enable) begin
             addr_4_reg <= avs_port4_address;
             write_4_reg <= avs_port4_write;
          end
          
          if (~sclrn[0]) begin
            write_1_reg <= 1'b0;
            write_2_reg <= 1'b0;
            write_3_reg <= 1'b0;
            write_4_reg <= 1'b0;
          end
       end
      end


      //Register before double pumping
      always@(posedge clk)
      begin
        if(!ENABLED | port1_enable) begin
           data_1_reg <= avs_port1_writedata;
           byteen_1_reg <= avs_port1_byteenable;
        end

        if(!ENABLED | port2_enable) begin
           data_2_reg <= avs_port2_writedata;
           byteen_2_reg <= avs_port2_byteenable;
        end

        if(!ENABLED | port3_enable) begin
           data_3_reg <= avs_port3_writedata;
           byteen_3_reg <= avs_port3_byteenable;
        end

        if(!ENABLED | port4_enable) begin
           data_4_reg <= avs_port4_writedata;
           byteen_4_reg <= avs_port4_byteenable;
        end
      end

      // Consider making only one port r/w and the rest read only
      always@(posedge clk2x)
      begin
        if(!ENABLED | (port1_enable | port2_enable)) begin
           data_1_reg2x <= (!sel2x) ? data_2_reg : data_1_reg;
           byteen_1_reg2x <= (!sel2x) ? byteen_2_reg : byteen_1_reg;
        end

        if(!ENABLED | (port3_enable | port4_enable)) begin
           data_2_reg2x <= (!sel2x) ? data_4_reg : data_3_reg;
           byteen_2_reg2x <= (!sel2x) ? byteen_4_reg : byteen_3_reg;
        end
      end

generate
      if (RDW_MODE == "NEW_DATA")
      begin
       // Implement a bypass to emulate READ_DURING_WRITE_MODE == "NEW_DATA" for
       // alsyncram in Stratix 10, which only supports "DONT_CARE"
       // This is not used for any families older than Stratix 10 as they all
       // support OLD_DATA and we only need one or the other to break mem deps
         _acl_mem2x_shiftreg bypass_1(.D(data_2_reg2x), .clock(clk2x), .resetn(1'b1), .enable(port1_enable | port2_enable), .Q(port1_bypass));
         defparam bypass_1.WIDTH = WIDTH;
         defparam bypass_1.DEPTH = 2;
         defparam bypass_1.ASYNC_RESET = ASYNC_RESET;
         _acl_mem2x_shiftreg bypass_2(.D(data_1_reg2x), .clock(clk2x), .resetn(1'b1), .enable(port3_enable | port4_enable), .Q(port2_bypass));
         defparam bypass_2.WIDTH = WIDTH;
         defparam bypass_2.DEPTH = 2;
         defparam bypass_2.ASYNC_RESET = ASYNC_RESET;

         assign port1_bypass_valid_lookahead = (addr_1_reg2x == addr_2_reg2x) & write_2_reg2x & (port3_enable | port4_enable);
         assign port2_bypass_valid_lookahead = (addr_1_reg2x == addr_2_reg2x) & write_1_reg2x & (port1_enable | port2_enable);
         _acl_mem2x_shiftreg bypass_valid_1(.D(port1_bypass_valid_lookahead), .clock(clk2x), .resetn(resetn_synchronized_clk2x), .enable(port1_enable | port2_enable), .Q(port1_bypass_valid));
         defparam bypass_valid_1.WIDTH = 1;
         defparam bypass_valid_1.DEPTH = 2;
         defparam bypass_valid_1.ASYNC_RESET = ASYNC_RESET;
         _acl_mem2x_shiftreg bypass_valid_2(.D(port2_bypass_valid_lookahead), .clock(clk2x), .resetn(resetn_synchronized_clk2x), .enable(port3_enable | port4_enable), .Q(port2_bypass_valid));
         defparam bypass_valid_2.WIDTH = 1;
         defparam bypass_valid_2.DEPTH = 2;
         defparam bypass_valid_2.ASYNC_RESET = ASYNC_RESET;

         _acl_mem2x_shiftreg byteenable_1(.D(byteen_1_reg2x), .clock(clk2x), .resetn(1'b1), .enable(port3_enable | port4_enable), .Q(port1_byteenable_late));
         defparam byteenable_1.WIDTH = WIDTH/8;
         defparam byteenable_1.DEPTH = 2;
         defparam byteenable_1.ASYNC_RESET = ASYNC_RESET;
         _acl_mem2x_shiftreg byteenable_2(.D(byteen_2_reg2x), .clock(clk2x), .resetn(1'b1), .enable(port1_enable | port2_enable), .Q(port2_byteenable_late));
         defparam byteenable_2.WIDTH = WIDTH/8;
         defparam byteenable_2.DEPTH = 2;
         defparam byteenable_2.ASYNC_RESET = ASYNC_RESET;

         // Using byte enable, compose the return value from the value read
         // from memory and the bypass value
         for(b=0; b<WIDTH/8; b++)
         begin : byte_b
            assign port1_readdata_new[b*8+:8] = (port1_bypass_valid & port2_byteenable_late[b]) ? port1_bypass[b*8+:8] : data_out_a_mem[b*8+:8];
            assign port2_readdata_new[b*8+:8] = (port2_bypass_valid & port1_byteenable_late[b]) ? port2_bypass[b*8+:8] : data_out_b_mem[b*8+:8];
         end
      end
      else
      begin
         assign port1_readdata_new = data_out_a_mem;
         assign port2_readdata_new = data_out_b_mem;
      end
endgenerate

   acl_altera_syncram_wrapped altsyncram_component (
    .clock0 (clk2x),
    .wren_a (write_1_reg2x && !stall_port_a),
    .wren_b (write_2_reg2x && !stall_port_b),
    .address_a (addr_1_reg2x),
    .address_b (addr_2_reg2x),
    .data_a (data_1_reg2x),
    .data_b (data_2_reg2x),
    .q_a (data_out_a_mem),
    .q_b (data_out_b_mem),
    .aclr0 (~aclrn),
    .aclr1 (1'b0),
    .sclr (~sclrn_clk2x[0]),
    .addressstall_a (stall_port_a), 
    .addressstall_b (stall_port_b), 
    .byteena_a (byteen_1_reg2x),
    .byteena_b (byteen_2_reg2x),
    .clock1 (1'b1),
    .clocken0 (1'b1),
    .clocken1 (1'b1),
    .rden_a (1'b1),
    .rden_b (1'b1),
    // TODO: All the ecc logic will be operating on the 2x clock. Okay for now, but later for qor we will probably want 4 encoders/decoders on the 1x clock.
    .ecc_err_status(ecc_err_status))
    ;
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
    altsyncram_component.outdata_reg_a = "CLOCK0",
    altsyncram_component.outdata_reg_b = "CLOCK0",
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
    
generate
      if (ENABLED) begin
         // catch read output data if disabled
         acl_mem_staging_reg #(
          .WIDTH(WIDTH),
          .ASYNC_RESET(ASYNC_RESET),
          .SYNCHRONIZE_RESET(0)
         ) data_a_acl_mem_staging_reg (
          .clk (clk2x),
          .resetn (resetn_synchronized_clk2x),
          .enable (port1_enable | port2_enable),
          .rdata_in (port1_readdata_new),
          .rdata_out(data_out_a_unreg)
         );

         acl_mem_staging_reg #(
          .WIDTH(WIDTH),
          .ASYNC_RESET(ASYNC_RESET),
          .SYNCHRONIZE_RESET(0)
         ) data_b_acl_mem_staging_reg (
          .clk (clk2x),
          .resetn (resetn_synchronized_clk2x),
          .enable (port3_enable | port4_enable),
          .rdata_in (port2_readdata_new),
          .rdata_out(data_out_b_unreg)
         );
      end else begin
         assign data_out_a_unreg = port1_readdata_new;
         assign data_out_b_unreg = port2_readdata_new;
      end
endgenerate


  always@(posedge clk2x)
  begin
    if (!ENABLED | (port1_enable | port2_enable)) begin
       data_out_a_reg<=data_out_a_unreg;
       data_out_a_reg2<=data_out_a_reg;
    end

    if (!ENABLED | (port3_enable | port4_enable)) begin
       data_out_b_reg<=data_out_b_unreg;
       data_out_b_reg2<=data_out_b_reg;
    end
  end

  always@(posedge clk)
  begin
    if (!ENABLED | port1_enable) begin
       avs_port1_readdata <= data_out_a_reg;
    end
    if (!ENABLED | port2_enable) begin
       avs_port2_readdata <= data_out_a_reg2;
    end
    if (!ENABLED | port3_enable) begin
       avs_port3_readdata <= data_out_b_reg;
    end
    if (!ENABLED | port4_enable) begin
       avs_port4_readdata <= data_out_b_reg2;
    end
  end

endmodule


/*********************************************************************************
 * Support components
 *********************************************************************************/

module _acl_mem2x_shiftreg(D, clock, resetn, enable, Q);
  parameter WIDTH = 32;
  parameter DEPTH = 1;
  parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
  parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use
  input wire [WIDTH-1:0] D;
  input wire clock, resetn, enable;
  output wire [WIDTH-1:0] Q;
  
  reg [DEPTH-1:0][WIDTH-1:0] local_ffs /* synthesis dont_merge */;

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
  
  
  always @(posedge clock or negedge aclrn) begin
    if (~aclrn) begin
      local_ffs <= '0;
    end else begin
      if (enable) local_ffs <= {local_ffs[DEPTH-2:0], D};
      if (~sclrn[0]) local_ffs <= '0;
    end
  end
  assign Q = local_ffs[DEPTH-1];
endmodule

`default_nettype wire
