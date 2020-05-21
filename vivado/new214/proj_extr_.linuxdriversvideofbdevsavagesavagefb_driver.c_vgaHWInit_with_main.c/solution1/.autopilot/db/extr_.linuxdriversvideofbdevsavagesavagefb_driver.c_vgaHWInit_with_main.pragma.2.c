# 1 "extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c"
# 1 "extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct xtimings {int sync; int HTotal; int HDisplay; int HSyncStart; int HSyncEnd; int VTotal; int VDisplay; int VSyncStart; int VSyncEnd; scalar_t__ dblscan; } ;
struct savagefb_par {int dummy; } ;
struct savage_reg {int MiscOutReg; int* Sequencer; int* CRTC; int* Graphics; int* Attribute; } ;
struct fb_var_screeninfo {int xres_virtual; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;

__attribute__((used)) static void vgaHWInit(struct fb_var_screeninfo *var,
        struct savagefb_par *par,
        struct xtimings *timings,
        struct savage_reg *reg)
{
 reg->MiscOutReg = 0x23;

 if (!(timings->sync & FB_SYNC_HOR_HIGH_ACT))
  reg->MiscOutReg |= 0x40;

 if (!(timings->sync & FB_SYNC_VERT_HIGH_ACT))
  reg->MiscOutReg |= 0x80;




 reg->Sequencer[0x00] = 0x00;
 reg->Sequencer[0x01] = 0x01;
 reg->Sequencer[0x02] = 0x0F;
 reg->Sequencer[0x03] = 0x00;
 reg->Sequencer[0x04] = 0x0E;




 reg->CRTC[0x00] = (timings->HTotal >> 3) - 5;
 reg->CRTC[0x01] = (timings->HDisplay >> 3) - 1;
 reg->CRTC[0x02] = (timings->HSyncStart >> 3) - 1;
 reg->CRTC[0x03] = (((timings->HSyncEnd >> 3) - 1) & 0x1f) | 0x80;
 reg->CRTC[0x04] = (timings->HSyncStart >> 3);
 reg->CRTC[0x05] = ((((timings->HSyncEnd >> 3) - 1) & 0x20) << 2) |
  (((timings->HSyncEnd >> 3)) & 0x1f);
 reg->CRTC[0x06] = (timings->VTotal - 2) & 0xFF;
 reg->CRTC[0x07] = (((timings->VTotal - 2) & 0x100) >> 8) |
  (((timings->VDisplay - 1) & 0x100) >> 7) |
  ((timings->VSyncStart & 0x100) >> 6) |
  (((timings->VSyncStart - 1) & 0x100) >> 5) |
  0x10 |
  (((timings->VTotal - 2) & 0x200) >> 4) |
  (((timings->VDisplay - 1) & 0x200) >> 3) |
  ((timings->VSyncStart & 0x200) >> 2);
 reg->CRTC[0x08] = 0x00;
 reg->CRTC[0x09] = (((timings->VSyncStart - 1) & 0x200) >> 4) | 0x40;

 if (timings->dblscan)
  reg->CRTC[0x09] |= 0x80;

 reg->CRTC[0x0a] = 0x00;
 reg->CRTC[0x0b] = 0x00;
 reg->CRTC[0x0c] = 0x00;
 reg->CRTC[0x0d] = 0x00;
 reg->CRTC[0x0e] = 0x00;
 reg->CRTC[0x0f] = 0x00;
 reg->CRTC[0x10] = timings->VSyncStart & 0xff;
 reg->CRTC[0x11] = (timings->VSyncEnd & 0x0f) | 0x20;
 reg->CRTC[0x12] = (timings->VDisplay - 1) & 0xff;
 reg->CRTC[0x13] = var->xres_virtual >> 4;
 reg->CRTC[0x14] = 0x00;
 reg->CRTC[0x15] = (timings->VSyncStart - 1) & 0xff;
 reg->CRTC[0x16] = (timings->VSyncEnd - 1) & 0xff;
 reg->CRTC[0x17] = 0xc3;
 reg->CRTC[0x18] = 0xff;
# 93 "extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c"
 reg->Graphics[0x00] = 0x00;
 reg->Graphics[0x01] = 0x00;
 reg->Graphics[0x02] = 0x00;
 reg->Graphics[0x03] = 0x00;
 reg->Graphics[0x04] = 0x00;
 reg->Graphics[0x05] = 0x40;
 reg->Graphics[0x06] = 0x05;
 reg->Graphics[0x07] = 0x0F;
 reg->Graphics[0x08] = 0xFF;


 reg->Attribute[0x00] = 0x00;
 reg->Attribute[0x01] = 0x01;
 reg->Attribute[0x02] = 0x02;
 reg->Attribute[0x03] = 0x03;
 reg->Attribute[0x04] = 0x04;
 reg->Attribute[0x05] = 0x05;
 reg->Attribute[0x06] = 0x06;
 reg->Attribute[0x07] = 0x07;
 reg->Attribute[0x08] = 0x08;
 reg->Attribute[0x09] = 0x09;
 reg->Attribute[0x0a] = 0x0A;
 reg->Attribute[0x0b] = 0x0B;
 reg->Attribute[0x0c] = 0x0C;
 reg->Attribute[0x0d] = 0x0D;
 reg->Attribute[0x0e] = 0x0E;
 reg->Attribute[0x0f] = 0x0F;
 reg->Attribute[0x10] = 0x41;
 reg->Attribute[0x11] = 0xFF;
 reg->Attribute[0x12] = 0x0F;
 reg->Attribute[0x13] = 0x00;
 reg->Attribute[0x14] = 0x00;
}
int main() {
  struct fb_var_screeninfo * var;
  struct savagefb_par * par;
  struct xtimings * timings;
  struct savage_reg * reg;
  vgaHWInit(var, par, timings, reg);
  return 0;
}
