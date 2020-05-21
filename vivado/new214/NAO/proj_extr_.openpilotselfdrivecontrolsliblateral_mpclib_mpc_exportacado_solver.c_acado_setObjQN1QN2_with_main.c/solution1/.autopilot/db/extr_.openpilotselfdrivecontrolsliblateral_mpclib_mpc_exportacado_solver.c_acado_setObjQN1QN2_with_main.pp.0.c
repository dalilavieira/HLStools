# 1 "extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c"
# 1 "extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c" 1
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
# 1 "extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int real_t ;



void acado_setObjQN1QN2( real_t* const tmpFx, real_t* const tmpObjSEndTerm, real_t* const tmpQN1, real_t* const tmpQN2 )
{
tmpQN2[0] = + tmpFx[0]*tmpObjSEndTerm[0] + tmpFx[4]*tmpObjSEndTerm[4] + tmpFx[8]*tmpObjSEndTerm[8] + tmpFx[12]*tmpObjSEndTerm[12];
tmpQN2[1] = + tmpFx[0]*tmpObjSEndTerm[1] + tmpFx[4]*tmpObjSEndTerm[5] + tmpFx[8]*tmpObjSEndTerm[9] + tmpFx[12]*tmpObjSEndTerm[13];
tmpQN2[2] = + tmpFx[0]*tmpObjSEndTerm[2] + tmpFx[4]*tmpObjSEndTerm[6] + tmpFx[8]*tmpObjSEndTerm[10] + tmpFx[12]*tmpObjSEndTerm[14];
tmpQN2[3] = + tmpFx[0]*tmpObjSEndTerm[3] + tmpFx[4]*tmpObjSEndTerm[7] + tmpFx[8]*tmpObjSEndTerm[11] + tmpFx[12]*tmpObjSEndTerm[15];
tmpQN2[4] = + tmpFx[1]*tmpObjSEndTerm[0] + tmpFx[5]*tmpObjSEndTerm[4] + tmpFx[9]*tmpObjSEndTerm[8] + tmpFx[13]*tmpObjSEndTerm[12];
tmpQN2[5] = + tmpFx[1]*tmpObjSEndTerm[1] + tmpFx[5]*tmpObjSEndTerm[5] + tmpFx[9]*tmpObjSEndTerm[9] + tmpFx[13]*tmpObjSEndTerm[13];
tmpQN2[6] = + tmpFx[1]*tmpObjSEndTerm[2] + tmpFx[5]*tmpObjSEndTerm[6] + tmpFx[9]*tmpObjSEndTerm[10] + tmpFx[13]*tmpObjSEndTerm[14];
tmpQN2[7] = + tmpFx[1]*tmpObjSEndTerm[3] + tmpFx[5]*tmpObjSEndTerm[7] + tmpFx[9]*tmpObjSEndTerm[11] + tmpFx[13]*tmpObjSEndTerm[15];
tmpQN2[8] = + tmpFx[2]*tmpObjSEndTerm[0] + tmpFx[6]*tmpObjSEndTerm[4] + tmpFx[10]*tmpObjSEndTerm[8] + tmpFx[14]*tmpObjSEndTerm[12];
tmpQN2[9] = + tmpFx[2]*tmpObjSEndTerm[1] + tmpFx[6]*tmpObjSEndTerm[5] + tmpFx[10]*tmpObjSEndTerm[9] + tmpFx[14]*tmpObjSEndTerm[13];
tmpQN2[10] = + tmpFx[2]*tmpObjSEndTerm[2] + tmpFx[6]*tmpObjSEndTerm[6] + tmpFx[10]*tmpObjSEndTerm[10] + tmpFx[14]*tmpObjSEndTerm[14];
tmpQN2[11] = + tmpFx[2]*tmpObjSEndTerm[3] + tmpFx[6]*tmpObjSEndTerm[7] + tmpFx[10]*tmpObjSEndTerm[11] + tmpFx[14]*tmpObjSEndTerm[15];
tmpQN2[12] = + tmpFx[3]*tmpObjSEndTerm[0] + tmpFx[7]*tmpObjSEndTerm[4] + tmpFx[11]*tmpObjSEndTerm[8] + tmpFx[15]*tmpObjSEndTerm[12];
tmpQN2[13] = + tmpFx[3]*tmpObjSEndTerm[1] + tmpFx[7]*tmpObjSEndTerm[5] + tmpFx[11]*tmpObjSEndTerm[9] + tmpFx[15]*tmpObjSEndTerm[13];
tmpQN2[14] = + tmpFx[3]*tmpObjSEndTerm[2] + tmpFx[7]*tmpObjSEndTerm[6] + tmpFx[11]*tmpObjSEndTerm[10] + tmpFx[15]*tmpObjSEndTerm[14];
tmpQN2[15] = + tmpFx[3]*tmpObjSEndTerm[3] + tmpFx[7]*tmpObjSEndTerm[7] + tmpFx[11]*tmpObjSEndTerm[11] + tmpFx[15]*tmpObjSEndTerm[15];
tmpQN1[0] = + tmpQN2[0]*tmpFx[0] + tmpQN2[1]*tmpFx[4] + tmpQN2[2]*tmpFx[8] + tmpQN2[3]*tmpFx[12];
tmpQN1[1] = + tmpQN2[0]*tmpFx[1] + tmpQN2[1]*tmpFx[5] + tmpQN2[2]*tmpFx[9] + tmpQN2[3]*tmpFx[13];
tmpQN1[2] = + tmpQN2[0]*tmpFx[2] + tmpQN2[1]*tmpFx[6] + tmpQN2[2]*tmpFx[10] + tmpQN2[3]*tmpFx[14];
tmpQN1[3] = + tmpQN2[0]*tmpFx[3] + tmpQN2[1]*tmpFx[7] + tmpQN2[2]*tmpFx[11] + tmpQN2[3]*tmpFx[15];
tmpQN1[4] = + tmpQN2[4]*tmpFx[0] + tmpQN2[5]*tmpFx[4] + tmpQN2[6]*tmpFx[8] + tmpQN2[7]*tmpFx[12];
tmpQN1[5] = + tmpQN2[4]*tmpFx[1] + tmpQN2[5]*tmpFx[5] + tmpQN2[6]*tmpFx[9] + tmpQN2[7]*tmpFx[13];
tmpQN1[6] = + tmpQN2[4]*tmpFx[2] + tmpQN2[5]*tmpFx[6] + tmpQN2[6]*tmpFx[10] + tmpQN2[7]*tmpFx[14];
tmpQN1[7] = + tmpQN2[4]*tmpFx[3] + tmpQN2[5]*tmpFx[7] + tmpQN2[6]*tmpFx[11] + tmpQN2[7]*tmpFx[15];
tmpQN1[8] = + tmpQN2[8]*tmpFx[0] + tmpQN2[9]*tmpFx[4] + tmpQN2[10]*tmpFx[8] + tmpQN2[11]*tmpFx[12];
tmpQN1[9] = + tmpQN2[8]*tmpFx[1] + tmpQN2[9]*tmpFx[5] + tmpQN2[10]*tmpFx[9] + tmpQN2[11]*tmpFx[13];
tmpQN1[10] = + tmpQN2[8]*tmpFx[2] + tmpQN2[9]*tmpFx[6] + tmpQN2[10]*tmpFx[10] + tmpQN2[11]*tmpFx[14];
tmpQN1[11] = + tmpQN2[8]*tmpFx[3] + tmpQN2[9]*tmpFx[7] + tmpQN2[10]*tmpFx[11] + tmpQN2[11]*tmpFx[15];
tmpQN1[12] = + tmpQN2[12]*tmpFx[0] + tmpQN2[13]*tmpFx[4] + tmpQN2[14]*tmpFx[8] + tmpQN2[15]*tmpFx[12];
tmpQN1[13] = + tmpQN2[12]*tmpFx[1] + tmpQN2[13]*tmpFx[5] + tmpQN2[14]*tmpFx[9] + tmpQN2[15]*tmpFx[13];
tmpQN1[14] = + tmpQN2[12]*tmpFx[2] + tmpQN2[13]*tmpFx[6] + tmpQN2[14]*tmpFx[10] + tmpQN2[15]*tmpFx[14];
tmpQN1[15] = + tmpQN2[12]*tmpFx[3] + tmpQN2[13]*tmpFx[7] + tmpQN2[14]*tmpFx[11] + tmpQN2[15]*tmpFx[15];
}
int main() {
  real_t *const tmpFx;
  real_t *const tmpObjSEndTerm;
  real_t *const tmpQN1;
  real_t *const tmpQN2;
  acado_setObjQN1QN2(tmpFx, tmpObjSEndTerm, tmpQN1, tmpQN2);
  return 0;
}
