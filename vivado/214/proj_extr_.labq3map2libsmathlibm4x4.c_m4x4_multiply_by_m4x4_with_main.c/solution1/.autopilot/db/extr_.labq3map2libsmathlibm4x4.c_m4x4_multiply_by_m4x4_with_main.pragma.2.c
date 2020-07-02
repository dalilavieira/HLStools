# 1 "extr_.labq3map2libsmathlibm4x4.c_m4x4_multiply_by_m4x4_with_main.c"
# 1 "extr_.labq3map2libsmathlibm4x4.c_m4x4_multiply_by_m4x4_with_main.c" 1
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
# 1 "extr_.labq3map2libsmathlibm4x4.c_m4x4_multiply_by_m4x4_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int m4x4_t [1000];



void m4x4_multiply_by_m4x4( m4x4_t dst, const m4x4_t src ){_ssdm_SpecArrayDimSize(dst, 1000);_ssdm_SpecArrayDimSize(src, 1000);
 vec_t dst0, dst1, dst2, dst3;



 dst0 = src[0] * dst[0] + src[1] * dst[4] + src[2] * dst[8] + src[3] * dst[12];
 dst1 = src[4] * dst[0] + src[5] * dst[4] + src[6] * dst[8] + src[7] * dst[12];
 dst2 = src[8] * dst[0] + src[9] * dst[4] + src[10] * dst[8] + src[11] * dst[12];
 dst3 = src[12] * dst[0] + src[13] * dst[4] + src[14] * dst[8] + src[15] * dst[12];
 dst[0] = dst0; dst[4] = dst1; dst[8] = dst2; dst[12] = dst3;

 dst0 = src[0] * dst[1] + src[1] * dst[5] + src[2] * dst[9] + src[3] * dst[13];
 dst1 = src[4] * dst[1] + src[5] * dst[5] + src[6] * dst[9] + src[7] * dst[13];
 dst2 = src[8] * dst[1] + src[9] * dst[5] + src[10] * dst[9] + src[11] * dst[13];
 dst3 = src[12] * dst[1] + src[13] * dst[5] + src[14] * dst[9] + src[15] * dst[13];
 dst[1] = dst0; dst[5] = dst1; dst[9] = dst2; dst[13] = dst3;

 dst0 = src[0] * dst[2] + src[1] * dst[6] + src[2] * dst[10] + src[3] * dst[14];
 dst1 = src[4] * dst[2] + src[5] * dst[6] + src[6] * dst[10] + src[7] * dst[14];
 dst2 = src[8] * dst[2] + src[9] * dst[6] + src[10] * dst[10] + src[11] * dst[14];
 dst3 = src[12] * dst[2] + src[13] * dst[6] + src[14] * dst[10] + src[15] * dst[14];
 dst[2] = dst0; dst[6] = dst1; dst[10] = dst2; dst[14] = dst3;

 dst0 = src[0] * dst[3] + src[1] * dst[7] + src[2] * dst[11] + src[3] * dst[15];
 dst1 = src[4] * dst[3] + src[5] * dst[7] + src[6] * dst[11] + src[7] * dst[15];
 dst2 = src[8] * dst[3] + src[9] * dst[7] + src[10] * dst[11] + src[11] * dst[15];
 dst3 = src[12] * dst[3] + src[13] * dst[7] + src[14] * dst[11] + src[15] * dst[15];
 dst[3] = dst0; dst[7] = dst1; dst[11] = dst2; dst[15] = dst3;
# 76 "extr_.labq3map2libsmathlibm4x4.c_m4x4_multiply_by_m4x4_with_main.c"
}
int main() {
  m4x4_t dst;
  const m4x4_t src;
_ssdm_SpecConstant(src);
# 79 "extr_.labq3map2libsmathlibm4x4.c_m4x4_multiply_by_m4x4_with_main.c"

  m4x4_multiply_by_m4x4(dst, src);
  return 0;
}
