# 1 "extr_.linuxdriversmediadvb-frontendsstv090x.c_stv090x_optimize_carloop_with_main.c"
# 1 "extr_.linuxdriversmediadvb-frontendsstv090x.c_stv090x_optimize_carloop_with_main.c" 1
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
# 1 "extr_.linuxdriversmediadvb-frontendsstv090x.c_stv090x_optimize_carloop_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stv090x_state {int srate; TYPE_1__* internal; } ;
struct stv090x_long_frame_crloop {int modcod; int crl_pilots_on_2; int crl_pilots_on_5; int crl_pilots_on_10; int crl_pilots_on_20; int crl_pilots_on_30; int crl_pilots_off_2; int crl_pilots_off_5; int crl_pilots_off_10; int crl_pilots_off_20; int crl_pilots_off_30; } ;
typedef int s32 ;
typedef enum stv090x_modcod { ____Placeholder_stv090x_modcod } stv090x_modcod ;
struct TYPE_2__ {int dev_ver; } ;


 int STV090x_8PSK_910 ;
 int STV090x_QPSK_12 ;
 int STV090x_QPSK_25 ;
 struct stv090x_long_frame_crloop* stv090x_s2_apsk_crl_cut20 ;
 struct stv090x_long_frame_crloop* stv090x_s2_apsk_crl_cut30 ;
 struct stv090x_long_frame_crloop* stv090x_s2_crl_cut20 ;
 struct stv090x_long_frame_crloop* stv090x_s2_crl_cut30 ;
 struct stv090x_long_frame_crloop* stv090x_s2_lowqpsk_crl_cut20 ;
 struct stv090x_long_frame_crloop* stv090x_s2_lowqpsk_crl_cut30 ;

__attribute__((used)) static u8 stv090x_optimize_carloop(struct stv090x_state *state, enum stv090x_modcod modcod, s32 pilots)
{
 u8 aclc = 0x29;
 s32 i;
 struct stv090x_long_frame_crloop *car_loop, *car_loop_qpsk_low, *car_loop_apsk_low;

 if (state->internal->dev_ver == 0x20) {
  car_loop = stv090x_s2_crl_cut20;
  car_loop_qpsk_low = stv090x_s2_lowqpsk_crl_cut20;
  car_loop_apsk_low = stv090x_s2_apsk_crl_cut20;
 } else {

  car_loop = stv090x_s2_crl_cut30;
  car_loop_qpsk_low = stv090x_s2_lowqpsk_crl_cut30;
  car_loop_apsk_low = stv090x_s2_apsk_crl_cut30;
 }

 if (modcod < STV090x_QPSK_12) {
  i = 0;
  while ((i < 3) && (modcod != car_loop_qpsk_low[i].modcod))
   i++;

  if (i >= 3)
   i = 2;

 } else {
  i = 0;
  while ((i < 14) && (modcod != car_loop[i].modcod))
   i++;

  if (i >= 14) {
   i = 0;
   while ((i < 11) && (modcod != car_loop_apsk_low[i].modcod))
    i++;

   if (i >= 11)
    i = 10;
  }
 }

 if (modcod <= STV090x_QPSK_25) {
  if (pilots) {
   if (state->srate <= 3000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_on_2;
   else if (state->srate <= 7000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_on_5;
   else if (state->srate <= 15000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_on_10;
   else if (state->srate <= 25000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_on_20;
   else
    aclc = car_loop_qpsk_low[i].crl_pilots_on_30;
  } else {
   if (state->srate <= 3000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_off_2;
   else if (state->srate <= 7000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_off_5;
   else if (state->srate <= 15000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_off_10;
   else if (state->srate <= 25000000)
    aclc = car_loop_qpsk_low[i].crl_pilots_off_20;
   else
    aclc = car_loop_qpsk_low[i].crl_pilots_off_30;
  }

 } else if (modcod <= STV090x_8PSK_910) {
  if (pilots) {
   if (state->srate <= 3000000)
    aclc = car_loop[i].crl_pilots_on_2;
   else if (state->srate <= 7000000)
    aclc = car_loop[i].crl_pilots_on_5;
   else if (state->srate <= 15000000)
    aclc = car_loop[i].crl_pilots_on_10;
   else if (state->srate <= 25000000)
    aclc = car_loop[i].crl_pilots_on_20;
   else
    aclc = car_loop[i].crl_pilots_on_30;
  } else {
   if (state->srate <= 3000000)
    aclc = car_loop[i].crl_pilots_off_2;
   else if (state->srate <= 7000000)
    aclc = car_loop[i].crl_pilots_off_5;
   else if (state->srate <= 15000000)
    aclc = car_loop[i].crl_pilots_off_10;
   else if (state->srate <= 25000000)
    aclc = car_loop[i].crl_pilots_off_20;
   else
    aclc = car_loop[i].crl_pilots_off_30;
  }
 } else {




  if (i >= 11)
   i = 10;
  if (state->srate <= 3000000)
   aclc = car_loop_apsk_low[i].crl_pilots_on_2;
  else if (state->srate <= 7000000)
   aclc = car_loop_apsk_low[i].crl_pilots_on_5;
  else if (state->srate <= 15000000)
   aclc = car_loop_apsk_low[i].crl_pilots_on_10;
  else if (state->srate <= 25000000)
   aclc = car_loop_apsk_low[i].crl_pilots_on_20;
  else
   aclc = car_loop_apsk_low[i].crl_pilots_on_30;
 }

 return aclc;
}
int main() {
  struct stv090x_state * state;
  enum stv090x_modcod modcod;
  s32 pilots;
  stv090x_optimize_carloop(state, modcod, pilots);
  return 0;
}
