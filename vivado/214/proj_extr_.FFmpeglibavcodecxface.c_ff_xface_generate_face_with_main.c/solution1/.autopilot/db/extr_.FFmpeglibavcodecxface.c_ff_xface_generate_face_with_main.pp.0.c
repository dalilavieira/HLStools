# 1 "extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c"
# 1 "extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c" 1
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
# 1 "extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int XFACE_HEIGHT ;

 volatile int* g_00 ;
 volatile int* g_01 ;
 volatile int* g_02 ;
 volatile int* g_10 ;
 volatile int* g_11 ;
 volatile int* g_12 ;
 volatile int* g_20 ;
 volatile int* g_21 ;
 volatile int* g_22 ;
 volatile int* g_30 ;
 volatile int* g_31 ;
 volatile int* g_32 ;
 volatile int* g_40 ;
 volatile int* g_41 ;
 volatile int* g_42 ;

void ff_xface_generate_face(uint8_t *dst, uint8_t const src[1000])
{_ssdm_SpecArrayDimSize(src, 1000);
    int h, i, j, k, l, m;

    for (j = 0; j < XFACE_HEIGHT; j++) {
        for (i = 0; i < 128; i++) {
            h = i + j * 128;
            k = 0;
# 63 "extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c"
            for (l = i - 2; l <= i + 2; l++) {
                for (m = j - 2; m <= j; m++) {
                    if (l <= 0 || l >= i && m == j)
                        continue;
                    if (l <= 128 && m > 0)
                        k = 2*k + src[l + m * 128];
                }
            }
# 94 "extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c"
            switch (i) {
            case 1:
                switch (j) {
                case 1: dst[h] ^= (g_22[k>>3]>>(7 -(k&7)))&1; break;
                case 2: dst[h] ^= (g_21[k>>3]>>(7 -(k&7)))&1; break;
                default: dst[h] ^= (g_20[k>>3]>>(7 -(k&7)))&1; break;
                }
                break;
            case 2:
                switch (j) {
                case 1: dst[h] ^= (g_12[k>>3]>>(7 -(k&7)))&1; break;
                case 2: dst[h] ^= (g_11[k>>3]>>(7 -(k&7)))&1; break;
                default: dst[h] ^= (g_10[k>>3]>>(7 -(k&7)))&1; break;
                }
                break;
            case 128 - 1:
                switch (j) {
                case 1: dst[h] ^= (g_42[k>>3]>>(7 -(k&7)))&1; break;
                case 2: dst[h] ^= (g_41[k>>3]>>(7 -(k&7)))&1; break;
                default: dst[h] ^= (g_40[k>>3]>>(7 -(k&7)))&1; break;
                }
                break;
            case 128:
                switch (j) {
                case 1: dst[h] ^= (g_32[k>>3]>>(7 -(k&7)))&1; break;
                case 2: dst[h] ^= (g_31[k>>3]>>(7 -(k&7)))&1; break;
                default: dst[h] ^= (g_30[k>>3]>>(7 -(k&7)))&1; break;
                }
                break;
            default:
                switch (j) {
                case 1: dst[h] ^= (g_02[k>>3]>>(7 -(k&7)))&1; break;
                case 2: dst[h] ^= (g_01[k>>3]>>(7 -(k&7)))&1; break;
                default: dst[h] ^= (g_00[k>>3]>>(7 -(k&7)))&1; break;
                }
                break;
            }
        }
    }
}
int main() {
  uint8_t * dst;
  uint8_t *const src;
  ff_xface_generate_face(dst, src);
  return 0;
}
