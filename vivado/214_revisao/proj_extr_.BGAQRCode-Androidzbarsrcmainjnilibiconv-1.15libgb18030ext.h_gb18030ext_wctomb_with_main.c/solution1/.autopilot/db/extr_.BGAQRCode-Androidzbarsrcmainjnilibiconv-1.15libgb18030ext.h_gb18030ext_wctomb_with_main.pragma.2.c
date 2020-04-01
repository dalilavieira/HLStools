# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libgb18030ext.h_gb18030ext_wctomb_with_main.c"
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libgb18030ext.h_gb18030ext_wctomb_with_main.c" 1
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
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libgb18030ext.h_gb18030ext_wctomb_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* gb18030ext_page2e ;
 unsigned short* gb18030ext_page2f ;
 unsigned short* gb18030ext_page34 ;
 unsigned short* gb18030ext_page36 ;
 unsigned short* gb18030ext_page39 ;
 unsigned short* gb18030ext_page43 ;
 unsigned short* gb18030ext_page46 ;
 unsigned short* gb18030ext_page47_1 ;
 unsigned short* gb18030ext_page47_2 ;
 unsigned short* gb18030ext_page49 ;
 unsigned short* gb18030ext_page4c ;
 unsigned short* gb18030ext_page4d ;
 unsigned short* gb18030ext_page9f ;
 unsigned short* gb18030ext_pagefe ;

__attribute__((used)) static int
gb18030ext_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, size_t n)
{
  if (n >= 2) {
    unsigned short c = 0;
    if (wc == 0x01f9)
      c = 0xa8bf;
    else if (wc == 0x1e3f)
      c = 0xa8bc;
    else if (wc == 0x20ac)
      c = 0xa2e3;
    else if (wc >= 0x2e80 && wc < 0x2ed0)
      c = gb18030ext_page2e[wc-0x2e80];
    else if (wc >= 0x2ff0 && wc < 0x3000)
      c = gb18030ext_page2f[wc-0x2ff0];
    else if (wc == 0x303e)
      c = 0xa989;
    else if (wc >= 0x3440 && wc < 0x3478)
      c = gb18030ext_page34[wc-0x3440];
    else if (wc == 0x359e)
      c = 0xfe5a;
    else if (wc >= 0x3608 && wc < 0x3620)
      c = gb18030ext_page36[wc-0x3608];
    else if (wc == 0x3918)
      c = 0xfe60;
    else if (wc == 0x396e)
      c = 0xfe5f;
    else if (wc >= 0x39c8 && wc < 0x39e0)
      c = gb18030ext_page39[wc-0x39c8];
    else if (wc == 0x3a73)
      c = 0xfe64;
    else if (wc == 0x3b4e)
      c = 0xfe68;
    else if (wc == 0x3c6e)
      c = 0xfe69;
    else if (wc == 0x3ce0)
      c = 0xfe6a;
    else if (wc == 0x4056)
      c = 0xfe6f;
    else if (wc == 0x415f)
      c = 0xfe70;
    else if (wc == 0x4337)
      c = 0xfe72;
    else if (wc >= 0x43a8 && wc < 0x43e0)
      c = gb18030ext_page43[wc-0x43a8];
    else if (wc == 0x44d6)
      c = 0xfe7b;
    else if (wc >= 0x4648 && wc < 0x4668)
      c = gb18030ext_page46[wc-0x4648];
    else if (wc >= 0x4720 && wc < 0x4730)
      c = gb18030ext_page47_1[wc-0x4720];
    else if (wc >= 0x4778 && wc < 0x4790)
      c = gb18030ext_page47_2[wc-0x4778];
    else if (wc >= 0x4940 && wc < 0x49b8)
      c = gb18030ext_page49[wc-0x4940];
    else if (wc >= 0x4c70 && wc < 0x4ca8)
      c = gb18030ext_page4c[wc-0x4c70];
    else if (wc >= 0x4d10 && wc < 0x4d20)
      c = gb18030ext_page4d[wc-0x4d10];
    else if (wc == 0x4dae)
      c = 0xfe9f;
    else if (wc >= 0x9fb4 && wc < 0x9fbc)
      c = gb18030ext_page9f[wc-0x9fb0];
    else if (wc >= 0xfe10 && wc < 0xfe1a)
      c = gb18030ext_pagefe[wc-0xfe10];
    else if (wc == 0x20087)
      c = 0xfe51;
    else if (wc == 0x20089)
      c = 0xfe52;
    else if (wc == 0x200cc)
      c = 0xfe53;
    else if (wc == 0x215d7)
      c = 0xfe6c;
    else if (wc == 0x2298f)
      c = 0xfe76;
    else if (wc == 0x241fe)
      c = 0xfe91;
    if (c != 0) {
      r[0] = (c >> 8); r[1] = (c & 0xff);
      return 2;
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
int main() {
  conv_t conv;
  unsigned char * r;
  ucs4_t wc;
  size_t n;
  gb18030ext_wctomb(conv, r, wc, n);
  return 0;
}
