# 1 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_calculate_square_border_with_main.c"
# 1 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_calculate_square_border_with_main.c" 1
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
# 1 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_calculate_square_border_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int left; unsigned int width; unsigned int top; unsigned int height; } ;
struct TYPE_3__ {unsigned int width; unsigned int left; unsigned int height; unsigned int top; } ;
struct tpg_data {unsigned int src_width; unsigned int src_height; int vid_aspect; scalar_t__ pix_aspect; TYPE_2__ border; TYPE_1__ square; } ;


 scalar_t__ TPG_PIXEL_ASPECT_NTSC ;
 scalar_t__ TPG_PIXEL_ASPECT_PAL ;

 int TPG_VIDEO_ASPECT_16X9_ANAMORPHIC ;



void tpg_calculate_square_border(struct tpg_data *tpg)
{
 unsigned w = tpg->src_width;
 unsigned h = tpg->src_height;
 unsigned sq_w, sq_h;

 sq_w = (w * 2 / 5) & ~1;
 if (((w - sq_w) / 2) & 1)
  sq_w += 2;
 sq_h = sq_w;
 tpg->square.width = sq_w;
 if (tpg->vid_aspect == TPG_VIDEO_ASPECT_16X9_ANAMORPHIC) {
  unsigned ana_sq_w = (sq_w / 4) * 3;

  if (((w - ana_sq_w) / 2) & 1)
   ana_sq_w += 2;
  tpg->square.width = ana_sq_w;
 }
 tpg->square.left = (w - tpg->square.width) / 2;
 if (tpg->pix_aspect == TPG_PIXEL_ASPECT_NTSC)
  sq_h = sq_w * 10 / 11;
 else if (tpg->pix_aspect == TPG_PIXEL_ASPECT_PAL)
  sq_h = sq_w * 59 / 54;
 tpg->square.height = sq_h;
 tpg->square.top = (h - sq_h) / 2;
 tpg->border.left = 0;
 tpg->border.width = w;
 tpg->border.top = 0;
 tpg->border.height = h;
 switch (tpg->vid_aspect) {
 case 128:
  if (tpg->pix_aspect)
   return;
  if (3 * w >= 4 * h) {
   tpg->border.width = ((4 * h) / 3) & ~1;
   if (((w - tpg->border.width) / 2) & ~1)
    tpg->border.width -= 2;
   tpg->border.left = (w - tpg->border.width) / 2;
   break;
  }
  tpg->border.height = ((3 * w) / 4) & ~1;
  tpg->border.top = (h - tpg->border.height) / 2;
  break;
 case 130:
  if (tpg->pix_aspect) {
   tpg->border.height = tpg->pix_aspect == TPG_PIXEL_ASPECT_NTSC ? 420 : 506;
   tpg->border.top = (h - tpg->border.height) / 2;
   break;
  }
  if (9 * w >= 14 * h) {
   tpg->border.width = ((14 * h) / 9) & ~1;
   if (((w - tpg->border.width) / 2) & ~1)
    tpg->border.width -= 2;
   tpg->border.left = (w - tpg->border.width) / 2;
   break;
  }
  tpg->border.height = ((9 * w) / 14) & ~1;
  tpg->border.top = (h - tpg->border.height) / 2;
  break;
 case 129:
  if (tpg->pix_aspect) {
   tpg->border.height = tpg->pix_aspect == TPG_PIXEL_ASPECT_NTSC ? 368 : 442;
   tpg->border.top = (h - tpg->border.height) / 2;
   break;
  }
  if (9 * w >= 16 * h) {
   tpg->border.width = ((16 * h) / 9) & ~1;
   if (((w - tpg->border.width) / 2) & ~1)
    tpg->border.width -= 2;
   tpg->border.left = (w - tpg->border.width) / 2;
   break;
  }
  tpg->border.height = ((9 * w) / 16) & ~1;
  tpg->border.top = (h - tpg->border.height) / 2;
  break;
 default:
  break;
 }
}
int main() {
  struct tpg_data * tpg;
  tpg_calculate_square_border(tpg);
  return 0;
}
