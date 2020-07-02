# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_Generic_ConvertCRData_with_main.c"
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_Generic_ConvertCRData_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevsisinit.c_SiS_Generic_ConvertCRData_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int left_margin; int right_margin; int hsync_len; int yres; int upper_margin; int lower_margin; int vsync_len; } ;
struct SiS_Private {int dummy; } ;



void
SiS_Generic_ConvertCRData(struct SiS_Private *SiS_Pr, unsigned char crdata[1000],
   int xres, int yres,
   struct fb_var_screeninfo *var, bool writeres
)
{_ssdm_SpecArrayDimSize(crdata, 1000);
   unsigned short HRE, HBE, HRS, HBS, HDE, HT;
   unsigned short VRE, VBE, VRS, VBS, VDE, VT;
   unsigned char sr_data, cr_data, cr_data2;
   int A, B, C, D, E, F, temp;

   sr_data = crdata[14];


   HT = crdata[0] | ((unsigned short)(sr_data & 0x03) << 8);
   A = HT + 5;


   HDE = crdata[1] | ((unsigned short)(sr_data & 0x0C) << 6);
   E = HDE + 1;


   HRS = crdata[4] | ((unsigned short)(sr_data & 0xC0) << 2);
   F = HRS - E - 3;


   HBS = crdata[2] | ((unsigned short)(sr_data & 0x30) << 4);

   sr_data = crdata[15];
   cr_data = crdata[5];


   HBE = (crdata[3] & 0x1f) |
         ((unsigned short)(cr_data & 0x80) >> 2) |
         ((unsigned short)(sr_data & 0x03) << 6);


   HRE = (cr_data & 0x1f) | ((sr_data & 0x04) << 3);

   temp = HBE - ((E - 1) & 255);
   B = (temp > 0) ? temp : (temp + 256);

   temp = HRE - ((E + F + 3) & 63);
   C = (temp > 0) ? temp : (temp + 64);

   D = B - F - C;

   if(writeres) var->xres = xres = E * 8;
   var->left_margin = D * 8;
   var->right_margin = F * 8;
   var->hsync_len = C * 8;


   sr_data = crdata[13];
   cr_data = crdata[7];


   VT = crdata[6] |
  ((unsigned short)(cr_data & 0x01) << 8) |
  ((unsigned short)(cr_data & 0x20) << 4) |
  ((unsigned short)(sr_data & 0x01) << 10);
   A = VT + 2;


   VDE = crdata[10] |
  ((unsigned short)(cr_data & 0x02) << 7) |
  ((unsigned short)(cr_data & 0x40) << 3) |
  ((unsigned short)(sr_data & 0x02) << 9);
   E = VDE + 1;


   VRS = crdata[8] |
  ((unsigned short)(cr_data & 0x04) << 6) |
  ((unsigned short)(cr_data & 0x80) << 2) |
  ((unsigned short)(sr_data & 0x08) << 7);
   F = VRS + 1 - E;

   cr_data2 = (crdata[16] & 0x01) << 5;


   VBS = crdata[11] |
  ((unsigned short)(cr_data & 0x08) << 5) |
  ((unsigned short)(cr_data2 & 0x20) << 4) |
  ((unsigned short)(sr_data & 0x04) << 8);


   VBE = crdata[12] | ((unsigned short)(sr_data & 0x10) << 4);
   temp = VBE - ((E - 1) & 511);
   B = (temp > 0) ? temp : (temp + 512);


   VRE = (crdata[9] & 0x0f) | ((sr_data & 0x20) >> 1);
   temp = VRE - ((E + F - 1) & 31);
   C = (temp > 0) ? temp : (temp + 32);

   D = B - F - C;

   if(writeres) var->yres = yres = E;
   var->upper_margin = D;
   var->lower_margin = F;
   var->vsync_len = C;

   if((xres == 320) && ((yres == 200) || (yres == 240))) {






      var->left_margin = (400 - 376);
      var->right_margin = (328 - 320);
      var->hsync_len = (376 - 328);

   }

}
int main() {
  struct SiS_Private * SiS_Pr;
  unsigned char * crdata;
  int xres;
  int yres;
  struct fb_var_screeninfo * var;
  bool writeres;
  SiS_Generic_ConvertCRData(SiS_Pr, crdata, xres, yres, var, writeres);
  return 0;
}
