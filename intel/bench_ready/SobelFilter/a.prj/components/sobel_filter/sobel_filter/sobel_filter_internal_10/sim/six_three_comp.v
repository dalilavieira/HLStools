// Copyright 2007 Altera Corporation. All rights reserved.  
// Altera products are protected under numerous U.S. and foreign patents, 
// maskwork rights, copyrights and other intellectual property laws.  
//
// This reference design file, and your use thereof, is subject to and governed
// by the terms and conditions of the applicable Altera Reference Design 
// License Agreement (either as signed by you or found at www.altera.com).  By
// using this reference design file, you indicate your acceptance of such terms
// and conditions between you and Altera Corporation.  In the event that you do
// not agree with such terms and conditions, you may not use the reference 
// design file and please promptly destroy any copies you have made.
//
// This reference design file is being provided on an "as-is" basis and as an 
// accommodation and therefore all warranties, representations or guarantees of 
// any kind (whether express, implied or statutory) including, without 
// limitation, warranties of merchantability, non-infringement, or fitness for
// a particular purpose, are specifically disclaimed.  By making this reference
// design file available, Altera expressly does not recommend, suggest or 
// require that this reference design file be used in combination with any 
// other product not provided by Altera.
/////////////////////////////////////////////////////////////////////////////

// baeckler - 05-13-2005
//
//   Six input three output compressor (non-carry adder)
//
//	 Maps to 3 Stratix II six luts.  Use optimize = speed
//

module six_three_comp (data,sum);

input [5:0] data;
output [2:0] sum;

reg [2:0] sum;

always @(data) begin
    case (data)
      0:  sum=3'd0;
      1:  sum=3'd1;
      2:  sum=3'd1;
      3:  sum=3'd2;
      4:  sum=3'd1;
      5:  sum=3'd2;
      6:  sum=3'd2;
      7:  sum=3'd3;
      8:  sum=3'd1;
      9:  sum=3'd2;
      10: sum=3'd2;
      11: sum=3'd3;
      12: sum=3'd2;
      13: sum=3'd3;
      14: sum=3'd3;
      15: sum=3'd4;
      16: sum=3'd1;
      17: sum=3'd2;
      18: sum=3'd2;
      19: sum=3'd3;
      20: sum=3'd2;
      21: sum=3'd3;
      22: sum=3'd3;
      23: sum=3'd4;
      24: sum=3'd2;
      25: sum=3'd3;
      26: sum=3'd3;
      27: sum=3'd4;
      28: sum=3'd3;
      29: sum=3'd4;
      30: sum=3'd4;
      31: sum=3'd5;
      32: sum=3'd1;
      33: sum=3'd2;
      34: sum=3'd2;
      35: sum=3'd3;
      36: sum=3'd2;
      37: sum=3'd3;
      38: sum=3'd3;
      39: sum=3'd4;
      40: sum=3'd2;
      41: sum=3'd3;
      42: sum=3'd3;
      43: sum=3'd4;
      44: sum=3'd3;
      45: sum=3'd4;
      46: sum=3'd4;
      47: sum=3'd5;
      48: sum=3'd2;
      49: sum=3'd3;
      50: sum=3'd3;
      51: sum=3'd4;
      52: sum=3'd3;
      53: sum=3'd4;
      54: sum=3'd4;
      55: sum=3'd5;
      56: sum=3'd3;
      57: sum=3'd4;
      58: sum=3'd4;
      59: sum=3'd5;
      60: sum=3'd4;
      61: sum=3'd5;
      62: sum=3'd5;
      63: sum=3'd6;
      default: sum=3'd0;
    endcase
end

endmodule
