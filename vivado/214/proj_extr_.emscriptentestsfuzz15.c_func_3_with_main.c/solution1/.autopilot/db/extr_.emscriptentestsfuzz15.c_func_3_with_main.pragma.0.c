# 1 "extr_.emscriptentestsfuzz15.c_func_3_with_main.c"
# 1 "extr_.emscriptentestsfuzz15.c_func_3_with_main.c" 1
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
# 1 "extr_.emscriptentestsfuzz15.c_func_3_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union U2 {int dummy; } U2 ;
typedef union U1 {int dummy; } U1 ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_8__ {int * member_9; int * member_8; int * member_7; int * member_6; int * member_5; int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
struct TYPE_7__ {int * member_9; int * member_8; int * member_7; int * member_6; int * member_5; int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
struct TYPE_6__ {int * member_9; int * member_8; int * member_7; int * member_6; int * member_5; int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
struct TYPE_5__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_4__ member_0; } ;


 int ** g_111 ;
 int g_1232 ;
 union U2 g_223 ;
 int g_89 ;
 int g_92 ;

__attribute__((used)) static union U2 * const func_3(union U1 p_4, int16_t p_5)
{
    int32_t *l_1968[4][3][10] = {{{&g_89,&g_111[3][5],&g_111[7][8],&g_111[3][5],&g_89,&g_92,(void*)0,(void*)0,&g_111[1][5],&g_111[1][3]},{&g_111[3][5],&g_89,&g_92,(void*)0,&g_111[1][3],&g_89,&g_111[0][6],(void*)0,&g_92,&g_111[1][3]},{&g_111[1][3],(void*)0,&g_111[7][7],&g_92,&g_89,&g_111[7][8],&g_89,&g_89,&g_111[7][8],&g_89}},{{(void*)0,(void*)0,(void*)0,(void*)0,&g_92,&g_111[0][6],&g_1232,&g_89,(void*)0,&g_111[3][5]},{&g_111[1][3],&g_111[1][3],&g_111[3][5],&g_1232,&g_89,(void*)0,(void*)0,&g_1232,(void*)0,&g_111[1][3]},{(void*)0,&g_92,&g_111[1][3],(void*)0,&g_111[7][8],&g_92,(void*)0,&g_92,&g_111[7][8],(void*)0}},{{&g_111[1][5],&g_89,&g_111[1][5],&g_92,&g_111[0][6],(void*)0,&g_111[1][3],&g_1232,&g_92,&g_111[1][3]},{&g_1232,&g_89,&g_111[0][6],(void*)0,(void*)0,&g_111[1][3],&g_92,&g_1232,&g_111[1][5],(void*)0},{(void*)0,&g_111[0][6],&g_111[1][5],&g_111[3][5],&g_92,&g_1232,&g_1232,&g_92,&g_111[3][5],&g_111[1][5]}},{{&g_92,&g_92,&g_111[1][3],(void*)0,(void*)0,&g_111[3][5],&g_111[1][3],&g_1232,&g_89,&g_1232},{&g_89,&g_111[7][7],&g_111[3][5],&g_111[0][6],&g_111[1][3],&g_111[1][3],&g_111[1][3],&g_89,(void*)0,(void*)0},{&g_111[6][8],&g_92,(void*)0,&g_89,&g_1232,&g_1232,&g_1232,&g_89,(void*)0,&g_92}}};
    int32_t **l_1969 = &l_1968[1][0][7];
    union U2 * const l_1970 = &g_223;
    int i, j, k;
    (*l_1969) = l_1968[3][2][3];
    return l_1970;
}
int main() {
  union U1 p_4;
  int16_t p_5;
  func_3(p_4, p_5);
  return 0;
}
