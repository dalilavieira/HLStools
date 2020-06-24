# 1 "extr_.FFmpeglibavcodecsbc.c_ff_sbc_calculate_bits_with_main.c"
# 1 "extr_.FFmpeglibavcodecsbc.c_ff_sbc_calculate_bits_with_main.c" 1
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
# 1 "extr_.FFmpeglibavcodecsbc.c_ff_sbc_calculate_bits_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct sbc_frame {int subbands; size_t frequency; scalar_t__ mode; int channels; scalar_t__ allocation; int scale_factor[5][5]; int bitpool; } ;


 scalar_t__ DUAL_CHANNEL ;
 scalar_t__ JOINT_STEREO ;
 scalar_t__ MONO ;
 scalar_t__ SNR ;
 scalar_t__ STEREO ;
 int** sbc_offset4 ;
 int** sbc_offset8 ;

void ff_sbc_calculate_bits(volatile struct sbc_frame *frame, int bits [8][8])
{_ssdm_SpecArrayDimSize(bits, 8);
    int subbands = frame->subbands;
    uint8_t sf = frame->frequency;

    if (frame->mode == MONO || frame->mode == DUAL_CHANNEL) {
        int bitneed[2][8], loudness, max_bitneed, bitcount, slicecount, bitslice;
        int ch, sb;

        for (ch = 0; ch < frame->channels; ch++) {
            max_bitneed = 0;
            if (frame->allocation == SNR) {
                for (sb = 0; sb < subbands; sb++) {
                    bitneed[ch][sb] = frame->scale_factor[ch][sb];
                    if (bitneed[ch][sb] > max_bitneed)
                        max_bitneed = bitneed[ch][sb];
                }
            } else {
                for (sb = 0; sb < subbands; sb++) {
                    if (frame->scale_factor[ch][sb] == 0)
                        bitneed[ch][sb] = -5;
                    else {
                        if (subbands == 4)
                            loudness = frame->scale_factor[ch][sb] - sbc_offset4[sf][sb];
                        else
                            loudness = frame->scale_factor[ch][sb] - sbc_offset8[sf][sb];
                        if (loudness > 0)
                            bitneed[ch][sb] = loudness / 2;
                        else
                            bitneed[ch][sb] = loudness;
                    }
                    if (bitneed[ch][sb] > max_bitneed)
                        max_bitneed = bitneed[ch][sb];
                }
            }

            bitcount = 0;
            slicecount = 0;
            bitslice = max_bitneed + 1;
            do {
                bitslice--;
                bitcount += slicecount;
                slicecount = 0;
                for (sb = 0; sb < subbands; sb++) {
                    if ((bitneed[ch][sb] > bitslice + 1) && (bitneed[ch][sb] < bitslice + 16))
                        slicecount++;
                    else if (bitneed[ch][sb] == bitslice + 1)
                        slicecount += 2;
                }
            } while (bitcount + slicecount < frame->bitpool);

            if (bitcount + slicecount == frame->bitpool) {
                bitcount += slicecount;
                bitslice--;
            }

            for (sb = 0; sb < subbands; sb++) {
                if (bitneed[ch][sb] < bitslice + 2)
                    bits[ch][sb] = 0;
                else {
                    bits[ch][sb] = bitneed[ch][sb] - bitslice;
                    if (bits[ch][sb] > 16)
                        bits[ch][sb] = 16;
                }
            }

            for (sb = 0; bitcount < frame->bitpool &&
                            sb < subbands; sb++) {
                if ((bits[ch][sb] >= 2) && (bits[ch][sb] < 16)) {
                    bits[ch][sb]++;
                    bitcount++;
                } else if ((bitneed[ch][sb] == bitslice + 1) && (frame->bitpool > bitcount + 1)) {
                    bits[ch][sb] = 2;
                    bitcount += 2;
                }
            }

            for (sb = 0; bitcount < frame->bitpool &&
                            sb < subbands; sb++) {
                if (bits[ch][sb] < 16) {
                    bits[ch][sb]++;
                    bitcount++;
                }
            }

        }

    } else if (frame->mode == STEREO || frame->mode == JOINT_STEREO) {
        int bitneed[2][8], loudness, max_bitneed, bitcount, slicecount, bitslice;
        int ch, sb;

        max_bitneed = 0;
        if (frame->allocation == SNR) {
            for (ch = 0; ch < 2; ch++) {
                for (sb = 0; sb < subbands; sb++) {
                    bitneed[ch][sb] = frame->scale_factor[ch][sb];
                    if (bitneed[ch][sb] > max_bitneed)
                        max_bitneed = bitneed[ch][sb];
                }
            }
        } else {
            for (ch = 0; ch < 2; ch++) {
                for (sb = 0; sb < subbands; sb++) {
                    if (frame->scale_factor[ch][sb] == 0)
                        bitneed[ch][sb] = -5;
                    else {
                        if (subbands == 4)
                            loudness = frame->scale_factor[ch][sb] - sbc_offset4[sf][sb];
                        else
                            loudness = frame->scale_factor[ch][sb] - sbc_offset8[sf][sb];
                        if (loudness > 0)
                            bitneed[ch][sb] = loudness / 2;
                        else
                            bitneed[ch][sb] = loudness;
                    }
                    if (bitneed[ch][sb] > max_bitneed)
                        max_bitneed = bitneed[ch][sb];
                }
            }
        }

        bitcount = 0;
        slicecount = 0;
        bitslice = max_bitneed + 1;
        do {
            bitslice--;
            bitcount += slicecount;
            slicecount = 0;
            for (ch = 0; ch < 2; ch++) {
                for (sb = 0; sb < subbands; sb++) {
                    if ((bitneed[ch][sb] > bitslice + 1) && (bitneed[ch][sb] < bitslice + 16))
                        slicecount++;
                    else if (bitneed[ch][sb] == bitslice + 1)
                        slicecount += 2;
                }
            }
        } while (bitcount + slicecount < frame->bitpool);

        if (bitcount + slicecount == frame->bitpool) {
            bitcount += slicecount;
            bitslice--;
        }

        for (ch = 0; ch < 2; ch++) {
            for (sb = 0; sb < subbands; sb++) {
                if (bitneed[ch][sb] < bitslice + 2) {
                    bits[ch][sb] = 0;
                } else {
                    bits[ch][sb] = bitneed[ch][sb] - bitslice;
                    if (bits[ch][sb] > 16)
                        bits[ch][sb] = 16;
                }
            }
        }

        ch = 0;
        sb = 0;
        while (bitcount < frame->bitpool) {
            if ((bits[ch][sb] >= 2) && (bits[ch][sb] < 16)) {
                bits[ch][sb]++;
                bitcount++;
            } else if ((bitneed[ch][sb] == bitslice + 1) && (frame->bitpool > bitcount + 1)) {
                bits[ch][sb] = 2;
                bitcount += 2;
            }
            if (ch == 1) {
                ch = 0;
                sb++;
                if (sb >= subbands)
                    break;
            } else
                ch = 1;
        }

        ch = 0;
        sb = 0;
        while (bitcount < frame->bitpool) {
            if (bits[ch][sb] < 16) {
                bits[ch][sb]++;
                bitcount++;
            }
            if (ch == 1) {
                ch = 0;
                sb++;
                if (sb >= subbands)
                    break;
            } else
                ch = 1;
        }

    }

}
int main() {
  const struct sbc_frame * frame;
  int bits[8][8];
  ff_sbc_calculate_bits(frame, bits);
  return 0;
}
