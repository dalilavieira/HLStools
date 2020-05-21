# 1 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c"
# 1 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c" 1
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
# 1 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int obs_key_t ;


 int INVALID_KEY ;
# 124 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c"
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
 int kVK_ISO_Section ;
 int kVK_LeftArrow ;
 int kVK_Option ;
 int kVK_PageDown ;
 int kVK_PageUp ;
 int kVK_Return ;
 int kVK_RightArrow ;
 int kVK_Shift ;
 int kVK_Space ;
 int kVK_Tab ;
 int kVK_UpArrow ;

int obs_key_to_virtual_key(obs_key_t code)
{
 switch (code) {
 case 225: return kVK_ANSI_A;
 case 223: return kVK_ANSI_B;
 case 218: return kVK_ANSI_C;
 case 213: return kVK_ANSI_D;
 case 209: return kVK_ANSI_E;
 case 204: return kVK_ANSI_F;
 case 183: return kVK_ANSI_G;
 case 182: return kVK_ANSI_H;
 case 179: return kVK_ANSI_I;
 case 178: return kVK_ANSI_J;
 case 177: return kVK_ANSI_K;
 case 176: return kVK_ANSI_L;
 case 173: return kVK_ANSI_M;
 case 170: return kVK_ANSI_N;
 case 152: return kVK_ANSI_O;
 case 151: return kVK_ANSI_P;
 case 147: return kVK_ANSI_Q;
 case 145: return kVK_ANSI_R;
 case 142: return kVK_ANSI_S;
 case 136: return kVK_ANSI_T;
 case 134: return kVK_ANSI_U;
 case 132: return kVK_ANSI_V;
 case 131: return kVK_ANSI_W;
 case 130: return kVK_ANSI_X;
 case 129: return kVK_ANSI_Y;
 case 128: return kVK_ANSI_Z;

 case 234: return kVK_ANSI_1;
 case 233: return kVK_ANSI_2;
 case 232: return kVK_ANSI_3;
 case 231: return kVK_ANSI_4;
 case 230: return kVK_ANSI_5;
 case 229: return kVK_ANSI_6;
 case 228: return kVK_ANSI_7;
 case 227: return kVK_ANSI_8;
 case 226: return kVK_ANSI_9;
 case 235: return kVK_ANSI_0;

 case 144: return kVK_Return;
 case 205: return kVK_Escape;
 case 221: return kVK_Delete;
 case 135: return kVK_Tab;
 case 137: return kVK_Space;
 case 171: return kVK_ANSI_Minus;
 case 206: return kVK_ANSI_Equal;
 case 220: return kVK_ANSI_LeftBracket;
 case 219: return kVK_ANSI_RightBracket;
 case 222: return kVK_ANSI_Backslash;
 case 140: return kVK_ANSI_Semicolon;
 case 146: return kVK_ANSI_Quote;
 case 212: return kVK_ANSI_Grave;
 case 215: return kVK_ANSI_Comma;
 case 148: return kVK_ANSI_Period;
 case 138: return kVK_ANSI_Slash;
 case 217: return kVK_CapsLock;
 case 141: return kVK_ISO_Section;

 case 203: return kVK_F1;
 case 192: return kVK_F2;
 case 190: return kVK_F3;
 case 189: return kVK_F4;
 case 188: return kVK_F5;
 case 187: return kVK_F6;
 case 186: return kVK_F7;
 case 185: return kVK_F8;
 case 184: return kVK_F9;
 case 202: return kVK_F10;
 case 201: return kVK_F11;
 case 200: return kVK_F12;

 case 181: return kVK_Help;
 case 180: return kVK_Home;
 case 149: return kVK_PageUp;
 case 211: return kVK_ForwardDelete;
 case 208: return kVK_End;
 case 150: return kVK_PageDown;

 case 143: return kVK_RightArrow;
 case 174: return kVK_LeftArrow;
 case 210: return kVK_DownArrow;
 case 133: return kVK_UpArrow;

 case 216: return kVK_ANSI_KeypadClear;
 case 153: return kVK_ANSI_KeypadDivide;
 case 158: return kVK_ANSI_KeypadMultiply;
 case 156: return kVK_ANSI_KeypadMinus;
 case 154: return kVK_ANSI_KeypadPlus;
 case 207: return kVK_ANSI_KeypadEnter;

 case 167: return kVK_ANSI_Keypad1;
 case 166: return kVK_ANSI_Keypad2;
 case 165: return kVK_ANSI_Keypad3;
 case 164: return kVK_ANSI_Keypad4;
 case 163: return kVK_ANSI_Keypad5;
 case 162: return kVK_ANSI_Keypad6;
 case 161: return kVK_ANSI_Keypad7;
 case 160: return kVK_ANSI_Keypad8;
 case 159: return kVK_ANSI_Keypad9;
 case 168: return kVK_ANSI_Keypad0;

 case 155: return kVK_ANSI_KeypadDecimal;
 case 157: return kVK_ANSI_KeypadEquals;

 case 199: return kVK_F13;
 case 198: return kVK_F14;
 case 197: return kVK_F15;
 case 196: return kVK_F16;
 case 195: return kVK_F17;
 case 194: return kVK_F18;
 case 193: return kVK_F19;
 case 191: return kVK_F20;

 case 214: return kVK_Control;
 case 139: return kVK_Shift;
 case 224: return kVK_Option;
 case 172: return kVK_Command;





 case 169:
 case 175:
 default:
    break;
 }
 return INVALID_KEY;
}
int main() {
  obs_key_t code;
  obs_key_to_virtual_key(code);
  return 0;
}
