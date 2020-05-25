module obs_key_to_virtual_key (
		input  wire        clock,                   //                   clock.clk
		input  wire        resetn,                  //                   reset.reset_n
		input  wire        start,                   //                    call.valid
		output wire        busy,                    //                        .stall
		output wire        done,                    //                  return.valid
		input  wire        stall,                   //                        .stall
		output wire [31:0] returndata,              //              returndata.data
		input  wire [31:0] code,                    //                    code.data
		input  wire [63:0] INVALID_KEY,             //             INVALID_KEY.data
		input  wire [63:0] kVK_ANSI_0,              //              kVK_ANSI_0.data
		input  wire [63:0] kVK_ANSI_1,              //              kVK_ANSI_1.data
		input  wire [63:0] kVK_ANSI_2,              //              kVK_ANSI_2.data
		input  wire [63:0] kVK_ANSI_3,              //              kVK_ANSI_3.data
		input  wire [63:0] kVK_ANSI_4,              //              kVK_ANSI_4.data
		input  wire [63:0] kVK_ANSI_5,              //              kVK_ANSI_5.data
		input  wire [63:0] kVK_ANSI_6,              //              kVK_ANSI_6.data
		input  wire [63:0] kVK_ANSI_7,              //              kVK_ANSI_7.data
		input  wire [63:0] kVK_ANSI_8,              //              kVK_ANSI_8.data
		input  wire [63:0] kVK_ANSI_9,              //              kVK_ANSI_9.data
		input  wire [63:0] kVK_ANSI_A,              //              kVK_ANSI_A.data
		input  wire [63:0] kVK_ANSI_B,              //              kVK_ANSI_B.data
		input  wire [63:0] kVK_ANSI_Backslash,      //      kVK_ANSI_Backslash.data
		input  wire [63:0] kVK_ANSI_C,              //              kVK_ANSI_C.data
		input  wire [63:0] kVK_ANSI_Comma,          //          kVK_ANSI_Comma.data
		input  wire [63:0] kVK_ANSI_D,              //              kVK_ANSI_D.data
		input  wire [63:0] kVK_ANSI_E,              //              kVK_ANSI_E.data
		input  wire [63:0] kVK_ANSI_Equal,          //          kVK_ANSI_Equal.data
		input  wire [63:0] kVK_ANSI_F,              //              kVK_ANSI_F.data
		input  wire [63:0] kVK_ANSI_G,              //              kVK_ANSI_G.data
		input  wire [63:0] kVK_ANSI_Grave,          //          kVK_ANSI_Grave.data
		input  wire [63:0] kVK_ANSI_H,              //              kVK_ANSI_H.data
		input  wire [63:0] kVK_ANSI_I,              //              kVK_ANSI_I.data
		input  wire [63:0] kVK_ANSI_J,              //              kVK_ANSI_J.data
		input  wire [63:0] kVK_ANSI_K,              //              kVK_ANSI_K.data
		input  wire [63:0] kVK_ANSI_Keypad0,        //        kVK_ANSI_Keypad0.data
		input  wire [63:0] kVK_ANSI_Keypad1,        //        kVK_ANSI_Keypad1.data
		input  wire [63:0] kVK_ANSI_Keypad2,        //        kVK_ANSI_Keypad2.data
		input  wire [63:0] kVK_ANSI_Keypad3,        //        kVK_ANSI_Keypad3.data
		input  wire [63:0] kVK_ANSI_Keypad4,        //        kVK_ANSI_Keypad4.data
		input  wire [63:0] kVK_ANSI_Keypad5,        //        kVK_ANSI_Keypad5.data
		input  wire [63:0] kVK_ANSI_Keypad6,        //        kVK_ANSI_Keypad6.data
		input  wire [63:0] kVK_ANSI_Keypad7,        //        kVK_ANSI_Keypad7.data
		input  wire [63:0] kVK_ANSI_Keypad8,        //        kVK_ANSI_Keypad8.data
		input  wire [63:0] kVK_ANSI_Keypad9,        //        kVK_ANSI_Keypad9.data
		input  wire [63:0] kVK_ANSI_KeypadClear,    //    kVK_ANSI_KeypadClear.data
		input  wire [63:0] kVK_ANSI_KeypadDecimal,  //  kVK_ANSI_KeypadDecimal.data
		input  wire [63:0] kVK_ANSI_KeypadDivide,   //   kVK_ANSI_KeypadDivide.data
		input  wire [63:0] kVK_ANSI_KeypadEnter,    //    kVK_ANSI_KeypadEnter.data
		input  wire [63:0] kVK_ANSI_KeypadEquals,   //   kVK_ANSI_KeypadEquals.data
		input  wire [63:0] kVK_ANSI_KeypadMinus,    //    kVK_ANSI_KeypadMinus.data
		input  wire [63:0] kVK_ANSI_KeypadMultiply, // kVK_ANSI_KeypadMultiply.data
		input  wire [63:0] kVK_ANSI_KeypadPlus,     //     kVK_ANSI_KeypadPlus.data
		input  wire [63:0] kVK_ANSI_L,              //              kVK_ANSI_L.data
		input  wire [63:0] kVK_ANSI_LeftBracket,    //    kVK_ANSI_LeftBracket.data
		input  wire [63:0] kVK_ANSI_M,              //              kVK_ANSI_M.data
		input  wire [63:0] kVK_ANSI_Minus,          //          kVK_ANSI_Minus.data
		input  wire [63:0] kVK_ANSI_N,              //              kVK_ANSI_N.data
		input  wire [63:0] kVK_ANSI_O,              //              kVK_ANSI_O.data
		input  wire [63:0] kVK_ANSI_P,              //              kVK_ANSI_P.data
		input  wire [63:0] kVK_ANSI_Period,         //         kVK_ANSI_Period.data
		input  wire [63:0] kVK_ANSI_Q,              //              kVK_ANSI_Q.data
		input  wire [63:0] kVK_ANSI_Quote,          //          kVK_ANSI_Quote.data
		input  wire [63:0] kVK_ANSI_R,              //              kVK_ANSI_R.data
		input  wire [63:0] kVK_ANSI_RightBracket,   //   kVK_ANSI_RightBracket.data
		input  wire [63:0] kVK_ANSI_S,              //              kVK_ANSI_S.data
		input  wire [63:0] kVK_ANSI_Semicolon,      //      kVK_ANSI_Semicolon.data
		input  wire [63:0] kVK_ANSI_Slash,          //          kVK_ANSI_Slash.data
		input  wire [63:0] kVK_ANSI_T,              //              kVK_ANSI_T.data
		input  wire [63:0] kVK_ANSI_U,              //              kVK_ANSI_U.data
		input  wire [63:0] kVK_ANSI_V,              //              kVK_ANSI_V.data
		input  wire [63:0] kVK_ANSI_W,              //              kVK_ANSI_W.data
		input  wire [63:0] kVK_ANSI_X,              //              kVK_ANSI_X.data
		input  wire [63:0] kVK_ANSI_Y,              //              kVK_ANSI_Y.data
		input  wire [63:0] kVK_ANSI_Z,              //              kVK_ANSI_Z.data
		input  wire [63:0] kVK_CapsLock,            //            kVK_CapsLock.data
		input  wire [63:0] kVK_Command,             //             kVK_Command.data
		input  wire [63:0] kVK_Control,             //             kVK_Control.data
		input  wire [63:0] kVK_Delete,              //              kVK_Delete.data
		input  wire [63:0] kVK_DownArrow,           //           kVK_DownArrow.data
		input  wire [63:0] kVK_End,                 //                 kVK_End.data
		input  wire [63:0] kVK_Escape,              //              kVK_Escape.data
		input  wire [63:0] kVK_F1,                  //                  kVK_F1.data
		input  wire [63:0] kVK_F10,                 //                 kVK_F10.data
		input  wire [63:0] kVK_F11,                 //                 kVK_F11.data
		input  wire [63:0] kVK_F12,                 //                 kVK_F12.data
		input  wire [63:0] kVK_F13,                 //                 kVK_F13.data
		input  wire [63:0] kVK_F14,                 //                 kVK_F14.data
		input  wire [63:0] kVK_F15,                 //                 kVK_F15.data
		input  wire [63:0] kVK_F16,                 //                 kVK_F16.data
		input  wire [63:0] kVK_F17,                 //                 kVK_F17.data
		input  wire [63:0] kVK_F18,                 //                 kVK_F18.data
		input  wire [63:0] kVK_F19,                 //                 kVK_F19.data
		input  wire [63:0] kVK_F2,                  //                  kVK_F2.data
		input  wire [63:0] kVK_F20,                 //                 kVK_F20.data
		input  wire [63:0] kVK_F3,                  //                  kVK_F3.data
		input  wire [63:0] kVK_F4,                  //                  kVK_F4.data
		input  wire [63:0] kVK_F5,                  //                  kVK_F5.data
		input  wire [63:0] kVK_F6,                  //                  kVK_F6.data
		input  wire [63:0] kVK_F7,                  //                  kVK_F7.data
		input  wire [63:0] kVK_F8,                  //                  kVK_F8.data
		input  wire [63:0] kVK_F9,                  //                  kVK_F9.data
		input  wire [63:0] kVK_ForwardDelete,       //       kVK_ForwardDelete.data
		input  wire [63:0] kVK_Help,                //                kVK_Help.data
		input  wire [63:0] kVK_Home,                //                kVK_Home.data
		input  wire [63:0] kVK_ISO_Section,         //         kVK_ISO_Section.data
		input  wire [63:0] kVK_LeftArrow,           //           kVK_LeftArrow.data
		input  wire [63:0] kVK_Option,              //              kVK_Option.data
		input  wire [63:0] kVK_PageDown,            //            kVK_PageDown.data
		input  wire [63:0] kVK_PageUp,              //              kVK_PageUp.data
		input  wire [63:0] kVK_Return,              //              kVK_Return.data
		input  wire [63:0] kVK_RightArrow,          //          kVK_RightArrow.data
		input  wire [63:0] kVK_Shift,               //               kVK_Shift.data
		input  wire [63:0] kVK_Space,               //               kVK_Space.data
		input  wire [63:0] kVK_Tab,                 //                 kVK_Tab.data
		input  wire [63:0] kVK_UpArrow,             //             kVK_UpArrow.data
		output wire [63:0] avmm_0_rw_address,       //               avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable,    //                        .byteenable
		output wire        avmm_0_rw_read,          //                        .read
		input  wire [63:0] avmm_0_rw_readdata,      //                        .readdata
		output wire        avmm_0_rw_write,         //                        .write
		output wire [63:0] avmm_0_rw_writedata      //                        .writedata
	);
endmodule

