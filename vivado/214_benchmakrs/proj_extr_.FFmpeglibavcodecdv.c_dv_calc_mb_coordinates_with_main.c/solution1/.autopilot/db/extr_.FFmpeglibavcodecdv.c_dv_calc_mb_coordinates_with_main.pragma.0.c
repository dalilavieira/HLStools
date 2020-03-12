# 1 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"
# 1 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c" 1
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
# 1 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int width; int difseg_size; int pix_fmt; } ;
typedef TYPE_1__ AVDVProfile ;






__attribute__((used)) static inline void dv_calc_mb_coordinates(const AVDVProfile *d, int chan,
                                          int seq, int slot, uint16_t *tbl)
{
    static const uint8_t off[] = { 2, 6, 8, 0, 4 };
_ssdm_SpecConstant(off);
# 26 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"

    static const uint8_t shuf1[] = { 36, 18, 54, 0, 72 };
_ssdm_SpecConstant(shuf1);
# 27 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"

    static const uint8_t shuf2[] = { 24, 12, 36, 0, 48 };
_ssdm_SpecConstant(shuf2);
# 28 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"

    static const uint8_t shuf3[] = { 18, 9, 27, 0, 36 };
_ssdm_SpecConstant(shuf3);
# 29 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"


    static const uint8_t l_start[] = { 0, 4, 9, 13, 18, 22, 27, 31, 36, 40 };
_ssdm_SpecConstant(l_start);
# 31 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"

    static const uint8_t l_start_shuffled[] = { 9, 4, 13, 0, 18 };
_ssdm_SpecConstant(l_start_shuffled);
# 32 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"


    static const uint8_t serpent1[] = {
        0, 1, 2, 2, 1, 0,
        0, 1, 2, 2, 1, 0,
        0, 1, 2, 2, 1, 0,
        0, 1, 2, 2, 1, 0,
        0, 1, 2
    };
_ssdm_SpecConstant(serpent1);
# 34 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"

    static const uint8_t serpent2[] = {
        0, 1, 2, 3, 4, 5, 5, 4, 3, 2, 1, 0,
        0, 1, 2, 3, 4, 5, 5, 4, 3, 2, 1, 0,
        0, 1, 2, 3, 4, 5
    };
_ssdm_SpecConstant(serpent2);
# 41 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"


    static const uint8_t remap[][2] = {
        { 0, 0 }, { 0, 0 }, { 0, 0 }, { 0, 0 },
        { 0, 0 }, { 0, 1 }, { 0, 2 }, { 0, 3 }, { 10, 0 },
        { 10, 1 }, { 10, 2 }, { 10, 3 }, { 20, 0 }, { 20, 1 },
        { 20, 2 }, { 20, 3 }, { 30, 0 }, { 30, 1 }, { 30, 2 },
        { 30, 3 }, { 40, 0 }, { 40, 1 }, { 40, 2 }, { 40, 3 },
        { 50, 0 }, { 50, 1 }, { 50, 2 }, { 50, 3 }, { 60, 0 },
        { 60, 1 }, { 60, 2 }, { 60, 3 }, { 70, 0 }, { 70, 1 },
        { 70, 2 }, { 70, 3 }, { 0, 64 }, { 0, 65 }, { 0, 66 },
        { 10, 64 }, { 10, 65 }, { 10, 66 }, { 20, 64 }, { 20, 65 },
        { 20, 66 }, { 30, 64 }, { 30, 65 }, { 30, 66 }, { 40, 64 },
        { 40, 65 }, { 40, 66 }, { 50, 64 }, { 50, 65 }, { 50, 66 },
        { 60, 64 }, { 60, 65 }, { 60, 66 }, { 70, 64 }, { 70, 65 },
        { 70, 66 }, { 0, 67 }, { 20, 67 }, { 40, 67 }, { 60, 67 }
    };
_ssdm_SpecConstant(remap);
# 47 "extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c"


    int i, k, m;
    int x, y, blk;

    for (m = 0; m < 5; m++) {
        switch (d->width) {
        case 1440:
            blk = (chan * 11 + seq) * 27 + slot;

            if (chan == 0 && seq == 11) {
                x = m * 27 + slot;
                if (x < 90) {
                    y = 0;
                } else {
                    x = (x - 90) * 2;
                    y = 67;
                }
            } else {
                i = (4 * chan + blk + off[m]) % 11;
                k = (blk / 11) % 27;

                x = shuf1[m] + (chan & 1) * 9 + k % 9;
                y = (i * 3 + k / 9) * 2 + (chan >> 1) + 1;
            }
            tbl[m] = (x << 1) | (y << 9);
            break;
        case 1280:
            blk = (chan * 10 + seq) * 27 + slot;

            i = (4 * chan + (seq / 5) + 2 * blk + off[m]) % 10;
            k = (blk / 5) % 27;

            x = shuf1[m] + (chan & 1) * 9 + k % 9;
            y = (i * 3 + k / 9) * 2 + (chan >> 1) + 4;

            if (x >= 80) {
                x = remap[y][0] + ((x - 80) << (y > 59));
                y = remap[y][1];
            }
            tbl[m] = (x << 1) | (y << 9);
            break;
        case 960:
            blk = (chan * 10 + seq) * 27 + slot;

            i = (4 * chan + (seq / 5) + 2 * blk + off[m]) % 10;
            k = (blk / 5) % 27 + (i & 1) * 3;

            x = shuf2[m] + k % 6 + 6 * (chan & 1);
            y = l_start[i] + k / 6 + 45 * (chan >> 1);
            tbl[m] = (x << 1) | (y << 9);
            break;
        case 720:
            switch (d->pix_fmt) {
            case 128:
                x = shuf3[m] + slot / 3;
                y = serpent1[slot] +
                    ((((seq + off[m]) % d->difseg_size) << 1) + chan) * 3;
                tbl[m] = (x << 1) | (y << 8);
                break;
            case 129:
                x = shuf3[m] + slot / 3;
                y = serpent1[slot] +
                    ((seq + off[m]) % d->difseg_size) * 3;
                tbl[m] = (x << 1) | (y << 9);
                break;
            case 130:
                i = (seq + off[m]) % d->difseg_size;
                k = slot + ((m == 1 || m == 2) ? 3 : 0);

                x = l_start_shuffled[m] + k / 6;
                y = serpent2[k] + i * 6;
                if (x > 21)
                    y = y * 2 - i * 6;
                tbl[m] = (x << 2) | (y << 8);
                break;
            }
        default:
            break;
        }
    }
}
int main() {
  const AVDVProfile * d;
  int chan;
  int seq;
  int slot;
  uint16_t * tbl;
  dv_calc_mb_coordinates(d, chan, seq, slot, tbl);
  return 0;
}
