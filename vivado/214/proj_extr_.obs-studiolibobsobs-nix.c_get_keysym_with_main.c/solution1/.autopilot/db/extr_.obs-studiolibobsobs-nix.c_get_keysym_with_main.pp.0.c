# 1 "extr_.obs-studiolibobsobs-nix.c_get_keysym_with_main.c"
# 1 "extr_.obs-studiolibobsobs-nix.c_get_keysym_with_main.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/opt/xilinx/Vivado/2019.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 305 "/opt/xilinx/Vivado/2019.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "extr_.obs-studiolibobsobs-nix.c_get_keysym_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int obs_key_t ;


 int MOUSE_1 ;
 int MOUSE_2 ;
 int MOUSE_3 ;
 int MOUSE_4 ;
 int MOUSE_5 ;
# 288 "extr_.obs-studiolibobsobs-nix.c_get_keysym_with_main.c"
 int XK_0 ;
 int XK_1 ;
 int XK_2 ;
 int XK_3 ;
 int XK_4 ;
 int XK_5 ;
 int XK_6 ;
 int XK_7 ;
 int XK_8 ;
 int XK_9 ;
 int XK_A ;
 int XK_AE ;
 int XK_Aacute ;
 int XK_Acircumflex ;
 int XK_Adiaeresis ;
 int XK_Agrave ;
 int XK_Alt_L ;
 int XK_Aring ;
 int XK_Atilde ;
 int XK_B ;
 int XK_BackSpace ;
 int XK_C ;
 int XK_Caps_Lock ;
 int XK_Codeinput ;
 int XK_Control_L ;
 int XK_D ;
 int XK_Delete ;
 int XK_Down ;
 int XK_E ;
 int XK_ETH ;
 int XK_Eacute ;
 int XK_Ecircumflex ;
 int XK_Ediaeresis ;
 int XK_Egrave ;
 int XK_Eisu_Shift ;
 int XK_Eisu_toggle ;
 int XK_End ;
 int XK_Escape ;
 int XK_F ;
 int XK_F1 ;
 int XK_F10 ;
 int XK_F11 ;
 int XK_F12 ;
 int XK_F13 ;
 int XK_F14 ;
 int XK_F15 ;
 int XK_F16 ;
 int XK_F17 ;
 int XK_F18 ;
 int XK_F19 ;
 int XK_F2 ;
 int XK_F20 ;
 int XK_F21 ;
 int XK_F22 ;
 int XK_F23 ;
 int XK_F24 ;
 int XK_F25 ;
 int XK_F26 ;
 int XK_F27 ;
 int XK_F28 ;
 int XK_F29 ;
 int XK_F3 ;
 int XK_F30 ;
 int XK_F31 ;
 int XK_F32 ;
 int XK_F33 ;
 int XK_F34 ;
 int XK_F35 ;
 int XK_F4 ;
 int XK_F5 ;
 int XK_F6 ;
 int XK_F7 ;
 int XK_F8 ;
 int XK_F9 ;
 int XK_G ;
 int XK_H ;
 int XK_Hangul ;
 int XK_Hangul_Banja ;
 int XK_Hangul_End ;
 int XK_Hangul_Hanja ;
 int XK_Hangul_Jamo ;
 int XK_Hangul_PostHanja ;
 int XK_Hangul_PreHanja ;
 int XK_Hangul_Romaja ;
 int XK_Hangul_Special ;
 int XK_Hangul_Start ;
 int XK_Hankaku ;
 int XK_Help ;
 int XK_Henkan ;
 int XK_Hiragana ;
 int XK_Hiragana_Katakana ;
 int XK_Home ;
 int XK_Hyper_L ;
 int XK_Hyper_R ;
 int XK_I ;
 int XK_Iacute ;
 int XK_Icircumflex ;
 int XK_Idiaeresis ;
 int XK_Igrave ;
 int XK_Insert ;
 int XK_J ;
 int XK_K ;
 int XK_KP_0 ;
 int XK_KP_1 ;
 int XK_KP_2 ;
 int XK_KP_3 ;
 int XK_KP_4 ;
 int XK_KP_5 ;
 int XK_KP_6 ;
 int XK_KP_7 ;
 int XK_KP_8 ;
 int XK_KP_9 ;
 int XK_KP_Add ;
 int XK_KP_Decimal ;
 int XK_KP_Divide ;
 int XK_KP_Equal ;
 int XK_KP_Multiply ;
 int XK_KP_Separator ;
 int XK_KP_Subtract ;
 int XK_Kana_Lock ;
 int XK_Kana_Shift ;
 int XK_Kanji ;
 int XK_Katakana ;
 int XK_L ;
 int XK_Left ;
 int XK_M ;
 int XK_Massyo ;
 int XK_Menu ;
 int XK_Mode_switch ;
 int XK_Muhenkan ;
 int XK_Multi_key ;
 int XK_MultipleCandidate ;
 int XK_N ;
 int XK_Next ;
 int XK_Ntilde ;
 int XK_Num_Lock ;
 int XK_O ;
 int XK_Oacute ;
 int XK_Ocircumflex ;
 int XK_Odiaeresis ;
 int XK_Ograve ;
 int XK_Ooblique ;
 int XK_P ;
 int XK_Pause ;
 int XK_PreviousCandidate ;
 int XK_Print ;
 int XK_Prior ;
 int XK_Q ;
 int XK_R ;
 int XK_Return ;
 int XK_Right ;
 int XK_Romaji ;
 int XK_S ;
 int XK_Scroll_Lock ;
 int XK_Shift_L ;
 int XK_SingleCandidate ;
 int XK_T ;
 int XK_Tab ;
 int XK_Thorn ;
 int XK_Touroku ;
 int XK_U ;
 int XK_Uacute ;
 int XK_Ucircumflex ;
 int XK_Udiaeresis ;
 int XK_Ugrave ;
 int XK_Up ;
 int XK_V ;
 int XK_W ;
 int XK_X ;
 int XK_Y ;
 int XK_Yacute ;
 int XK_Ydiaeresis ;
 int XK_Z ;
 int XK_Zenkaku ;
 int XK_Zenkaku_Hankaku ;
 int XK_acute ;
 int XK_ampersand ;
 int XK_apostrophe ;
 int XK_asciicircum ;
 int XK_asterisk ;
 int XK_at ;
 int XK_backslash ;
 int XK_bar ;
 int XK_braceleft ;
 int XK_braceright ;
 int XK_bracketleft ;
 int XK_bracketright ;
 int XK_brokenbar ;
 int XK_cedilla ;
 int XK_cent ;
 int XK_colon ;
 int XK_comma ;
 int XK_copyright ;
 int XK_currency ;
 int XK_dead_abovedot ;
 int XK_dead_abovering ;
 int XK_dead_acute ;
 int XK_dead_belowdot ;
 int XK_dead_breve ;
 int XK_dead_caron ;
 int XK_dead_cedilla ;
 int XK_dead_circumflex ;
 int XK_dead_diaeresis ;
 int XK_dead_doubleacute ;
 int XK_dead_grave ;
 int XK_dead_hook ;
 int XK_dead_horn ;
 int XK_dead_iota ;
 int XK_dead_macron ;
 int XK_dead_ogonek ;
 int XK_dead_semivoiced_sound ;
 int XK_dead_tilde ;
 int XK_dead_voiced_sound ;
 int XK_degree ;
 int XK_diaeresis ;
 int XK_division ;
 int XK_dollar ;
 int XK_equal ;
 int XK_exclam ;
 int XK_exclamdown ;
 int XK_grave ;
 int XK_greater ;
 int XK_guillemotleft ;
 int XK_guillemotright ;
 int XK_hyphen ;
 int XK_less ;
 int XK_macron ;
 int XK_masculine ;
 int XK_minus ;
 int XK_mu ;
 int XK_multiply ;
 int XK_nobreakspace ;
 int XK_notsign ;
 int XK_numbersign ;
 int XK_onehalf ;
 int XK_onequarter ;
 int XK_onesuperior ;
 int XK_ordfeminine ;
 int XK_paragraph ;
 int XK_parenleft ;
 int XK_parenright ;
 int XK_percent ;
 int XK_period ;
 int XK_periodcentered ;
 int XK_plus ;
 int XK_plusminus ;
 int XK_question ;
 int XK_questiondown ;
 int XK_quotedbl ;
 int XK_quoteleft ;
 int XK_registered ;
 int XK_section ;
 int XK_semicolon ;
 int XK_slash ;
 int XK_space ;
 int XK_ssharp ;
 int XK_sterling ;
 int XK_threequarters ;
 int XK_threesuperior ;
 int XK_twosuperior ;
 int XK_underscore ;
 int XK_yen ;

