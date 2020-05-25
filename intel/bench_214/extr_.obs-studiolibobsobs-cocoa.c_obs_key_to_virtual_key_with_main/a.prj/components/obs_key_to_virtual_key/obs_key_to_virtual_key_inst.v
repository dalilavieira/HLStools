// Example instance of the top level module for: 
//     obs_key_to_virtual_key
// To include this component in your design, include: 
//     obs_key_to_virtual_key.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

obs_key_to_virtual_key obs_key_to_virtual_key_inst (
  // Interface: clock (clock end)
  .clock                  ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                 ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start                  ( ), // 1-bit valid input
  .busy                   ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                   ( ), // 1-bit valid output
  .stall                  ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata             ( ), // 32-bit data output
  // Interface: code (conduit sink)
  .code                   ( ), // 32-bit data input
  // Interface: INVALID_KEY (conduit sink)
  .INVALID_KEY            ( ), // 64-bit data input
  // Interface: kVK_ANSI_0 (conduit sink)
  .kVK_ANSI_0             ( ), // 64-bit data input
  // Interface: kVK_ANSI_1 (conduit sink)
  .kVK_ANSI_1             ( ), // 64-bit data input
  // Interface: kVK_ANSI_2 (conduit sink)
  .kVK_ANSI_2             ( ), // 64-bit data input
  // Interface: kVK_ANSI_3 (conduit sink)
  .kVK_ANSI_3             ( ), // 64-bit data input
  // Interface: kVK_ANSI_4 (conduit sink)
  .kVK_ANSI_4             ( ), // 64-bit data input
  // Interface: kVK_ANSI_5 (conduit sink)
  .kVK_ANSI_5             ( ), // 64-bit data input
  // Interface: kVK_ANSI_6 (conduit sink)
  .kVK_ANSI_6             ( ), // 64-bit data input
  // Interface: kVK_ANSI_7 (conduit sink)
  .kVK_ANSI_7             ( ), // 64-bit data input
  // Interface: kVK_ANSI_8 (conduit sink)
  .kVK_ANSI_8             ( ), // 64-bit data input
  // Interface: kVK_ANSI_9 (conduit sink)
  .kVK_ANSI_9             ( ), // 64-bit data input
  // Interface: kVK_ANSI_A (conduit sink)
  .kVK_ANSI_A             ( ), // 64-bit data input
  // Interface: kVK_ANSI_B (conduit sink)
  .kVK_ANSI_B             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Backslash (conduit sink)
  .kVK_ANSI_Backslash     ( ), // 64-bit data input
  // Interface: kVK_ANSI_C (conduit sink)
  .kVK_ANSI_C             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Comma (conduit sink)
  .kVK_ANSI_Comma         ( ), // 64-bit data input
  // Interface: kVK_ANSI_D (conduit sink)
  .kVK_ANSI_D             ( ), // 64-bit data input
  // Interface: kVK_ANSI_E (conduit sink)
  .kVK_ANSI_E             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Equal (conduit sink)
  .kVK_ANSI_Equal         ( ), // 64-bit data input
  // Interface: kVK_ANSI_F (conduit sink)
  .kVK_ANSI_F             ( ), // 64-bit data input
  // Interface: kVK_ANSI_G (conduit sink)
  .kVK_ANSI_G             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Grave (conduit sink)
  .kVK_ANSI_Grave         ( ), // 64-bit data input
  // Interface: kVK_ANSI_H (conduit sink)
  .kVK_ANSI_H             ( ), // 64-bit data input
  // Interface: kVK_ANSI_I (conduit sink)
  .kVK_ANSI_I             ( ), // 64-bit data input
  // Interface: kVK_ANSI_J (conduit sink)
  .kVK_ANSI_J             ( ), // 64-bit data input
  // Interface: kVK_ANSI_K (conduit sink)
  .kVK_ANSI_K             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad0 (conduit sink)
  .kVK_ANSI_Keypad0       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad1 (conduit sink)
  .kVK_ANSI_Keypad1       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad2 (conduit sink)
  .kVK_ANSI_Keypad2       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad3 (conduit sink)
  .kVK_ANSI_Keypad3       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad4 (conduit sink)
  .kVK_ANSI_Keypad4       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad5 (conduit sink)
  .kVK_ANSI_Keypad5       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad6 (conduit sink)
  .kVK_ANSI_Keypad6       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad7 (conduit sink)
  .kVK_ANSI_Keypad7       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad8 (conduit sink)
  .kVK_ANSI_Keypad8       ( ), // 64-bit data input
  // Interface: kVK_ANSI_Keypad9 (conduit sink)
  .kVK_ANSI_Keypad9       ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadClear (conduit sink)
  .kVK_ANSI_KeypadClear   ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadDecimal (conduit sink)
  .kVK_ANSI_KeypadDecimal ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadDivide (conduit sink)
  .kVK_ANSI_KeypadDivide  ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadEnter (conduit sink)
  .kVK_ANSI_KeypadEnter   ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadEquals (conduit sink)
  .kVK_ANSI_KeypadEquals  ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadMinus (conduit sink)
  .kVK_ANSI_KeypadMinus   ( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadMultiply (conduit sink)
  .kVK_ANSI_KeypadMultiply( ), // 64-bit data input
  // Interface: kVK_ANSI_KeypadPlus (conduit sink)
  .kVK_ANSI_KeypadPlus    ( ), // 64-bit data input
  // Interface: kVK_ANSI_L (conduit sink)
  .kVK_ANSI_L             ( ), // 64-bit data input
  // Interface: kVK_ANSI_LeftBracket (conduit sink)
  .kVK_ANSI_LeftBracket   ( ), // 64-bit data input
  // Interface: kVK_ANSI_M (conduit sink)
  .kVK_ANSI_M             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Minus (conduit sink)
  .kVK_ANSI_Minus         ( ), // 64-bit data input
  // Interface: kVK_ANSI_N (conduit sink)
  .kVK_ANSI_N             ( ), // 64-bit data input
  // Interface: kVK_ANSI_O (conduit sink)
  .kVK_ANSI_O             ( ), // 64-bit data input
  // Interface: kVK_ANSI_P (conduit sink)
  .kVK_ANSI_P             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Period (conduit sink)
  .kVK_ANSI_Period        ( ), // 64-bit data input
  // Interface: kVK_ANSI_Q (conduit sink)
  .kVK_ANSI_Q             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Quote (conduit sink)
  .kVK_ANSI_Quote         ( ), // 64-bit data input
  // Interface: kVK_ANSI_R (conduit sink)
  .kVK_ANSI_R             ( ), // 64-bit data input
  // Interface: kVK_ANSI_RightBracket (conduit sink)
  .kVK_ANSI_RightBracket  ( ), // 64-bit data input
  // Interface: kVK_ANSI_S (conduit sink)
  .kVK_ANSI_S             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Semicolon (conduit sink)
  .kVK_ANSI_Semicolon     ( ), // 64-bit data input
  // Interface: kVK_ANSI_Slash (conduit sink)
  .kVK_ANSI_Slash         ( ), // 64-bit data input
  // Interface: kVK_ANSI_T (conduit sink)
  .kVK_ANSI_T             ( ), // 64-bit data input
  // Interface: kVK_ANSI_U (conduit sink)
  .kVK_ANSI_U             ( ), // 64-bit data input
  // Interface: kVK_ANSI_V (conduit sink)
  .kVK_ANSI_V             ( ), // 64-bit data input
  // Interface: kVK_ANSI_W (conduit sink)
  .kVK_ANSI_W             ( ), // 64-bit data input
  // Interface: kVK_ANSI_X (conduit sink)
  .kVK_ANSI_X             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Y (conduit sink)
  .kVK_ANSI_Y             ( ), // 64-bit data input
  // Interface: kVK_ANSI_Z (conduit sink)
  .kVK_ANSI_Z             ( ), // 64-bit data input
  // Interface: kVK_CapsLock (conduit sink)
  .kVK_CapsLock           ( ), // 64-bit data input
  // Interface: kVK_Command (conduit sink)
  .kVK_Command            ( ), // 64-bit data input
  // Interface: kVK_Control (conduit sink)
  .kVK_Control            ( ), // 64-bit data input
  // Interface: kVK_Delete (conduit sink)
  .kVK_Delete             ( ), // 64-bit data input
  // Interface: kVK_DownArrow (conduit sink)
  .kVK_DownArrow          ( ), // 64-bit data input
  // Interface: kVK_End (conduit sink)
  .kVK_End                ( ), // 64-bit data input
  // Interface: kVK_Escape (conduit sink)
  .kVK_Escape             ( ), // 64-bit data input
  // Interface: kVK_F1 (conduit sink)
  .kVK_F1                 ( ), // 64-bit data input
  // Interface: kVK_F10 (conduit sink)
  .kVK_F10                ( ), // 64-bit data input
  // Interface: kVK_F11 (conduit sink)
  .kVK_F11                ( ), // 64-bit data input
  // Interface: kVK_F12 (conduit sink)
  .kVK_F12                ( ), // 64-bit data input
  // Interface: kVK_F13 (conduit sink)
  .kVK_F13                ( ), // 64-bit data input
  // Interface: kVK_F14 (conduit sink)
  .kVK_F14                ( ), // 64-bit data input
  // Interface: kVK_F15 (conduit sink)
  .kVK_F15                ( ), // 64-bit data input
  // Interface: kVK_F16 (conduit sink)
  .kVK_F16                ( ), // 64-bit data input
  // Interface: kVK_F17 (conduit sink)
  .kVK_F17                ( ), // 64-bit data input
  // Interface: kVK_F18 (conduit sink)
  .kVK_F18                ( ), // 64-bit data input
  // Interface: kVK_F19 (conduit sink)
  .kVK_F19                ( ), // 64-bit data input
  // Interface: kVK_F2 (conduit sink)
  .kVK_F2                 ( ), // 64-bit data input
  // Interface: kVK_F20 (conduit sink)
  .kVK_F20                ( ), // 64-bit data input
  // Interface: kVK_F3 (conduit sink)
  .kVK_F3                 ( ), // 64-bit data input
  // Interface: kVK_F4 (conduit sink)
  .kVK_F4                 ( ), // 64-bit data input
  // Interface: kVK_F5 (conduit sink)
  .kVK_F5                 ( ), // 64-bit data input
  // Interface: kVK_F6 (conduit sink)
  .kVK_F6                 ( ), // 64-bit data input
  // Interface: kVK_F7 (conduit sink)
  .kVK_F7                 ( ), // 64-bit data input
  // Interface: kVK_F8 (conduit sink)
  .kVK_F8                 ( ), // 64-bit data input
  // Interface: kVK_F9 (conduit sink)
  .kVK_F9                 ( ), // 64-bit data input
  // Interface: kVK_ForwardDelete (conduit sink)
  .kVK_ForwardDelete      ( ), // 64-bit data input
  // Interface: kVK_Help (conduit sink)
  .kVK_Help               ( ), // 64-bit data input
  // Interface: kVK_Home (conduit sink)
  .kVK_Home               ( ), // 64-bit data input
  // Interface: kVK_ISO_Section (conduit sink)
  .kVK_ISO_Section        ( ), // 64-bit data input
  // Interface: kVK_LeftArrow (conduit sink)
  .kVK_LeftArrow          ( ), // 64-bit data input
  // Interface: kVK_Option (conduit sink)
  .kVK_Option             ( ), // 64-bit data input
  // Interface: kVK_PageDown (conduit sink)
  .kVK_PageDown           ( ), // 64-bit data input
  // Interface: kVK_PageUp (conduit sink)
  .kVK_PageUp             ( ), // 64-bit data input
  // Interface: kVK_Return (conduit sink)
  .kVK_Return             ( ), // 64-bit data input
  // Interface: kVK_RightArrow (conduit sink)
  .kVK_RightArrow         ( ), // 64-bit data input
  // Interface: kVK_Shift (conduit sink)
  .kVK_Shift              ( ), // 64-bit data input
  // Interface: kVK_Space (conduit sink)
  .kVK_Space              ( ), // 64-bit data input
  // Interface: kVK_Tab (conduit sink)
  .kVK_Tab                ( ), // 64-bit data input
  // Interface: kVK_UpArrow (conduit sink)
  .kVK_UpArrow            ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address      ( ), // 64-bit address output
  .avmm_0_rw_byteenable   ( ), // 8-bit byteenable output
  .avmm_0_rw_read         ( ), // 1-bit read output
  .avmm_0_rw_readdata     ( ), // 64-bit readdata input
  .avmm_0_rw_write        ( ), // 1-bit write output
  .avmm_0_rw_writedata    ( )  // 64-bit writedata output
);
