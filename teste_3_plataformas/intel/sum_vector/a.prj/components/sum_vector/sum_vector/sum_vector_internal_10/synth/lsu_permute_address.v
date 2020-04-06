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



module lsu_permute_address #(
    parameter AWIDTH                  = 32,
    parameter ENABLE_BANKED_MEMORY    =  1,
    parameter NUMBER_BANKS            =  4,
    parameter BITS_IN_BYTE_SELECT     =  2,
    parameter WORD_SELECT_BITS        =  8,
    parameter MIN_BANK_BIT            =  0
  ) (
    input  [AWIDTH-1:0] i_addr,
    output [AWIDTH-1:0] o_addr
  );

  // If this is a banked local memory LSU, then permute the address bits such
  // that:
  // 1. If there is no user specified bank bits attribute, then place
  //    consecutive words in different banks. (Default Banking)
  // 2. If there exists user specified bank bits attribute, then follow the
  //    attribute.
  // Do this by shifting the bank bits to the top of the aggregate local memory
  // address width.
  // Bank select bits in original address are:
  //      addr[(BITS_IN_BYTE_SELECT+MIN_BANK_BIT) +: BANK_SELECT_BITS_HACKED]
  // Note: MIN_BANK_BIT cannot be greater than WORD_SELECT_BITS, otherwise the
  // entire memory will be put in one bank and other banks are left empty.
  // The permuted address is organized as:
  // { ( High order bits untouched ),
  //   ( Bank select bits ),
  //   ( Word address bits within a bank ),
  //   ( Byte select within a word ) }
  // Not all fields are present in all configs (some configs don't bank,
  // others don't have any depth to banks so no word select bits).

  // Note that ABITS_PER_LMEM_BANK includes bits for the within-bank word
  // select, the within-word byte select, and the pipelined workgroup select
  // bits.

  // To get a better understanding of how the address is permuted, consider the
  // following address:
  //   -------------------------
  //   |  D  |  C  |  B  |  A  |
  //   -------------------------
  // where:
  //   A are byte select bits
  //   B are non-banked word select bits
  //   C are bank select bits to be shifted
  //   D are upper bits that will be moved below C
  // Note: C and D may not have the same number of bits.
  // After the permutation, the result is:
  //   -------------------------
  //   |  C  |  D  |  B  |  A  |
  //   -------------------------

  function [AWIDTH-1:0] permute_addr ( input [AWIDTH-1:0] addr);
    if (ENABLE_BANKED_MEMORY==1)
    begin
      // Build up the permuted address segment by segment.  Simplifies working
      // around msim "reverse bit select" errors inside generate branches that
      // aren't active.
      automatic int base_bit = 0; 

      // Parameters must be defined before logic
      localparam BANK_HAS_DEPTH = WORD_SELECT_BITS > 0;
      localparam WORD_SELECT_BITS_HACKED = BANK_HAS_DEPTH ? WORD_SELECT_BITS : 1;  // System integrator adds address bit when no depth
      localparam BANK_SELECT_BITS = $clog2(NUMBER_BANKS); // Bank select bits in address permutation
      localparam BANK_SELECT_BITS_HACKED = BANK_SELECT_BITS ? BANK_SELECT_BITS : 1;  // Prevents synthesis error in VCS and NCSIM

      // 1. Start with original address. Then we modify the required bits.
      permute_addr = addr;

      // 2. Byte address within a word - Jump over A (byte select bits)
      base_bit += BITS_IN_BYTE_SELECT;

      // 3. Non-banked word address - Jump over B (non-banked word select bits)
      base_bit += MIN_BANK_BIT;

      // 4. Word address within a bank - Move D to where C was
      if (BANK_HAS_DEPTH)  begin
          if (WORD_SELECT_BITS_HACKED > MIN_BANK_BIT) begin
            permute_addr[ base_bit +: (WORD_SELECT_BITS_HACKED - MIN_BANK_BIT) ] = addr[ (BANK_SELECT_BITS + BITS_IN_BYTE_SELECT + MIN_BANK_BIT) +: (WORD_SELECT_BITS_HACKED - MIN_BANK_BIT) ];
          end
      end
      else  // Else single word memory bank
      begin
        // System integrator makes all banks have an address bit to avoid 0-width signals in the interconnect IP.
        // Here we force that address bit to zero for functional correctness.
        permute_addr[ base_bit +: (WORD_SELECT_BITS_HACKED - MIN_BANK_BIT) ] = 1'b0;
      end
      base_bit += (WORD_SELECT_BITS_HACKED - MIN_BANK_BIT);

      // 5. Hoist bank select bits if we have multiple banks - Move C to where D was
      if (BANK_SELECT_BITS>0) begin
        permute_addr[ base_bit +: BANK_SELECT_BITS_HACKED ] = addr[ (BITS_IN_BYTE_SELECT + MIN_BANK_BIT) +: BANK_SELECT_BITS_HACKED ];
      end
     end
     else  // Else don't permute the address
     begin
       permute_addr = addr;
     end
  endfunction

  assign o_addr = permute_addr(i_addr);

endmodule

// vim:set filetype=verilog:
