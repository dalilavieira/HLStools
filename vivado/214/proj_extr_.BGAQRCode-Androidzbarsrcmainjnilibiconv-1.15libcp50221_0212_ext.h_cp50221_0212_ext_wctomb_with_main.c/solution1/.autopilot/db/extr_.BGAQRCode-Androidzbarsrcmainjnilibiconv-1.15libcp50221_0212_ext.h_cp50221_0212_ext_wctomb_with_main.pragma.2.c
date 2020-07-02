# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c"
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c" 1
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
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 unsigned char* cp50221_0212_ext_page21 ;
 unsigned char* cp50221_0212_ext_page53 ;
 unsigned char* cp50221_0212_ext_page6d ;
 unsigned char* cp50221_0212_ext_page76 ;
 unsigned char* cp50221_0212_ext_page7d ;
 unsigned char* cp50221_0212_ext_page97 ;
 unsigned char* cp50221_0212_ext_pagefa ;
 unsigned char* cp50221_0212_ext_pageff ;

__attribute__((used)) static int
cp50221_0212_ext_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, size_t n)
{
  unsigned char c = 0;
  if (wc >= 0x2170 && wc < 0x2180)
    c = cp50221_0212_ext_page21[wc-0x2170];
  else if (wc == 0x4efc)
    c = 0x1b;
  else if (wc == 0x50f4)
    c = 0x1c;
  else if (wc == 0x51ec)
    c = 0x1d;
  else if (wc >= 0x5300 && wc < 0x5328)
    c = cp50221_0212_ext_page53[wc-0x5300];
  else if (wc == 0x548a)
    c = 0x21;
  else if (wc == 0x5759)
    c = 0x22;
  else if (wc == 0x589e)
    c = 0x25;
  else if (wc == 0x5bec)
    c = 0x26;
  else if (wc == 0x5cf5)
    c = 0x27;
  else if (wc == 0x5d53)
    c = 0x28;
  else if (wc == 0x5fb7)
    c = 0x2a;
  else if (wc == 0x6085)
    c = 0x2b;
  else if (wc == 0x6120)
    c = 0x2c;
  else if (wc == 0x654e)
    c = 0x2d;
  else if (wc == 0x6665)
    c = 0x2f;
  else if (wc == 0x6801)
    c = 0x32;
  else if (wc == 0x6a6b)
    c = 0x35;
  else if (wc == 0x6ae2)
    c = 0x36;
  else if (wc >= 0x6df0 && wc < 0x6e00)
    c = cp50221_0212_ext_page6d[wc-0x6df0];
  else if (wc == 0x7028)
    c = 0x39;
  else if (wc == 0x70bb)
    c = 0x1a;
  else if (wc == 0x7501)
    c = 0x3c;
  else if (wc >= 0x7680 && wc < 0x76a0)
    c = cp50221_0212_ext_page76[wc-0x7680];
  else if (wc == 0x7930)
    c = 0x40;
  else if (wc == 0x7ae7)
    c = 0x45;
  else if (wc >= 0x7da0 && wc < 0x7dd8)
    c = cp50221_0212_ext_page7d[wc-0x7da0];
  else if (wc == 0x8362)
    c = 0x4b;
  else if (wc == 0x85b0)
    c = 0x4d;
  else if (wc == 0x8807)
    c = 0x50;
  else if (wc == 0x8b7f)
    c = 0x52;
  else if (wc == 0x8cf4)
    c = 0x53;
  else if (wc == 0x8d76)
    c = 0x54;
  else if (wc == 0x90de)
    c = 0x58;
  else if (wc == 0x9115)
    c = 0x5a;
  else if (wc == 0x9592)
    c = 0x5d;
  else if (wc >= 0x9738 && wc < 0x9758)
    c = cp50221_0212_ext_page97[wc-0x9738];
  else if (wc == 0x999e)
    c = 0x66;
  else if (wc == 0x9ad9)
    c = 0x67;
  else if (wc == 0x9b72)
    c = 0x68;
  else if (wc == 0x9ed1)
    c = 0x6a;
  else if (wc == 0xf929)
    c = 0x31;
  else if (wc == 0xf9dc)
    c = 0x5e;
  else if (wc >= 0xfa08 && wc < 0xfa30)
    c = cp50221_0212_ext_pagefa[wc-0xfa08];
  else if (wc >= 0xff00 && wc < 0xff08)
    c = cp50221_0212_ext_pageff[wc-0xff00];
  if (c != 0) {
    *r = c;
    return 1;
  }
  return RET_ILUNI;
}
int main() {
  conv_t conv;
  unsigned char * r;
  ucs4_t wc;
  size_t n;
  cp50221_0212_ext_wctomb(conv, r, wc, n);
  return 0;
}
