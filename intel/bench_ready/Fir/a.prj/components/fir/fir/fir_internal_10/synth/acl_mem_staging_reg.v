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

module acl_mem_staging_reg #(
  parameter WIDTH       = 32,
  parameter LOW_LATENCY =  0, //used by mem1x when the latency through the memory is only 1 cycle
  parameter ASYNC_RESET = 1,                              // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
  parameter SYNCHRONIZE_RESET = 0                         // set to '1' to pass the incoming reset signal through a synchronizer before use
)
(
    input wire clk,
    input wire resetn,
    input wire enable,
    input wire [WIDTH-1:0] rdata_in,
    output logic [WIDTH-1:0] rdata_out
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
      .clk                    (clk),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );

    generate
        if (LOW_LATENCY) begin
            reg [WIDTH-1:0] rdata_r;
            reg enable_r;

            always @(posedge clk or negedge aclrn) begin
               if (~aclrn) begin
                  enable_r <= 1'b1;
                  rdata_r <= 'x;
               end else begin
                  enable_r <= enable;

                  if (enable_r) begin
                      rdata_r <= rdata_in;
                  end
                  
                  if (~sclrn[0]) enable_r <= 1'b1;
               end
            end

            assign rdata_out = enable_r ? rdata_in : rdata_r;

        end else begin

            reg [WIDTH-1:0] rdata_r[0:1];
            reg [1:0] rdata_vld_r;
            reg enable_r;

            always @(posedge clk or negedge aclrn) begin
               if (~aclrn) begin
                  rdata_vld_r <= 2'b00;
                  enable_r <= 1'b0;
                  rdata_r[0] <= 'x;
                  rdata_r[1] <= 'x;
               end else begin
                  if (~rdata_vld_r[1] | enable) begin
                      enable_r <= enable;
                      rdata_vld_r[0] <= ~enable | (~rdata_vld_r[1] & ~enable_r & enable); //use the first staging register if disabled, or re-enabled after only one cycle
                      rdata_vld_r[1] <= rdata_vld_r[0] & (rdata_vld_r[1] | ~enable);
                      rdata_r[1] <= rdata_r[0];
                      rdata_r[0] <= rdata_in;
                  end
                  if (~sclrn[0]) begin
                     rdata_vld_r <= 2'b00;
                     enable_r <= 1'b0;
                  end
               end
            end

            always @(*) begin
                case (rdata_vld_r)
                    2'b00: rdata_out = rdata_in;
                    2'b01: rdata_out = rdata_r[0];
                    2'b10: rdata_out = rdata_r[1];
                    2'b11: rdata_out = rdata_r[1];
                    default: rdata_out = {WIDTH{1'bx}};
                endcase
            end

        end

    endgenerate

endmodule

`default_nettype wire