int get_keysym(obs_key_t key)
{
 switch (key) {
 case 164: return XK_Return;
 case 314: return XK_Escape;
 case 150: return XK_Tab;
 case 367: return XK_BackSpace;
 case 245: return XK_Insert;
 case 328: return XK_Delete;
 case 179: return XK_Pause;
 case 172: return XK_Print;
 case 254: return XK_Home;
 case 316: return XK_End;
 case 237: return XK_Left;
 case 138: return XK_Up;
 case 163: return XK_Right;
 case 324: return XK_Down;
 case 183: return XK_Prior;
 case 184: return XK_Next;

 case 157: return XK_Shift_L;
 case 352: return XK_Control_L;
 case 378: return XK_Alt_L;
 case 359: return XK_Caps_Lock;
 case 200: return XK_Num_Lock;
 case 160: return XK_Scroll_Lock;

 case 309: return XK_F1;
 case 298: return XK_F2;
 case 287: return XK_F3;
 case 280: return XK_F4;
 case 279: return XK_F5;
 case 278: return XK_F6;
 case 277: return XK_F7;
 case 276: return XK_F8;
 case 275: return XK_F9;
 case 308: return XK_F10;
 case 307: return XK_F11;
 case 306: return XK_F12;
 case 305: return XK_F13;
 case 304: return XK_F14;
 case 303: return XK_F15;
 case 302: return XK_F16;
 case 301: return XK_F17;
 case 300: return XK_F18;
 case 299: return XK_F19;
 case 297: return XK_F20;
 case 296: return XK_F21;
 case 295: return XK_F22;
 case 294: return XK_F23;
 case 293: return XK_F24;
 case 292: return XK_F25;
 case 291: return XK_F26;
 case 290: return XK_F27;
 case 289: return XK_F28;
 case 288: return XK_F29;
 case 286: return XK_F30;
 case 285: return XK_F31;
 case 284: return XK_F32;
 case 283: return XK_F33;
 case 282: return XK_F34;
 case 281: return XK_F35;

 case 231: return XK_Menu;
 case 253: return XK_Hyper_L;
 case 252: return XK_Hyper_R;
 case 258: return XK_Help;
 case 154: return XK_space;

 case 312: return XK_exclam;
 case 168: return XK_quotedbl;
 case 203: return XK_numbersign;
 case 325: return XK_dollar;
 case 178: return XK_percent;
 case 377: return XK_ampersand;
 case 376: return XK_apostrophe;
 case 181: return XK_parenleft;
 case 180: return XK_parenright;
 case 372: return XK_asterisk;
 case 175: return XK_plus;
 case 353: return XK_comma;
 case 230: return XK_minus;
 case 177: return XK_period;
 case 155: return XK_slash;
 case 395: return XK_0;
 case 394: return XK_1;
 case 393: return XK_2;
 case 392: return XK_3;
 case 391: return XK_4;
 case 390: return XK_5;
 case 389: return XK_6;
 case 388: return XK_7;
 case 387: return XK_8;
 case 386: return XK_9;
 case 201: return XK_KP_Equal;
 case 204: return XK_KP_Multiply;
 case 197: return XK_KP_Add;
 case 202: return XK_KP_Separator;
 case 199: return XK_KP_Subtract;
 case 198: return XK_KP_Decimal;
 case 196: return XK_KP_Divide;
 case 214: return XK_KP_0;
 case 213: return XK_KP_1;
 case 212: return XK_KP_2;
 case 211: return XK_KP_3;
 case 210: return XK_KP_4;
 case 209: return XK_KP_5;
 case 208: return XK_KP_6;
 case 207: return XK_KP_7;
 case 206: return XK_KP_8;
 case 205: return XK_KP_9;
 case 354: return XK_colon;
 case 158: return XK_semicolon;
 case 236: return XK_less;
 case 315: return XK_equal;
 case 273: return XK_greater;
 case 170: return XK_question;
 case 371: return XK_at;
 case 385: return XK_A;
 case 369: return XK_B;
 case 360: return XK_C;
 case 349: return XK_D;
 case 323: return XK_E;
 case 310: return XK_F;
 case 274: return XK_G;
 case 270: return XK_H;
 case 250: return XK_I;
 case 244: return XK_J;
 case 243: return XK_K;
 case 238: return XK_L;
 case 235: return XK_M;
 case 218: return XK_N;
 case 195: return XK_O;
 case 185: return XK_P;
 case 171: return XK_Q;
 case 166: return XK_R;
 case 161: return XK_S;
 case 151: return XK_T;
 case 144: return XK_U;
 case 137: return XK_V;
 case 136: return XK_W;
 case 135: return XK_X;
 case 134: return XK_Y;
 case 130: return XK_Z;
 case 363: return XK_bracketleft;
 case 368: return XK_backslash;
 case 362: return XK_bracketright;
 case 374: return XK_asciicircum;
 case 139: return XK_underscore;
 case 167: return XK_quoteleft;
 case 365: return XK_braceleft;
 case 366: return XK_bar;
 case 364: return XK_braceright;
 case 373: return XK_grave;
 case 217: return XK_nobreakspace;
 case 311: return XK_exclamdown;
 case 356: return XK_cent;
 case 152: return XK_sterling;
 case 350: return XK_currency;
 case 131: return XK_yen;
 case 361: return XK_brokenbar;
 case 159: return XK_section;
 case 327: return XK_diaeresis;
 case 351: return XK_copyright;
 case 186: return XK_ordfeminine;
 case 272: return XK_guillemotleft;
 case 216: return XK_notsign;
 case 251: return XK_hyphen;
 case 165: return XK_registered;
 case 234: return XK_macron;
 case 329: return XK_degree;
 case 174: return XK_plusminus;
 case 145: return XK_twosuperior;
 case 147: return XK_threesuperior;
 case 382: return XK_acute;
 case 223: return XK_mu;
 case 182: return XK_paragraph;
 case 176: return XK_periodcentered;
 case 357: return XK_cedilla;
 case 188: return XK_onesuperior;
 case 233: return XK_masculine;
 case 271: return XK_guillemotright;
 case 189: return XK_onequarter;
 case 190: return XK_onehalf;
 case 148: return XK_threequarters;
 case 169: return XK_questiondown;
 case 379: return XK_Agrave;
 case 384: return XK_Aacute;
 case 383: return XK_Acircumflex;
 case 370: return XK_Atilde;
 case 381: return XK_Adiaeresis;
 case 375: return XK_Aring;
 case 380: return XK_AE;
 case 358: return XK_cedilla;
 case 319: return XK_Egrave;
 case 322: return XK_Eacute;
 case 321: return XK_Ecircumflex;
 case 320: return XK_Ediaeresis;
 case 246: return XK_Igrave;
 case 249: return XK_Iacute;
 case 248: return XK_Icircumflex;
 case 247: return XK_Idiaeresis;
 case 313: return XK_ETH;
 case 215: return XK_Ntilde;
 case 191: return XK_Ograve;
 case 194: return XK_Oacute;
 case 193: return XK_Ocircumflex;
 case 192: return XK_Odiaeresis;
 case 220: return XK_multiply;
 case 187: return XK_Ooblique;
 case 140: return XK_Ugrave;
 case 143: return XK_Uacute;
 case 142: return XK_Ucircumflex;
 case 141: return XK_Udiaeresis;
 case 133: return XK_Yacute;
 case 149: return XK_Thorn;
 case 153: return XK_ssharp;
 case 326: return XK_division;
 case 132: return XK_Ydiaeresis;
 case 219: return XK_Multi_key;
 case 355: return XK_Codeinput;
 case 156: return XK_SingleCandidate;
 case 221: return XK_MultipleCandidate;
 case 173: return XK_PreviousCandidate;
 case 229: return XK_Mode_switch;
 case 240: return XK_Kanji;
 case 222: return XK_Muhenkan;
 case 257: return XK_Henkan;
 case 162: return XK_Romaji;
 case 256: return XK_Hiragana;
 case 239: return XK_Katakana;
 case 255: return XK_Hiragana_Katakana;
 case 129: return XK_Zenkaku;
 case 259: return XK_Hankaku;
 case 128: return XK_Zenkaku_Hankaku;
 case 146: return XK_Touroku;
 case 232: return XK_Massyo;
 case 242: return XK_Kana_Lock;
 case 241: return XK_Kana_Shift;
 case 318: return XK_Eisu_Shift;
 case 317: return XK_Eisu_toggle;
 case 269: return XK_Hangul;
 case 260: return XK_Hangul_Start;
 case 267: return XK_Hangul_End;
 case 266: return XK_Hangul_Hanja;
 case 265: return XK_Hangul_Jamo;
 case 262: return XK_Hangul_Romaja;
 case 268: return XK_Hangul_Banja;
 case 263: return XK_Hangul_PreHanja;
 case 264: return XK_Hangul_PostHanja;
 case 261: return XK_Hangul_Special;
 case 338: return XK_dead_grave;
 case 346: return XK_dead_acute;
 case 341: return XK_dead_circumflex;
 case 331: return XK_dead_tilde;
 case 334: return XK_dead_macron;
 case 344: return XK_dead_breve;
 case 348: return XK_dead_abovedot;
 case 340: return XK_dead_diaeresis;
 case 347: return XK_dead_abovering;
 case 339: return XK_dead_doubleacute;
 case 343: return XK_dead_caron;
 case 342: return XK_dead_cedilla;
 case 333: return XK_dead_ogonek;
 case 335: return XK_dead_iota;
 case 330: return XK_dead_voiced_sound;
 case 332: return XK_dead_semivoiced_sound;
 case 345: return XK_dead_belowdot;
 case 337: return XK_dead_hook;
 case 336: return XK_dead_horn;

 case 228: return MOUSE_1;
 case 227: return MOUSE_2;
 case 226: return MOUSE_3;
 case 225: return MOUSE_4;
 case 224: return MOUSE_5;


 default:;
 }
 return 0;
}
int main() {
  obs_key_t key;
  get_keysym(key);
  return 0;
}
