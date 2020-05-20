# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp932ext.h_cp932ext_wctomb_with_main.c"
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp932ext.h_cp932ext_wctomb_with_main.c" 1
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
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp932ext.h_cp932ext_wctomb_with_main.c" 2


typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int conv_t ;
struct TYPE_16__ {unsigned short used; unsigned short indx; } ;
typedef TYPE_1__ Summary16 ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* cp932ext_2charset ;
 TYPE_1__* cp932ext_uni2indx_page21 ;
 TYPE_1__* cp932ext_uni2indx_page24 ;
 TYPE_1__* cp932ext_uni2indx_page30 ;
 TYPE_1__* cp932ext_uni2indx_page32 ;
 TYPE_1__* cp932ext_uni2indx_page4e ;
 TYPE_1__* cp932ext_uni2indx_page57 ;
 TYPE_1__* cp932ext_uni2indx_page5b ;
 TYPE_1__* cp932ext_uni2indx_page5f ;
 TYPE_1__* cp932ext_uni2indx_page7d ;
 TYPE_1__* cp932ext_uni2indx_page83 ;
 TYPE_1__* cp932ext_uni2indx_page88 ;
 TYPE_1__* cp932ext_uni2indx_page90 ;
 TYPE_1__* cp932ext_uni2indx_pagef9 ;
 TYPE_1__* cp932ext_uni2indx_pageff ;

__attribute__((used)) static int
cp932ext_wctomb (conv_t conv, volatile unsigned char *r, ucs4_t wc, size_t n)
{
  if (n >= 2) {
    const Summary16 *summary = ((void*)0);
    if (wc >= 0x2100 && wc < 0x22c0)
      summary = &cp932ext_uni2indx_page21[(wc>>4)-0x210];
    else if (wc >= 0x2400 && wc < 0x2480)
      summary = &cp932ext_uni2indx_page24[(wc>>4)-0x240];
    else if (wc >= 0x3000 && wc < 0x3020)
      summary = &cp932ext_uni2indx_page30[(wc>>4)-0x300];
    else if (wc >= 0x3200 && wc < 0x33d0)
      summary = &cp932ext_uni2indx_page32[(wc>>4)-0x320];
    else if (wc >= 0x4e00 && wc < 0x5590)
      summary = &cp932ext_uni2indx_page4e[(wc>>4)-0x4e0];
    else if (wc >= 0x5700 && wc < 0x59c0)
      summary = &cp932ext_uni2indx_page57[(wc>>4)-0x570];
    else if (wc >= 0x5b00 && wc < 0x5de0)
      summary = &cp932ext_uni2indx_page5b[(wc>>4)-0x5b0];
    else if (wc >= 0x5f00 && wc < 0x7ba0)
      summary = &cp932ext_uni2indx_page5f[(wc>>4)-0x5f0];
    else if (wc >= 0x7d00 && wc < 0x7fb0)
      summary = &cp932ext_uni2indx_page7d[(wc>>4)-0x7d0];
    else if (wc >= 0x8300 && wc < 0x85c0)
      summary = &cp932ext_uni2indx_page83[(wc>>4)-0x830];
    else if (wc >= 0x8800 && wc < 0x8ed0)
      summary = &cp932ext_uni2indx_page88[(wc>>4)-0x880];
    else if (wc >= 0x9000 && wc < 0x9ee0)
      summary = &cp932ext_uni2indx_page90[(wc>>4)-0x900];
    else if (wc >= 0xf900 && wc < 0xfa30)
      summary = &cp932ext_uni2indx_pagef9[(wc>>4)-0xf90];
    else if (wc >= 0xff00 && wc < 0xfff0)
      summary = &cp932ext_uni2indx_pageff[(wc>>4)-0xff0];
    if (summary) {
      unsigned short used = summary->used;
      unsigned int i = wc & 0x0f;
      if (used & ((unsigned short) 1 << i)) {
        unsigned short c;

        used &= ((unsigned short) 1 << i) - 1;

        used = (used & 0x5555) + ((used & 0xaaaa) >> 1);
        used = (used & 0x3333) + ((used & 0xcccc) >> 2);
        used = (used & 0x0f0f) + ((used & 0xf0f0) >> 4);
        used = (used & 0x00ff) + (used >> 8);
        c = cp932ext_2charset[summary->indx + used];
        r[0] = (c >> 8); r[1] = (c & 0xff);
        return 2;
      }
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
  cp932ext_wctomb(conv, r, wc, n);
  return 0;
}
