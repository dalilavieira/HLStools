# 1 "extr_.linuxdriversvideofbdevnvidianv_hw.c_nv10CalcArbitration_with_main.c"
# 1 "extr_.linuxdriversvideofbdevnvidianv_hw.c_nv10CalcArbitration_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevnvidianv_hw.c_nv10CalcArbitration_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pclk_khz; int mclk_khz; int nvclk_khz; int mem_page_miss; int memory_width; int enable_video; int pix_bpp; int enable_mp; scalar_t__ memory_type; } ;
typedef TYPE_1__ nv10_sim_state ;
struct TYPE_6__ {int valid; int graphics_lwm; int graphics_burst_size; int video_lwm; int video_burst_size; } ;
typedef TYPE_2__ nv10_fifo_info ;



void nv10CalcArbitration(nv10_fifo_info * fifo, nv10_sim_state * arb)
{
 int data, pagemiss, width, video_enable, bpp;
 int nvclks, mclks, pclks, vpagemiss, crtpagemiss;
 int nvclk_fill;
 int found, mclk_extra, mclk_loop, cbs, m1;
 int mclk_freq, pclk_freq, nvclk_freq, mp_enable;
 int us_m, us_m_min, us_n, us_p, crtc_drain_rate;
 int vus_m;
 int vpm_us, us_video, cpm_us, us_crt, clwm;
 int clwm_rnd_down;
 int m2us, us_pipe_min, p1clk, p2;
 int min_mclk_extra;
 int us_min_mclk_extra;

 fifo->valid = 1;
 pclk_freq = arb->pclk_khz;
 mclk_freq = arb->mclk_khz;
 nvclk_freq = arb->nvclk_khz;
 pagemiss = arb->mem_page_miss;
 width = arb->memory_width / 64;
 video_enable = arb->enable_video;
 bpp = arb->pix_bpp;
 mp_enable = arb->enable_mp;
 clwm = 0;

 cbs = 512;

 pclks = 4;

 nvclks = 3;
 nvclks += 2;

 mclks = 1;
 mclks += 1;
 mclks += 5;

 mclks += 2;
 mclks += 2;
 mclks += 7;


 if (arb->memory_type == 0)
  if (arb->memory_width == 64)
   mclks += 4;
  else
   mclks += 2;
 else if (arb->memory_width == 64)
  mclks += 2;
 else
  mclks += 1;

 if ((!video_enable) && (arb->memory_width == 128)) {
  mclk_extra = (bpp == 32) ? 31 : 42;
  min_mclk_extra = 17;
 } else {
  mclk_extra = (bpp == 32) ? 8 : 4;

  min_mclk_extra = 18;
 }


 nvclks += 1;
 nvclks += 1;
 nvclks += 1;
 nvclks += 1;

 if (mp_enable)
  mclks += 4;


 nvclks += 0;
 pclks += 0;
 found = 0;
 while (found != 1) {
  fifo->valid = 1;
  found = 1;
  mclk_loop = mclks + mclk_extra;

  us_m = mclk_loop * 1000 * 1000 / mclk_freq;

  us_m_min = mclks * 1000 * 1000 / mclk_freq;
  us_min_mclk_extra = min_mclk_extra * 1000 * 1000 / mclk_freq;

  us_n = nvclks * 1000 * 1000 / nvclk_freq;

  us_p = pclks * 1000 * 1000 / pclk_freq;
  us_pipe_min = us_m_min + us_n + us_p;


  vus_m = mclk_loop * 1000 * 1000 / mclk_freq;

  if (video_enable) {
   crtc_drain_rate = pclk_freq * bpp / 8;

   vpagemiss = 1;
   vpagemiss += 1;

   crtpagemiss = 2;
   if (mp_enable)
    crtpagemiss += 1;

   vpm_us =
       (vpagemiss * pagemiss) * 1000 * 1000 / mclk_freq;


   us_video = vpm_us + vus_m;

   cpm_us =
       crtpagemiss * pagemiss * 1000 * 1000 / mclk_freq;

   us_crt = us_video
       + cpm_us
       + us_m + us_n + us_p
       ;

   clwm = us_crt * crtc_drain_rate / (1000 * 1000);

   clwm++;
  } else {

   crtc_drain_rate = pclk_freq * bpp / 8;

   crtpagemiss = 1;
   crtpagemiss += 1;
   if (mp_enable)
    crtpagemiss += 1;
   cpm_us =
       crtpagemiss * pagemiss * 1000 * 1000 / mclk_freq;
   us_crt = cpm_us + us_m + us_n + us_p;
   clwm = us_crt * crtc_drain_rate / (1000 * 1000);

   clwm++;


   if (width == 1) {
    nvclk_fill = nvclk_freq * 8;
    if (crtc_drain_rate * 100 >= nvclk_fill * 102)

     clwm = 0xfff;

    else if (crtc_drain_rate * 100 >=
      nvclk_fill * 98) {
     clwm = 1024;
     cbs = 512;
    }
   }
  }





  clwm_rnd_down = ((int)clwm / 8) * 8;
  if (clwm_rnd_down < clwm)
   clwm += 8;

  m1 = clwm + cbs - 1024;
  m2us = us_pipe_min + us_min_mclk_extra;


  p1clk = m2us * pclk_freq / (1000 * 1000);
  p2 = p1clk * bpp / 8;

  if ((p2 < m1) && (m1 > 0)) {
   fifo->valid = 0;
   found = 0;
   if (min_mclk_extra == 0) {
    if (cbs <= 32) {

     found = 1;
    } else {

     cbs = cbs / 2;
    }
   } else {
    min_mclk_extra--;
   }
  } else {
   if (clwm > 1023) {
    fifo->valid = 0;
    found = 0;
    if (min_mclk_extra == 0)

     found = 1;
    else
     min_mclk_extra--;
   }
  }

  if (clwm < (1024 - cbs + 8))
   clwm = 1024 - cbs + 8;
  data = (int)(clwm);


  fifo->graphics_lwm = data;
  fifo->graphics_burst_size = cbs;

  fifo->video_lwm = 1024;
  fifo->video_burst_size = 512;
 }
}
int main() {
  nv10_fifo_info * fifo;
  nv10_sim_state * arb;
  nv10CalcArbitration(fifo, arb);
  return 0;
}
