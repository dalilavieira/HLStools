# 1 "extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main.c"
# 1 "extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main.c" 1
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
# 1 "extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int UInt16 ;


 int INVALID_KEY ;
# 190 "extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main.c"
 int kVK_ANSI_0 ;
 int kVK_ANSI_1 ;
 int kVK_ANSI_2 ;
 int kVK_ANSI_3 ;
 int kVK_ANSI_4 ;
 int kVK_ANSI_5 ;
 int kVK_ANSI_6 ;
 int kVK_ANSI_7 ;
 int kVK_ANSI_8 ;
 int kVK_ANSI_9 ;
 int kVK_ANSI_A ;
 int kVK_ANSI_B ;
 int kVK_ANSI_Backslash ;
 int kVK_ANSI_C ;
 int kVK_ANSI_Comma ;
 int kVK_ANSI_D ;
 int kVK_ANSI_E ;
 int kVK_ANSI_Equal ;
 int kVK_ANSI_F ;
 int kVK_ANSI_G ;
 int kVK_ANSI_Grave ;
 int kVK_ANSI_H ;
 int kVK_ANSI_I ;
 int kVK_ANSI_J ;
 int kVK_ANSI_K ;
 int kVK_ANSI_Keypad0 ;
 int kVK_ANSI_Keypad1 ;
 int kVK_ANSI_Keypad2 ;
 int kVK_ANSI_Keypad3 ;
 int kVK_ANSI_Keypad4 ;
 int kVK_ANSI_Keypad5 ;
 int kVK_ANSI_Keypad6 ;
 int kVK_ANSI_Keypad7 ;
 int kVK_ANSI_Keypad8 ;
 int kVK_ANSI_Keypad9 ;
 int kVK_ANSI_KeypadClear ;
 int kVK_ANSI_KeypadDecimal ;
 int kVK_ANSI_KeypadDivide ;
 int kVK_ANSI_KeypadEnter ;
 int kVK_ANSI_KeypadEquals ;
 int kVK_ANSI_KeypadMinus ;
 int kVK_ANSI_KeypadMultiply ;
 int kVK_ANSI_KeypadPlus ;
 int kVK_ANSI_L ;
 int kVK_ANSI_LeftBracket ;
 int kVK_ANSI_M ;
 int kVK_ANSI_Minus ;
 int kVK_ANSI_N ;
 int kVK_ANSI_O ;
 int kVK_ANSI_P ;
 int kVK_ANSI_Period ;
 int kVK_ANSI_Q ;
 int kVK_ANSI_Quote ;
 int kVK_ANSI_R ;
 int kVK_ANSI_RightBracket ;
 int kVK_ANSI_S ;
 int kVK_ANSI_Semicolon ;
 int kVK_ANSI_Slash ;
 int kVK_ANSI_T ;
 int kVK_ANSI_U ;
 int kVK_ANSI_V ;
 int kVK_ANSI_W ;
 int kVK_ANSI_X ;
 int kVK_ANSI_Y ;
 int kVK_ANSI_Z ;
 int kVK_CapsLock ;
 int kVK_Command ;
 int kVK_Control ;
 int kVK_Delete ;
 int kVK_DownArrow ;
 int kVK_End ;
 int kVK_Escape ;
 int kVK_F1 ;
 int kVK_F10 ;
 int kVK_F11 ;
 int kVK_F12 ;
 int kVK_F13 ;
 int kVK_F14 ;
 int kVK_F15 ;
 int kVK_F16 ;
 int kVK_F17 ;
 int kVK_F18 ;
 int kVK_F19 ;
 int kVK_F2 ;
 int kVK_F20 ;
 int kVK_F3 ;
 int kVK_F4 ;
 int kVK_F5 ;
 int kVK_F6 ;
 int kVK_F7 ;
 int kVK_F8 ;
 int kVK_F9 ;
 int kVK_ForwardDelete ;
 int kVK_Help ;
 int kVK_Home ;
 int kVK_LeftArrow ;
 int kVK_Mute ;
 int kVK_Option ;
 int kVK_PageDown ;
 int kVK_PageUp ;
 int kVK_Return ;
 int kVK_RightArrow ;
 int kVK_RightControl ;
 int kVK_RightOption ;
 int kVK_RightShift ;
 int kVK_Shift ;
 int kVK_Space ;
 int kVK_Tab ;
 int kVK_UpArrow ;
 int kVK_VolumeDown ;
 int kVK_VolumeUp ;

