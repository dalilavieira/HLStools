// Example instance of the top level module for: 
//     obs_key_from_virtual_key
// To include this component in your design, include: 
//     obs_key_from_virtual_key.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

obs_key_from_virtual_key obs_key_from_virtual_key_inst (
  // Interface: clock (clock end)
  .clock               ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn              ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start               ( ), // 1-bit valid input
  .busy                ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                ( ), // 1-bit valid output
  .stall               ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata          ( ), // 32-bit data output
  // Interface: code (conduit sink)
  .code                ( ), // 32-bit data input
  // Interface: OBS_KEY_0 (conduit sink)
  .OBS_KEY_0           ( ), // 64-bit data input
  // Interface: OBS_KEY_1 (conduit sink)
  .OBS_KEY_1           ( ), // 64-bit data input
  // Interface: OBS_KEY_2 (conduit sink)
  .OBS_KEY_2           ( ), // 64-bit data input
  // Interface: OBS_KEY_3 (conduit sink)
  .OBS_KEY_3           ( ), // 64-bit data input
  // Interface: OBS_KEY_4 (conduit sink)
  .OBS_KEY_4           ( ), // 64-bit data input
  // Interface: OBS_KEY_5 (conduit sink)
  .OBS_KEY_5           ( ), // 64-bit data input
  // Interface: OBS_KEY_6 (conduit sink)
  .OBS_KEY_6           ( ), // 64-bit data input
  // Interface: OBS_KEY_7 (conduit sink)
  .OBS_KEY_7           ( ), // 64-bit data input
  // Interface: OBS_KEY_8 (conduit sink)
  .OBS_KEY_8           ( ), // 64-bit data input
  // Interface: OBS_KEY_9 (conduit sink)
  .OBS_KEY_9           ( ), // 64-bit data input
  // Interface: OBS_KEY_A (conduit sink)
  .OBS_KEY_A           ( ), // 64-bit data input
  // Interface: OBS_KEY_ALT (conduit sink)
  .OBS_KEY_ALT         ( ), // 64-bit data input
  // Interface: OBS_KEY_B (conduit sink)
  .OBS_KEY_B           ( ), // 64-bit data input
  // Interface: OBS_KEY_BACKSLASH (conduit sink)
  .OBS_KEY_BACKSLASH   ( ), // 64-bit data input
  // Interface: OBS_KEY_BACKSPACE (conduit sink)
  .OBS_KEY_BACKSPACE   ( ), // 64-bit data input
  // Interface: OBS_KEY_BRACKETLEFT (conduit sink)
  .OBS_KEY_BRACKETLEFT ( ), // 64-bit data input
  // Interface: OBS_KEY_BRACKETRIGHT (conduit sink)
  .OBS_KEY_BRACKETRIGHT( ), // 64-bit data input
  // Interface: OBS_KEY_C (conduit sink)
  .OBS_KEY_C           ( ), // 64-bit data input
  // Interface: OBS_KEY_CAPSLOCK (conduit sink)
  .OBS_KEY_CAPSLOCK    ( ), // 64-bit data input
  // Interface: OBS_KEY_CLEAR (conduit sink)
  .OBS_KEY_CLEAR       ( ), // 64-bit data input
  // Interface: OBS_KEY_COMMA (conduit sink)
  .OBS_KEY_COMMA       ( ), // 64-bit data input
  // Interface: OBS_KEY_CONTROL (conduit sink)
  .OBS_KEY_CONTROL     ( ), // 64-bit data input
  // Interface: OBS_KEY_D (conduit sink)
  .OBS_KEY_D           ( ), // 64-bit data input
  // Interface: OBS_KEY_DEAD_GRAVE (conduit sink)
  .OBS_KEY_DEAD_GRAVE  ( ), // 64-bit data input
  // Interface: OBS_KEY_DELETE (conduit sink)
  .OBS_KEY_DELETE      ( ), // 64-bit data input
  // Interface: OBS_KEY_DOWN (conduit sink)
  .OBS_KEY_DOWN        ( ), // 64-bit data input
  // Interface: OBS_KEY_E (conduit sink)
  .OBS_KEY_E           ( ), // 64-bit data input
  // Interface: OBS_KEY_END (conduit sink)
  .OBS_KEY_END         ( ), // 64-bit data input
  // Interface: OBS_KEY_ENTER (conduit sink)
  .OBS_KEY_ENTER       ( ), // 64-bit data input
  // Interface: OBS_KEY_EQUAL (conduit sink)
  .OBS_KEY_EQUAL       ( ), // 64-bit data input
  // Interface: OBS_KEY_ESCAPE (conduit sink)
  .OBS_KEY_ESCAPE      ( ), // 64-bit data input
  // Interface: OBS_KEY_F (conduit sink)
  .OBS_KEY_F           ( ), // 64-bit data input
  // Interface: OBS_KEY_F1 (conduit sink)
  .OBS_KEY_F1          ( ), // 64-bit data input
  // Interface: OBS_KEY_F10 (conduit sink)
  .OBS_KEY_F10         ( ), // 64-bit data input
  // Interface: OBS_KEY_F11 (conduit sink)
  .OBS_KEY_F11         ( ), // 64-bit data input
  // Interface: OBS_KEY_F12 (conduit sink)
  .OBS_KEY_F12         ( ), // 64-bit data input
  // Interface: OBS_KEY_F13 (conduit sink)
  .OBS_KEY_F13         ( ), // 64-bit data input
  // Interface: OBS_KEY_F14 (conduit sink)
  .OBS_KEY_F14         ( ), // 64-bit data input
  // Interface: OBS_KEY_F15 (conduit sink)
  .OBS_KEY_F15         ( ), // 64-bit data input
  // Interface: OBS_KEY_F16 (conduit sink)
  .OBS_KEY_F16         ( ), // 64-bit data input
  // Interface: OBS_KEY_F17 (conduit sink)
  .OBS_KEY_F17         ( ), // 64-bit data input
  // Interface: OBS_KEY_F18 (conduit sink)
  .OBS_KEY_F18         ( ), // 64-bit data input
  // Interface: OBS_KEY_F19 (conduit sink)
  .OBS_KEY_F19         ( ), // 64-bit data input
  // Interface: OBS_KEY_F2 (conduit sink)
  .OBS_KEY_F2          ( ), // 64-bit data input
  // Interface: OBS_KEY_F20 (conduit sink)
  .OBS_KEY_F20         ( ), // 64-bit data input
  // Interface: OBS_KEY_F3 (conduit sink)
  .OBS_KEY_F3          ( ), // 64-bit data input
  // Interface: OBS_KEY_F4 (conduit sink)
  .OBS_KEY_F4          ( ), // 64-bit data input
  // Interface: OBS_KEY_F5 (conduit sink)
  .OBS_KEY_F5          ( ), // 64-bit data input
  // Interface: OBS_KEY_F6 (conduit sink)
  .OBS_KEY_F6          ( ), // 64-bit data input
  // Interface: OBS_KEY_F7 (conduit sink)
  .OBS_KEY_F7          ( ), // 64-bit data input
  // Interface: OBS_KEY_F8 (conduit sink)
  .OBS_KEY_F8          ( ), // 64-bit data input
  // Interface: OBS_KEY_F9 (conduit sink)
  .OBS_KEY_F9          ( ), // 64-bit data input
  // Interface: OBS_KEY_G (conduit sink)
  .OBS_KEY_G           ( ), // 64-bit data input
  // Interface: OBS_KEY_H (conduit sink)
  .OBS_KEY_H           ( ), // 64-bit data input
  // Interface: OBS_KEY_HELP (conduit sink)
  .OBS_KEY_HELP        ( ), // 64-bit data input
  // Interface: OBS_KEY_HOME (conduit sink)
  .OBS_KEY_HOME        ( ), // 64-bit data input
  // Interface: OBS_KEY_I (conduit sink)
  .OBS_KEY_I           ( ), // 64-bit data input
  // Interface: OBS_KEY_J (conduit sink)
  .OBS_KEY_J           ( ), // 64-bit data input
  // Interface: OBS_KEY_K (conduit sink)
  .OBS_KEY_K           ( ), // 64-bit data input
  // Interface: OBS_KEY_L (conduit sink)
  .OBS_KEY_L           ( ), // 64-bit data input
  // Interface: OBS_KEY_LEFT (conduit sink)
  .OBS_KEY_LEFT        ( ), // 64-bit data input
  // Interface: OBS_KEY_M (conduit sink)
  .OBS_KEY_M           ( ), // 64-bit data input
  // Interface: OBS_KEY_META (conduit sink)
  .OBS_KEY_META        ( ), // 64-bit data input
  // Interface: OBS_KEY_MINUS (conduit sink)
  .OBS_KEY_MINUS       ( ), // 64-bit data input
  // Interface: OBS_KEY_N (conduit sink)
  .OBS_KEY_N           ( ), // 64-bit data input
  // Interface: OBS_KEY_NONE (conduit sink)
  .OBS_KEY_NONE        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM0 (conduit sink)
  .OBS_KEY_NUM0        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM1 (conduit sink)
  .OBS_KEY_NUM1        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM2 (conduit sink)
  .OBS_KEY_NUM2        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM3 (conduit sink)
  .OBS_KEY_NUM3        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM4 (conduit sink)
  .OBS_KEY_NUM4        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM5 (conduit sink)
  .OBS_KEY_NUM5        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM6 (conduit sink)
  .OBS_KEY_NUM6        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM7 (conduit sink)
  .OBS_KEY_NUM7        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM8 (conduit sink)
  .OBS_KEY_NUM8        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUM9 (conduit sink)
  .OBS_KEY_NUM9        ( ), // 64-bit data input
  // Interface: OBS_KEY_NUMASTERISK (conduit sink)
  .OBS_KEY_NUMASTERISK ( ), // 64-bit data input
  // Interface: OBS_KEY_NUMEQUAL (conduit sink)
  .OBS_KEY_NUMEQUAL    ( ), // 64-bit data input
  // Interface: OBS_KEY_NUMMINUS (conduit sink)
  .OBS_KEY_NUMMINUS    ( ), // 64-bit data input
  // Interface: OBS_KEY_NUMPERIOD (conduit sink)
  .OBS_KEY_NUMPERIOD   ( ), // 64-bit data input
  // Interface: OBS_KEY_NUMPLUS (conduit sink)
  .OBS_KEY_NUMPLUS     ( ), // 64-bit data input
  // Interface: OBS_KEY_NUMSLASH (conduit sink)
  .OBS_KEY_NUMSLASH    ( ), // 64-bit data input
  // Interface: OBS_KEY_O (conduit sink)
  .OBS_KEY_O           ( ), // 64-bit data input
  // Interface: OBS_KEY_P (conduit sink)
  .OBS_KEY_P           ( ), // 64-bit data input
  // Interface: OBS_KEY_PAGEDOWN (conduit sink)
  .OBS_KEY_PAGEDOWN    ( ), // 64-bit data input
  // Interface: OBS_KEY_PAGEUP (conduit sink)
  .OBS_KEY_PAGEUP      ( ), // 64-bit data input
  // Interface: OBS_KEY_PERIOD (conduit sink)
  .OBS_KEY_PERIOD      ( ), // 64-bit data input
  // Interface: OBS_KEY_Q (conduit sink)
  .OBS_KEY_Q           ( ), // 64-bit data input
  // Interface: OBS_KEY_QUOTE (conduit sink)
  .OBS_KEY_QUOTE       ( ), // 64-bit data input
  // Interface: OBS_KEY_R (conduit sink)
  .OBS_KEY_R           ( ), // 64-bit data input
  // Interface: OBS_KEY_RETURN (conduit sink)
  .OBS_KEY_RETURN      ( ), // 64-bit data input
  // Interface: OBS_KEY_RIGHT (conduit sink)
  .OBS_KEY_RIGHT       ( ), // 64-bit data input
  // Interface: OBS_KEY_S (conduit sink)
  .OBS_KEY_S           ( ), // 64-bit data input
  // Interface: OBS_KEY_SECTION (conduit sink)
  .OBS_KEY_SECTION     ( ), // 64-bit data input
  // Interface: OBS_KEY_SEMICOLON (conduit sink)
  .OBS_KEY_SEMICOLON   ( ), // 64-bit data input
  // Interface: OBS_KEY_SHIFT (conduit sink)
  .OBS_KEY_SHIFT       ( ), // 64-bit data input
  // Interface: OBS_KEY_SLASH (conduit sink)
  .OBS_KEY_SLASH       ( ), // 64-bit data input
  // Interface: OBS_KEY_SPACE (conduit sink)
  .OBS_KEY_SPACE       ( ), // 64-bit data input
  // Interface: OBS_KEY_T (conduit sink)
  .OBS_KEY_T           ( ), // 64-bit data input
  // Interface: OBS_KEY_TAB (conduit sink)
  .OBS_KEY_TAB         ( ), // 64-bit data input
  // Interface: OBS_KEY_U (conduit sink)
  .OBS_KEY_U           ( ), // 64-bit data input
  // Interface: OBS_KEY_UP (conduit sink)
  .OBS_KEY_UP          ( ), // 64-bit data input
  // Interface: OBS_KEY_V (conduit sink)
  .OBS_KEY_V           ( ), // 64-bit data input
  // Interface: OBS_KEY_W (conduit sink)
  .OBS_KEY_W           ( ), // 64-bit data input
  // Interface: OBS_KEY_X (conduit sink)
  .OBS_KEY_X           ( ), // 64-bit data input
  // Interface: OBS_KEY_Y (conduit sink)
  .OBS_KEY_Y           ( ), // 64-bit data input
  // Interface: OBS_KEY_Z (conduit sink)
  .OBS_KEY_Z           ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address   ( ), // 64-bit address output
  .avmm_0_rw_byteenable( ), // 8-bit byteenable output
  .avmm_0_rw_read      ( ), // 1-bit read output
  .avmm_0_rw_readdata  ( ), // 64-bit readdata input
  .avmm_0_rw_write     ( ), // 1-bit write output
  .avmm_0_rw_writedata ( )  // 64-bit writedata output
);
