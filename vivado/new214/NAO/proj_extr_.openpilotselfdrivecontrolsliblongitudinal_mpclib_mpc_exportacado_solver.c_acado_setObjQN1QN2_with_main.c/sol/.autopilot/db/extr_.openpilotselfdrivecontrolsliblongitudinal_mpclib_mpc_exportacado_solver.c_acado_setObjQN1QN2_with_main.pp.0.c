# 1 "extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c"
# 1 "extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c" 1
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
# 1 "extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int real_t ;



void acado_setObjQN1QN2( real_t* const tmpFx, real_t* const tmpObjSEndTerm, real_t* const tmpQN1, real_t* const tmpQN2 )
{
tmpQN2[0] = + tmpFx[0]*tmpObjSEndTerm[0] + tmpFx[3]*tmpObjSEndTerm[3] + tmpFx[6]*tmpObjSEndTerm[6];
tmpQN2[1] = + tmpFx[0]*tmpObjSEndTerm[1] + tmpFx[3]*tmpObjSEndTerm[4] + tmpFx[6]*tmpObjSEndTerm[7];
tmpQN2[2] = + tmpFx[0]*tmpObjSEndTerm[2] + tmpFx[3]*tmpObjSEndTerm[5] + tmpFx[6]*tmpObjSEndTerm[8];
tmpQN2[3] = + tmpFx[1]*tmpObjSEndTerm[0] + tmpFx[4]*tmpObjSEndTerm[3] + tmpFx[7]*tmpObjSEndTerm[6];
tmpQN2[4] = + tmpFx[1]*tmpObjSEndTerm[1] + tmpFx[4]*tmpObjSEndTerm[4] + tmpFx[7]*tmpObjSEndTerm[7];
tmpQN2[5] = + tmpFx[1]*tmpObjSEndTerm[2] + tmpFx[4]*tmpObjSEndTerm[5] + tmpFx[7]*tmpObjSEndTerm[8];
tmpQN2[6] = + tmpFx[2]*tmpObjSEndTerm[0] + tmpFx[5]*tmpObjSEndTerm[3] + tmpFx[8]*tmpObjSEndTerm[6];
tmpQN2[7] = + tmpFx[2]*tmpObjSEndTerm[1] + tmpFx[5]*tmpObjSEndTerm[4] + tmpFx[8]*tmpObjSEndTerm[7];
tmpQN2[8] = + tmpFx[2]*tmpObjSEndTerm[2] + tmpFx[5]*tmpObjSEndTerm[5] + tmpFx[8]*tmpObjSEndTerm[8];
tmpQN1[0] = + tmpQN2[0]*tmpFx[0] + tmpQN2[1]*tmpFx[3] + tmpQN2[2]*tmpFx[6];
tmpQN1[1] = + tmpQN2[0]*tmpFx[1] + tmpQN2[1]*tmpFx[4] + tmpQN2[2]*tmpFx[7];
tmpQN1[2] = + tmpQN2[0]*tmpFx[2] + tmpQN2[1]*tmpFx[5] + tmpQN2[2]*tmpFx[8];
tmpQN1[3] = + tmpQN2[3]*tmpFx[0] + tmpQN2[4]*tmpFx[3] + tmpQN2[5]*tmpFx[6];
tmpQN1[4] = + tmpQN2[3]*tmpFx[1] + tmpQN2[4]*tmpFx[4] + tmpQN2[5]*tmpFx[7];
tmpQN1[5] = + tmpQN2[3]*tmpFx[2] + tmpQN2[4]*tmpFx[5] + tmpQN2[5]*tmpFx[8];
tmpQN1[6] = + tmpQN2[6]*tmpFx[0] + tmpQN2[7]*tmpFx[3] + tmpQN2[8]*tmpFx[6];
tmpQN1[7] = + tmpQN2[6]*tmpFx[1] + tmpQN2[7]*tmpFx[4] + tmpQN2[8]*tmpFx[7];
tmpQN1[8] = + tmpQN2[6]*tmpFx[2] + tmpQN2[7]*tmpFx[5] + tmpQN2[8]*tmpFx[8];
}
int main() {
  real_t *const tmpFx;
  real_t *const tmpObjSEndTerm;
  real_t *const tmpQN1;
  real_t *const tmpQN2;
  acado_setObjQN1QN2(tmpFx, tmpObjSEndTerm, tmpQN1, tmpQN2);
  return 0;
}
