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


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  Objective:
//  Cause a compile error if a module is instantiated with illegal parameter values. This must work in both simulation and Quartus.
//
//  Caveats:
//  This requires the use of the SystemVerilog 2009 elaboration task $fatal(), which is supported in Quartus pro. Quartus standard only
//  supports SystemVerilog 2005, so we hide the check from synthesis by using the translate off/on feature. We are not aware of any method
//  using only SV 2005 syntax to cause an elaboration error due to illegal parameter values. The ALTERA_RESERVED_QHD macro is only defined
//  in Quartus pro.
//
//  Support:
//  - Quartus pro: supported
//  - Quartus standard: no support (parameters are not checked for legal values)
//  - Modelsim: supported, $fatal() is treated as a system task not an elaboration task, but the effect is the same
//  - VCS: supported, same comment as modelsim
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

`ifndef ACL_PARAMETER_ASSERT_SVH
`define ACL_PARAMETER_ASSERT_SVH

`define ACL_PARAMETER_ASSERT(COND)\
`ifndef ALTERA_RESERVED_QHD\
/* synthesis translate_off */\
`endif\
if (!(COND)) $fatal(1, "%s:%0d illegal parameterization, expecting %s", `__FILE__, `__LINE__, `"COND`");\
`ifndef ALTERA_RESERVED_QHD\
/* synthesis translate_on */\
`endif

`endif

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  Usage:
//  `include "acl_parameter_assert.svh"
//  `ACL_PARAMETER_ASSERT(your_condition)
//  
//  Notes:
//  - your_condition should check for a legal parameterization
//  - no semicolon at the end
//  - if not already inside of a generate block, then add generate before and endgenerate after (beware nested generate is not allowed)
//  - no strings allowed in your_condition, if you want to check strings parameters assign it to a localparam first, see example below
//  
//  Examples:
//  generate
//  `ACL_PARAMETER_ASSERT(MY_PARAMETER > 100)
//  `ACL_PARAMETER_ASSERT(SMALL_PARAM < LARGE_PARAM)
//  localparam bit STRING_PARAM_IS_LEGAL = STRING_PARAM == "some_value" || STRING_PARAM == "other_value"
//  `ACL_PARAMETER_ASSERT(STRING_PARAM_IS_LEGAL)
//  endgenerate
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
