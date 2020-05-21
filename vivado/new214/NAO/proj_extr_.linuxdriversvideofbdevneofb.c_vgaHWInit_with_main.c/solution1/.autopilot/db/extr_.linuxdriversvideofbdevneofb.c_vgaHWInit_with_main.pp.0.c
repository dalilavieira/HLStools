# 1 "extr_.linuxdriversvideofbdevneofb.c_vgaHWInit_with_main.c"
# 1 "extr_.linuxdriversvideofbdevneofb.c_vgaHWInit_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevneofb.c_vgaHWInit_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct neofb_par {int MiscOutReg; int* Sequencer; int* CRTC; int* Graphics; int* Attribute; } ;
struct fb_var_screeninfo {int xres; int right_margin; int hsync_len; int left_margin; int yres; int lower_margin; int vsync_len; int upper_margin; int sync; int vmode; int xres_virtual; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VMODE_DOUBLE ;

__attribute__((used)) static int vgaHWInit(const struct fb_var_screeninfo *var,
       struct neofb_par *par)
{
 int hsync_end = var->xres + var->right_margin + var->hsync_len;
 int htotal = (hsync_end + var->left_margin) >> 3;
 int vsync_start = var->yres + var->lower_margin;
 int vsync_end = vsync_start + var->vsync_len;
 int vtotal = vsync_end + var->upper_margin;

 par->MiscOutReg = 0x23;

 if (!(var->sync & FB_SYNC_HOR_HIGH_ACT))
  par->MiscOutReg |= 0x40;

 if (!(var->sync & FB_SYNC_VERT_HIGH_ACT))
  par->MiscOutReg |= 0x80;




 par->Sequencer[0] = 0x00;
 par->Sequencer[1] = 0x01;
 par->Sequencer[2] = 0x0F;
 par->Sequencer[3] = 0x00;
 par->Sequencer[4] = 0x0E;




 par->CRTC[0] = htotal - 5;
 par->CRTC[1] = (var->xres >> 3) - 1;
 par->CRTC[2] = (var->xres >> 3) - 1;
 par->CRTC[3] = ((htotal - 1) & 0x1F) | 0x80;
 par->CRTC[4] = ((var->xres + var->right_margin) >> 3);
 par->CRTC[5] = (((htotal - 1) & 0x20) << 2)
     | (((hsync_end >> 3)) & 0x1F);
 par->CRTC[6] = (vtotal - 2) & 0xFF;
 par->CRTC[7] = (((vtotal - 2) & 0x100) >> 8)
     | (((var->yres - 1) & 0x100) >> 7)
     | ((vsync_start & 0x100) >> 6)
     | (((var->yres - 1) & 0x100) >> 5)
     | 0x10 | (((vtotal - 2) & 0x200) >> 4)
     | (((var->yres - 1) & 0x200) >> 3)
     | ((vsync_start & 0x200) >> 2);
 par->CRTC[8] = 0x00;
 par->CRTC[9] = (((var->yres - 1) & 0x200) >> 4) | 0x40;

 if (var->vmode & FB_VMODE_DOUBLE)
  par->CRTC[9] |= 0x80;

 par->CRTC[10] = 0x00;
 par->CRTC[11] = 0x00;
 par->CRTC[12] = 0x00;
 par->CRTC[13] = 0x00;
 par->CRTC[14] = 0x00;
 par->CRTC[15] = 0x00;
 par->CRTC[16] = vsync_start & 0xFF;
 par->CRTC[17] = (vsync_end & 0x0F) | 0x20;
 par->CRTC[18] = (var->yres - 1) & 0xFF;
 par->CRTC[19] = var->xres_virtual >> 4;
 par->CRTC[20] = 0x00;
 par->CRTC[21] = (var->yres - 1) & 0xFF;
 par->CRTC[22] = (vtotal - 1) & 0xFF;
 par->CRTC[23] = 0xC3;
 par->CRTC[24] = 0xFF;
# 95 "extr_.linuxdriversvideofbdevneofb.c_vgaHWInit_with_main.c"
 par->Graphics[0] = 0x00;
 par->Graphics[1] = 0x00;
 par->Graphics[2] = 0x00;
 par->Graphics[3] = 0x00;
 par->Graphics[4] = 0x00;
 par->Graphics[5] = 0x40;
 par->Graphics[6] = 0x05;
 par->Graphics[7] = 0x0F;
 par->Graphics[8] = 0xFF;


 par->Attribute[0] = 0x00;
 par->Attribute[1] = 0x01;
 par->Attribute[2] = 0x02;
 par->Attribute[3] = 0x03;
 par->Attribute[4] = 0x04;
 par->Attribute[5] = 0x05;
 par->Attribute[6] = 0x06;
 par->Attribute[7] = 0x07;
 par->Attribute[8] = 0x08;
 par->Attribute[9] = 0x09;
 par->Attribute[10] = 0x0A;
 par->Attribute[11] = 0x0B;
 par->Attribute[12] = 0x0C;
 par->Attribute[13] = 0x0D;
 par->Attribute[14] = 0x0E;
 par->Attribute[15] = 0x0F;
 par->Attribute[16] = 0x41;
 par->Attribute[17] = 0xFF;
 par->Attribute[18] = 0x0F;
 par->Attribute[19] = 0x00;
 par->Attribute[20] = 0x00;
 return 0;
}
int main() {
  const struct fb_var_screeninfo * var;
  struct neofb_par * par;
  vgaHWInit(var, par);
  return 0;
}
