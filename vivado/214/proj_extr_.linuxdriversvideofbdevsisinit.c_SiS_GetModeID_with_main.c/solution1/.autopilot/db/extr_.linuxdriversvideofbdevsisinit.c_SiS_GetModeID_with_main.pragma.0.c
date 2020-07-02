# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_with_main.c"
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_with_main.c"
 unsigned int CRT1_LCDA ;
 unsigned int CRT2_LCD ;
 unsigned short ModeIndex_1024x576[1000] ;
 unsigned short ModeIndex_1024x600[1000] ;
 unsigned short ModeIndex_1024x768[1000] ;
 unsigned short ModeIndex_1152x768[1000] ;
 unsigned short ModeIndex_1152x864[1000] ;
 unsigned short ModeIndex_1280x1024[1000] ;
 unsigned short ModeIndex_1280x720[1000] ;
 unsigned short ModeIndex_1280x800 [1000] ;
 unsigned short ModeIndex_1280x854[1000] ;
 unsigned short ModeIndex_1280x960[1000] ;
 unsigned short ModeIndex_1360x768[1000] ;
 unsigned short ModeIndex_1400x1050[1000] ;
 unsigned short ModeIndex_1600x1200[1000] ;
 unsigned short ModeIndex_1680x1050[1000] ;
 unsigned short ModeIndex_1920x1080[1000] ;
 unsigned short ModeIndex_1920x1440[1000] ;
 unsigned short ModeIndex_300_1280x768 [1000] ;
 unsigned short ModeIndex_300_1360x1024 [1000] ;
 unsigned short ModeIndex_300_2048x1536[1000] ;
 unsigned short ModeIndex_310_1280x768[1000] ;
 unsigned short ModeIndex_310_2048x1536[1000] ;
 unsigned short ModeIndex_320x200[1000] ;
 unsigned short ModeIndex_320x240 [1000] ;
 unsigned short ModeIndex_320x240_FSTN [1000] ;
 unsigned short ModeIndex_400x300[1000] ;
 unsigned short ModeIndex_512x384[1000] ;
 unsigned short ModeIndex_640x400 [1000] ;
 unsigned short ModeIndex_640x480 [1000] ;
 unsigned short ModeIndex_720x480[1000] ;
 unsigned short ModeIndex_720x576 [1000] ;
 unsigned short ModeIndex_768x576 [1000] ;
 unsigned short ModeIndex_800x480 [1000] ;
 unsigned short ModeIndex_800x600[1000] ;
 unsigned short ModeIndex_848x480[1000] ;
 unsigned short ModeIndex_856x480[1000] ;
 unsigned short ModeIndex_960x540[1000] ;
 unsigned short ModeIndex_960x600[1000] ;
 int SIS_300_VGA ;
 int SIS_315_VGA ;

unsigned short
SiS_GetModeID(int VGAEngine, unsigned int VBFlags, int HDisplay, int VDisplay,
  int Depth, bool FSTN, int LCDwidth, int LCDheight)
{
   unsigned short ModeIndex = 0;

   switch(HDisplay)
   {
 case 320:
  if(VDisplay == 200) ModeIndex = ModeIndex_320x200[Depth];
  else if(VDisplay == 240) {
   if((VBFlags & CRT2_LCD) && (FSTN))
    ModeIndex = ModeIndex_320x240_FSTN[Depth];
   else
    ModeIndex = ModeIndex_320x240[Depth];
  }
  break;
 case 400:
  if((!(VBFlags & CRT1_LCDA)) || ((LCDwidth >= 800) && (LCDwidth >= 600))) {
   if(VDisplay == 300) ModeIndex = ModeIndex_400x300[Depth];
  }
  break;
 case 512:
  if((!(VBFlags & CRT1_LCDA)) || ((LCDwidth >= 1024) && (LCDwidth >= 768))) {
   if(VDisplay == 384) ModeIndex = ModeIndex_512x384[Depth];
  }
  break;
 case 640:
  if(VDisplay == 480) ModeIndex = ModeIndex_640x480[Depth];
  else if(VDisplay == 400) ModeIndex = ModeIndex_640x400[Depth];
  break;
 case 720:
  if(VDisplay == 480) ModeIndex = ModeIndex_720x480[Depth];
  else if(VDisplay == 576) ModeIndex = ModeIndex_720x576[Depth];
  break;
 case 768:
  if(VDisplay == 576) ModeIndex = ModeIndex_768x576[Depth];
  break;
 case 800:
  if(VDisplay == 600) ModeIndex = ModeIndex_800x600[Depth];
  else if(VDisplay == 480) ModeIndex = ModeIndex_800x480[Depth];
  break;
 case 848:
  if(VDisplay == 480) ModeIndex = ModeIndex_848x480[Depth];
  break;
 case 856:
  if(VDisplay == 480) ModeIndex = ModeIndex_856x480[Depth];
  break;
 case 960:
  if(VGAEngine == SIS_315_VGA) {
   if(VDisplay == 540) ModeIndex = ModeIndex_960x540[Depth];
   else if(VDisplay == 600) ModeIndex = ModeIndex_960x600[Depth];
  }
  break;
 case 1024:
  if(VDisplay == 576) ModeIndex = ModeIndex_1024x576[Depth];
  else if(VDisplay == 768) ModeIndex = ModeIndex_1024x768[Depth];
  else if(VGAEngine == SIS_300_VGA) {
   if(VDisplay == 600) ModeIndex = ModeIndex_1024x600[Depth];
  }
  break;
 case 1152:
  if(VDisplay == 864) ModeIndex = ModeIndex_1152x864[Depth];
  if(VGAEngine == SIS_300_VGA) {
   if(VDisplay == 768) ModeIndex = ModeIndex_1152x768[Depth];
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
  if(VDisplay == 768) ModeIndex = ModeIndex_1360x768[Depth];
  if(VGAEngine == SIS_300_VGA) {
   if(VDisplay == 1024) ModeIndex = ModeIndex_300_1360x1024[Depth];
  }
  break;
 case 1400:
  if(VGAEngine == SIS_315_VGA) {
   if(VDisplay == 1050) {
    ModeIndex = ModeIndex_1400x1050[Depth];
   }
  }
  break;
 case 1600:
  if(VDisplay == 1200) ModeIndex = ModeIndex_1600x1200[Depth];
  break;
 case 1680:
  if(VGAEngine == SIS_315_VGA) {
   if(VDisplay == 1050) ModeIndex = ModeIndex_1680x1050[Depth];
  }
  break;
 case 1920:
  if(VDisplay == 1440) ModeIndex = ModeIndex_1920x1440[Depth];
  else if(VGAEngine == SIS_315_VGA) {
   if(VDisplay == 1080) ModeIndex = ModeIndex_1920x1080[Depth];
  }
  break;
 case 2048:
  if(VDisplay == 1536) {
   if(VGAEngine == SIS_300_VGA) {
    ModeIndex = ModeIndex_300_2048x1536[Depth];
   } else {
    ModeIndex = ModeIndex_310_2048x1536[Depth];
   }
  }
  break;
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
  int LCDwidth;
  int LCDheight;
  SiS_GetModeID(VGAEngine, VBFlags, HDisplay, VDisplay, Depth, FSTN, LCDwidth, LCDheight);
  return 0;
}
