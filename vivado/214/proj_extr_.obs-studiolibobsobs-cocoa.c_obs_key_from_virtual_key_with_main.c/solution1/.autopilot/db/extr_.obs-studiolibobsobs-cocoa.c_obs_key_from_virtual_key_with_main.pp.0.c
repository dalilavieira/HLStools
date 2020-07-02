# 1 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_from_virtual_key_with_main.c"
# 1 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_from_virtual_key_with_main.c" 1
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
# 1 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_from_virtual_key_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int obs_key_t ;


 int OBS_KEY_0 ;
 int OBS_KEY_1 ;
 int OBS_KEY_2 ;
 int OBS_KEY_3 ;
 int OBS_KEY_4 ;
 int OBS_KEY_5 ;
 int OBS_KEY_6 ;
 int OBS_KEY_7 ;
 int OBS_KEY_8 ;
 int OBS_KEY_9 ;
 int OBS_KEY_A ;
 int OBS_KEY_ALT ;
 int OBS_KEY_B ;
 int OBS_KEY_BACKSLASH ;
 int OBS_KEY_BACKSPACE ;
 int OBS_KEY_BRACKETLEFT ;
 int OBS_KEY_BRACKETRIGHT ;
 int OBS_KEY_C ;
 int OBS_KEY_CAPSLOCK ;
 int OBS_KEY_CLEAR ;
 int OBS_KEY_COMMA ;
 int OBS_KEY_CONTROL ;
 int OBS_KEY_D ;
 int OBS_KEY_DEAD_GRAVE ;
 int OBS_KEY_DELETE ;
 int OBS_KEY_DOWN ;
 int OBS_KEY_E ;
 int OBS_KEY_END ;
 int OBS_KEY_ENTER ;
 int OBS_KEY_EQUAL ;
 int OBS_KEY_ESCAPE ;
 int OBS_KEY_F ;
 int OBS_KEY_F1 ;
 int OBS_KEY_F10 ;
 int OBS_KEY_F11 ;
 int OBS_KEY_F12 ;
 int OBS_KEY_F13 ;
 int OBS_KEY_F14 ;
 int OBS_KEY_F15 ;
 int OBS_KEY_F16 ;
 int OBS_KEY_F17 ;
 int OBS_KEY_F18 ;
 int OBS_KEY_F19 ;
 int OBS_KEY_F2 ;
 int OBS_KEY_F20 ;
 int OBS_KEY_F3 ;
 int OBS_KEY_F4 ;
 int OBS_KEY_F5 ;
 int OBS_KEY_F6 ;
 int OBS_KEY_F7 ;
 int OBS_KEY_F8 ;
 int OBS_KEY_F9 ;
 int OBS_KEY_G ;
 int OBS_KEY_H ;
 int OBS_KEY_HELP ;
 int OBS_KEY_HOME ;
 int OBS_KEY_I ;
 int OBS_KEY_J ;
 int OBS_KEY_K ;
 int OBS_KEY_L ;
 int OBS_KEY_LEFT ;
 int OBS_KEY_M ;
 int OBS_KEY_META ;
 int OBS_KEY_MINUS ;
 int OBS_KEY_N ;
 int OBS_KEY_NONE ;
 int OBS_KEY_NUM0 ;
 int OBS_KEY_NUM1 ;
 int OBS_KEY_NUM2 ;
 int OBS_KEY_NUM3 ;
 int OBS_KEY_NUM4 ;
 int OBS_KEY_NUM5 ;
 int OBS_KEY_NUM6 ;
 int OBS_KEY_NUM7 ;
 int OBS_KEY_NUM8 ;
 int OBS_KEY_NUM9 ;
 int OBS_KEY_NUMASTERISK ;
 int OBS_KEY_NUMEQUAL ;
 int OBS_KEY_NUMMINUS ;
 int OBS_KEY_NUMPERIOD ;
 int OBS_KEY_NUMPLUS ;
 int OBS_KEY_NUMSLASH ;
 int OBS_KEY_O ;
 int OBS_KEY_P ;
 int OBS_KEY_PAGEDOWN ;
 int OBS_KEY_PAGEUP ;
 int OBS_KEY_PERIOD ;
 int OBS_KEY_Q ;
 int OBS_KEY_QUOTE ;
 int OBS_KEY_R ;
 int OBS_KEY_RETURN ;
 int OBS_KEY_RIGHT ;
 int OBS_KEY_S ;
 int OBS_KEY_SECTION ;
 int OBS_KEY_SEMICOLON ;
 int OBS_KEY_SHIFT ;
 int OBS_KEY_SLASH ;
 int OBS_KEY_SPACE ;
 int OBS_KEY_T ;
 int OBS_KEY_TAB ;
 int OBS_KEY_U ;
 int OBS_KEY_UP ;
 int OBS_KEY_V ;
 int OBS_KEY_W ;
 int OBS_KEY_X ;
 int OBS_KEY_Y ;
 int OBS_KEY_Z ;
