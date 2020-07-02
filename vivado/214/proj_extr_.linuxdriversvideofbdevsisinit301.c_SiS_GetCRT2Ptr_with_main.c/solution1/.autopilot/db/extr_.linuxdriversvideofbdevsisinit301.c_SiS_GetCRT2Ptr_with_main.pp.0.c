# 1 "extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main.c"
# 1 "extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main.c" 1
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
# 1 "extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;



struct TYPE_6__ {unsigned short Ext_CRT2CRTC; unsigned short Ext_CRT2CRTC_NS; } ;
struct TYPE_5__ {unsigned short Ext_RESINFO; } ;
struct TYPE_4__ {unsigned short St_CRT2CRTC; } ;


typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {int SiS_VBType; scalar_t__ SiS_IF_DEF_LVDS; int SiS_VBInfo; unsigned short SiS_LCDResInfo; int SiS_SetFlag; int SiS_LCDInfo; int SiS_TVMode; scalar_t__ SiS_ModeType; scalar_t__ SiS_CHSOverScan; scalar_t__ SiS_IF_DEF_CH70xx; TYPE_3__ SiS_RefIndex[10]; TYPE_2__ SiS_EModeIDTable[10]; TYPE_1__ SiS_SModeIDTable[10]; } ;



 int DontExpandLCD ;
 int LCDPass11 ;
 int LCDVESATiming ;
 scalar_t__ ModeVGA ;





 unsigned short Panel_1280x800 ;
 unsigned short Panel_1280x800_2 ;
 unsigned short Panel_1280x854 ;


 unsigned short Panel_1680x1050 ;
# 46 "extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main.c"
 unsigned short SIS_RI_1280x768 ;
 unsigned short SIS_RI_1280x800 ;
 unsigned short SIS_RI_1400x1050 ;





 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToTV ;
 int SetCRT2ToTVNoHiVision ;
 int SetCRT2ToYPbPr525750 ;
 int SetInSlaveMode ;
 int TVSetCHOverScan ;
 int TVSetPAL ;
 int TVSetPALM ;
 int TVSetPALN ;
 int TVSetTVSimuMode ;
 int TVSetYPbPr525p ;
 int TVSetYPbPr750p ;
 int VB_SISVB ;

