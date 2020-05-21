# 1 "extr_.linuxdriversmediaplatformvicodecvicodec-codec.c_ifwht_with_main.c"
# 1 "extr_.linuxdriversmediaplatformvicodecvicodec-codec.c_ifwht_with_main.c" 1
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
# 1 "extr_.linuxdriversmediaplatformvicodecvicodec-codec.c_ifwht_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static void ifwht(const s16 *block, s16 *output_block, int intra)
{




 int workspace1[8], workspace2[8];
 int inter = intra ? 0 : 1;
 const s16 *tmp = block;
 s16 *out = output_block;
 int i;

 for (i = 0; i < 8; i++, tmp += 8, out += 8) {

  workspace1[0] = tmp[0] + tmp[1];
  workspace1[1] = tmp[0] - tmp[1];

  workspace1[2] = tmp[2] + tmp[3];
  workspace1[3] = tmp[2] - tmp[3];

  workspace1[4] = tmp[4] + tmp[5];
  workspace1[5] = tmp[4] - tmp[5];

  workspace1[6] = tmp[6] + tmp[7];
  workspace1[7] = tmp[6] - tmp[7];


  workspace2[0] = workspace1[0] + workspace1[2];
  workspace2[1] = workspace1[0] - workspace1[2];
  workspace2[2] = workspace1[1] - workspace1[3];
  workspace2[3] = workspace1[1] + workspace1[3];

  workspace2[4] = workspace1[4] + workspace1[6];
  workspace2[5] = workspace1[4] - workspace1[6];
  workspace2[6] = workspace1[5] - workspace1[7];
  workspace2[7] = workspace1[5] + workspace1[7];


  out[0] = workspace2[0] + workspace2[4];
  out[1] = workspace2[0] - workspace2[4];
  out[2] = workspace2[1] - workspace2[5];
  out[3] = workspace2[1] + workspace2[5];
  out[4] = workspace2[2] + workspace2[6];
  out[5] = workspace2[2] - workspace2[6];
  out[6] = workspace2[3] - workspace2[7];
  out[7] = workspace2[3] + workspace2[7];
 }

 out = output_block;

 for (i = 0; i < 8; i++, out++) {

  workspace1[0] = out[0] + out[1 * 8];
  workspace1[1] = out[0] - out[1 * 8];

  workspace1[2] = out[2 * 8] + out[3 * 8];
  workspace1[3] = out[2 * 8] - out[3 * 8];

  workspace1[4] = out[4 * 8] + out[5 * 8];
  workspace1[5] = out[4 * 8] - out[5 * 8];

  workspace1[6] = out[6 * 8] + out[7 * 8];
  workspace1[7] = out[6 * 8] - out[7 * 8];


  workspace2[0] = workspace1[0] + workspace1[2];
  workspace2[1] = workspace1[0] - workspace1[2];
  workspace2[2] = workspace1[1] - workspace1[3];
  workspace2[3] = workspace1[1] + workspace1[3];

  workspace2[4] = workspace1[4] + workspace1[6];
  workspace2[5] = workspace1[4] - workspace1[6];
  workspace2[6] = workspace1[5] - workspace1[7];
  workspace2[7] = workspace1[5] + workspace1[7];


  if (inter) {
   int d;

   out[0 * 8] = workspace2[0] + workspace2[4];
   out[1 * 8] = workspace2[0] - workspace2[4];
   out[2 * 8] = workspace2[1] - workspace2[5];
   out[3 * 8] = workspace2[1] + workspace2[5];
   out[4 * 8] = workspace2[2] + workspace2[6];
   out[5 * 8] = workspace2[2] - workspace2[6];
   out[6 * 8] = workspace2[3] - workspace2[7];
   out[7 * 8] = workspace2[3] + workspace2[7];

   for (d = 0; d < 8; d++)
    out[8 * d] >>= 6;
  } else {
   int d;

   out[0 * 8] = workspace2[0] + workspace2[4];
   out[1 * 8] = workspace2[0] - workspace2[4];
   out[2 * 8] = workspace2[1] - workspace2[5];
   out[3 * 8] = workspace2[1] + workspace2[5];
   out[4 * 8] = workspace2[2] + workspace2[6];
   out[5 * 8] = workspace2[2] - workspace2[6];
   out[6 * 8] = workspace2[3] - workspace2[7];
   out[7 * 8] = workspace2[3] + workspace2[7];

   for (d = 0; d < 8; d++) {
    out[8 * d] >>= 6;
    out[8 * d] += 128;
   }
  }
 }
}
int main() {
  const s16 * block;
  s16 * output_block;
  int intra;
  ifwht(block, output_block, intra);
  return 0;
}
