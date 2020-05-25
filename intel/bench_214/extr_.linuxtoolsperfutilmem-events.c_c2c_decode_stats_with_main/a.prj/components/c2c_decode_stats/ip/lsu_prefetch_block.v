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



// This is almost an exact copy of the lsu_burst_master, but has special support
// for placing items into a a block ram rather than a fifo. I'd rather leave them
// as separate files rather than complicating the already existing lsu's which are
// are known to work.
//
// Helper module to handle bursting large sequential blocks of memory to or 
// from global memory.
//

/*****************************************************************************/
// Burst read master:
//   Keeps a local buffer populated with data from a sequential block of
//   global memory.  The block of global memory is specified by a base address
//   and size.
/*****************************************************************************/

`default_nettype none

module lsu_prefetch_block (
   clk,
   resetn,
   o_active, //Debugging signal

   // control inputs and outputs
   control_fixed_location,
   control_read_base,
   control_read_length,
   control_go,
        cache_line_to_write_to,
   control_done,
   control_early_done,
   
   // user logic inputs and outputs
   cache_line_to_read_from,
   user_buffer_address,
   user_buffer_data,
   user_data_available,
   read_reg_enable,
 
   // master inputs and outputs
   master_address,
   master_read,
   master_byteenable,
   master_readdata,
   master_readdatavalid,
   master_burstcount,
   master_waitrequest,
   
   ecc_err_status // ecc status signals
);
   /*************
   * Parameters *
   *************/
   parameter DATAWIDTH = 32;
   parameter MWIDTH = DATAWIDTH;
   parameter MAXBURSTCOUNT = 4;
   parameter BURSTCOUNTWIDTH = 3;
   parameter BYTEENABLEWIDTH = 4;
   parameter ADDRESSWIDTH = 32;
   parameter FIFODEPTH = 32;
   parameter FIFODEPTH_LOG2 = 5;
   parameter FIFOUSEMEMORY = 1;  // set to 0 to use LEs instead
   parameter N=8;
   parameter LOG2N=3;
   parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
   parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use
   parameter enable_ecc = "FALSE"; // Enable error correction coding
   
   /********
   * Ports *
   ********/
   input wire clk;
   input wire resetn;

   output wire o_active;

   // control inputs and outputs
   input wire control_fixed_location;
   input wire [ADDRESSWIDTH-1:0] control_read_base;
   input wire [ADDRESSWIDTH-1:0] control_read_length;
   input wire control_go;
   input wire [LOG2N-1:0] cache_line_to_write_to;
   output wire control_done;
   output wire control_early_done;  // don't use this unless you know what you are doing, it's going to fire when the last read is posted, not when the last data returns!
   
   // user logic inputs and outputs
   input wire [LOG2N-1:0] cache_line_to_read_from;
   input wire [FIFODEPTH_LOG2-1:0] user_buffer_address;
   output wire [DATAWIDTH-1:0] user_buffer_data;
   output wire user_data_available;
   input wire read_reg_enable;
   
   // master inputs and outputs
   input wire master_waitrequest;
   input wire master_readdatavalid;
   input wire [DATAWIDTH-1:0] master_readdata;
   output wire [ADDRESSWIDTH-1:0] master_address;
   output wire master_read;
   output wire [BYTEENABLEWIDTH-1:0] master_byteenable;
   output wire [BURSTCOUNTWIDTH-1:0] master_burstcount;
   output logic  [1:0] ecc_err_status; // ecc status signals
   
   /***************
   * Architecture *
   ***************/
   // internal control signals
   reg control_fixed_location_d1;
   reg [ADDRESSWIDTH-1:0] address;
   reg [ADDRESSWIDTH-1:0] length;
   wire increment_address;
   wire [BURSTCOUNTWIDTH-1:0] burst_count;
   wire [BURSTCOUNTWIDTH-1:0] first_short_burst_count;
   wire first_short_burst_enable;
   wire [BURSTCOUNTWIDTH-1:0] final_short_burst_count;
   wire final_short_burst_enable;
   wire [BURSTCOUNTWIDTH-1:0] burst_boundary_word_address;
   wire too_many_reads_pending;

   reg [FIFODEPTH_LOG2:0] w_user_buffer_address;

   // Pipelining
   reg r_avm_readdatavalid;
   reg [MWIDTH-1:0] r_avm_readdata /* synthesis dont_merge */;

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
      .clk                    (clk),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );
   
   
   // registering the control_fixed_location bit
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         control_fixed_location_d1 <= '0;
      end
      else
      begin
         if (control_go == 1)
         begin
            control_fixed_location_d1 <= control_fixed_location;
         end
         if (~sclrn[0]) control_fixed_location_d1 <= '0;
      end
   end

   // master address logic 
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         address <= '0;
      end
      else
      begin
         if(control_go == 1)
         begin
            address <= control_read_base;
         end
         else if((increment_address == 1) & (control_fixed_location_d1 == 0))
         begin
            address <= address + (burst_count * BYTEENABLEWIDTH);  // always performing word size accesses, increment by the burst count presented
         end
         if (~sclrn[0]) address <= '0;
      end
   end

   // user buffer address logic 
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         w_user_buffer_address <= '0;
      end
      else
      begin
         if(control_go == 1)
         begin
            w_user_buffer_address <= 0;
         end
         else 
         begin
            w_user_buffer_address <= w_user_buffer_address + r_avm_readdatavalid;
         end
         if (~sclrn[0]) w_user_buffer_address <= '0;
      end
   end

   // master length logic
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         length <= '0;
      end
      else
      begin
         if(control_go == 1)
         begin
            length <= control_read_length;
         end
         else if(increment_address == 1)
         begin
            length <= length - (burst_count * BYTEENABLEWIDTH);  // always performing word size accesses, decrement by the burst count presented
         end
         if (~sclrn[0]) length <= '0;
      end
   end   

   // controlled signals going to the master/control ports
   assign master_address = address;
   assign master_byteenable = -1;  // all ones, always performing word size accesses
   assign master_burstcount = burst_count;
   assign control_done = 1'b0;
   assign control_early_done = 1'b0;  

   assign master_read = (too_many_reads_pending == 0) & (length != 0);
   assign burst_boundary_word_address = ((address / BYTEENABLEWIDTH) & (MAXBURSTCOUNT - 1));
   assign first_short_burst_enable = (burst_boundary_word_address != 0);
   assign final_short_burst_enable = (length < (MAXBURSTCOUNT * BYTEENABLEWIDTH));
   
   assign first_short_burst_count = ((burst_boundary_word_address & 1'b1) == 1'b1)? 1 :  // if the burst boundary isn't a multiple of 2 then must post a burst of 1 to get to a multiple of 2 for the next burst
                             (((MAXBURSTCOUNT - burst_boundary_word_address) < (length / BYTEENABLEWIDTH))?
                             (MAXBURSTCOUNT - burst_boundary_word_address) : (length / BYTEENABLEWIDTH));
   assign final_short_burst_count = (length / BYTEENABLEWIDTH);
   
   assign burst_count = (first_short_burst_enable == 1)? first_short_burst_count :  // this will get the transfer back on a burst boundary, 
                   (final_short_burst_enable == 1)? final_short_burst_count : MAXBURSTCOUNT;
   assign increment_address = (too_many_reads_pending == 0) & (master_waitrequest == 0) & (length != 0);
   assign too_many_reads_pending = 0;

/* --- Pipeline Return Path --- */

   always@(posedge clk or negedge aclrn)
   begin
      if(~aclrn)
      begin
         r_avm_readdata <= 'x;
         r_avm_readdatavalid <= 1'b0;
      end
      else
      begin
         r_avm_readdata <= master_readdata;
         r_avm_readdatavalid <= master_readdatavalid;
         if (~sclrn[0]) r_avm_readdatavalid <= 1'b0;
      end
   end

  assign user_data_available = w_user_buffer_address[FIFODEPTH_LOG2];
  acl_altera_syncram_wrapped	altsyncram_component (
	.clock0 (clk),
	.address_a ({cache_line_to_write_to,w_user_buffer_address[FIFODEPTH_LOG2-1:0]}),
	.wren_a (r_avm_readdatavalid),
	.data_a (r_avm_readdata),
	.address_b ({cache_line_to_read_from,user_buffer_address}),
	.q_b (user_buffer_data),
	.aclr0 (~aclrn),
	.aclr1 (1'b0),
  .sclr (~sclrn[0]),
	.addressstall_a (1'b0),
	.addressstall_b (~read_reg_enable),
	.byteena_a (1'b1),
	.byteena_b (1'b1),
	.clock1 (1'b1),
	.clocken0 (1'b1),
	.clocken1 (1'b1),
	.data_b ({DATAWIDTH{1'b1}}),
	.ecc_err_status (ecc_err_status),
	.q_a (),
	.rden_a (1'b1),
	.rden_b (1'b1),
	.wren_b (1'b0));
  defparam
	altsyncram_component.address_aclr_b = "NONE",
	altsyncram_component.rdcontrol_reg_b = "CLOCK0",
	altsyncram_component.address_reg_b = "CLOCK0",
	altsyncram_component.indata_reg_b = "CLOCK0",
	altsyncram_component.byteena_reg_b = "CLOCK0",
	altsyncram_component.clock_enable_input_a = "BYPASS",
	altsyncram_component.clock_enable_input_b = "BYPASS",
	altsyncram_component.clock_enable_output_b = "BYPASS",
	// altsyncram_component.intended_device_family = "Stratix IV",
	altsyncram_component.lpm_type = "altsyncram",
	altsyncram_component.numwords_a = N*FIFODEPTH,
	altsyncram_component.numwords_b = N*FIFODEPTH,
	altsyncram_component.operation_mode = "DUAL_PORT",
	altsyncram_component.outdata_aclr_b = "NONE",
	altsyncram_component.outdata_reg_b = "UNREGISTERED",
	altsyncram_component.power_up_uninitialized = "FALSE",
	altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE",
	altsyncram_component.widthad_a = FIFODEPTH_LOG2+LOG2N,
	altsyncram_component.widthad_b = FIFODEPTH_LOG2+LOG2N,
	altsyncram_component.width_a = DATAWIDTH,
	altsyncram_component.width_b = DATAWIDTH,
	altsyncram_component.width_byteena_a = 1,
	altsyncram_component.enable_ecc = enable_ecc,
  altsyncram_component.connect_clr_to_ram = 0;

   assign o_active = |length;
endmodule

`default_nettype wire
