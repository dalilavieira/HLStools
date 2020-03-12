# 1 "extr_.linuxdriversvideofbdevimsttfb.c_imsttfb_check_var_with_main.c"
# 1 "extr_.linuxdriversvideofbdevimsttfb.c_imsttfb_check_var_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevimsttfb.c_imsttfb_check_var_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_7__ {int length; scalar_t__ msb_right; int offset; } ;
struct TYPE_6__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_10__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres_virtual; int xres; int yres_virtual; int yres; int vmode; int height; int width; int left_margin; int right_margin; int upper_margin; int lower_margin; int hsync_len; int vsync_len; TYPE_3__ transp; TYPE_2__ blue; TYPE_1__ green; TYPE_5__ red; scalar_t__ nonstd; } ;
struct TYPE_9__ {int smem_len; } ;
struct fb_info {TYPE_4__ fix; } ;
typedef int __u32 ;


 int EINVAL ;
 int FB_VMODE_MASK ;
 int FB_VMODE_NONINTERLACED ;
 int PAGE_SIZE ;

__attribute__((used)) static int
imsttfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 if ((var->bits_per_pixel != 8 && var->bits_per_pixel != 16
     && var->bits_per_pixel != 24 && var->bits_per_pixel != 32)
     || var->xres_virtual < var->xres || var->yres_virtual < var->yres
     || var->nonstd
     || (var->vmode & FB_VMODE_MASK) != FB_VMODE_NONINTERLACED)
  return -EINVAL;

 if ((var->xres * var->yres) * (var->bits_per_pixel >> 3) > info->fix.smem_len
     || (var->xres_virtual * var->yres_virtual) * (var->bits_per_pixel >> 3) > info->fix.smem_len)
  return -EINVAL;

 switch (var->bits_per_pixel) {
  case 8:
   var->red.offset = 0;
   var->red.length = 8;
   var->green.offset = 0;
   var->green.length = 8;
   var->blue.offset = 0;
   var->blue.length = 8;
   var->transp.offset = 0;
   var->transp.length = 0;
   break;
  case 16:
   if (var->green.length != 6)
    var->red.offset = 10;
   var->red.length = 5;
   var->green.offset = 5;
   if (var->green.length != 6)
    var->green.length = 5;
   var->blue.offset = 0;
   var->blue.length = 5;
   var->transp.offset = 0;
   var->transp.length = 0;
   break;
  case 24:
   var->red.offset = 16;
   var->red.length = 8;
   var->green.offset = 8;
   var->green.length = 8;
   var->blue.offset = 0;
   var->blue.length = 8;
   var->transp.offset = 0;
   var->transp.length = 0;
   break;
  case 32:
   var->red.offset = 16;
   var->red.length = 8;
   var->green.offset = 8;
   var->green.length = 8;
   var->blue.offset = 0;
   var->blue.length = 8;
   var->transp.offset = 24;
   var->transp.length = 8;
   break;
 }

 if (var->yres == var->yres_virtual) {
  __u32 vram = (info->fix.smem_len - (PAGE_SIZE << 2));
  var->yres_virtual = ((vram << 3) / var->bits_per_pixel) / var->xres_virtual;
  if (var->yres_virtual < var->yres)
   var->yres_virtual = var->yres;
 }

 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.msb_right = 0;
 var->height = -1;
 var->width = -1;
 var->vmode = FB_VMODE_NONINTERLACED;
 var->left_margin = var->right_margin = 16;
 var->upper_margin = var->lower_margin = 16;
 var->hsync_len = var->vsync_len = 8;
 return 0;
}
int main() {
  struct fb_var_screeninfo * var;
  struct fb_info * info;
  imsttfb_check_var(var, info);
  return 0;
}
