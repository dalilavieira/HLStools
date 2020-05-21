# 1 "extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c"
# 1 "extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c" 1
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
# 1 "extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef unsigned int int32_t ;


 size_t BU_IDX ;
 size_t BV_IDX ;
 size_t BY_IDX ;
 size_t GU_IDX ;
 size_t GV_IDX ;
 size_t GY_IDX ;
 unsigned int RGB2YUV_SHIFT ;
 size_t RU_IDX ;
 size_t RV_IDX ;
 size_t RY_IDX ;

void ff_rgb24toyv12_c(const uint8_t *src, uint8_t *ydst, uint8_t *udst,
                   uint8_t *vdst, int width, int height, int lumStride,
                   int chromStride, int srcStride, int32_t *rgb2yuv)
{
    int32_t ry = rgb2yuv[RY_IDX], gy = rgb2yuv[GY_IDX], by = rgb2yuv[BY_IDX];
    int32_t ru = rgb2yuv[RU_IDX], gu = rgb2yuv[GU_IDX], bu = rgb2yuv[BU_IDX];
    int32_t rv = rgb2yuv[RV_IDX], gv = rgb2yuv[GV_IDX], bv = rgb2yuv[BV_IDX];
    int y;
    const int chromWidth = width >> 1;

    for (y = 0; y < height; y += 2) {
        int i;
        for (i = 0; i < chromWidth; i++) {
            unsigned int b = src[6 * i + 0];
            unsigned int g = src[6 * i + 1];
            unsigned int r = src[6 * i + 2];

            unsigned int Y = ((ry * r + gy * g + by * b) >> RGB2YUV_SHIFT) + 16;
            unsigned int V = ((rv * r + gv * g + bv * b) >> RGB2YUV_SHIFT) + 128;
            unsigned int U = ((ru * r + gu * g + bu * b) >> RGB2YUV_SHIFT) + 128;

            udst[i] = U;
            vdst[i] = V;
            ydst[2 * i] = Y;

            b = src[6 * i + 3];
            g = src[6 * i + 4];
            r = src[6 * i + 5];

            Y = ((ry * r + gy * g + by * b) >> RGB2YUV_SHIFT) + 16;
            ydst[2 * i + 1] = Y;
        }
        ydst += lumStride;
        src += srcStride;

        if (y+1 == height)
            break;

        for (i = 0; i < chromWidth; i++) {
            unsigned int b = src[6 * i + 0];
            unsigned int g = src[6 * i + 1];
            unsigned int r = src[6 * i + 2];

            unsigned int Y = ((ry * r + gy * g + by * b) >> RGB2YUV_SHIFT) + 16;

            ydst[2 * i] = Y;

            b = src[6 * i + 3];
            g = src[6 * i + 4];
            r = src[6 * i + 5];

            Y = ((ry * r + gy * g + by * b) >> RGB2YUV_SHIFT) + 16;
            ydst[2 * i + 1] = Y;
        }
        udst += chromStride;
        vdst += chromStride;
        ydst += lumStride;
        src += srcStride;
    }
}
int main() {
  const uint8_t * src;
  uint8_t * ydst;
  uint8_t * udst;
  uint8_t * vdst;
  int width;
  int height;
  int lumStride;
  int chromStride;
  int srcStride;
  int32_t * rgb2yuv;
  ff_rgb24toyv12_c(src, ydst, udst, vdst, width, height, lumStride, chromStride, srcStride, rgb2yuv);
  return 0;
}