void
SiS_GetCRT2Ptr(volatile struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
        unsigned short RefreshRateTableIndex, volatile unsigned short *CRT2Index,
        volatile unsigned short *ResIndex)
{
  unsigned short tempbx=0, tempal=0, resinfo=0;

  if(ModeNo <= 0x13) {
     tempal = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_CRT2CRTC;
  } else {
     tempal = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRT2CRTC;
     resinfo = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_RESINFO;
  }

  if((SiS_Pr->SiS_VBType & VB_SISVB) && (SiS_Pr->SiS_IF_DEF_LVDS == 0)) {

     if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {

 tempbx = SiS_Pr->SiS_LCDResInfo;
 if(!(SiS_Pr->SiS_SetFlag & LCDVESATiming)) tempbx += 32;


 if(SiS_Pr->SiS_LCDResInfo == Panel_1680x1050) {
    if (resinfo == SIS_RI_1280x800) tempal = 9;
    else if(resinfo == SIS_RI_1400x1050) tempal = 11;
 } else if((SiS_Pr->SiS_LCDResInfo == Panel_1280x800) ||
    (SiS_Pr->SiS_LCDResInfo == Panel_1280x800_2) ||
    (SiS_Pr->SiS_LCDResInfo == Panel_1280x854)) {
    if (resinfo == SIS_RI_1280x768) tempal = 9;
 }

 if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) {



    tempbx = 100;
    if(ModeNo >= 0x13) {
       tempal = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].Ext_CRT2CRTC_NS;
    }
 }
# 121 "extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main.c"
     } else {

 if(SiS_Pr->SiS_VBInfo & SetCRT2ToHiVision) {

    tempbx = 2;
    if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
       tempbx = 13;
       if(!(SiS_Pr->SiS_TVMode & TVSetTVSimuMode)) tempbx = 14;
    }
 } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
    if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) tempbx = 7;
    else if(SiS_Pr->SiS_TVMode & TVSetYPbPr525p) tempbx = 6;
    else tempbx = 5;
    if(SiS_Pr->SiS_TVMode & TVSetTVSimuMode) tempbx += 5;
 } else {
    if(SiS_Pr->SiS_TVMode & TVSetPAL) tempbx = 3;
    else tempbx = 4;
    if(SiS_Pr->SiS_TVMode & TVSetTVSimuMode) tempbx += 5;
 }

     }

     tempal &= 0x3F;

     if(ModeNo > 0x13) {
        if(SiS_Pr->SiS_VBInfo & SetCRT2ToTVNoHiVision) {
    switch(resinfo) {
    case 131:
       tempal = 6;
       if(SiS_Pr->SiS_TVMode & (TVSetPAL | TVSetPALN)) tempal = 9;
       break;
    case 130:
    case 129:
    case 135:
       tempal = 6;
       if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
   if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) tempal = 8;
       }
       break;
    case 128:
       tempal = 4;
       break;
    case 132:
    case 134:
       tempal = 7;
       if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
   if(SiS_Pr->SiS_TVMode & TVSetYPbPr525p) tempal = 8;
       }
       break;
    case 133:
       if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
   if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) tempal = 9;
       }
       break;
    }
 }
     }

     *CRT2Index = tempbx;
     *ResIndex = tempal;

  } else {

     tempbx = 0;
     if((SiS_Pr->SiS_IF_DEF_CH70xx) && (SiS_Pr->SiS_VBInfo & SetCRT2ToTV)) {

 tempbx = 90;
 if(SiS_Pr->SiS_TVMode & TVSetPAL) {
    tempbx = 92;
    if(SiS_Pr->SiS_ModeType > ModeVGA) {
       if(SiS_Pr->SiS_CHSOverScan) tempbx = 99;
    }
    if(SiS_Pr->SiS_TVMode & TVSetPALM) tempbx = 94;
    else if(SiS_Pr->SiS_TVMode & TVSetPALN) tempbx = 96;
 }
 if(tempbx != 99) {
    if(SiS_Pr->SiS_TVMode & TVSetCHOverScan) tempbx++;
 }

     } else {

 switch(SiS_Pr->SiS_LCDResInfo) {
 case 137: tempbx = 12; break;
 case 140: tempbx = 10; break;
 case 139:
 case 138: tempbx = 14; break;
 case 136: tempbx = 16; break;
 case 147: tempbx = 18; break;
 case 145:
 case 146: tempbx = 20; break;
 case 143: tempbx = 22; break;
 case 144: tempbx = 24; break;
 case 142: tempbx = 26; break;
 case 141: tempbx = 28; break;



 }

 switch(SiS_Pr->SiS_LCDResInfo) {
 case 140:
 case 139:
 case 138:
 case 137:
    break;
 default:
    if(SiS_Pr->SiS_LCDInfo & DontExpandLCD) tempbx++;
 }

 if(SiS_Pr->SiS_LCDInfo & LCDPass11) tempbx = 30;
# 242 "extr_.linuxdriversvideofbdevsisinit301.c_SiS_GetCRT2Ptr_with_main.c"
     }

     (*CRT2Index) = tempbx;
     (*ResIndex) = tempal & 0x1F;
  }
}
int main() {
  struct SiS_Private * SiS_Pr;
  unsigned short ModeNo;
  unsigned short ModeIdIndex;
  unsigned short RefreshRateTableIndex;
  unsigned short * CRT2Index;
  unsigned short * ResIndex;
  SiS_GetCRT2Ptr(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex, CRT2Index, ResIndex);
  return 0;
}
