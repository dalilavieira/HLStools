# 1 "extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c"
# 1 "extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c" 1
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
# 1 "extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int obs_key_t ;
# 138 "extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c"
 int VK_ADD ;
 int VK_BACK ;
 int VK_CAPITAL ;
 int VK_CLEAR ;
 int VK_CONTROL ;
 int VK_CONVERT ;
 int VK_DECIMAL ;
 int VK_DELETE ;
 int VK_DIVIDE ;
 int VK_DOWN ;
 int VK_END ;
 int VK_ESCAPE ;
 int VK_F1 ;
 int VK_F10 ;
 int VK_F11 ;
 int VK_F12 ;
 int VK_F13 ;
 int VK_F14 ;
 int VK_F15 ;
 int VK_F16 ;
 int VK_F17 ;
 int VK_F18 ;
 int VK_F19 ;
 int VK_F2 ;
 int VK_F20 ;
 int VK_F21 ;
 int VK_F22 ;
 int VK_F23 ;
 int VK_F24 ;
 int VK_F3 ;
 int VK_F4 ;
 int VK_F5 ;
 int VK_F6 ;
 int VK_F7 ;
 int VK_F8 ;
 int VK_F9 ;
 int VK_HANGUL ;
 int VK_HOME ;
 int VK_INSERT ;
 int VK_KANJI ;
 int VK_LBUTTON ;
 int VK_LEFT ;
 int VK_MBUTTON ;
 int VK_MENU ;
 int VK_MULTIPLY ;
 int VK_NEXT ;
 int VK_NONCONVERT ;
 int VK_NUMLOCK ;
 int VK_NUMPAD0 ;
 int VK_NUMPAD1 ;
 int VK_NUMPAD2 ;
 int VK_NUMPAD3 ;
 int VK_NUMPAD4 ;
 int VK_NUMPAD5 ;
 int VK_NUMPAD6 ;
 int VK_NUMPAD7 ;
 int VK_NUMPAD8 ;
 int VK_NUMPAD9 ;
 int VK_OEM_1 ;
 int VK_OEM_102 ;
 int VK_OEM_2 ;
 int VK_OEM_3 ;
 int VK_OEM_4 ;
 int VK_OEM_5 ;
 int VK_OEM_6 ;
 int VK_OEM_7 ;
 int VK_OEM_BACKTAB ;
 int VK_OEM_COMMA ;
 int VK_OEM_FJ_MASSHOU ;
 int VK_OEM_FJ_TOUROKU ;
 int VK_OEM_MINUS ;
 int VK_OEM_PERIOD ;
 int VK_OEM_PLUS ;
 int VK_PAUSE ;
 int VK_PRIOR ;
 int VK_RBUTTON ;
 int VK_RETURN ;
 int VK_RIGHT ;
 int VK_SCROLL ;
 int VK_SHIFT ;
 int VK_SNAPSHOT ;
 int VK_SPACE ;
 int VK_SUBTRACT ;
 int VK_TAB ;
 int VK_UP ;
 int VK_XBUTTON1 ;
 int VK_XBUTTON2 ;

