# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_LCD_with_main.c"
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_LCD_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_LCD_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_LCD_with_main.c"
 unsigned short CUT_BARCO1366 ;
 unsigned short CUT_PANEL848 ;
 unsigned short CUT_PANEL856 ;
 unsigned short* ModeIndex_1024x576 ;
 unsigned short* ModeIndex_1024x600 ;
 unsigned short* ModeIndex_1024x768 ;
 unsigned short* ModeIndex_1152x768 ;
 unsigned short* ModeIndex_1152x864 ;
 unsigned short* ModeIndex_1280x1024 ;
 unsigned short* ModeIndex_1280x720 ;
 unsigned short* ModeIndex_1280x800 ;
 unsigned short* ModeIndex_1280x854 ;
 unsigned short* ModeIndex_1280x960 ;
 unsigned short* ModeIndex_1360x768 ;
 unsigned short* ModeIndex_1400x1050 ;
 unsigned short* ModeIndex_1600x1200 ;
 unsigned short* ModeIndex_1680x1050 ;
 unsigned short* ModeIndex_1920x1440 ;
 unsigned short* ModeIndex_300_1280x768 ;
 unsigned short* ModeIndex_300_1360x1024 ;
 unsigned short* ModeIndex_310_1280x768 ;
 unsigned short* ModeIndex_310_2048x1536 ;
 unsigned short* ModeIndex_320x200 ;
 unsigned short* ModeIndex_320x240 ;
 unsigned short* ModeIndex_320x240_FSTN ;
 unsigned short* ModeIndex_400x300 ;
 unsigned short* ModeIndex_512x384 ;
 unsigned short* ModeIndex_640x400 ;
 unsigned short* ModeIndex_640x480 ;
 unsigned short* ModeIndex_720x480 ;
 unsigned short* ModeIndex_720x576 ;
 unsigned short* ModeIndex_768x576 ;
 unsigned short* ModeIndex_800x480 ;
 unsigned short* ModeIndex_800x600 ;
 unsigned short* ModeIndex_848x480 ;
 unsigned short* ModeIndex_856x480 ;
 unsigned short* ModeIndex_960x540 ;
 unsigned short* ModeIndex_960x600 ;
 int SIS_300_VGA ;
 int SIS_315_VGA ;
 unsigned int VB2_30xBDH ;
 unsigned int VB2_LCDOVER1280BRIDGE ;
 unsigned int VB2_LCDOVER1600BRIDGE ;
 unsigned int VB2_LVDS ;
 unsigned int VB2_SISBRIDGE ;
 unsigned int VB2_TRUMPION ;

