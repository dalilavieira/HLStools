# 1 "extr_.linuxdriversmediapciivtvivtv-yuv.c_ivtv_yuv_window_setup_with_main.c"
# 1 "extr_.linuxdriversmediapciivtvivtv-yuv.c_ivtv_yuv_window_setup_with_main.c" 1
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
# 1 "extr_.linuxdriversmediapciivtvivtv-yuv.c_ivtv_yuv_window_setup_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct yuv_frame_info {scalar_t__ src_x; scalar_t__ src_y; int src_w; int dst_w; int src_h; int dst_h; int interlaced_y; int pan_y; int dst_y; int vis_h; int pan_x; int dst_x; int vis_w; scalar_t__ lace_mode; scalar_t__ interlaced_uv; } ;
struct TYPE_2__ {int osd_x_offset; int osd_y_offset; scalar_t__ track_osd; struct yuv_frame_info old_frame_info; } ;
struct ivtv {TYPE_1__ yuv_info; } ;


 int IVTV_YUV_UPDATE_HORIZONTAL ;
 int IVTV_YUV_UPDATE_INVALID ;
 int IVTV_YUV_UPDATE_VERTICAL ;

__attribute__((used)) static u32 ivtv_yuv_window_setup(struct ivtv *itv, struct yuv_frame_info *f)
{
 struct yuv_frame_info *of = &itv->yuv_info.old_frame_info;
 int osd_crop;
 u32 osd_scale;
 u32 yuv_update = 0;


 if (f->src_x < 0)
  f->src_x = 0;
 if (f->src_y < 0)
  f->src_y = 0;


 if ((osd_crop = f->src_w - 4 * f->dst_w) > 0) {
  f->src_x += osd_crop / 2;
  f->src_w = (f->src_w - osd_crop) & ~3;
  f->dst_w = f->src_w / 4;
  f->dst_w += f->dst_w & 1;
 }


 if (f->src_h / f->dst_h >= 2) {


  f->interlaced_y = 1;

  if ((osd_crop = f->src_h - 4 * f->dst_h) > 0) {

   f->src_y += osd_crop / 2;
   f->src_h = (f->src_h - osd_crop) & ~3;
   f->dst_h = f->src_h / 4;
   f->dst_h += f->dst_h & 1;
  }
 }


 if ((int)f->dst_w <= 2 || (int)f->dst_h <= 2 ||
     (int)f->src_w <= 2 || (int)f->src_h <= 2) {
  return IVTV_YUV_UPDATE_INVALID;
 }


 osd_scale = (f->src_h << 16) / f->dst_h;

 if ((osd_crop = f->pan_y - f->dst_y) > 0) {

  f->src_y += (osd_scale * osd_crop) >> 16;
  f->src_h -= (osd_scale * osd_crop) >> 16;
  f->dst_h -= osd_crop;
  f->dst_y = 0;
 } else {
  f->dst_y -= f->pan_y;
 }

 if ((osd_crop = f->dst_h + f->dst_y - f->vis_h) > 0) {

  f->dst_h -= osd_crop;
  f->src_h -= (osd_scale * osd_crop) >> 16;
 }

 osd_scale = (f->src_w << 16) / f->dst_w;

 if ((osd_crop = f->pan_x - f->dst_x) > 0) {

  f->src_x += (osd_scale * osd_crop) >> 16;
  f->src_w -= (osd_scale * osd_crop) >> 16;
  f->dst_w -= osd_crop;
  f->dst_x = 0;
 } else {
  f->dst_x -= f->pan_x;
 }

 if ((osd_crop = f->dst_w + f->dst_x - f->vis_w) > 0) {

  f->dst_w -= osd_crop;
  f->src_w -= (osd_scale * osd_crop) >> 16;
 }

 if (itv->yuv_info.track_osd) {

  f->dst_x += itv->yuv_info.osd_x_offset;
  f->dst_y += itv->yuv_info.osd_y_offset;
 }



 f->dst_w &= ~1;
 f->dst_x &= ~1;

 f->src_w += f->src_x & 1;
 f->src_x &= ~1;

 f->src_w &= ~1;
 f->dst_w &= ~1;

 f->dst_h &= ~1;
 f->dst_y &= ~1;

 f->src_h += f->src_y & 1;
 f->src_y &= ~1;

 f->src_h &= ~1;
 f->dst_h &= ~1;




 if (f->dst_w < f->src_w / 4) {
  f->src_w &= ~3;
  f->dst_w = f->src_w / 4;
  f->dst_w += f->dst_w & 1;
 }
 if (f->dst_h < f->src_h / 4) {
  f->src_h &= ~3;
  f->dst_h = f->src_h / 4;
  f->dst_h += f->dst_h & 1;
 }


 if ((int)f->dst_w <= 2 || (int)f->dst_h <= 2 ||
     (int)f->src_w <= 2 || (int)f->src_h <= 2) {
  return IVTV_YUV_UPDATE_INVALID;
 }


 if ((of->dst_w != f->dst_w) || (of->src_w != f->src_w) ||
     (of->dst_x != f->dst_x) || (of->src_x != f->src_x) ||
     (of->pan_x != f->pan_x) || (of->vis_w != f->vis_w)) {
  yuv_update |= IVTV_YUV_UPDATE_HORIZONTAL;
 }

 if ((of->src_h != f->src_h) || (of->dst_h != f->dst_h) ||
     (of->dst_y != f->dst_y) || (of->src_y != f->src_y) ||
     (of->pan_y != f->pan_y) || (of->vis_h != f->vis_h) ||
     (of->lace_mode != f->lace_mode) ||
     (of->interlaced_y != f->interlaced_y) ||
     (of->interlaced_uv != f->interlaced_uv)) {
  yuv_update |= IVTV_YUV_UPDATE_VERTICAL;
 }

 return yuv_update;
}
int main() {
  struct ivtv * itv;
  struct yuv_frame_info * f;
  ivtv_yuv_window_setup(itv, f);
  return 0;
}
