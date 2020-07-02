# 1 "extr_.linuxdriversstagingxgifbvb_setmode.c_XGI_AjustCRT2Rate_with_main.c"
# 1 "extr_.linuxdriversstagingxgifbvb_setmode.c_XGI_AjustCRT2Rate_with_main.c" 1
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
# 1 "extr_.linuxdriversstagingxgifbvb_setmode.c_XGI_AjustCRT2Rate_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb_device_info {int VBInfo; int VBType; scalar_t__ LCDResInfo; int LCDInfo; int SetFlag; } ;
struct TYPE_4__ {unsigned short Ext_ModeFlag; unsigned short Ext_RESINFO; } ;
struct TYPE_3__ {unsigned short ModeID; unsigned short Ext_InfoFlag; } ;


 int LCDNonExpanding ;
 unsigned short NoSupportSimuTV ;
 scalar_t__ Panel_1280x1024 ;
 scalar_t__ Panel_1280x960 ;
 int SetCRT2ToAVIDEO ;
 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToRAMDAC ;
 int SetCRT2ToSCART ;
 int SetCRT2ToSVIDEO ;
 int SetCRT2ToYPbPr525750 ;
 int SetInSlaveMode ;
 int SetNotSimuMode ;
 unsigned short SupportCRT2in301C ;
 unsigned short SupportHiVision ;
 unsigned short SupportLCD ;
 unsigned short SupportRAMDAC2 ;
 unsigned short SupportTV ;
 unsigned short SupportTV1024 ;
 int TVSetPAL ;
 int TVSimuMode ;
 int VB_SIS301B ;
 int VB_SIS301LV ;
 int VB_SIS302B ;
 int VB_SIS302LV ;
 int VB_XGI301C ;
 TYPE_2__* XGI330_EModeIDTable ;
 TYPE_1__* XGI330_RefIndex ;
 int XGI_SetCRT2ToLCDA ;

__attribute__((used)) static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
           unsigned short RefreshRateTableIndex,
           unsigned short *i,
  struct vb_device_info *pVBInfo)
{
 unsigned short tempax, tempbx, resinfo, modeflag, infoflag;

 modeflag = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
 resinfo = XGI330_EModeIDTable[ModeIdIndex].Ext_RESINFO;
 tempbx = XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID;
 tempax = 0;

 if (pVBInfo->VBInfo & SetCRT2ToRAMDAC) {
  tempax |= SupportRAMDAC2;

  if (pVBInfo->VBType & VB_XGI301C)
   tempax |= SupportCRT2in301C;
 }


 if (pVBInfo->VBInfo & (SetCRT2ToLCD | XGI_SetCRT2ToLCDA)) {
  tempax |= SupportLCD;

  if (pVBInfo->LCDResInfo != Panel_1280x1024 &&
      pVBInfo->LCDResInfo != Panel_1280x960 &&
      (pVBInfo->LCDInfo & LCDNonExpanding) &&
      resinfo >= 9)
   return 0;
 }

 if (pVBInfo->VBInfo & SetCRT2ToHiVision) {
  tempax |= SupportHiVision;
  if ((pVBInfo->VBInfo & SetInSlaveMode) &&
      ((resinfo == 4) ||
       (resinfo == 3 && (pVBInfo->SetFlag & TVSimuMode)) ||
       (resinfo > 7)))
   return 0;
 } else if (pVBInfo->VBInfo & (SetCRT2ToAVIDEO | SetCRT2ToSVIDEO |
          SetCRT2ToSCART | SetCRT2ToYPbPr525750 |
          SetCRT2ToHiVision)) {
  tempax |= SupportTV;

  if (pVBInfo->VBType & (VB_SIS301B | VB_SIS302B | VB_SIS301LV |
           VB_SIS302LV | VB_XGI301C))
   tempax |= SupportTV1024;

  if (!(pVBInfo->VBInfo & TVSetPAL) &&
      (modeflag & NoSupportSimuTV) &&
      (pVBInfo->VBInfo & SetInSlaveMode) &&
      !(pVBInfo->VBInfo & SetNotSimuMode))
   return 0;
 }

 for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
        tempbx; (*i)--) {
  infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
  if (infoflag & tempax)
   return 1;

  if ((*i) == 0)
   break;
 }

 for ((*i) = 0;; (*i)++) {
  infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
  if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
    != tempbx) {
   return 0;
  }

  if (infoflag & tempax)
   return 1;
 }
 return 1;
}
int main() {
  unsigned short ModeIdIndex;
  unsigned short RefreshRateTableIndex;
  unsigned short * i;
  struct vb_device_info * pVBInfo;
  XGI_AjustCRT2Rate(ModeIdIndex, RefreshRateTableIndex, i, pVBInfo);
  return 0;
}
