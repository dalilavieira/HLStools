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


// baeckler - 2-13-2006
// compute sum of 36 bit lines
//
// uses nine 6:3 compressors = 27 six-luts
// plus a 5 bit carry propagate output adder (one bit falls through)

`default_nettype none

module acl_popcount #(
   parameter   PIPELINE_DEPTH = 0,        // number of pipeline registers to insert for improved FMAX
   parameter   DATA_WIDTH = 32
) (
   input wire                       clock,         // only used if PIPELINE_DEPTH > 0
   input wire     [DATA_WIDTH-1:0]  data,
   output logic   [31:0]            sum
);


   localparam NUM_THIRTYSIX_BIT_ADDERS = ((DATA_WIDTH-1) / 36) +1;
   localparam PADDED_WIDTH = NUM_THIRTYSIX_BIT_ADDERS*36;

   logic [PADDED_WIDTH-1:0]                        data_padded;            // pad the input data with 0's in the msbs out to an even multiple of 36 bits
   logic [NUM_THIRTYSIX_BIT_ADDERS-1:0][5:0][2:0]  six_bit_popcount;       // popcount from 6 bit slices of data_padded
   logic [NUM_THIRTYSIX_BIT_ADDERS-1:0][2:0][2:0]  count_per_bit;          // popcount of bits 0, 1, and 2 from each of the above six_bit_popcount values
   logic [NUM_THIRTYSIX_BIT_ADDERS-1:0][7:0]       thirtysix_bit_sum_comb; // popcount for each 36 bit slice (combinatorial)
   logic [NUM_THIRTYSIX_BIT_ADDERS-1:0][7:0]       thirtysix_bit_sum;      // popcount for each 36 bit slice (registered if PIPELINE_DEPTH > 0)
   logic [31:0]                                    sum_comb;               // combinatorial sum of all thirtysix_bit_sum values

   assign data_padded = {{(PADDED_WIDTH-DATA_WIDTH){1'b0}},data};

   genvar i,j,k;
   generate begin   :gen_thirtysix_bit_popcounts
      for (i=0; i<NUM_THIRTYSIX_BIT_ADDERS; i++) begin
      
         for (j=0; j<6; j++) begin
            six_three_comp six_bit_popcount_inst (.data(data_padded[(i*36)+(j*6) +: 6]),.sum(six_bit_popcount[i][j]));
         end
         
         for (k=0; k<3; k++) begin
            six_three_comp count_per_bit_inst (
               .data({six_bit_popcount[i][0][k],six_bit_popcount[i][1][k],six_bit_popcount[i][2][k],six_bit_popcount[i][3][k],six_bit_popcount[i][4][k],six_bit_popcount[i][5][k]}), 
               .sum(count_per_bit[i][k])
            );
         end
         
         ternary_add #(
            .WIDTH(6)
         ) t (
            .a({3'b0,count_per_bit[i][0]}),
            .b({2'b0,count_per_bit[i][1],1'b0}),
            .c({1'b0,count_per_bit[i][2],2'b0}),
            .o(thirtysix_bit_sum_comb[i])
         );
         
         if (PIPELINE_DEPTH > 0) begin       // first pipeline stage goes at output of each 36-bit popcount
            always_ff @(posedge clock) begin
               thirtysix_bit_sum[i] <= thirtysix_bit_sum_comb[i];
            end
         end else begin
            assign thirtysix_bit_sum[i] = thirtysix_bit_sum_comb[i];
         end
         
      end
   end
   endgenerate
   
   always_comb begin
      sum_comb = 32'b0;
      for (int i=0; i<NUM_THIRTYSIX_BIT_ADDERS; i++) begin
         sum_comb += {26'b0,thirtysix_bit_sum[i][5:0]};
      end
   end
      
   generate begin      :gen_pipeline_stages
      if (PIPELINE_DEPTH > 1) begin    // insert pipeline stages to improve FMAX, first pipeline stage (if it exists) is instantiated above
      
         logic [31:0] sum_pipe [2:PIPELINE_DEPTH];
         
         always_ff @(posedge clock) begin
            sum_pipe[2] <= sum_comb;
            for( int i=3; i<=PIPELINE_DEPTH; i++ ) begin
               sum_pipe[i] <= sum_pipe[i-1];
            end
         end
         
         assign sum = sum_pipe[PIPELINE_DEPTH];
      
      end else begin                   // no pipeline stages, just connect sum_comb directly to output

         assign sum = sum_comb;
         
      end
   end   
   endgenerate

endmodule

`default_nettype wire
