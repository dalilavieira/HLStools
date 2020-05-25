// Example instance of the top level module for: 
//     emscripten_compute_dom_pk_code
// To include this component in your design, include: 
//     emscripten_compute_dom_pk_code.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

emscripten_compute_dom_pk_code emscripten_compute_dom_pk_code_inst (
  // Interface: clock (clock end)
  .clock                      ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                     ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start                      ( ), // 1-bit valid input
  .busy                       ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                       ( ), // 1-bit valid output
  .stall                      ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata                 ( ), // 32-bit data output
  // Interface: keyCodeString (conduit sink)
  .keyCodeString              ( ), // 64-bit data input
  // Interface: DOM_PK_0 (conduit sink)
  .DOM_PK_0                   ( ), // 64-bit data input
  // Interface: DOM_PK_1 (conduit sink)
  .DOM_PK_1                   ( ), // 64-bit data input
  // Interface: DOM_PK_2 (conduit sink)
  .DOM_PK_2                   ( ), // 64-bit data input
  // Interface: DOM_PK_3 (conduit sink)
  .DOM_PK_3                   ( ), // 64-bit data input
  // Interface: DOM_PK_4 (conduit sink)
  .DOM_PK_4                   ( ), // 64-bit data input
  // Interface: DOM_PK_5 (conduit sink)
  .DOM_PK_5                   ( ), // 64-bit data input
  // Interface: DOM_PK_6 (conduit sink)
  .DOM_PK_6                   ( ), // 64-bit data input
  // Interface: DOM_PK_7 (conduit sink)
  .DOM_PK_7                   ( ), // 64-bit data input
  // Interface: DOM_PK_8 (conduit sink)
  .DOM_PK_8                   ( ), // 64-bit data input
  // Interface: DOM_PK_9 (conduit sink)
  .DOM_PK_9                   ( ), // 64-bit data input
  // Interface: DOM_PK_A (conduit sink)
  .DOM_PK_A                   ( ), // 64-bit data input
  // Interface: DOM_PK_ALT_LEFT (conduit sink)
  .DOM_PK_ALT_LEFT            ( ), // 64-bit data input
  // Interface: DOM_PK_ALT_RIGHT (conduit sink)
  .DOM_PK_ALT_RIGHT           ( ), // 64-bit data input
  // Interface: DOM_PK_ARROW_DOWN (conduit sink)
  .DOM_PK_ARROW_DOWN          ( ), // 64-bit data input
  // Interface: DOM_PK_ARROW_LEFT (conduit sink)
  .DOM_PK_ARROW_LEFT          ( ), // 64-bit data input
  // Interface: DOM_PK_ARROW_RIGHT (conduit sink)
  .DOM_PK_ARROW_RIGHT         ( ), // 64-bit data input
  // Interface: DOM_PK_ARROW_UP (conduit sink)
  .DOM_PK_ARROW_UP            ( ), // 64-bit data input
  // Interface: DOM_PK_AUDIO_VOLUME_DOWN (conduit sink)
  .DOM_PK_AUDIO_VOLUME_DOWN   ( ), // 64-bit data input
  // Interface: DOM_PK_AUDIO_VOLUME_MUTE (conduit sink)
  .DOM_PK_AUDIO_VOLUME_MUTE   ( ), // 64-bit data input
  // Interface: DOM_PK_AUDIO_VOLUME_UP (conduit sink)
  .DOM_PK_AUDIO_VOLUME_UP     ( ), // 64-bit data input
  // Interface: DOM_PK_B (conduit sink)
  .DOM_PK_B                   ( ), // 64-bit data input
  // Interface: DOM_PK_BACKQUOTE (conduit sink)
  .DOM_PK_BACKQUOTE           ( ), // 64-bit data input
  // Interface: DOM_PK_BACKSLASH (conduit sink)
  .DOM_PK_BACKSLASH           ( ), // 64-bit data input
  // Interface: DOM_PK_BACKSPACE (conduit sink)
  .DOM_PK_BACKSPACE           ( ), // 64-bit data input
  // Interface: DOM_PK_BRACKET_LEFT (conduit sink)
  .DOM_PK_BRACKET_LEFT        ( ), // 64-bit data input
  // Interface: DOM_PK_BRACKET_RIGHT (conduit sink)
  .DOM_PK_BRACKET_RIGHT       ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_BACK (conduit sink)
  .DOM_PK_BROWSER_BACK        ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_FAVORITES (conduit sink)
  .DOM_PK_BROWSER_FAVORITES   ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_FORWARD (conduit sink)
  .DOM_PK_BROWSER_FORWARD     ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_HOME (conduit sink)
  .DOM_PK_BROWSER_HOME        ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_REFRESH (conduit sink)
  .DOM_PK_BROWSER_REFRESH     ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_SEARCH (conduit sink)
  .DOM_PK_BROWSER_SEARCH      ( ), // 64-bit data input
  // Interface: DOM_PK_BROWSER_STOP (conduit sink)
  .DOM_PK_BROWSER_STOP        ( ), // 64-bit data input
  // Interface: DOM_PK_C (conduit sink)
  .DOM_PK_C                   ( ), // 64-bit data input
  // Interface: DOM_PK_CAPS_LOCK (conduit sink)
  .DOM_PK_CAPS_LOCK           ( ), // 64-bit data input
  // Interface: DOM_PK_COMMA (conduit sink)
  .DOM_PK_COMMA               ( ), // 64-bit data input
  // Interface: DOM_PK_CONTEXT_MENU (conduit sink)
  .DOM_PK_CONTEXT_MENU        ( ), // 64-bit data input
  // Interface: DOM_PK_CONTROL_LEFT (conduit sink)
  .DOM_PK_CONTROL_LEFT        ( ), // 64-bit data input
  // Interface: DOM_PK_CONTROL_RIGHT (conduit sink)
  .DOM_PK_CONTROL_RIGHT       ( ), // 64-bit data input
  // Interface: DOM_PK_CONVERT (conduit sink)
  .DOM_PK_CONVERT             ( ), // 64-bit data input
  // Interface: DOM_PK_COPY (conduit sink)
  .DOM_PK_COPY                ( ), // 64-bit data input
  // Interface: DOM_PK_CUT (conduit sink)
  .DOM_PK_CUT                 ( ), // 64-bit data input
  // Interface: DOM_PK_D (conduit sink)
  .DOM_PK_D                   ( ), // 64-bit data input
  // Interface: DOM_PK_DELETE (conduit sink)
  .DOM_PK_DELETE              ( ), // 64-bit data input
  // Interface: DOM_PK_E (conduit sink)
  .DOM_PK_E                   ( ), // 64-bit data input
  // Interface: DOM_PK_EJECT (conduit sink)
  .DOM_PK_EJECT               ( ), // 64-bit data input
  // Interface: DOM_PK_END (conduit sink)
  .DOM_PK_END                 ( ), // 64-bit data input
  // Interface: DOM_PK_ENTER (conduit sink)
  .DOM_PK_ENTER               ( ), // 64-bit data input
  // Interface: DOM_PK_EQUAL (conduit sink)
  .DOM_PK_EQUAL               ( ), // 64-bit data input
  // Interface: DOM_PK_ESCAPE (conduit sink)
  .DOM_PK_ESCAPE              ( ), // 64-bit data input
  // Interface: DOM_PK_F (conduit sink)
  .DOM_PK_F                   ( ), // 64-bit data input
  // Interface: DOM_PK_F1 (conduit sink)
  .DOM_PK_F1                  ( ), // 64-bit data input
  // Interface: DOM_PK_F10 (conduit sink)
  .DOM_PK_F10                 ( ), // 64-bit data input
  // Interface: DOM_PK_F11 (conduit sink)
  .DOM_PK_F11                 ( ), // 64-bit data input
  // Interface: DOM_PK_F12 (conduit sink)
  .DOM_PK_F12                 ( ), // 64-bit data input
  // Interface: DOM_PK_F13 (conduit sink)
  .DOM_PK_F13                 ( ), // 64-bit data input
  // Interface: DOM_PK_F14 (conduit sink)
  .DOM_PK_F14                 ( ), // 64-bit data input
  // Interface: DOM_PK_F15 (conduit sink)
  .DOM_PK_F15                 ( ), // 64-bit data input
  // Interface: DOM_PK_F16 (conduit sink)
  .DOM_PK_F16                 ( ), // 64-bit data input
  // Interface: DOM_PK_F17 (conduit sink)
  .DOM_PK_F17                 ( ), // 64-bit data input
  // Interface: DOM_PK_F18 (conduit sink)
  .DOM_PK_F18                 ( ), // 64-bit data input
  // Interface: DOM_PK_F19 (conduit sink)
  .DOM_PK_F19                 ( ), // 64-bit data input
  // Interface: DOM_PK_F2 (conduit sink)
  .DOM_PK_F2                  ( ), // 64-bit data input
  // Interface: DOM_PK_F20 (conduit sink)
  .DOM_PK_F20                 ( ), // 64-bit data input
  // Interface: DOM_PK_F21 (conduit sink)
  .DOM_PK_F21                 ( ), // 64-bit data input
  // Interface: DOM_PK_F22 (conduit sink)
  .DOM_PK_F22                 ( ), // 64-bit data input
  // Interface: DOM_PK_F23 (conduit sink)
  .DOM_PK_F23                 ( ), // 64-bit data input
  // Interface: DOM_PK_F24 (conduit sink)
  .DOM_PK_F24                 ( ), // 64-bit data input
  // Interface: DOM_PK_F3 (conduit sink)
  .DOM_PK_F3                  ( ), // 64-bit data input
  // Interface: DOM_PK_F4 (conduit sink)
  .DOM_PK_F4                  ( ), // 64-bit data input
  // Interface: DOM_PK_F5 (conduit sink)
  .DOM_PK_F5                  ( ), // 64-bit data input
  // Interface: DOM_PK_F6 (conduit sink)
  .DOM_PK_F6                  ( ), // 64-bit data input
  // Interface: DOM_PK_F7 (conduit sink)
  .DOM_PK_F7                  ( ), // 64-bit data input
  // Interface: DOM_PK_F8 (conduit sink)
  .DOM_PK_F8                  ( ), // 64-bit data input
  // Interface: DOM_PK_F9 (conduit sink)
  .DOM_PK_F9                  ( ), // 64-bit data input
  // Interface: DOM_PK_G (conduit sink)
  .DOM_PK_G                   ( ), // 64-bit data input
  // Interface: DOM_PK_H (conduit sink)
  .DOM_PK_H                   ( ), // 64-bit data input
  // Interface: DOM_PK_HELP (conduit sink)
  .DOM_PK_HELP                ( ), // 64-bit data input
  // Interface: DOM_PK_HOME (conduit sink)
  .DOM_PK_HOME                ( ), // 64-bit data input
  // Interface: DOM_PK_I (conduit sink)
  .DOM_PK_I                   ( ), // 64-bit data input
  // Interface: DOM_PK_INSERT (conduit sink)
  .DOM_PK_INSERT              ( ), // 64-bit data input
  // Interface: DOM_PK_INTL_BACKSLASH (conduit sink)
  .DOM_PK_INTL_BACKSLASH      ( ), // 64-bit data input
  // Interface: DOM_PK_INTL_RO (conduit sink)
  .DOM_PK_INTL_RO             ( ), // 64-bit data input
  // Interface: DOM_PK_INTL_YEN (conduit sink)
  .DOM_PK_INTL_YEN            ( ), // 64-bit data input
  // Interface: DOM_PK_J (conduit sink)
  .DOM_PK_J                   ( ), // 64-bit data input
  // Interface: DOM_PK_K (conduit sink)
  .DOM_PK_K                   ( ), // 64-bit data input
  // Interface: DOM_PK_KANA_MODE (conduit sink)
  .DOM_PK_KANA_MODE           ( ), // 64-bit data input
  // Interface: DOM_PK_L (conduit sink)
  .DOM_PK_L                   ( ), // 64-bit data input
  // Interface: DOM_PK_LANG_1 (conduit sink)
  .DOM_PK_LANG_1              ( ), // 64-bit data input
  // Interface: DOM_PK_LANG_2 (conduit sink)
  .DOM_PK_LANG_2              ( ), // 64-bit data input
  // Interface: DOM_PK_LAUNCH_APP_1 (conduit sink)
  .DOM_PK_LAUNCH_APP_1        ( ), // 64-bit data input
  // Interface: DOM_PK_LAUNCH_APP_2 (conduit sink)
  .DOM_PK_LAUNCH_APP_2        ( ), // 64-bit data input
  // Interface: DOM_PK_LAUNCH_MAIL (conduit sink)
  .DOM_PK_LAUNCH_MAIL         ( ), // 64-bit data input
  // Interface: DOM_PK_LAUNCH_MEDIA_PLAYER (conduit sink)
  .DOM_PK_LAUNCH_MEDIA_PLAYER ( ), // 64-bit data input
  // Interface: DOM_PK_M (conduit sink)
  .DOM_PK_M                   ( ), // 64-bit data input
  // Interface: DOM_PK_MEDIA_PLAY_PAUSE (conduit sink)
  .DOM_PK_MEDIA_PLAY_PAUSE    ( ), // 64-bit data input
  // Interface: DOM_PK_MEDIA_SELECT (conduit sink)
  .DOM_PK_MEDIA_SELECT        ( ), // 64-bit data input
  // Interface: DOM_PK_MEDIA_STOP (conduit sink)
  .DOM_PK_MEDIA_STOP          ( ), // 64-bit data input
  // Interface: DOM_PK_MEDIA_TRACK_NEXT (conduit sink)
  .DOM_PK_MEDIA_TRACK_NEXT    ( ), // 64-bit data input
  // Interface: DOM_PK_MEDIA_TRACK_PREVIOUS (conduit sink)
  .DOM_PK_MEDIA_TRACK_PREVIOUS( ), // 64-bit data input
  // Interface: DOM_PK_META_LEFT (conduit sink)
  .DOM_PK_META_LEFT           ( ), // 64-bit data input
  // Interface: DOM_PK_META_RIGHT (conduit sink)
  .DOM_PK_META_RIGHT          ( ), // 64-bit data input
  // Interface: DOM_PK_MINUS (conduit sink)
  .DOM_PK_MINUS               ( ), // 64-bit data input
  // Interface: DOM_PK_N (conduit sink)
  .DOM_PK_N                   ( ), // 64-bit data input
  // Interface: DOM_PK_NON_CONVERT (conduit sink)
  .DOM_PK_NON_CONVERT         ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_0 (conduit sink)
  .DOM_PK_NUMPAD_0            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_1 (conduit sink)
  .DOM_PK_NUMPAD_1            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_2 (conduit sink)
  .DOM_PK_NUMPAD_2            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_3 (conduit sink)
  .DOM_PK_NUMPAD_3            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_4 (conduit sink)
  .DOM_PK_NUMPAD_4            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_5 (conduit sink)
  .DOM_PK_NUMPAD_5            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_6 (conduit sink)
  .DOM_PK_NUMPAD_6            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_7 (conduit sink)
  .DOM_PK_NUMPAD_7            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_8 (conduit sink)
  .DOM_PK_NUMPAD_8            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_9 (conduit sink)
  .DOM_PK_NUMPAD_9            ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_ADD (conduit sink)
  .DOM_PK_NUMPAD_ADD          ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_COMMA (conduit sink)
  .DOM_PK_NUMPAD_COMMA        ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_DECIMAL (conduit sink)
  .DOM_PK_NUMPAD_DECIMAL      ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_DIVIDE (conduit sink)
  .DOM_PK_NUMPAD_DIVIDE       ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_ENTER (conduit sink)
  .DOM_PK_NUMPAD_ENTER        ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_EQUAL (conduit sink)
  .DOM_PK_NUMPAD_EQUAL        ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_MULTIPLY (conduit sink)
  .DOM_PK_NUMPAD_MULTIPLY     ( ), // 64-bit data input
  // Interface: DOM_PK_NUMPAD_SUBTRACT (conduit sink)
  .DOM_PK_NUMPAD_SUBTRACT     ( ), // 64-bit data input
  // Interface: DOM_PK_NUM_LOCK (conduit sink)
  .DOM_PK_NUM_LOCK            ( ), // 64-bit data input
  // Interface: DOM_PK_O (conduit sink)
  .DOM_PK_O                   ( ), // 64-bit data input
  // Interface: DOM_PK_OS_LEFT (conduit sink)
  .DOM_PK_OS_LEFT             ( ), // 64-bit data input
  // Interface: DOM_PK_OS_RIGHT (conduit sink)
  .DOM_PK_OS_RIGHT            ( ), // 64-bit data input
  // Interface: DOM_PK_P (conduit sink)
  .DOM_PK_P                   ( ), // 64-bit data input
  // Interface: DOM_PK_PAGE_DOWN (conduit sink)
  .DOM_PK_PAGE_DOWN           ( ), // 64-bit data input
  // Interface: DOM_PK_PAGE_UP (conduit sink)
  .DOM_PK_PAGE_UP             ( ), // 64-bit data input
  // Interface: DOM_PK_PASTE (conduit sink)
  .DOM_PK_PASTE               ( ), // 64-bit data input
  // Interface: DOM_PK_PAUSE (conduit sink)
  .DOM_PK_PAUSE               ( ), // 64-bit data input
  // Interface: DOM_PK_PERIOD (conduit sink)
  .DOM_PK_PERIOD              ( ), // 64-bit data input
  // Interface: DOM_PK_POWER (conduit sink)
  .DOM_PK_POWER               ( ), // 64-bit data input
  // Interface: DOM_PK_PRINT_SCREEN (conduit sink)
  .DOM_PK_PRINT_SCREEN        ( ), // 64-bit data input
  // Interface: DOM_PK_Q (conduit sink)
  .DOM_PK_Q                   ( ), // 64-bit data input
  // Interface: DOM_PK_QUOTE (conduit sink)
  .DOM_PK_QUOTE               ( ), // 64-bit data input
  // Interface: DOM_PK_R (conduit sink)
  .DOM_PK_R                   ( ), // 64-bit data input
  // Interface: DOM_PK_S (conduit sink)
  .DOM_PK_S                   ( ), // 64-bit data input
  // Interface: DOM_PK_SCROLL_LOCK (conduit sink)
  .DOM_PK_SCROLL_LOCK         ( ), // 64-bit data input
  // Interface: DOM_PK_SEMICOLON (conduit sink)
  .DOM_PK_SEMICOLON           ( ), // 64-bit data input
  // Interface: DOM_PK_SHIFT_LEFT (conduit sink)
  .DOM_PK_SHIFT_LEFT          ( ), // 64-bit data input
  // Interface: DOM_PK_SHIFT_RIGHT (conduit sink)
  .DOM_PK_SHIFT_RIGHT         ( ), // 64-bit data input
  // Interface: DOM_PK_SLASH (conduit sink)
  .DOM_PK_SLASH               ( ), // 64-bit data input
  // Interface: DOM_PK_SPACE (conduit sink)
  .DOM_PK_SPACE               ( ), // 64-bit data input
  // Interface: DOM_PK_T (conduit sink)
  .DOM_PK_T                   ( ), // 64-bit data input
  // Interface: DOM_PK_TAB (conduit sink)
  .DOM_PK_TAB                 ( ), // 64-bit data input
  // Interface: DOM_PK_U (conduit sink)
  .DOM_PK_U                   ( ), // 64-bit data input
  // Interface: DOM_PK_UNKNOWN (conduit sink)
  .DOM_PK_UNKNOWN             ( ), // 64-bit data input
  // Interface: DOM_PK_V (conduit sink)
  .DOM_PK_V                   ( ), // 64-bit data input
  // Interface: DOM_PK_W (conduit sink)
  .DOM_PK_W                   ( ), // 64-bit data input
  // Interface: DOM_PK_X (conduit sink)
  .DOM_PK_X                   ( ), // 64-bit data input
  // Interface: DOM_PK_Y (conduit sink)
  .DOM_PK_Y                   ( ), // 64-bit data input
  // Interface: DOM_PK_Z (conduit sink)
  .DOM_PK_Z                   ( ), // 64-bit data input
  // Interface: avmm_0_rw (avalon start)
  .avmm_0_rw_address          ( ), // 64-bit address output
  .avmm_0_rw_byteenable       ( ), // 8-bit byteenable output
  .avmm_0_rw_read             ( ), // 1-bit read output
  .avmm_0_rw_readdata         ( ), // 64-bit readdata input
  .avmm_0_rw_write            ( ), // 1-bit write output
  .avmm_0_rw_writedata        ( )  // 64-bit writedata output
);
