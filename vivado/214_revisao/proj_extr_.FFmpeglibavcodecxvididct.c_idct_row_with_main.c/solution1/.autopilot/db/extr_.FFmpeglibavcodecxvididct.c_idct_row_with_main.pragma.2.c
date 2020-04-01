# 1 "extr_.FFmpeglibavcodecxvididct.c_idct_row_with_main.c"
# 1 "extr_.FFmpeglibavcodecxvididct.c_idct_row_with_main.c" 1
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
# 1 "extr_.FFmpeglibavcodecxvididct.c_idct_row_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.FFmpeglibavcodecxvididct.c_idct_row_with_main.c"
 int const ROW_SHIFT ;

__attribute__((used)) static int idct_row(short *in, const int *const tab, int rnd)
{
    const int c1 = tab[0];
    const int c2 = tab[1];
    const int c3 = tab[2];
    const int c4 = tab[3];
    const int c5 = tab[4];
    const int c6 = tab[5];
    const int c7 = tab[6];

    const int right = in[5] | in[6] | in[7];
    const int left = in[1] | in[2] | in[3];
    if (!(right | in[4])) {
        const int k = c4 * in[0] + rnd;
        if (left) {
            const int a0 = k + c2 * in[2];
            const int a1 = k + c6 * in[2];
            const int a2 = k - c6 * in[2];
            const int a3 = k - c2 * in[2];

            const int b0 = c1 * in[1] + c3 * in[3];
            const int b1 = c3 * in[1] - c7 * in[3];
            const int b2 = c5 * in[1] - c1 * in[3];
            const int b3 = c7 * in[1] - c5 * in[3];

            in[0] = (a0 + b0) >> ROW_SHIFT;
            in[1] = (a1 + b1) >> ROW_SHIFT;
            in[2] = (a2 + b2) >> ROW_SHIFT;
            in[3] = (a3 + b3) >> ROW_SHIFT;
            in[4] = (a3 - b3) >> ROW_SHIFT;
            in[5] = (a2 - b2) >> ROW_SHIFT;
            in[6] = (a1 - b1) >> ROW_SHIFT;
            in[7] = (a0 - b0) >> ROW_SHIFT;
        } else {
            const int a0 = k >> ROW_SHIFT;
            if (a0) {
                in[0] =
                in[1] =
                in[2] =
                in[3] =
                in[4] =
                in[5] =
                in[6] =
                in[7] = a0;
            } else
                return 0;
        }
    } else if (!(left | right)) {
        const int a0 = (rnd + c4 * (in[0] + in[4])) >> ROW_SHIFT;
        const int a1 = (rnd + c4 * (in[0] - in[4])) >> ROW_SHIFT;

        in[0] = a0;
        in[3] = a0;
        in[4] = a0;
        in[7] = a0;
        in[1] = a1;
        in[2] = a1;
        in[5] = a1;
        in[6] = a1;
    } else {
        const int k = c4 * in[0] + rnd;
        const int a0 = k + c2 * in[2] + c4 * in[4] + c6 * in[6];
        const int a1 = k + c6 * in[2] - c4 * in[4] - c2 * in[6];
        const int a2 = k - c6 * in[2] - c4 * in[4] + c2 * in[6];
        const int a3 = k - c2 * in[2] + c4 * in[4] - c6 * in[6];

        const int b0 = c1 * in[1] + c3 * in[3] + c5 * in[5] + c7 * in[7];
        const int b1 = c3 * in[1] - c7 * in[3] - c1 * in[5] - c5 * in[7];
        const int b2 = c5 * in[1] - c1 * in[3] + c7 * in[5] + c3 * in[7];
        const int b3 = c7 * in[1] - c5 * in[3] + c3 * in[5] - c1 * in[7];

        in[0] = (a0 + b0) >> ROW_SHIFT;
        in[1] = (a1 + b1) >> ROW_SHIFT;
        in[2] = (a2 + b2) >> ROW_SHIFT;
        in[3] = (a3 + b3) >> ROW_SHIFT;
        in[4] = (a3 - b3) >> ROW_SHIFT;
        in[5] = (a2 - b2) >> ROW_SHIFT;
        in[6] = (a1 - b1) >> ROW_SHIFT;
        in[7] = (a0 - b0) >> ROW_SHIFT;
    }
    return 1;
}
int main() {
  short * in;
  const int *const tab;
  int rnd;
  idct_row(in, tab, rnd);
  return 0;
}
