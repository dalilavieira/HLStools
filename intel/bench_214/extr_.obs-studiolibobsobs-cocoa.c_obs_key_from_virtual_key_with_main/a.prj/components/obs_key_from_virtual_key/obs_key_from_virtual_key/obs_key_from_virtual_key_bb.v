module obs_key_from_virtual_key (
		input  wire        clock,                //                clock.clk
		input  wire        resetn,               //                reset.reset_n
		input  wire        start,                //                 call.valid
		output wire        busy,                 //                     .stall
		output wire        done,                 //               return.valid
		input  wire        stall,                //                     .stall
		output wire [31:0] returndata,           //           returndata.data
		input  wire [31:0] code,                 //                 code.data
		input  wire [63:0] OBS_KEY_0,            //            OBS_KEY_0.data
		input  wire [63:0] OBS_KEY_1,            //            OBS_KEY_1.data
		input  wire [63:0] OBS_KEY_2,            //            OBS_KEY_2.data
		input  wire [63:0] OBS_KEY_3,            //            OBS_KEY_3.data
		input  wire [63:0] OBS_KEY_4,            //            OBS_KEY_4.data
		input  wire [63:0] OBS_KEY_5,            //            OBS_KEY_5.data
		input  wire [63:0] OBS_KEY_6,            //            OBS_KEY_6.data
		input  wire [63:0] OBS_KEY_7,            //            OBS_KEY_7.data
		input  wire [63:0] OBS_KEY_8,            //            OBS_KEY_8.data
		input  wire [63:0] OBS_KEY_9,            //            OBS_KEY_9.data
		input  wire [63:0] OBS_KEY_A,            //            OBS_KEY_A.data
		input  wire [63:0] OBS_KEY_ALT,          //          OBS_KEY_ALT.data
		input  wire [63:0] OBS_KEY_B,            //            OBS_KEY_B.data
		input  wire [63:0] OBS_KEY_BACKSLASH,    //    OBS_KEY_BACKSLASH.data
		input  wire [63:0] OBS_KEY_BACKSPACE,    //    OBS_KEY_BACKSPACE.data
		input  wire [63:0] OBS_KEY_BRACKETLEFT,  //  OBS_KEY_BRACKETLEFT.data
		input  wire [63:0] OBS_KEY_BRACKETRIGHT, // OBS_KEY_BRACKETRIGHT.data
		input  wire [63:0] OBS_KEY_C,            //            OBS_KEY_C.data
		input  wire [63:0] OBS_KEY_CAPSLOCK,     //     OBS_KEY_CAPSLOCK.data
		input  wire [63:0] OBS_KEY_CLEAR,        //        OBS_KEY_CLEAR.data
		input  wire [63:0] OBS_KEY_COMMA,        //        OBS_KEY_COMMA.data
		input  wire [63:0] OBS_KEY_CONTROL,      //      OBS_KEY_CONTROL.data
		input  wire [63:0] OBS_KEY_D,            //            OBS_KEY_D.data
		input  wire [63:0] OBS_KEY_DEAD_GRAVE,   //   OBS_KEY_DEAD_GRAVE.data
		input  wire [63:0] OBS_KEY_DELETE,       //       OBS_KEY_DELETE.data
		input  wire [63:0] OBS_KEY_DOWN,         //         OBS_KEY_DOWN.data
		input  wire [63:0] OBS_KEY_E,            //            OBS_KEY_E.data
		input  wire [63:0] OBS_KEY_END,          //          OBS_KEY_END.data
		input  wire [63:0] OBS_KEY_ENTER,        //        OBS_KEY_ENTER.data
		input  wire [63:0] OBS_KEY_EQUAL,        //        OBS_KEY_EQUAL.data
		input  wire [63:0] OBS_KEY_ESCAPE,       //       OBS_KEY_ESCAPE.data
		input  wire [63:0] OBS_KEY_F,            //            OBS_KEY_F.data
		input  wire [63:0] OBS_KEY_F1,           //           OBS_KEY_F1.data
		input  wire [63:0] OBS_KEY_F10,          //          OBS_KEY_F10.data
		input  wire [63:0] OBS_KEY_F11,          //          OBS_KEY_F11.data
		input  wire [63:0] OBS_KEY_F12,          //          OBS_KEY_F12.data
		input  wire [63:0] OBS_KEY_F13,          //          OBS_KEY_F13.data
		input  wire [63:0] OBS_KEY_F14,          //          OBS_KEY_F14.data
		input  wire [63:0] OBS_KEY_F15,          //          OBS_KEY_F15.data
		input  wire [63:0] OBS_KEY_F16,          //          OBS_KEY_F16.data
		input  wire [63:0] OBS_KEY_F17,          //          OBS_KEY_F17.data
		input  wire [63:0] OBS_KEY_F18,          //          OBS_KEY_F18.data
		input  wire [63:0] OBS_KEY_F19,          //          OBS_KEY_F19.data
		input  wire [63:0] OBS_KEY_F2,           //           OBS_KEY_F2.data
		input  wire [63:0] OBS_KEY_F20,          //          OBS_KEY_F20.data
		input  wire [63:0] OBS_KEY_F3,           //           OBS_KEY_F3.data
		input  wire [63:0] OBS_KEY_F4,           //           OBS_KEY_F4.data
		input  wire [63:0] OBS_KEY_F5,           //           OBS_KEY_F5.data
		input  wire [63:0] OBS_KEY_F6,           //           OBS_KEY_F6.data
		input  wire [63:0] OBS_KEY_F7,           //           OBS_KEY_F7.data
		input  wire [63:0] OBS_KEY_F8,           //           OBS_KEY_F8.data
		input  wire [63:0] OBS_KEY_F9,           //           OBS_KEY_F9.data
		input  wire [63:0] OBS_KEY_G,            //            OBS_KEY_G.data
		input  wire [63:0] OBS_KEY_H,            //            OBS_KEY_H.data
		input  wire [63:0] OBS_KEY_HELP,         //         OBS_KEY_HELP.data
		input  wire [63:0] OBS_KEY_HOME,         //         OBS_KEY_HOME.data
		input  wire [63:0] OBS_KEY_I,            //            OBS_KEY_I.data
		input  wire [63:0] OBS_KEY_J,            //            OBS_KEY_J.data
		input  wire [63:0] OBS_KEY_K,            //            OBS_KEY_K.data
		input  wire [63:0] OBS_KEY_L,            //            OBS_KEY_L.data
		input  wire [63:0] OBS_KEY_LEFT,         //         OBS_KEY_LEFT.data
		input  wire [63:0] OBS_KEY_M,            //            OBS_KEY_M.data
		input  wire [63:0] OBS_KEY_META,         //         OBS_KEY_META.data
		input  wire [63:0] OBS_KEY_MINUS,        //        OBS_KEY_MINUS.data
		input  wire [63:0] OBS_KEY_N,            //            OBS_KEY_N.data
		input  wire [63:0] OBS_KEY_NONE,         //         OBS_KEY_NONE.data
		input  wire [63:0] OBS_KEY_NUM0,         //         OBS_KEY_NUM0.data
		input  wire [63:0] OBS_KEY_NUM1,         //         OBS_KEY_NUM1.data
		input  wire [63:0] OBS_KEY_NUM2,         //         OBS_KEY_NUM2.data
		input  wire [63:0] OBS_KEY_NUM3,         //         OBS_KEY_NUM3.data
		input  wire [63:0] OBS_KEY_NUM4,         //         OBS_KEY_NUM4.data
		input  wire [63:0] OBS_KEY_NUM5,         //         OBS_KEY_NUM5.data
		input  wire [63:0] OBS_KEY_NUM6,         //         OBS_KEY_NUM6.data
		input  wire [63:0] OBS_KEY_NUM7,         //         OBS_KEY_NUM7.data
		input  wire [63:0] OBS_KEY_NUM8,         //         OBS_KEY_NUM8.data
		input  wire [63:0] OBS_KEY_NUM9,         //         OBS_KEY_NUM9.data
		input  wire [63:0] OBS_KEY_NUMASTERISK,  //  OBS_KEY_NUMASTERISK.data
		input  wire [63:0] OBS_KEY_NUMEQUAL,     //     OBS_KEY_NUMEQUAL.data
		input  wire [63:0] OBS_KEY_NUMMINUS,     //     OBS_KEY_NUMMINUS.data
		input  wire [63:0] OBS_KEY_NUMPERIOD,    //    OBS_KEY_NUMPERIOD.data
		input  wire [63:0] OBS_KEY_NUMPLUS,      //      OBS_KEY_NUMPLUS.data
		input  wire [63:0] OBS_KEY_NUMSLASH,     //     OBS_KEY_NUMSLASH.data
		input  wire [63:0] OBS_KEY_O,            //            OBS_KEY_O.data
		input  wire [63:0] OBS_KEY_P,            //            OBS_KEY_P.data
		input  wire [63:0] OBS_KEY_PAGEDOWN,     //     OBS_KEY_PAGEDOWN.data
		input  wire [63:0] OBS_KEY_PAGEUP,       //       OBS_KEY_PAGEUP.data
		input  wire [63:0] OBS_KEY_PERIOD,       //       OBS_KEY_PERIOD.data
		input  wire [63:0] OBS_KEY_Q,            //            OBS_KEY_Q.data
		input  wire [63:0] OBS_KEY_QUOTE,        //        OBS_KEY_QUOTE.data
		input  wire [63:0] OBS_KEY_R,            //            OBS_KEY_R.data
		input  wire [63:0] OBS_KEY_RETURN,       //       OBS_KEY_RETURN.data
		input  wire [63:0] OBS_KEY_RIGHT,        //        OBS_KEY_RIGHT.data
		input  wire [63:0] OBS_KEY_S,            //            OBS_KEY_S.data
		input  wire [63:0] OBS_KEY_SECTION,      //      OBS_KEY_SECTION.data
		input  wire [63:0] OBS_KEY_SEMICOLON,    //    OBS_KEY_SEMICOLON.data
		input  wire [63:0] OBS_KEY_SHIFT,        //        OBS_KEY_SHIFT.data
		input  wire [63:0] OBS_KEY_SLASH,        //        OBS_KEY_SLASH.data
		input  wire [63:0] OBS_KEY_SPACE,        //        OBS_KEY_SPACE.data
		input  wire [63:0] OBS_KEY_T,            //            OBS_KEY_T.data
		input  wire [63:0] OBS_KEY_TAB,          //          OBS_KEY_TAB.data
		input  wire [63:0] OBS_KEY_U,            //            OBS_KEY_U.data
		input  wire [63:0] OBS_KEY_UP,           //           OBS_KEY_UP.data
		input  wire [63:0] OBS_KEY_V,            //            OBS_KEY_V.data
		input  wire [63:0] OBS_KEY_W,            //            OBS_KEY_W.data
		input  wire [63:0] OBS_KEY_X,            //            OBS_KEY_X.data
		input  wire [63:0] OBS_KEY_Y,            //            OBS_KEY_Y.data
		input  wire [63:0] OBS_KEY_Z,            //            OBS_KEY_Z.data
		output wire [63:0] avmm_0_rw_address,    //            avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //                     .byteenable
		output wire        avmm_0_rw_read,       //                     .read
		input  wire [63:0] avmm_0_rw_readdata,   //                     .readdata
		output wire        avmm_0_rw_write,      //                     .write
		output wire [63:0] avmm_0_rw_writedata   //                     .writedata
	);
endmodule