__attribute__((used)) static int get_virtual_key(obs_key_t key)
{
 switch (key) {
 case 145: return VK_RETURN;
 case 219: return VK_ESCAPE;
 case 136: return VK_TAB;
 case 232: return VK_OEM_BACKTAB;
 case 233: return VK_BACK;
 case 187: return VK_INSERT;
 case 223: return VK_DELETE;
 case 151: return VK_PAUSE;
 case 148: return VK_SNAPSHOT;
 case 227: return VK_CLEAR;
 case 189: return VK_HOME;
 case 220: return VK_END;
 case 182: return VK_LEFT;
 case 133: return VK_UP;
 case 144: return VK_RIGHT;
 case 222: return VK_DOWN;
 case 152: return VK_PRIOR;
 case 153: return VK_NEXT;

 case 140: return VK_SHIFT;
 case 225: return VK_CONTROL;
 case 239: return VK_MENU;
 case 228: return VK_CAPITAL;
 case 160: return VK_NUMLOCK;
 case 142: return VK_SCROLL;

 case 217: return VK_F1;
 case 206: return VK_F2;
 case 200: return VK_F3;
 case 199: return VK_F4;
 case 198: return VK_F5;
 case 197: return VK_F6;
 case 196: return VK_F7;
 case 195: return VK_F8;
 case 194: return VK_F9;
 case 216: return VK_F10;
 case 215: return VK_F11;
 case 214: return VK_F12;
 case 213: return VK_F13;
 case 212: return VK_F14;
 case 211: return VK_F15;
 case 210: return VK_F16;
 case 209: return VK_F17;
 case 208: return VK_F18;
 case 207: return VK_F19;
 case 205: return VK_F20;
 case 204: return VK_F21;
 case 203: return VK_F22;
 case 202: return VK_F23;
 case 201: return VK_F24;

 case 138: return VK_SPACE;

 case 238: return VK_OEM_7;
 case 149: return VK_OEM_PLUS;
 case 226: return VK_OEM_COMMA;
 case 179: return VK_OEM_MINUS;
 case 150: return VK_OEM_PERIOD;
 case 139: return VK_OEM_2;
 case 250: return '0';
 case 249: return '1';
 case 248: return '2';
 case 247: return '3';
 case 246: return '4';
 case 245: return '5';
 case 244: return '6';
 case 243: return '7';
 case 242: return '8';
 case 241: return '9';
 case 161: return VK_MULTIPLY;
 case 157: return VK_ADD;
 case 159: return VK_SUBTRACT;
 case 158: return VK_DECIMAL;
 case 156: return VK_DIVIDE;
 case 171: return VK_NUMPAD0;
 case 170: return VK_NUMPAD1;
 case 169: return VK_NUMPAD2;
 case 168: return VK_NUMPAD3;
 case 167: return VK_NUMPAD4;
 case 166: return VK_NUMPAD5;
 case 165: return VK_NUMPAD6;
 case 164: return VK_NUMPAD7;
 case 163: return VK_NUMPAD8;
 case 162: return VK_NUMPAD9;
 case 141: return VK_OEM_1;
 case 240: return 'A';
 case 236: return 'B';
 case 229: return 'C';
 case 224: return 'D';
 case 221: return 'E';
 case 218: return 'F';
 case 193: return 'G';
 case 192: return 'H';
 case 188: return 'I';
 case 186: return 'J';
 case 185: return 'K';
 case 183: return 'L';
 case 181: return 'M';
 case 172: return 'N';
 case 155: return 'O';
 case 154: return 'P';
 case 147: return 'Q';
 case 146: return 'R';
 case 143: return 'S';
 case 137: return 'T';
 case 134: return 'U';
 case 132: return 'V';
 case 131: return 'W';
 case 130: return 'X';
 case 129: return 'Y';
 case 128: return 'Z';
 case 231: return VK_OEM_4;
 case 235: return VK_OEM_5;
 case 230: return VK_OEM_6;
 case 237: return VK_OEM_3;

 case 190: return VK_CONVERT;
 case 173: return VK_NONCONVERT;
 case 184: return VK_KANJI;
 case 135: return VK_OEM_FJ_TOUROKU;
 case 180: return VK_OEM_FJ_MASSHOU;

 case 191: return VK_HANGUL;

 case 234: return VK_OEM_102;

 case 178: return VK_LBUTTON;
 case 177: return VK_RBUTTON;
 case 176: return VK_MBUTTON;
 case 175: return VK_XBUTTON1;
 case 174: return VK_XBUTTON2;


 default:;
 }
 return 0;
}
int main() {
  obs_key_t key;
  get_virtual_key(key);
  return 0;
}
