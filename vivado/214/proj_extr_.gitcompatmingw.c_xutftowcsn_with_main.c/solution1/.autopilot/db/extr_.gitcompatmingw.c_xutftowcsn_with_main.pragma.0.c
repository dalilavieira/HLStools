# 1 "extr_.gitcompatmingw.c_xutftowcsn_with_main.c"
# 1 "extr_.gitcompatmingw.c_xutftowcsn_with_main.c" 1
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
# 1 "extr_.gitcompatmingw.c_xutftowcsn_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int EINVAL ;
 int ERANGE ;
 int INT_MAX ;
 int errno ;

int xutftowcsn(wchar_t *wcs, volatile const char *utfs, size_t wcslen, int utflen)
{
 int upos = 0, wpos = 0;
 const unsigned char *utf = (const unsigned char*) utfs;
 if (!utf || !wcs || wcslen < 1) {
  errno = EINVAL;
  return -1;
 }

 wcslen--;
 if (utflen < 0)
  utflen = INT_MAX;

 while (upos < utflen) {
  int c = utf[upos++] & 0xff;
  if (utflen == INT_MAX && c == 0)
   break;

  if (wpos >= wcslen) {
   wcs[wpos] = 0;
   errno = ERANGE;
   return -1;
  }

  if (c < 0x80) {

   wcs[wpos++] = c;
  } else if (c >= 0xc2 && c < 0xe0 && upos < utflen &&
    (utf[upos] & 0xc0) == 0x80) {

   c = ((c & 0x1f) << 6);
   c |= (utf[upos++] & 0x3f);
   wcs[wpos++] = c;
  } else if (c >= 0xe0 && c < 0xf0 && upos + 1 < utflen &&
    !(c == 0xe0 && utf[upos] < 0xa0) &&
    (utf[upos] & 0xc0) == 0x80 &&
    (utf[upos + 1] & 0xc0) == 0x80) {

   c = ((c & 0x0f) << 12);
   c |= ((utf[upos++] & 0x3f) << 6);
   c |= (utf[upos++] & 0x3f);
   wcs[wpos++] = c;
  } else if (c >= 0xf0 && c < 0xf5 && upos + 2 < utflen &&
    wpos + 1 < wcslen &&
    !(c == 0xf0 && utf[upos] < 0x90) &&
    !(c == 0xf4 && utf[upos] >= 0x90) &&
    (utf[upos] & 0xc0) == 0x80 &&
    (utf[upos + 1] & 0xc0) == 0x80 &&
    (utf[upos + 2] & 0xc0) == 0x80) {

   c = ((c & 0x07) << 18);
   c |= ((utf[upos++] & 0x3f) << 12);
   c |= ((utf[upos++] & 0x3f) << 6);
   c |= (utf[upos++] & 0x3f);
   c -= 0x10000;
   wcs[wpos++] = 0xd800 | (c >> 10);
   wcs[wpos++] = 0xdc00 | (c & 0x3ff);
  } else if (c >= 0xa0) {

   wcs[wpos++] = c;
  } else {

   static const char *hex = "0123456789abcdef";
_ssdm_SpecConstant(hex);
# 82 "extr_.gitcompatmingw.c_xutftowcsn_with_main.c"

   wcs[wpos++] = hex[c >> 4];
   if (wpos < wcslen)
    wcs[wpos++] = hex[c & 0x0f];
  }
 }
 wcs[wpos] = 0;
 return wpos;
}
int main() {
  wchar_t * wcs;
  const char * utfs;
  size_t wcslen;
  int utflen;
  xutftowcsn(wcs, utfs, wcslen, utflen);
  return 0;
}