UInt16 usage_to_carbon(UInt32 usage)
{
 switch (usage)
 {
 case 267: return INVALID_KEY;
 case 188: return INVALID_KEY;
 case 266: return INVALID_KEY;

 case 290: return kVK_ANSI_A;
 case 286: return kVK_ANSI_B;
 case 284: return kVK_ANSI_C;
 case 274: return kVK_ANSI_D;
 case 270: return kVK_ANSI_E;
 case 262: return kVK_ANSI_F;
 case 236: return kVK_ANSI_G;
 case 234: return kVK_ANSI_H;
 case 230: return kVK_ANSI_I;
 case 219: return kVK_ANSI_J;
 case 218: return kVK_ANSI_K;
 case 217: return kVK_ANSI_L;
 case 199: return kVK_ANSI_M;
 case 196: return kVK_ANSI_N;
 case 193: return kVK_ANSI_O;
 case 189: return kVK_ANSI_P;
 case 179: return kVK_ANSI_Q;
 case 177: return kVK_ANSI_R;
 case 169: return kVK_ANSI_S;
 case 160: return kVK_ANSI_T;
 case 158: return kVK_ANSI_U;
 case 155: return kVK_ANSI_V;
 case 152: return kVK_ANSI_W;
 case 151: return kVK_ANSI_X;
 case 150: return kVK_ANSI_Y;
 case 149: return kVK_ANSI_Z;

 case 299: return kVK_ANSI_1;
 case 298: return kVK_ANSI_2;
 case 297: return kVK_ANSI_3;
 case 296: return kVK_ANSI_4;
 case 295: return kVK_ANSI_5;
 case 294: return kVK_ANSI_6;
 case 293: return kVK_ANSI_7;
 case 292: return kVK_ANSI_8;
 case 291: return kVK_ANSI_9;
 case 300: return kVK_ANSI_0;

 case 175: return kVK_Return;
 case 265: return kVK_Escape;
 case 272: return kVK_Delete;
 case 159: return kVK_Tab;
 case 163: return kVK_Space;
 case 231: return kVK_ANSI_Minus;
 case 268: return kVK_ANSI_Equal;
 case 192: return kVK_ANSI_LeftBracket;
 case 279: return kVK_ANSI_RightBracket;
 case 285: return kVK_ANSI_Backslash;
 case 194: return INVALID_KEY;
 case 166: return kVK_ANSI_Semicolon;
 case 178: return kVK_ANSI_Quote;
 case 235: return kVK_ANSI_Grave;
 case 278: return kVK_ANSI_Comma;
 case 183: return kVK_ANSI_Period;
 case 164: return kVK_ANSI_Slash;
 case 282: return kVK_CapsLock;

 case 261: return kVK_F1;
 case 250: return kVK_F2;
 case 244: return kVK_F3;
 case 243: return kVK_F4;
 case 242: return kVK_F5;
 case 241: return kVK_F6;
 case 240: return kVK_F7;
 case 239: return kVK_F8;
 case 238: return kVK_F9;
 case 260: return kVK_F10;
 case 259: return kVK_F11;
 case 258: return kVK_F12;

 case 181: return INVALID_KEY;
 case 168: return INVALID_KEY;
 case 184: return INVALID_KEY;
 case 229: return kVK_Help;
 case 232: return kVK_Home;
 case 186: return kVK_PageUp;
 case 273: return kVK_ForwardDelete;
 case 269: return kVK_End;
 case 187: return kVK_PageDown;

 case 173: return kVK_RightArrow;
 case 206: return kVK_LeftArrow;
 case 271: return kVK_DownArrow;
 case 156: return kVK_UpArrow;

 case 131: return kVK_ANSI_KeypadClear;
 case 128: return kVK_ANSI_KeypadDivide;
 case 137: return kVK_ANSI_KeypadMultiply;
 case 132: return kVK_ANSI_KeypadMinus;
 case 129: return kVK_ANSI_KeypadPlus;
 case 135: return kVK_ANSI_KeypadEnter;

 case 146: return kVK_ANSI_Keypad1;
 case 145: return kVK_ANSI_Keypad2;
 case 144: return kVK_ANSI_Keypad3;
 case 143: return kVK_ANSI_Keypad4;
 case 142: return kVK_ANSI_Keypad5;
 case 141: return kVK_ANSI_Keypad6;
 case 140: return kVK_ANSI_Keypad7;
 case 139: return kVK_ANSI_Keypad8;
 case 138: return kVK_ANSI_Keypad9;
 case 147: return kVK_ANSI_Keypad0;

 case 130: return kVK_ANSI_KeypadDecimal;
 case 195: return INVALID_KEY;
 case 287: return kVK_F13;
 case 182: return INVALID_KEY;
 case 134: return kVK_ANSI_KeypadEquals;

 case 257: return kVK_F13;
 case 256: return kVK_F14;
 case 255: return kVK_F15;
 case 254: return kVK_F16;
 case 253: return kVK_F17;
 case 252: return kVK_F18;
 case 251: return kVK_F19;
 case 249: return kVK_F20;
 case 248: return INVALID_KEY;
 case 247: return INVALID_KEY;
 case 246: return INVALID_KEY;
 case 245: return INVALID_KEY;

 case 263: return INVALID_KEY;
 case 233: return INVALID_KEY;
 case 198: return 0x7F;
 case 167: return kVK_ANSI_KeypadEnter;
 case 162: return INVALID_KEY;
 case 289: return INVALID_KEY;
 case 157: return INVALID_KEY;
 case 275: return INVALID_KEY;
 case 277: return INVALID_KEY;
 case 185: return INVALID_KEY;
 case 237: return INVALID_KEY;

 case 197: return kVK_Mute;
 case 153: return kVK_VolumeUp;
 case 154: return kVK_VolumeDown;

 case 202: return INVALID_KEY;
 case 201: return INVALID_KEY;
 case 200: return INVALID_KEY;

 case 136: return INVALID_KEY;
 case 133: return INVALID_KEY;
 case 228: return INVALID_KEY;
 case 227: return INVALID_KEY;
 case 226: return INVALID_KEY;
 case 225: return INVALID_KEY;
 case 224: return INVALID_KEY;
 case 223: return INVALID_KEY;
 case 222: return INVALID_KEY;
 case 221: return INVALID_KEY;
 case 220: return INVALID_KEY;

 case 216: return INVALID_KEY;
 case 215: return INVALID_KEY;
 case 214: return INVALID_KEY;
 case 213: return INVALID_KEY;
 case 212: return INVALID_KEY;
 case 211: return INVALID_KEY;
 case 210: return INVALID_KEY;
 case 209: return INVALID_KEY;
 case 208: return INVALID_KEY;

 case 288: return INVALID_KEY;
 case 161: return INVALID_KEY;
 case 283: return INVALID_KEY;
 case 281: return INVALID_KEY;
 case 180: return INVALID_KEY;
 case 176: return INVALID_KEY;
 case 165: return INVALID_KEY;
 case 190: return INVALID_KEY;
 case 191: return INVALID_KEY;
 case 280: return INVALID_KEY;
 case 276: return INVALID_KEY;
 case 264: return INVALID_KEY;



 case 205: return kVK_Control;
 case 203: return kVK_Shift;
 case 207: return kVK_Option;
 case 204: return kVK_Command;
 case 172: return kVK_RightControl;
 case 170: return kVK_RightShift;
 case 174: return kVK_RightOption;
 case 171: return 0x36;



 case 148: return INVALID_KEY;
 default: return INVALID_KEY;
 }
 return INVALID_KEY;
}
int main() {
  UInt32 usage;
  usage_to_carbon(usage);
  return 0;
}
