# 1 "extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQ1Q2_with_main.c"
# 1 "extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQ1Q2_with_main.c" 1
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
# 1 "extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQ1Q2_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int real_t ;



void acado_setObjQ1Q2( real_t* const tmpFx, real_t* const tmpObjS, real_t* const tmpQ1, real_t* const tmpQ2 )
{
tmpQ2[0] = + tmpFx[0]*tmpObjS[0] + tmpFx[3]*tmpObjS[4] + tmpFx[6]*tmpObjS[8] + tmpFx[9]*tmpObjS[12];
tmpQ2[1] = + tmpFx[0]*tmpObjS[1] + tmpFx[3]*tmpObjS[5] + tmpFx[6]*tmpObjS[9] + tmpFx[9]*tmpObjS[13];
tmpQ2[2] = + tmpFx[0]*tmpObjS[2] + tmpFx[3]*tmpObjS[6] + tmpFx[6]*tmpObjS[10] + tmpFx[9]*tmpObjS[14];
tmpQ2[3] = + tmpFx[0]*tmpObjS[3] + tmpFx[3]*tmpObjS[7] + tmpFx[6]*tmpObjS[11] + tmpFx[9]*tmpObjS[15];
tmpQ2[4] = + tmpFx[1]*tmpObjS[0] + tmpFx[4]*tmpObjS[4] + tmpFx[7]*tmpObjS[8] + tmpFx[10]*tmpObjS[12];
tmpQ2[5] = + tmpFx[1]*tmpObjS[1] + tmpFx[4]*tmpObjS[5] + tmpFx[7]*tmpObjS[9] + tmpFx[10]*tmpObjS[13];
tmpQ2[6] = + tmpFx[1]*tmpObjS[2] + tmpFx[4]*tmpObjS[6] + tmpFx[7]*tmpObjS[10] + tmpFx[10]*tmpObjS[14];
tmpQ2[7] = + tmpFx[1]*tmpObjS[3] + tmpFx[4]*tmpObjS[7] + tmpFx[7]*tmpObjS[11] + tmpFx[10]*tmpObjS[15];
tmpQ2[8] = + tmpFx[2]*tmpObjS[0] + tmpFx[5]*tmpObjS[4] + tmpFx[8]*tmpObjS[8] + tmpFx[11]*tmpObjS[12];
tmpQ2[9] = + tmpFx[2]*tmpObjS[1] + tmpFx[5]*tmpObjS[5] + tmpFx[8]*tmpObjS[9] + tmpFx[11]*tmpObjS[13];
tmpQ2[10] = + tmpFx[2]*tmpObjS[2] + tmpFx[5]*tmpObjS[6] + tmpFx[8]*tmpObjS[10] + tmpFx[11]*tmpObjS[14];
tmpQ2[11] = + tmpFx[2]*tmpObjS[3] + tmpFx[5]*tmpObjS[7] + tmpFx[8]*tmpObjS[11] + tmpFx[11]*tmpObjS[15];
tmpQ1[0] = + tmpQ2[0]*tmpFx[0] + tmpQ2[1]*tmpFx[3] + tmpQ2[2]*tmpFx[6] + tmpQ2[3]*tmpFx[9];
tmpQ1[1] = + tmpQ2[0]*tmpFx[1] + tmpQ2[1]*tmpFx[4] + tmpQ2[2]*tmpFx[7] + tmpQ2[3]*tmpFx[10];
tmpQ1[2] = + tmpQ2[0]*tmpFx[2] + tmpQ2[1]*tmpFx[5] + tmpQ2[2]*tmpFx[8] + tmpQ2[3]*tmpFx[11];
tmpQ1[3] = + tmpQ2[4]*tmpFx[0] + tmpQ2[5]*tmpFx[3] + tmpQ2[6]*tmpFx[6] + tmpQ2[7]*tmpFx[9];
tmpQ1[4] = + tmpQ2[4]*tmpFx[1] + tmpQ2[5]*tmpFx[4] + tmpQ2[6]*tmpFx[7] + tmpQ2[7]*tmpFx[10];
tmpQ1[5] = + tmpQ2[4]*tmpFx[2] + tmpQ2[5]*tmpFx[5] + tmpQ2[6]*tmpFx[8] + tmpQ2[7]*tmpFx[11];
tmpQ1[6] = + tmpQ2[8]*tmpFx[0] + tmpQ2[9]*tmpFx[3] + tmpQ2[10]*tmpFx[6] + tmpQ2[11]*tmpFx[9];
tmpQ1[7] = + tmpQ2[8]*tmpFx[1] + tmpQ2[9]*tmpFx[4] + tmpQ2[10]*tmpFx[7] + tmpQ2[11]*tmpFx[10];
tmpQ1[8] = + tmpQ2[8]*tmpFx[2] + tmpQ2[9]*tmpFx[5] + tmpQ2[10]*tmpFx[8] + tmpQ2[11]*tmpFx[11];
}
int main() {
  real_t *const tmpFx;
  real_t *const tmpObjS;
  real_t *const tmpQ1;
  real_t *const tmpQ2;
  acado_setObjQ1Q2(tmpFx, tmpObjS, tmpQ1, tmpQ2);
  return 0;
}
