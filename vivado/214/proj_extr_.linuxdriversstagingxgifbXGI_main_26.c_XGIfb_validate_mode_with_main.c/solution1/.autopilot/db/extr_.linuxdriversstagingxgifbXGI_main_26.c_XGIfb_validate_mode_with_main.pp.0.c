# 1 "extr_.linuxdriversstagingxgifbXGI_main_26.c_XGIfb_validate_mode_with_main.c"
# 1 "extr_.linuxdriversstagingxgifbXGI_main_26.c_XGIfb_validate_mode_with_main.c" 1
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
# 1 "extr_.linuxdriversstagingxgifbXGI_main_26.c_XGIfb_validate_mode_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int LVDSHDE; int LVDSVDE; } ;
struct xgi_hw_device_info {int const ulCRT2LCDType; int ulExternalChip; } ;
struct xgifb_video_info {scalar_t__ chip; int display2; unsigned long video_size; int TV_type; int hasVB; TYPE_1__ lvds_data; struct xgi_hw_device_info hw_info; } ;
struct TYPE_4__ {int xres; int yres; int bpp; int chipset; } ;


 int HASVB_CHRONTEL ;
 int HASVB_LVDS_CHRONTEL ;
# 33 "extr_.linuxdriversstagingxgifbXGI_main_26.c_XGIfb_validate_mode_with_main.c"
 int MD_XGI315 ;
 int TVMODE_NTSC ;
 int TVMODE_PAL ;
 scalar_t__ XG21 ;
 scalar_t__ XG27 ;




 TYPE_2__* XGIbios_mode ;

