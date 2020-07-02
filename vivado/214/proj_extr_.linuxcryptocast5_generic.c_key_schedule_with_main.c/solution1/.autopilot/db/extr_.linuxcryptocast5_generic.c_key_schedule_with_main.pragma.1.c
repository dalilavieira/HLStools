# 1 "extr_.linuxcryptocast5_generic.c_key_schedule_with_main.c"
# 1 "extr_.linuxcryptocast5_generic.c_key_schedule_with_main.c" 1
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
# 1 "extr_.linuxcryptocast5_generic.c_key_schedule_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u32 ;


 int* s5 ;
 int* s6 ;
 int* s7 ;
 int* sb8 ;

__attribute__((used)) static void key_schedule(u32 *x, u32 *z, u32 *k)
{




 z[0] = x[0] ^ s5[((x[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)] ^ s6[((x[(15)/4] >> (8*(3 -((15)%4)))) & 0xff)] ^ s7[((x[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)] ^ sb8[((x[(14)/4] >> (8*(3 -((14)%4)))) & 0xff)] ^
     s7[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)];
 z[1] = x[2] ^ s5[((z[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^ s6[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^ s7[((z[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ sb8[((z[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^
     sb8[((x[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)];
 z[2] = x[3] ^ s5[((z[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s6[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s7[((z[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ sb8[((z[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^
     s5[((x[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)];
 z[3] = x[1] ^ s5[((z[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ s6[((z[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((z[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^ sb8[((z[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^
     s6[((x[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)];
 k[0] = s5[((z[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^ s6[((z[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((z[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ sb8[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s5[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)];
 k[1] = s5[((z[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ s6[((z[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^ s7[((z[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ sb8[((z[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^
     s6[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)];
 k[2] = s5[((z[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)] ^ s6[((z[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)] ^ s7[((z[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^ sb8[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^
     s7[((z[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)];
 k[3] = s5[((z[(14)/4] >> (8*(3 -((14)%4)))) & 0xff)] ^ s6[((z[(15)/4] >> (8*(3 -((15)%4)))) & 0xff)] ^ s7[((z[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ sb8[((z[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^
     sb8[((z[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)];

 x[0] = z[2] ^ s5[((z[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ s6[((z[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s7[((z[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^ sb8[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^
     s7[((z[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)];
 x[1] = z[0] ^ s5[((x[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^ s6[((x[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^ s7[((x[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ sb8[((x[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^
     sb8[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)];
 x[2] = z[1] ^ s5[((x[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s6[((x[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s7[((x[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ sb8[((x[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^
     s5[((z[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)];
 x[3] = z[3] ^ s5[((x[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ s6[((x[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((x[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^ sb8[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^
     s6[((z[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)];
 k[4] = s5[((x[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^ s6[((x[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^ s7[((x[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)] ^ sb8[((x[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)] ^
     s5[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)];
 k[5] = s5[((x[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ s6[((x[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^ s7[((x[(14)/4] >> (8*(3 -((14)%4)))) & 0xff)] ^ sb8[((x[(15)/4] >> (8*(3 -((15)%4)))) & 0xff)] ^
     s6[((x[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)];
 k[6] = s5[((x[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s6[((x[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s7[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^ sb8[((x[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((x[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)];
 k[7] = s5[((x[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ s6[((x[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^ s7[((x[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ sb8[((x[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^
     sb8[((x[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)];

 z[0] = x[0] ^ s5[((x[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)] ^ s6[((x[(15)/4] >> (8*(3 -((15)%4)))) & 0xff)] ^ s7[((x[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)] ^ sb8[((x[(14)/4] >> (8*(3 -((14)%4)))) & 0xff)] ^
     s7[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)];
 z[1] = x[2] ^ s5[((z[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^ s6[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^ s7[((z[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ sb8[((z[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^
     sb8[((x[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)];
 z[2] = x[3] ^ s5[((z[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s6[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s7[((z[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ sb8[((z[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^
     s5[((x[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)];
 z[3] = x[1] ^ s5[((z[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ s6[((z[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((z[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^ sb8[((z[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^
     s6[((x[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)];
 k[8] = s5[((z[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^ s6[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^ s7[((z[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)] ^ sb8[((z[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)] ^
     s5[((z[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)];
 k[9] = s5[((z[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ s6[((z[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^ s7[((z[(14)/4] >> (8*(3 -((14)%4)))) & 0xff)] ^ sb8[((z[(15)/4] >> (8*(3 -((15)%4)))) & 0xff)] ^
     s6[((z[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)];
 k[10] = s5[((z[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s6[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s7[((z[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^ sb8[((z[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)];
 k[11] = s5[((z[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ s6[((z[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^ s7[((z[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ sb8[((z[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^
     sb8[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)];

 x[0] = z[2] ^ s5[((z[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ s6[((z[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s7[((z[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^ sb8[((z[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^
     s7[((z[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)];
 x[1] = z[0] ^ s5[((x[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^ s6[((x[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^ s7[((x[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ sb8[((x[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^
     sb8[((z[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)];
 x[2] = z[1] ^ s5[((x[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ s6[((x[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s7[((x[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ sb8[((x[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^
     s5[((z[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)];
 x[3] = z[3] ^ s5[((x[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ s6[((x[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((x[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^ sb8[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^
     s6[((z[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)];
 k[12] = s5[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)] ^ s6[((x[(9)/4] >> (8*(3 -((9)%4)))) & 0xff)] ^ s7[((x[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)] ^ sb8[((x[(6)/4] >> (8*(3 -((6)%4)))) & 0xff)] ^ s5[((x[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)];
 k[13] = s5[((x[(10)/4] >> (8*(3 -((10)%4)))) & 0xff)] ^ s6[((x[(11)/4] >> (8*(3 -((11)%4)))) & 0xff)] ^ s7[((x[(5)/4] >> (8*(3 -((5)%4)))) & 0xff)] ^ sb8[((x[(4)/4] >> (8*(3 -((4)%4)))) & 0xff)] ^
     s6[((x[(7)/4] >> (8*(3 -((7)%4)))) & 0xff)];
 k[14] = s5[((x[(12)/4] >> (8*(3 -((12)%4)))) & 0xff)] ^ s6[((x[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)] ^ s7[((x[(3)/4] >> (8*(3 -((3)%4)))) & 0xff)] ^ sb8[((x[(2)/4] >> (8*(3 -((2)%4)))) & 0xff)] ^
     s7[((x[(8)/4] >> (8*(3 -((8)%4)))) & 0xff)];
 k[15] = s5[((x[(14)/4] >> (8*(3 -((14)%4)))) & 0xff)] ^ s6[((x[(15)/4] >> (8*(3 -((15)%4)))) & 0xff)] ^ s7[((x[(1)/4] >> (8*(3 -((1)%4)))) & 0xff)] ^ sb8[((x[(0)/4] >> (8*(3 -((0)%4)))) & 0xff)] ^
     sb8[((x[(13)/4] >> (8*(3 -((13)%4)))) & 0xff)];



}
int main() {
  u32 * x;
  u32 * z;
  u32 * k;
  key_schedule(x, z, k);
  return 0;
}