# 236 "extr_.obs-studiolibobsobs-cocoa.c_obs_key_from_virtual_key_with_main.c"
obs_key_t obs_key_from_virtual_key(int code)
{
 switch (code) {
 case 230: return OBS_KEY_A;
 case 229: return OBS_KEY_B;
 case 227: return OBS_KEY_C;
 case 225: return OBS_KEY_D;
 case 224: return OBS_KEY_E;
 case 222: return OBS_KEY_F;
 case 221: return OBS_KEY_G;
 case 219: return OBS_KEY_H;
 case 218: return OBS_KEY_I;
 case 217: return OBS_KEY_J;
 case 216: return OBS_KEY_K;
 case 197: return OBS_KEY_L;
 case 195: return OBS_KEY_M;
 case 193: return OBS_KEY_N;
 case 192: return OBS_KEY_O;
 case 191: return OBS_KEY_P;
 case 189: return OBS_KEY_Q;
 case 187: return OBS_KEY_R;
 case 185: return OBS_KEY_S;
 case 182: return OBS_KEY_T;
 case 181: return OBS_KEY_U;
 case 180: return OBS_KEY_V;
 case 179: return OBS_KEY_W;
 case 178: return OBS_KEY_X;
 case 177: return OBS_KEY_Y;
 case 176: return OBS_KEY_Z;

 case 239: return OBS_KEY_1;
 case 238: return OBS_KEY_2;
 case 237: return OBS_KEY_3;
 case 236: return OBS_KEY_4;
 case 235: return OBS_KEY_5;
 case 234: return OBS_KEY_6;
 case 233: return OBS_KEY_7;
 case 232: return OBS_KEY_8;
 case 231: return OBS_KEY_9;
 case 240: return OBS_KEY_0;

 case 138: return OBS_KEY_RETURN;
 case 169: return OBS_KEY_ESCAPE;
 case 172: return OBS_KEY_BACKSPACE;
 case 131: return OBS_KEY_TAB;
 case 132: return OBS_KEY_SPACE;
 case 194: return OBS_KEY_MINUS;
 case 223: return OBS_KEY_EQUAL;
 case 196: return OBS_KEY_BRACKETLEFT;
 case 186: return OBS_KEY_BRACKETRIGHT;
 case 228: return OBS_KEY_BACKSLASH;
 case 184: return OBS_KEY_SEMICOLON;
 case 188: return OBS_KEY_QUOTE;
 case 220: return OBS_KEY_DEAD_GRAVE;
 case 226: return OBS_KEY_COMMA;
 case 190: return OBS_KEY_PERIOD;
 case 183: return OBS_KEY_SLASH;
 case 175: return OBS_KEY_CAPSLOCK;
 case 144: return OBS_KEY_SECTION;

 case 168: return OBS_KEY_F1;
 case 157: return OBS_KEY_F2;
 case 155: return OBS_KEY_F3;
 case 154: return OBS_KEY_F4;
 case 153: return OBS_KEY_F5;
 case 152: return OBS_KEY_F6;
 case 151: return OBS_KEY_F7;
 case 150: return OBS_KEY_F8;
 case 149: return OBS_KEY_F9;
 case 167: return OBS_KEY_F10;
 case 166: return OBS_KEY_F11;
 case 165: return OBS_KEY_F12;

 case 146: return OBS_KEY_HELP;
 case 145: return OBS_KEY_HOME;
 case 139: return OBS_KEY_PAGEUP;
 case 148: return OBS_KEY_DELETE;
 case 170: return OBS_KEY_END;
 case 140: return OBS_KEY_PAGEDOWN;

 case 137: return OBS_KEY_RIGHT;
 case 143: return OBS_KEY_LEFT;
 case 171: return OBS_KEY_DOWN;
 case 130: return OBS_KEY_UP;

 case 205: return OBS_KEY_CLEAR;
 case 203: return OBS_KEY_NUMSLASH;
 case 199: return OBS_KEY_NUMASTERISK;
 case 200: return OBS_KEY_NUMMINUS;
 case 198: return OBS_KEY_NUMPLUS;
 case 202: return OBS_KEY_ENTER;

 case 214: return OBS_KEY_NUM1;
 case 213: return OBS_KEY_NUM2;
 case 212: return OBS_KEY_NUM3;
 case 211: return OBS_KEY_NUM4;
 case 210: return OBS_KEY_NUM5;
 case 209: return OBS_KEY_NUM6;
 case 208: return OBS_KEY_NUM7;
 case 207: return OBS_KEY_NUM8;
 case 206: return OBS_KEY_NUM9;
 case 215: return OBS_KEY_NUM0;

 case 204: return OBS_KEY_NUMPERIOD;
 case 201: return OBS_KEY_NUMEQUAL;

 case 164: return OBS_KEY_F13;
 case 163: return OBS_KEY_F14;
 case 162: return OBS_KEY_F15;
 case 161: return OBS_KEY_F16;
 case 160: return OBS_KEY_F17;
 case 159: return OBS_KEY_F18;
 case 158: return OBS_KEY_F19;
 case 156: return OBS_KEY_F20;

 case 173: return OBS_KEY_CONTROL;
 case 133: return OBS_KEY_SHIFT;
 case 141: return OBS_KEY_ALT;
 case 174: return OBS_KEY_META;
 case 136: return OBS_KEY_CONTROL;
 case 134: return OBS_KEY_SHIFT;
 case 135: return OBS_KEY_ALT;
 case 0x36: return OBS_KEY_META;

 case 147:
 case 142:
 case 129:
 case 128:
  break;
 }
 return OBS_KEY_NONE;
}
int main() {
  int code;
  obs_key_from_virtual_key(code);
  return 0;
}
