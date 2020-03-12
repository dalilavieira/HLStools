# 1 "extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main.c"
# 1 "extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main.c" 1
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
# 1 "extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ delivery_system; int modulation; int rolloff; int pilot; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;
struct firedtv {scalar_t__ type; int voltage; int tone; TYPE_2__ fe; int * avc_data; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; int fec_inner; } ;
struct avc_command_frame {int* operand; int opcode; } ;


 int AVC_OPCODE_VENDOR ;
# 30 "extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main.c"
 scalar_t__ FIREDTV_DVB_S2 ;
# 41 "extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main.c"
 int SEC_TONE_ON ;
 int SEC_VOLTAGE_18 ;
 int SFE_VENDOR_DE_COMPANYID_0 ;
 int SFE_VENDOR_DE_COMPANYID_1 ;
 int SFE_VENDOR_DE_COMPANYID_2 ;
 int SFE_VENDOR_OPCODE_TUNE_QPSK ;
 int SFE_VENDOR_OPCODE_TUNE_QPSK2 ;
 scalar_t__ SYS_DVBS2 ;

__attribute__((used)) static int avc_tuner_tuneqpsk(struct firedtv *fdtv,
         struct dtv_frontend_properties *p)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;

 c->opcode = AVC_OPCODE_VENDOR;

 c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
 c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
 c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
 if (fdtv->type == FIREDTV_DVB_S2)
  c->operand[3] = SFE_VENDOR_OPCODE_TUNE_QPSK2;
 else
  c->operand[3] = SFE_VENDOR_OPCODE_TUNE_QPSK;

 c->operand[4] = (p->frequency >> 24) & 0xff;
 c->operand[5] = (p->frequency >> 16) & 0xff;
 c->operand[6] = (p->frequency >> 8) & 0xff;
 c->operand[7] = p->frequency & 0xff;

 c->operand[8] = ((p->symbol_rate / 1000) >> 8) & 0xff;
 c->operand[9] = (p->symbol_rate / 1000) & 0xff;

 switch (p->fec_inner) {
 case 145: c->operand[10] = 0x1; break;
 case 144: c->operand[10] = 0x2; break;
 case 143: c->operand[10] = 0x3; break;
 case 141: c->operand[10] = 0x4; break;
 case 140: c->operand[10] = 0x5; break;
 case 142:
 case 139:
 case 138:
 default: c->operand[10] = 0x0;
 }

 if (fdtv->voltage == 0xff)
  c->operand[11] = 0xff;
 else if (fdtv->voltage == SEC_VOLTAGE_18)
  c->operand[11] = 0;
 else
  c->operand[11] = 1;

 if (fdtv->tone == 0xff)
  c->operand[12] = 0xff;
 else if (fdtv->tone == SEC_TONE_ON)
  c->operand[12] = 1;
 else
  c->operand[12] = 0;

 if (fdtv->type == FIREDTV_DVB_S2) {
  if (fdtv->fe.dtv_property_cache.delivery_system == SYS_DVBS2) {
   switch (fdtv->fe.dtv_property_cache.modulation) {
   case 133: c->operand[13] = 0x1; break;
   case 132: c->operand[13] = 0x2; break;
   case 134: c->operand[13] = 0x3; break;
   default: c->operand[13] = 0x2; break;
   }
   switch (fdtv->fe.dtv_property_cache.rolloff) {
   case 129: c->operand[14] = 0x2; break;
   case 131: c->operand[14] = 0x0; break;
   case 130: c->operand[14] = 0x1; break;
   case 128:
   default: c->operand[14] = 0x2; break;

   }
   switch (fdtv->fe.dtv_property_cache.pilot) {
   case 137: c->operand[15] = 0x0; break;
   case 136: c->operand[15] = 0x0; break;
   case 135: c->operand[15] = 0x1; break;
   }
  } else {
   c->operand[13] = 0x1;
   c->operand[14] = 0xff;
   c->operand[15] = 0xff;
  }
  return 16;
 } else {
  return 13;
 }
}
int main() {
  struct firedtv * fdtv;
  struct dtv_frontend_properties * p;
  avc_tuner_tuneqpsk(fdtv, p);
  return 0;
}
