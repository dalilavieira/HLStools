# 1 "extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c"
# 1 "extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c" 1
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
# 1 "extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int height; int width; int bits_per_coded_sample; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;

__attribute__((used)) static int decode_run_i(AVCodecContext *avctx, uint32_t ptype, int run,
                        int *px, int *py, uint32_t clr, uint32_t *dst,
                        int linesize, uint32_t *plx, uint32_t *ply,
                        uint32_t backstep, int off, int *cx, int *cx1)
{
    uint32_t r, g, b;
    int z;
    int x = *px,
        y = *py;
    uint32_t lx = *plx,
             ly = *ply;

    if (y >= avctx->height)
        return AVERROR_INVALIDDATA;

    switch (ptype) {
    case 0:
        while (run-- > 0) {
            dst[y * linesize + x] = clr;
            lx = x;
            ly = y;
            (x)++;
            if (x >= avctx->width) {
                x = 0;
                (y)++;
                if (y >= avctx->height && run)
                    return AVERROR_INVALIDDATA;
            }
        }
        break;
    case 1:
        while (run-- > 0) {
            dst[y * linesize + x] = dst[ly * linesize + lx];
            lx = x;
            ly = y;
            (x)++;
            if (x >= avctx->width) {
                x = 0;
                (y)++;
                if (y >= avctx->height && run)
                    return AVERROR_INVALIDDATA;
            }
        }
        clr = dst[ly * linesize + lx];
        break;
    case 2:
        if (y < 1)
            return AVERROR_INVALIDDATA;

        while (run-- > 0) {
            clr = dst[y * linesize + x + off + 1];
            dst[y * linesize + x] = clr;
            lx = x;
            ly = y;
            (x)++;
            if (x >= avctx->width) {
                x = 0;
                (y)++;
                if (y >= avctx->height && run)
                    return AVERROR_INVALIDDATA;
            }
        }
        break;
    case 4:
        if (y < 1 || (y == 1 && x == 0))
            return AVERROR_INVALIDDATA;

        while (run-- > 0) {
            uint8_t *odst = (uint8_t *)dst;
            int off1 = (ly * linesize + lx) * 4;
            int off2 = ((y * linesize + x) + off) * 4;

            if (x == 0) {
                z = backstep * 4;
            } else {
                z = 0;
            }

            r = odst[off1] +
                odst[off2 + 4] -
                odst[off2 - z ];
            g = odst[off1 + 1] +
                odst[off2 + 5] -
                odst[off2 - z + 1];
            b = odst[off1 + 2] +
                odst[off2 + 6] -
                odst[off2 - z + 2];
            clr = ((b & 0xFF) << 16) + ((g & 0xFF) << 8) + (r & 0xFF);
            dst[y * linesize + x] = clr;
            lx = x;
            ly = y;
            (x)++;
            if (x >= avctx->width) {
                x = 0;
                (y)++;
                if (y >= avctx->height && run)
                    return AVERROR_INVALIDDATA;
            }
        }
        break;
    case 5:
        if (y < 1 || (y == 1 && x == 0))
            return AVERROR_INVALIDDATA;

        while (run-- > 0) {
            if (x == 0) {
                z = backstep;
            } else {
                z = 0;
            }

            clr = dst[y * linesize + x + off - z];
            dst[y * linesize + x] = clr;
            lx = x;
            ly = y;
            (x)++;
            if (x >= avctx->width) {
                x = 0;
                (y)++;
                if (y >= avctx->height && run)
                    return AVERROR_INVALIDDATA;
            }
        }
        break;
    }

    *px = x;
    *py = y;
    *plx= lx;
    *ply= ly;

    if (avctx->bits_per_coded_sample == 16) {
        *cx1 = (clr & 0x3F00) >> 2;
        *cx = (clr & 0x3FFFFF) >> 16;
    } else {
        *cx1 = (clr & 0xFC00) >> 4;
        *cx = (clr & 0xFFFFFF) >> 18;
    }

    return 0;
}
int main() {
  AVCodecContext * avctx;
  uint32_t ptype;
  int run;
  int * px;
  int * py;
  uint32_t clr;
  uint32_t * dst;
  int linesize;
  uint32_t * plx;
  uint32_t * ply;
  uint32_t backstep;
  int off;
  int * cx;
  int * cx1;
  decode_run_i(avctx, ptype, run, px, py, clr, dst, linesize, plx, ply, backstep, off, cx, cx1);
  return 0;
}
