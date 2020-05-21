# 1 "extr_.linuxdriversisdnhardwareeiconcapidtmf.c_capidtmf_goertzel_result_with_main.c"
# 1 "extr_.linuxdriversisdnhardwareeiconcapidtmf.c_capidtmf_goertzel_result_with_main.c" 1
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
# 1 "extr_.linuxdriversisdnhardwareeiconcapidtmf.c_capidtmf_goertzel_result_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int dword ;


 int CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT ;

__attribute__((used)) static void capidtmf_goertzel_result(long *buffer, long *coeffs)
{
 int i;
 long d, e, q1, q2, lo, mid, hi;
 dword k;

 for (i = 0; i < CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT; i++)
 {
  q1 = buffer[i];
  q2 = buffer[i + CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT];
  d = coeffs[i] >> 1;
  if (d >= 0)
   d = ((d << 1) * (-q1 >> 16)) + (((dword)(((dword) d) * ((dword)(-q1 & 0xffff)))) >> 15);
  else
   d = ((-d << 1) * (-q1 >> 16)) + (((dword)(((dword) -d) * ((dword)(-q1 & 0xffff)))) >> 15);
  e = (q2 >= 0) ? q2 : -q2;
  if (d >= 0)
  {
   k = ((dword)(d & 0xffff)) * ((dword)(e & 0xffff));
   lo = k & 0xffff;
   mid = k >> 16;
   k = ((dword)(d >> 16)) * ((dword)(e & 0xffff));
   mid += k & 0xffff;
   hi = k >> 16;
   k = ((dword)(d & 0xffff)) * ((dword)(e >> 16));
   mid += k & 0xffff;
   hi += k >> 16;
   hi += ((dword)(d >> 16)) * ((dword)(e >> 16));
  }
  else
  {
   d = -d;
   k = ((dword)(d & 0xffff)) * ((dword)(e & 0xffff));
   lo = -((long)(k & 0xffff));
   mid = -((long)(k >> 16));
   k = ((dword)(d >> 16)) * ((dword)(e & 0xffff));
   mid -= k & 0xffff;
   hi = -((long)(k >> 16));
   k = ((dword)(d & 0xffff)) * ((dword)(e >> 16));
   mid -= k & 0xffff;
   hi -= k >> 16;
   hi -= ((dword)(d >> 16)) * ((dword)(e >> 16));
  }
  if (q2 < 0)
  {
   lo = -lo;
   mid = -mid;
   hi = -hi;
  }
  d = (q1 >= 0) ? q1 : -q1;
  k = ((dword)(d & 0xffff)) * ((dword)(d & 0xffff));
  lo += k & 0xffff;
  mid += k >> 16;
  k = ((dword)(d >> 16)) * ((dword)(d & 0xffff));
  mid += (k & 0xffff) << 1;
  hi += (k >> 16) << 1;
  hi += ((dword)(d >> 16)) * ((dword)(d >> 16));
  d = (q2 >= 0) ? q2 : -q2;
  k = ((dword)(d & 0xffff)) * ((dword)(d & 0xffff));
  lo += k & 0xffff;
  mid += k >> 16;
  k = ((dword)(d >> 16)) * ((dword)(d & 0xffff));
  mid += (k & 0xffff) << 1;
  hi += (k >> 16) << 1;
  hi += ((dword)(d >> 16)) * ((dword)(d >> 16));
  mid += lo >> 16;
  hi += mid >> 16;
  buffer[i] = (lo & 0xffff) | (mid << 16);
  buffer[i + CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT] = hi;
 }
}
int main() {
  long * buffer;
  long * coeffs;
  capidtmf_goertzel_result(buffer, coeffs);
  return 0;
}
