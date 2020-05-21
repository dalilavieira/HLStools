# 1 "extr_.reactossdktoolsunicodewctomb.c_wcstombs_sbcs_with_main.c"
# 1 "extr_.reactossdktoolsunicodewctomb.c_wcstombs_sbcs_with_main.c" 1
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
# 1 "extr_.reactossdktoolsunicodewctomb.c_wcstombs_sbcs_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct sbcs_table {unsigned char* uni2cp_low; unsigned short* uni2cp_high; } ;
typedef int WCHAR ;



__attribute__((used)) static inline int wcstombs_sbcs( const struct sbcs_table *table,
                                 const WCHAR *src, unsigned int srclen,
                                 char *dst, unsigned int dstlen )
{
    const unsigned char * const uni2cp_low = table->uni2cp_low;
    const unsigned short * const uni2cp_high = table->uni2cp_high;
    int ret = srclen;

    if (dstlen < srclen)
    {

        srclen = dstlen;
        ret = -1;
    }

    while (srclen >= 16)
    {
        dst[0] = uni2cp_low[uni2cp_high[src[0] >> 8] + (src[0] & 0xff)];
        dst[1] = uni2cp_low[uni2cp_high[src[1] >> 8] + (src[1] & 0xff)];
        dst[2] = uni2cp_low[uni2cp_high[src[2] >> 8] + (src[2] & 0xff)];
        dst[3] = uni2cp_low[uni2cp_high[src[3] >> 8] + (src[3] & 0xff)];
        dst[4] = uni2cp_low[uni2cp_high[src[4] >> 8] + (src[4] & 0xff)];
        dst[5] = uni2cp_low[uni2cp_high[src[5] >> 8] + (src[5] & 0xff)];
        dst[6] = uni2cp_low[uni2cp_high[src[6] >> 8] + (src[6] & 0xff)];
        dst[7] = uni2cp_low[uni2cp_high[src[7] >> 8] + (src[7] & 0xff)];
        dst[8] = uni2cp_low[uni2cp_high[src[8] >> 8] + (src[8] & 0xff)];
        dst[9] = uni2cp_low[uni2cp_high[src[9] >> 8] + (src[9] & 0xff)];
        dst[10] = uni2cp_low[uni2cp_high[src[10] >> 8] + (src[10] & 0xff)];
        dst[11] = uni2cp_low[uni2cp_high[src[11] >> 8] + (src[11] & 0xff)];
        dst[12] = uni2cp_low[uni2cp_high[src[12] >> 8] + (src[12] & 0xff)];
        dst[13] = uni2cp_low[uni2cp_high[src[13] >> 8] + (src[13] & 0xff)];
        dst[14] = uni2cp_low[uni2cp_high[src[14] >> 8] + (src[14] & 0xff)];
        dst[15] = uni2cp_low[uni2cp_high[src[15] >> 8] + (src[15] & 0xff)];
        src += 16;
        dst += 16;
        srclen -= 16;
    }


    src += srclen;
    dst += srclen;
    switch(srclen)
    {
    case 15: dst[-15] = uni2cp_low[uni2cp_high[src[-15] >> 8] + (src[-15] & 0xff)];
    case 14: dst[-14] = uni2cp_low[uni2cp_high[src[-14] >> 8] + (src[-14] & 0xff)];
    case 13: dst[-13] = uni2cp_low[uni2cp_high[src[-13] >> 8] + (src[-13] & 0xff)];
    case 12: dst[-12] = uni2cp_low[uni2cp_high[src[-12] >> 8] + (src[-12] & 0xff)];
    case 11: dst[-11] = uni2cp_low[uni2cp_high[src[-11] >> 8] + (src[-11] & 0xff)];
    case 10: dst[-10] = uni2cp_low[uni2cp_high[src[-10] >> 8] + (src[-10] & 0xff)];
    case 9: dst[-9] = uni2cp_low[uni2cp_high[src[-9] >> 8] + (src[-9] & 0xff)];
    case 8: dst[-8] = uni2cp_low[uni2cp_high[src[-8] >> 8] + (src[-8] & 0xff)];
    case 7: dst[-7] = uni2cp_low[uni2cp_high[src[-7] >> 8] + (src[-7] & 0xff)];
    case 6: dst[-6] = uni2cp_low[uni2cp_high[src[-6] >> 8] + (src[-6] & 0xff)];
    case 5: dst[-5] = uni2cp_low[uni2cp_high[src[-5] >> 8] + (src[-5] & 0xff)];
    case 4: dst[-4] = uni2cp_low[uni2cp_high[src[-4] >> 8] + (src[-4] & 0xff)];
    case 3: dst[-3] = uni2cp_low[uni2cp_high[src[-3] >> 8] + (src[-3] & 0xff)];
    case 2: dst[-2] = uni2cp_low[uni2cp_high[src[-2] >> 8] + (src[-2] & 0xff)];
    case 1: dst[-1] = uni2cp_low[uni2cp_high[src[-1] >> 8] + (src[-1] & 0xff)];
    case 0: break;
    }
    return ret;
}
int main() {
  const struct sbcs_table * table;
  const WCHAR * src;
  unsigned int srclen;
  char * dst;
  unsigned int dstlen;
  wcstombs_sbcs(table, src, srclen, dst, dstlen);
  return 0;
}
