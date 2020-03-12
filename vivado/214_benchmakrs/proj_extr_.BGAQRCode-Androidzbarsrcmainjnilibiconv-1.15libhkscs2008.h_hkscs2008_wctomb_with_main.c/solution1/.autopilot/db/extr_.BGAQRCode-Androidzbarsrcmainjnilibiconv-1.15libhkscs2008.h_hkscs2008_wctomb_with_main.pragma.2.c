# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs2008.h_hkscs2008_wctomb_with_main.c"
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs2008.h_hkscs2008_wctomb_with_main.c" 1
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
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libhkscs2008.h_hkscs2008_wctomb_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int conv_t ;
struct TYPE_40__ {unsigned short used; unsigned short indx; } ;
typedef TYPE_1__ Summary16 ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned short* hkscs2008_2charset ;
 TYPE_1__* hkscs2008_uni2indx_page20a ;
 TYPE_1__* hkscs2008_uni2indx_page21d ;
 TYPE_1__* hkscs2008_uni2indx_page224 ;
 TYPE_1__* hkscs2008_uni2indx_page231 ;
 TYPE_1__* hkscs2008_uni2indx_page235 ;
 TYPE_1__* hkscs2008_uni2indx_page241 ;
 TYPE_1__* hkscs2008_uni2indx_page258 ;
 TYPE_1__* hkscs2008_uni2indx_page25d ;
 TYPE_1__* hkscs2008_uni2indx_page260 ;
 TYPE_1__* hkscs2008_uni2indx_page26e ;
 TYPE_1__* hkscs2008_uni2indx_page27b ;
 TYPE_1__* hkscs2008_uni2indx_page289 ;
 TYPE_1__* hkscs2008_uni2indx_page2ad ;
 TYPE_1__* hkscs2008_uni2indx_page34 ;
 TYPE_1__* hkscs2008_uni2indx_page38 ;
 TYPE_1__* hkscs2008_uni2indx_page3a ;
 TYPE_1__* hkscs2008_uni2indx_page3e ;
 TYPE_1__* hkscs2008_uni2indx_page40 ;
 TYPE_1__* hkscs2008_uni2indx_page43 ;
 TYPE_1__* hkscs2008_uni2indx_page46 ;
 TYPE_1__* hkscs2008_uni2indx_page49 ;
 TYPE_1__* hkscs2008_uni2indx_page52 ;
 TYPE_1__* hkscs2008_uni2indx_page54 ;
 TYPE_1__* hkscs2008_uni2indx_page57 ;
 TYPE_1__* hkscs2008_uni2indx_page62 ;
 TYPE_1__* hkscs2008_uni2indx_page66 ;
 TYPE_1__* hkscs2008_uni2indx_page6a ;
 TYPE_1__* hkscs2008_uni2indx_page70 ;
 TYPE_1__* hkscs2008_uni2indx_page73 ;
 TYPE_1__* hkscs2008_uni2indx_page79 ;
 TYPE_1__* hkscs2008_uni2indx_page84 ;
 TYPE_1__* hkscs2008_uni2indx_page88 ;
 TYPE_1__* hkscs2008_uni2indx_page8b ;
 TYPE_1__* hkscs2008_uni2indx_page90 ;
 TYPE_1__* hkscs2008_uni2indx_page92 ;
 TYPE_1__* hkscs2008_uni2indx_page94 ;
 TYPE_1__* hkscs2008_uni2indx_page97 ;
 TYPE_1__* hkscs2008_uni2indx_page9f ;