__attribute__((used)) static int XGIfb_validate_mode(struct xgifb_video_info *xgifb_info, int myindex)
{
 u16 xres, yres;
 struct xgi_hw_device_info *hw_info = &xgifb_info->hw_info;
 unsigned long required_mem;

 if (xgifb_info->chip == XG21) {
  if (xgifb_info->display2 == 130) {
   xres = xgifb_info->lvds_data.LVDSHDE;
   yres = xgifb_info->lvds_data.LVDSVDE;
   if (XGIbios_mode[myindex].xres > xres)
    return -1;
   if (XGIbios_mode[myindex].yres > yres)
    return -1;
   if ((XGIbios_mode[myindex].xres < xres) &&
       (XGIbios_mode[myindex].yres < yres)) {
    if (XGIbios_mode[myindex].bpp > 8)
     return -1;
   }
  }
  goto check_memory;
 }


 if (xgifb_info->chip == XG27)
  goto check_memory;

 if (!(XGIbios_mode[myindex].chipset & MD_XGI315))
  return -1;

 switch (xgifb_info->display2) {
 case 130:
  switch (hw_info->ulCRT2LCDType) {
  case 133:
   xres = 640;
   yres = 480;
   break;
  case 132:
   xres = 800;
   yres = 600;
   break;
  case 141:
   xres = 1024;
   yres = 600;
   break;
  case 140:
   xres = 1024;
   yres = 768;
   break;
  case 139:
   xres = 1152;
   yres = 768;
   break;
  case 136:
   xres = 1280;
   yres = 960;
   break;
  case 137:
   xres = 1280;
   yres = 768;
   break;
  case 138:
   xres = 1280;
   yres = 1024;
   break;
  case 135:
   xres = 1400;
   yres = 1050;
   break;
  case 134:
   xres = 1600;
   yres = 1200;
   break;
  default:
   xres = 0;
   yres = 0;
   break;
  }
  if (XGIbios_mode[myindex].xres > xres)
   return -1;
  if (XGIbios_mode[myindex].yres > yres)
   return -1;
  if ((hw_info->ulExternalChip == 0x01) ||
      (hw_info->ulExternalChip == 0x05)) {
   switch (XGIbios_mode[myindex].xres) {
   case 512:
    if (XGIbios_mode[myindex].yres != 512)
     return -1;
    if (hw_info->ulCRT2LCDType == 141)
     return -1;
    break;
   case 640:
    if ((XGIbios_mode[myindex].yres != 400) &&
        (XGIbios_mode[myindex].yres != 480))
     return -1;
    break;
   case 800:
    if (XGIbios_mode[myindex].yres != 600)
     return -1;
    break;
   case 1024:
    if ((XGIbios_mode[myindex].yres != 600) &&
        (XGIbios_mode[myindex].yres != 768))
     return -1;
    if ((XGIbios_mode[myindex].yres == 600) &&
        (hw_info->ulCRT2LCDType != 141))
     return -1;
    break;
   case 1152:
    if ((XGIbios_mode[myindex].yres) != 768)
     return -1;
    if (hw_info->ulCRT2LCDType != 139)
     return -1;
    break;
   case 1280:
    if ((XGIbios_mode[myindex].yres != 768) &&
        (XGIbios_mode[myindex].yres != 1024))
     return -1;
    if ((XGIbios_mode[myindex].yres == 768) &&
        (hw_info->ulCRT2LCDType != 137))
     return -1;
    break;
   case 1400:
    if (XGIbios_mode[myindex].yres != 1050)
     return -1;
    break;
   case 1600:
    if (XGIbios_mode[myindex].yres != 1200)
     return -1;
    break;
   default:
    return -1;
   }
  } else {
   switch (XGIbios_mode[myindex].xres) {
   case 512:
    if (XGIbios_mode[myindex].yres != 512)
     return -1;
    break;
   case 640:
    if ((XGIbios_mode[myindex].yres != 400) &&
        (XGIbios_mode[myindex].yres != 480))
     return -1;
    break;
   case 800:
    if (XGIbios_mode[myindex].yres != 600)
     return -1;
    break;
   case 1024:
    if (XGIbios_mode[myindex].yres != 768)
     return -1;
    break;
   case 1280:
    if ((XGIbios_mode[myindex].yres != 960) &&
        (XGIbios_mode[myindex].yres != 1024))
     return -1;
    if (XGIbios_mode[myindex].yres == 960) {
     if (hw_info->ulCRT2LCDType ==
         135)
      return -1;
    }
    break;
   case 1400:
    if (XGIbios_mode[myindex].yres != 1050)
     return -1;
    break;
   case 1600:
    if (XGIbios_mode[myindex].yres != 1200)
     return -1;
    break;
   default:
    return -1;
   }
  }
  break;
 case 128:
  switch (XGIbios_mode[myindex].xres) {
  case 512:
  case 640:
  case 800:
   break;
  case 720:
   if (xgifb_info->TV_type == TVMODE_NTSC) {
    if (XGIbios_mode[myindex].yres != 480)
     return -1;
   } else if (xgifb_info->TV_type == TVMODE_PAL) {
    if (XGIbios_mode[myindex].yres != 576)
     return -1;
   }

   if (xgifb_info->hasVB == HASVB_LVDS_CHRONTEL ||
       xgifb_info->hasVB == HASVB_CHRONTEL) {
    return -1;
   }
   break;
  case 1024:
   if (xgifb_info->TV_type == TVMODE_NTSC) {
    if (XGIbios_mode[myindex].bpp == 32)
     return -1;
   }
   break;
  default:
   return -1;
  }
  break;
 case 131:
  if (XGIbios_mode[myindex].xres > 1280)
   return -1;
  break;
 case 129:
  break;
 }

check_memory:
 required_mem = XGIbios_mode[myindex].xres * XGIbios_mode[myindex].yres *
         XGIbios_mode[myindex].bpp / 8;
 if (required_mem > xgifb_info->video_size)
  return -1;
 return myindex;
}
int main() {
  struct xgifb_video_info * xgifb_info;
  int myindex;
  XGIfb_validate_mode(xgifb_info, myindex);
  return 0;
}
