# 1 "extr_.opensslcryptoececp_nistp521.c_felem_reduce_with_main.c"
# 1 "extr_.opensslcryptoececp_nistp521.c_felem_reduce_with_main.c" 1
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
# 1 "extr_.opensslcryptoececp_nistp521.c_felem_reduce_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int limb ;
typedef int* largefelem ;
typedef int* felem ;


 int bottom52bits ;
 int bottom58bits ;

__attribute__((used)) static void felem_reduce(felem out, const largefelem in)
{
    u64 overflow1, overflow2;

    out[0] = ((limb) in[0]) & bottom58bits;
    out[1] = ((limb) in[1]) & bottom58bits;
    out[2] = ((limb) in[2]) & bottom58bits;
    out[3] = ((limb) in[3]) & bottom58bits;
    out[4] = ((limb) in[4]) & bottom58bits;
    out[5] = ((limb) in[5]) & bottom58bits;
    out[6] = ((limb) in[6]) & bottom58bits;
    out[7] = ((limb) in[7]) & bottom58bits;
    out[8] = ((limb) in[8]) & bottom58bits;



    out[1] += ((limb) in[0]) >> 58;
    out[1] += (((limb) (in[0] >> 64)) & bottom52bits) << 6;




    out[2] += ((limb) (in[0] >> 64)) >> 52;

    out[2] += ((limb) in[1]) >> 58;
    out[2] += (((limb) (in[1] >> 64)) & bottom52bits) << 6;
    out[3] += ((limb) (in[1] >> 64)) >> 52;

    out[3] += ((limb) in[2]) >> 58;
    out[3] += (((limb) (in[2] >> 64)) & bottom52bits) << 6;
    out[4] += ((limb) (in[2] >> 64)) >> 52;

    out[4] += ((limb) in[3]) >> 58;
    out[4] += (((limb) (in[3] >> 64)) & bottom52bits) << 6;
    out[5] += ((limb) (in[3] >> 64)) >> 52;

    out[5] += ((limb) in[4]) >> 58;
    out[5] += (((limb) (in[4] >> 64)) & bottom52bits) << 6;
    out[6] += ((limb) (in[4] >> 64)) >> 52;

    out[6] += ((limb) in[5]) >> 58;
    out[6] += (((limb) (in[5] >> 64)) & bottom52bits) << 6;
    out[7] += ((limb) (in[5] >> 64)) >> 52;

    out[7] += ((limb) in[6]) >> 58;
    out[7] += (((limb) (in[6] >> 64)) & bottom52bits) << 6;
    out[8] += ((limb) (in[6] >> 64)) >> 52;

    out[8] += ((limb) in[7]) >> 58;
    out[8] += (((limb) (in[7] >> 64)) & bottom52bits) << 6;




    overflow1 = ((limb) (in[7] >> 64)) >> 52;

    overflow1 += ((limb) in[8]) >> 58;
    overflow1 += (((limb) (in[8] >> 64)) & bottom52bits) << 6;
    overflow2 = ((limb) (in[8] >> 64)) >> 52;

    overflow1 <<= 1;
    overflow2 <<= 1;

    out[0] += overflow1;
    out[1] += overflow2;

    out[1] += out[0] >> 58;
    out[0] &= bottom58bits;





}
int main() {
  felem out;
  const largefelem in;
  felem_reduce(out, in);
  return 0;
}
