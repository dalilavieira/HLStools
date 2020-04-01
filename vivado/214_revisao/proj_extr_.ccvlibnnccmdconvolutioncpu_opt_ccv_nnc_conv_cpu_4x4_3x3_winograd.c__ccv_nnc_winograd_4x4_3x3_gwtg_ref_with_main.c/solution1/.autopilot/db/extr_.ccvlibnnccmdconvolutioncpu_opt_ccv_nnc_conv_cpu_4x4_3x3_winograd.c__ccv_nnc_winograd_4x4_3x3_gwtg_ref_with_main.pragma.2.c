# 1 "extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c"
# 1 "extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c" 1
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
# 1 "extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 15 "extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c"
__attribute__((used)) inline static void _ccv_nnc_winograd_4x4_3x3_gwtg_ref(const float* const w, const int c, float* gwtg)
{
 int i;
 for (i = 0; i < c; i++)
 {
  float g[18];
# 33 "extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c"
  g[0] = w[i] / 4;
  g[1] = w[c + i] / 4;
  g[2] = w[2 * c + i] / 4;

  g[3] = -(w[i] + w[3 * c + i] + w[6 * c + i]) / 6;
  g[4] = -(w[c + i] + w[4 * c + i] + w[7 * c + i]) / 6;
  g[5] = -(w[2 * c + i] + w[5 * c + i] + w[8 * c + i]) / 6;

  g[6] = (-w[i] + w[3 * c + i] - w[6 * c + i]) / 6;
  g[7] = (-w[c + i] + w[4 * c + i] - w[7 * c + i]) / 6;
  g[8] = (-w[2 * c + i] + w[5 * c + i] - w[8 * c + i]) / 6;

  g[9] = (w[i] + 2 * w[3 * c + i] + 4 * w[6 * c + i]) / 24;
  g[10] = (w[c + i] + 2 * w[4 * c + i] + 4 * w[7 * c + i]) / 24;
  g[11] = (w[2 * c + i] + 2 * w[5 * c + i] + 4 * w[8 * c + i]) / 24;

  g[12] = (w[i] - 2 * w[3 * c + i] + 4 * w[6 * c + i]) / 24;
  g[13] = (w[c + i] - 2 * w[4 * c + i] + 4 * w[7 * c + i]) / 24;
  g[14] = (w[2 * c + i] - 2 * w[5 * c + i] + 4 * w[8 * c + i]) / 24;

  g[15] = w[6 * c + i];
  g[16] = w[7 * c + i];
  g[17] = w[8 * c + i];
# 71 "extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c"
  gwtg[0] = g[0] / 4;
  gwtg[c] = -(g[0] + g[1] + g[2]) / 6;
  gwtg[2 * c] = (-g[0] + g[1] - g[2]) / 6;
  gwtg[3 * c] = (g[0] + 2 * g[1] + 4 * g[2]) / 24;
  gwtg[4 * c] = (g[0] - 2 * g[1] + 4 * g[2]) / 24;
  gwtg[5 * c] = g[2];

  gwtg[6 * c] = g[3] / 4;
  gwtg[7 * c] = -(g[3] + g[4] + g[5]) / 6;
  gwtg[8 * c] = (-g[3] + g[4] - g[5]) / 6;
  gwtg[9 * c] = (g[3] + 2 * g[4] + 4 * g[5]) / 24;
  gwtg[10 * c] = (g[3] - 2 * g[4] + 4 * g[5]) / 24;
  gwtg[11 * c] = g[5];

  gwtg[12 * c] = g[6] / 4;
  gwtg[13 * c] = -(g[6] + g[7] + g[8]) / 6;
  gwtg[14 * c] = (-g[6] + g[7] - g[8]) / 6;
  gwtg[15 * c] = (g[6] + 2 * g[7] + 4 * g[8]) / 24;
  gwtg[16 * c] = (g[6] - 2 * g[7] + 4 * g[8]) / 24;
  gwtg[17 * c] = g[8];

  gwtg[18 * c] = g[9] / 4;
  gwtg[19 * c] = -(g[9] + g[10] + g[11]) / 6;
  gwtg[20 * c] = (-g[9] + g[10] - g[11]) / 6;
  gwtg[21 * c] = (g[9] + 2 * g[10] + 4 * g[11]) / 24;
  gwtg[22 * c] = (g[9] - 2 * g[10] + 4 * g[11]) / 24;
  gwtg[23 * c] = g[11];

  gwtg[24 * c] = g[12] / 4;
  gwtg[25 * c] = -(g[12] + g[13] + g[14]) / 6;
  gwtg[26 * c] = (-g[12] + g[13] - g[14]) / 6;
  gwtg[27 * c] = (g[12] + 2 * g[13] + 4 * g[14]) / 24;
  gwtg[28 * c] = (g[12] - 2 * g[13] + 4 * g[14]) / 24;
  gwtg[29 * c] = g[14];

  gwtg[30 * c] = g[15] / 4;
  gwtg[31 * c] = -(g[15] + g[16] + g[17]) / 6;
  gwtg[32 * c] = (-g[15] + g[16] - g[17]) / 6;
  gwtg[33 * c] = (g[15] + 2 * g[16] + 4 * g[17]) / 24;
  gwtg[34 * c] = (g[15] - 2 * g[16] + 4 * g[17]) / 24;
  gwtg[35 * c] = g[17];
  ++gwtg;
 }
}
int main() {
  const float *const w;
  const int c;
  float * gwtg;
  _ccv_nnc_winograd_4x4_3x3_gwtg_ref(w, c, gwtg);
  return 0;
}
