# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_TV_with_main.c"
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_TV_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_TV_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_TV_with_main.c"
 unsigned short* ModeIndex_1024x576 ;
 unsigned short* ModeIndex_1024x768 ;
 unsigned short* ModeIndex_1280x1024 ;
 unsigned short* ModeIndex_1280x720 ;
 unsigned short* ModeIndex_320x200 ;
 unsigned short* ModeIndex_320x240 ;
 unsigned short* ModeIndex_400x300 ;
 unsigned short* ModeIndex_512x384 ;
 unsigned short* ModeIndex_640x400 ;
 unsigned short* ModeIndex_640x480 ;
 unsigned short* ModeIndex_720x480 ;
 unsigned short* ModeIndex_720x576 ;
 unsigned short* ModeIndex_768x576 ;
 unsigned short* ModeIndex_800x480 ;
 unsigned short* ModeIndex_800x600 ;
 unsigned short* ModeIndex_960x600 ;
 int SIS_315_VGA ;
 unsigned int TV_HIVISION ;
 unsigned int TV_PAL ;
 unsigned int TV_PALM ;
 unsigned int TV_YPBPR ;
 unsigned int TV_YPBPR1080I ;
 unsigned int TV_YPBPR750P ;
 unsigned int VB2_30xBLV ;
 unsigned int VB2_CHRONTEL ;
 unsigned int VB2_SISTVBRIDGE ;

unsigned short
SiS_GetModeID_TV(int VGAEngine, unsigned int VBFlags, int HDisplay, int VDisplay, int Depth,
   unsigned int VBFlags2)
{
   unsigned short ModeIndex = 0;

   if(VBFlags2 & VB2_CHRONTEL) {

      switch(HDisplay)
      {
 case 512:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 384) ModeIndex = ModeIndex_512x384[Depth];
      }
      break;
 case 640:
      if(VDisplay == 480) ModeIndex = ModeIndex_640x480[Depth];
      else if(VDisplay == 400) ModeIndex = ModeIndex_640x400[Depth];
      break;
 case 800:
      if(VDisplay == 600) ModeIndex = ModeIndex_800x600[Depth];
      break;
 case 1024:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 768) ModeIndex = ModeIndex_1024x768[Depth];
      }
      break;
      }

   } else if(VBFlags2 & VB2_SISTVBRIDGE) {

      switch(HDisplay)
      {
 case 320:
      if(VDisplay == 200) ModeIndex = ModeIndex_320x200[Depth];
      else if(VDisplay == 240) ModeIndex = ModeIndex_320x240[Depth];
      break;
 case 400:
      if(VDisplay == 300) ModeIndex = ModeIndex_400x300[Depth];
      break;
 case 512:
      if( ((VBFlags & TV_YPBPR) && (VBFlags & (TV_YPBPR750P | TV_YPBPR1080I))) ||
   (VBFlags & TV_HIVISION) ||
   ((!(VBFlags & (TV_YPBPR | TV_PALM))) && (VBFlags & TV_PAL)) ) {
  if(VDisplay == 384) ModeIndex = ModeIndex_512x384[Depth];
      }
      break;
 case 640:
      if(VDisplay == 480) ModeIndex = ModeIndex_640x480[Depth];
      else if(VDisplay == 400) ModeIndex = ModeIndex_640x400[Depth];
      break;
 case 720:
      if((!(VBFlags & TV_HIVISION)) && (!((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR1080I)))) {
  if(VDisplay == 480) {
     ModeIndex = ModeIndex_720x480[Depth];
  } else if(VDisplay == 576) {
     if( ((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR750P)) ||
         ((!(VBFlags & (TV_YPBPR | TV_PALM))) && (VBFlags & TV_PAL)) )
        ModeIndex = ModeIndex_720x576[Depth];
  }
      }
             break;
 case 768:
      if((!(VBFlags & TV_HIVISION)) && (!((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR1080I)))) {
  if( ((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR750P)) ||
      ((!(VBFlags & (TV_YPBPR | TV_PALM))) && (VBFlags & TV_PAL)) ) {
     if(VDisplay == 576) ModeIndex = ModeIndex_768x576[Depth];
  }
             }
      break;
 case 800:
      if(VDisplay == 600) ModeIndex = ModeIndex_800x600[Depth];
      else if(VDisplay == 480) {
  if(!((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR750P))) {
     ModeIndex = ModeIndex_800x480[Depth];
  }
      }
      break;
 case 960:
      if(VGAEngine == SIS_315_VGA) {
  if(VDisplay == 600) {
     if((VBFlags & TV_HIVISION) || ((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR1080I))) {
        ModeIndex = ModeIndex_960x600[Depth];
     }
  }
      }
      break;
 case 1024:
      if(VDisplay == 768) {
  if(VBFlags2 & VB2_30xBLV) {
     ModeIndex = ModeIndex_1024x768[Depth];
  }
      } else if(VDisplay == 576) {
  if( (VBFlags & TV_HIVISION) ||
      ((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR1080I)) ||
      ((VBFlags2 & VB2_30xBLV) &&
       ((!(VBFlags & (TV_YPBPR | TV_PALM))) && (VBFlags & TV_PAL))) ) {
     ModeIndex = ModeIndex_1024x576[Depth];
  }
      }
      break;
 case 1280:
      if(VDisplay == 720) {
  if((VBFlags & TV_HIVISION) ||
     ((VBFlags & TV_YPBPR) && (VBFlags & (TV_YPBPR1080I | TV_YPBPR750P)))) {
     ModeIndex = ModeIndex_1280x720[Depth];
  }
      } else if(VDisplay == 1024) {
  if((VBFlags & TV_HIVISION) ||
     ((VBFlags & TV_YPBPR) && (VBFlags & TV_YPBPR1080I))) {
     ModeIndex = ModeIndex_1280x1024[Depth];
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
  unsigned int VBFlags2;
  SiS_GetModeID_TV(VGAEngine, VBFlags, HDisplay, VDisplay, Depth, VBFlags2);
  return 0;
}