__attribute__((used)) static int
hkscs2008_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, size_t n)
{
  if (n >= 2) {
    const Summary16 *summary = ((void*)0);
    if (wc >= 0x3400 && wc < 0x34f0)
      summary = &hkscs2008_uni2indx_page34[(wc>>4)-0x340];
    else if (wc >= 0x3800 && wc < 0x3880)
      summary = &hkscs2008_uni2indx_page38[(wc>>4)-0x380];
    else if (wc >= 0x3a00 && wc < 0x3b00)
      summary = &hkscs2008_uni2indx_page3a[(wc>>4)-0x3a0];
    else if (wc >= 0x3e00 && wc < 0x3ef0)
      summary = &hkscs2008_uni2indx_page3e[(wc>>4)-0x3e0];
    else if (wc >= 0x4000 && wc < 0x4190)
      summary = &hkscs2008_uni2indx_page40[(wc>>4)-0x400];
    else if (wc >= 0x4300 && wc < 0x44f0)
      summary = &hkscs2008_uni2indx_page43[(wc>>4)-0x430];
    else if (wc >= 0x4600 && wc < 0x46b0)
      summary = &hkscs2008_uni2indx_page46[(wc>>4)-0x460];
    else if (wc >= 0x4900 && wc < 0x4940)
      summary = &hkscs2008_uni2indx_page49[(wc>>4)-0x490];
    else if (wc >= 0x5200 && wc < 0x5250)
      summary = &hkscs2008_uni2indx_page52[(wc>>4)-0x520];
    else if (wc >= 0x5400 && wc < 0x5450)
      summary = &hkscs2008_uni2indx_page54[(wc>>4)-0x540];
    else if (wc >= 0x5700 && wc < 0x58a0)
      summary = &hkscs2008_uni2indx_page57[(wc>>4)-0x570];
    else if (wc >= 0x6200 && wc < 0x62d0)
      summary = &hkscs2008_uni2indx_page62[(wc>>4)-0x620];
    else if (wc >= 0x6600 && wc < 0x6790)
      summary = &hkscs2008_uni2indx_page66[(wc>>4)-0x660];
    else if (wc >= 0x6a00 && wc < 0x6a30)
      summary = &hkscs2008_uni2indx_page6a[(wc>>4)-0x6a0];
    else if (wc >= 0x7000 && wc < 0x7070)
      summary = &hkscs2008_uni2indx_page70[(wc>>4)-0x700];
    else if (wc >= 0x7300 && wc < 0x74d0)
      summary = &hkscs2008_uni2indx_page73[(wc>>4)-0x730];
    else if (wc >= 0x7900 && wc < 0x7bd0)
      summary = &hkscs2008_uni2indx_page79[(wc>>4)-0x790];
    else if (wc >= 0x8400 && wc < 0x8620)
      summary = &hkscs2008_uni2indx_page84[(wc>>4)-0x840];
    else if (wc >= 0x8800 && wc < 0x88a0)
      summary = &hkscs2008_uni2indx_page88[(wc>>4)-0x880];
    else if (wc >= 0x8b00 && wc < 0x8b90)
      summary = &hkscs2008_uni2indx_page8b[(wc>>4)-0x8b0];
    else if (wc >= 0x9000 && wc < 0x9050)
      summary = &hkscs2008_uni2indx_page90[(wc>>4)-0x900];
    else if (wc >= 0x9200 && wc < 0x9220)
      summary = &hkscs2008_uni2indx_page92[(wc>>4)-0x920];
    else if (wc >= 0x9400 && wc < 0x9430)
      summary = &hkscs2008_uni2indx_page94[(wc>>4)-0x940];
    else if (wc >= 0x9700 && wc < 0x9750)
      summary = &hkscs2008_uni2indx_page97[(wc>>4)-0x970];
    else if (wc >= 0x9f00 && wc < 0x9fd0)
      summary = &hkscs2008_uni2indx_page9f[(wc>>4)-0x9f0];
    else if (wc >= 0x20a00 && wc < 0x20a90)
      summary = &hkscs2008_uni2indx_page20a[(wc>>4)-0x20a0];
    else if (wc >= 0x21d00 && wc < 0x21d60)
      summary = &hkscs2008_uni2indx_page21d[(wc>>4)-0x21d0];
    else if (wc >= 0x22400 && wc < 0x224d0)
      summary = &hkscs2008_uni2indx_page224[(wc>>4)-0x2240];
    else if (wc >= 0x23100 && wc < 0x23260)
      summary = &hkscs2008_uni2indx_page231[(wc>>4)-0x2310];
    else if (wc >= 0x23500 && wc < 0x236a0)
      summary = &hkscs2008_uni2indx_page235[(wc>>4)-0x2350];
    else if (wc >= 0x24100 && wc < 0x24170)
      summary = &hkscs2008_uni2indx_page241[(wc>>4)-0x2410];
    else if (wc >= 0x25800 && wc < 0x258e0)
      summary = &hkscs2008_uni2indx_page258[(wc>>4)-0x2580];
    else if (wc >= 0x25d00 && wc < 0x25dc0)
      summary = &hkscs2008_uni2indx_page25d[(wc>>4)-0x25d0];
    else if (wc >= 0x26000 && wc < 0x26030)
      summary = &hkscs2008_uni2indx_page260[(wc>>4)-0x2600];
    else if (wc >= 0x26e00 && wc < 0x26e90)
      summary = &hkscs2008_uni2indx_page26e[(wc>>4)-0x26e0];
    else if (wc >= 0x27b00 && wc < 0x27b70)
      summary = &hkscs2008_uni2indx_page27b[(wc>>4)-0x27b0];
    else if (wc >= 0x28900 && wc < 0x28910)
      summary = &hkscs2008_uni2indx_page289[(wc>>4)-0x2890];
    else if (wc >= 0x2ad00 && wc < 0x2ae00)
      summary = &hkscs2008_uni2indx_page2ad[(wc>>4)-0x2ad0];
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
        c = hkscs2008_2charset[summary->indx + used];
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
  hkscs2008_wctomb(conv, r, wc, n);
  return 0;
}