unsigned short
SiS_GetModeID_LCD(int VGAEngine, unsigned int VBFlags, int HDisplay, int VDisplay,
  int Depth, bool FSTN, unsigned short CustomT, int LCDwidth, int LCDheight,
  unsigned int VBFlags2)
{
   unsigned short ModeIndex = 0;

   if(VBFlags2 & (VB2_LVDS | VB2_30xBDH)) {

      switch(HDisplay)
      {
 case 320:
      if((CustomT != CUT_PANEL848) && (CustomT != CUT_PANEL856)) {
  if(VDisplay == 200) {
     if(!FSTN) ModeIndex = ModeIndex_320x200[Depth];
  } else if(VDisplay == 240) {
     if(!FSTN) ModeIndex = ModeIndex_320x240[Depth];
     else if(VGAEngine == SIS_315_VGA) {
        ModeIndex = ModeIndex_320x240_FSTN[Depth];
     }
  }
      }
      break;
 case 400:
      if((CustomT != CUT_PANEL848) && (CustomT != CUT_PANEL856)) {
  if(!((VGAEngine == SIS_300_VGA) && (VBFlags2 & VB2_TRUMPION))) {
     if(VDisplay == 300) ModeIndex = ModeIndex_400x300[Depth];
  }
      }
      break;
 case 512:
      if((CustomT != CUT_PANEL848) && (CustomT != CUT_PANEL856)) {
  if(!((VGAEngine == SIS_300_VGA) && (VBFlags2 & VB2_TRUMPION))) {
     if(LCDwidth >= 1024 && LCDwidth != 1152 && LCDheight >= 768) {
        if(VDisplay == 384) {
           ModeIndex = ModeIndex_512x384[Depth];
        }
     }
  }
      }
      break;
 case 640:
      if(VDisplay == 480) ModeIndex = ModeIndex_640x480[Depth];
      else if(VDisplay == 400) {
  if((CustomT != CUT_PANEL848) && (CustomT != CUT_PANEL856))
     ModeIndex = ModeIndex_640x400[Depth];
      }
      break;
 case 800:
      if(VDisplay == 600) ModeIndex = ModeIndex_800x600[Depth];
      break;
 case 848:
      if(CustomT == CUT_PANEL848) {
         if(VDisplay == 480) ModeIndex = ModeIndex_848x480[Depth];
      }
      break;
 case 856:
      if(CustomT == CUT_PANEL856) {
         if(VDisplay == 480) ModeIndex = ModeIndex_856x480[Depth];
      }
      break;
 case 1024:
      if(VDisplay == 768) ModeIndex = ModeIndex_1024x768[Depth];
      else if(VGAEngine == SIS_300_VGA) {
  if((VDisplay == 600) && (LCDheight == 600)) {
     ModeIndex = ModeIndex_1024x600[Depth];
  }
      }
      break;
 case 1152:
      if(VGAEngine == SIS_300_VGA) {
  if((VDisplay == 768) && (LCDheight == 768)) {
     ModeIndex = ModeIndex_1152x768[Depth];
  }
      }
      break;
        case 1280:
      if(VDisplay == 1024) ModeIndex = ModeIndex_1280x1024[Depth];
      else if(VGAEngine == SIS_315_VGA) {
  if((VDisplay == 768) && (LCDheight == 768)) {
     ModeIndex = ModeIndex_310_1280x768[Depth];
  }
      }
      break;
 case 1360:
      if(VGAEngine == SIS_300_VGA) {
  if(CustomT == CUT_BARCO1366) {
     if(VDisplay == 1024) ModeIndex = ModeIndex_300_1360x1024[Depth];
  }
      }
      if(CustomT == CUT_PANEL848) {
  if(VDisplay == 768) ModeIndex = ModeIndex_1360x768[Depth];
      }
      break;
 case 1400:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 1050) ModeIndex = ModeIndex_1400x1050[Depth];
      }
      break;
 case 1600:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 1200) ModeIndex = ModeIndex_1600x1200[Depth];
      }
      break;
      }

   } else if(VBFlags2 & VB2_SISBRIDGE) {

      switch(HDisplay)
      {
 case 320:
      if(VDisplay == 200) ModeIndex = ModeIndex_320x200[Depth];
      else if(VDisplay == 240) ModeIndex = ModeIndex_320x240[Depth];
      break;
 case 400:
      if(LCDwidth >= 800 && LCDheight >= 600) {
  if(VDisplay == 300) ModeIndex = ModeIndex_400x300[Depth];
      }
      break;
 case 512:
      if(LCDwidth >= 1024 && LCDheight >= 768 && LCDwidth != 1152) {
  if(VDisplay == 384) ModeIndex = ModeIndex_512x384[Depth];
      }
      break;
 case 640:
      if(VDisplay == 480) ModeIndex = ModeIndex_640x480[Depth];
      else if(VDisplay == 400) ModeIndex = ModeIndex_640x400[Depth];
      break;
 case 720:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 480) ModeIndex = ModeIndex_720x480[Depth];
  else if(VDisplay == 576) ModeIndex = ModeIndex_720x576[Depth];
      }
      break;
 case 768:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 576) ModeIndex = ModeIndex_768x576[Depth];
      }
      break;
 case 800:
      if(VDisplay == 600) ModeIndex = ModeIndex_800x600[Depth];
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 480) ModeIndex = ModeIndex_800x480[Depth];
      }
      break;
 case 848:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 480) ModeIndex = ModeIndex_848x480[Depth];
      }
      break;
 case 856:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 480) ModeIndex = ModeIndex_856x480[Depth];
      }
      break;
 case 960:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 540) ModeIndex = ModeIndex_960x540[Depth];
  else if(VDisplay == 600) ModeIndex = ModeIndex_960x600[Depth];
      }
      break;
 case 1024:
      if(VDisplay == 768) ModeIndex = ModeIndex_1024x768[Depth];
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 576) ModeIndex = ModeIndex_1024x576[Depth];
      }
      break;
 case 1152:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 864) ModeIndex = ModeIndex_1152x864[Depth];
      }
      break;
 case 1280:
      switch(VDisplay) {
      case 720:
  ModeIndex = ModeIndex_1280x720[Depth];
  break;
      case 768:
  if(VGAEngine == SIS_300_VGA) {
     ModeIndex = ModeIndex_300_1280x768[Depth];
  } else {
     ModeIndex = ModeIndex_310_1280x768[Depth];
  }
  break;
      case 800:
  if(VGAEngine == SIS_315_VGA) {
     ModeIndex = ModeIndex_1280x800[Depth];
  }
  break;
      case 854:
  if(VGAEngine == SIS_315_VGA) {
     ModeIndex = ModeIndex_1280x854[Depth];
  }
  break;
      case 960:
  ModeIndex = ModeIndex_1280x960[Depth];
  break;
      case 1024:
  ModeIndex = ModeIndex_1280x1024[Depth];
  break;
      }
      break;
 case 1360:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 768) ModeIndex = ModeIndex_1360x768[Depth];
      }
      break;
 case 1400:
      if(VGAEngine == SIS_315_VGA) {
  if(VBFlags2 & VB2_LCDOVER1280BRIDGE) {
     if(VDisplay == 1050) ModeIndex = ModeIndex_1400x1050[Depth];
  }
      }
      break;
 case 1600:
      if(VGAEngine == SIS_315_VGA) {
  if(VBFlags2 & VB2_LCDOVER1280BRIDGE) {
     if(VDisplay == 1200) ModeIndex = ModeIndex_1600x1200[Depth];
  }
      }
      break;

 case 1680:
      if(VGAEngine == SIS_315_VGA) {
  if(VBFlags2 & VB2_LCDOVER1280BRIDGE) {
     if(VDisplay == 1050) ModeIndex = ModeIndex_1680x1050[Depth];
  }
      }
      break;
 case 1920:
      if(VGAEngine == SIS_315_VGA) {
  if(VBFlags2 & VB2_LCDOVER1600BRIDGE) {
     if(VDisplay == 1440) ModeIndex = ModeIndex_1920x1440[Depth];
  }
      }
      break;
 case 2048:
      if(VGAEngine == SIS_315_VGA) {
  if(VBFlags2 & VB2_LCDOVER1600BRIDGE) {
     if(VDisplay == 1536) ModeIndex = ModeIndex_310_2048x1536[Depth];
  }
      }
      break;

      }
   }

   return ModeIndex;
}
int main() {
  int VGAEngine;
  unsigned int VBFlags;
  int HDisplay;
  int VDisplay;
  int Depth;
  bool FSTN;
  unsigned short CustomT;
  int LCDwidth;
  int LCDheight;
  unsigned int VBFlags2;
  SiS_GetModeID_LCD(VGAEngine, VBFlags, HDisplay, VDisplay, Depth, FSTN, CustomT, LCDwidth, LCDheight, VBFlags2);
  return 0;
}
