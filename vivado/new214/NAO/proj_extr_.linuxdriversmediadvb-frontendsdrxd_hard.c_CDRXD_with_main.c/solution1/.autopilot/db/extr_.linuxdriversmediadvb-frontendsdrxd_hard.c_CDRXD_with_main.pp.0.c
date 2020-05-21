# 1 "extr_.linuxdriversmediadvb-frontendsdrxd_hard.c_CDRXD_with_main.c"
# 1 "extr_.linuxdriversmediadvb-frontendsdrxd_hard.c_CDRXD_with_main.c" 1
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
# 1 "extr_.linuxdriversmediadvb-frontendsdrxd_hard.c_CDRXD_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int clock; int demod_address; int insert_rs_byte; } ;
struct TYPE_5__ {int cpOpt; int cpNexpOfs; int tdCal2k; int tdCal8k; } ;
struct TYPE_8__ {int R1; int R2; int R3; int outputLevel; int settleLevel; int minOutputLevel; int maxOutputLevel; int speed; void* ctrlMode; } ;
struct TYPE_7__ {int outputLevel; int settleLevel; int minOutputLevel; int maxOutputLevel; int speed; int R1; int R2; int R3; void* ctrlMode; } ;
struct drxd_state {int app_env_default; int app_env_diversity; int m_EcOcRegOcModeLop; int chip_adr; int intermediate_freq; int expected_sys_clock_freq; int sys_clock_freq; int osc_clock_freq; int enable_parallel; int hi_cfg_timing_div; int hi_cfg_bridge_delay; int m_FeAgRegAgAgcSio; int m_FeAgRegAgPwd; TYPE_2__ config; int insert_rs_byte; scalar_t__ tuner_mirrors; scalar_t__ type_A; scalar_t__ PGA; int drxd_state; int cscd_state; scalar_t__ osc_clock_deviation; int * m_HiI2cPatch; TYPE_1__ noise_cal; TYPE_4__ rf_agc_cfg; TYPE_3__ if_agc_cfg; } ;
typedef enum app_env { ____Placeholder_app_env } app_env ;


 void* AGC_CTRL_AUTO ;
 void* AGC_CTRL_OFF ;
 void* AGC_CTRL_USER ;
 int APPENV_MOBILE ;
 int APPENV_PORTABLE ;
 int CSCD_INIT ;
 int DRXD_DEF_AG_AGC_SIO ;
 int DRXD_DEF_AG_PWD_CONSUMER ;
 int DRXD_FE_CTRL_MAX ;
 int * DRXD_HiI2cPatch_1 ;
 int * DRXD_HiI2cPatch_3 ;
 int DRXD_UNINITIALIZED ;
 int HI_I2C_BRIDGE_DELAY ;
 int HI_I2C_DELAY ;
 int IFFILTER_DISCRETE ;
 int IFFILTER_SAW ;

__attribute__((used)) static int CDRXD(struct drxd_state *state, u32 IntermediateFrequency)
{
 u32 ulRfAgcOutputLevel = 0xffffffff;
 u32 ulRfAgcSettleLevel = 528;
 u32 ulRfAgcMinLevel = 0;
 u32 ulRfAgcMaxLevel = DRXD_FE_CTRL_MAX;
 u32 ulRfAgcSpeed = 0;
 u32 ulRfAgcMode = 0;
 u32 ulRfAgcR1 = 820;
 u32 ulRfAgcR2 = 2200;
 u32 ulRfAgcR3 = 150;
 u32 ulIfAgcMode = 0;
 u32 ulIfAgcOutputLevel = 0xffffffff;
 u32 ulIfAgcSettleLevel = 0xffffffff;
 u32 ulIfAgcMinLevel = 0xffffffff;
 u32 ulIfAgcMaxLevel = 0xffffffff;
 u32 ulIfAgcSpeed = 0xffffffff;
 u32 ulIfAgcR1 = 820;
 u32 ulIfAgcR2 = 2200;
 u32 ulIfAgcR3 = 150;
 u32 ulClock = state->config.clock;
 u32 ulSerialMode = 0;
 u32 ulEcOcRegOcModeLop = 4;
 u32 ulHiI2cDelay = HI_I2C_DELAY;
 u32 ulHiI2cBridgeDelay = HI_I2C_BRIDGE_DELAY;
 u32 ulHiI2cPatch = 0;
 u32 ulEnvironment = APPENV_PORTABLE;
 u32 ulEnvironmentDiversity = APPENV_MOBILE;
 u32 ulIFFilter = IFFILTER_SAW;

 state->if_agc_cfg.ctrlMode = AGC_CTRL_AUTO;
 state->if_agc_cfg.outputLevel = 0;
 state->if_agc_cfg.settleLevel = 140;
 state->if_agc_cfg.minOutputLevel = 0;
 state->if_agc_cfg.maxOutputLevel = 1023;
 state->if_agc_cfg.speed = 904;

 if (ulIfAgcMode == 1 && ulIfAgcOutputLevel <= DRXD_FE_CTRL_MAX) {
  state->if_agc_cfg.ctrlMode = AGC_CTRL_USER;
  state->if_agc_cfg.outputLevel = (u16) (ulIfAgcOutputLevel);
 }

 if (ulIfAgcMode == 0 &&
     ulIfAgcSettleLevel <= DRXD_FE_CTRL_MAX &&
     ulIfAgcMinLevel <= DRXD_FE_CTRL_MAX &&
     ulIfAgcMaxLevel <= DRXD_FE_CTRL_MAX &&
     ulIfAgcSpeed <= DRXD_FE_CTRL_MAX) {
  state->if_agc_cfg.ctrlMode = AGC_CTRL_AUTO;
  state->if_agc_cfg.settleLevel = (u16) (ulIfAgcSettleLevel);
  state->if_agc_cfg.minOutputLevel = (u16) (ulIfAgcMinLevel);
  state->if_agc_cfg.maxOutputLevel = (u16) (ulIfAgcMaxLevel);
  state->if_agc_cfg.speed = (u16) (ulIfAgcSpeed);
 }

 state->if_agc_cfg.R1 = (u16) (ulIfAgcR1);
 state->if_agc_cfg.R2 = (u16) (ulIfAgcR2);
 state->if_agc_cfg.R3 = (u16) (ulIfAgcR3);

 state->rf_agc_cfg.R1 = (u16) (ulRfAgcR1);
 state->rf_agc_cfg.R2 = (u16) (ulRfAgcR2);
 state->rf_agc_cfg.R3 = (u16) (ulRfAgcR3);

 state->rf_agc_cfg.ctrlMode = AGC_CTRL_AUTO;

 if (ulRfAgcMode == 1 && ulRfAgcOutputLevel <= DRXD_FE_CTRL_MAX) {
  state->rf_agc_cfg.ctrlMode = AGC_CTRL_USER;
  state->rf_agc_cfg.outputLevel = (u16) (ulRfAgcOutputLevel);
 }

 if (ulRfAgcMode == 0 &&
     ulRfAgcSettleLevel <= DRXD_FE_CTRL_MAX &&
     ulRfAgcMinLevel <= DRXD_FE_CTRL_MAX &&
     ulRfAgcMaxLevel <= DRXD_FE_CTRL_MAX &&
     ulRfAgcSpeed <= DRXD_FE_CTRL_MAX) {
  state->rf_agc_cfg.ctrlMode = AGC_CTRL_AUTO;
  state->rf_agc_cfg.settleLevel = (u16) (ulRfAgcSettleLevel);
  state->rf_agc_cfg.minOutputLevel = (u16) (ulRfAgcMinLevel);
  state->rf_agc_cfg.maxOutputLevel = (u16) (ulRfAgcMaxLevel);
  state->rf_agc_cfg.speed = (u16) (ulRfAgcSpeed);
 }

 if (ulRfAgcMode == 2)
  state->rf_agc_cfg.ctrlMode = AGC_CTRL_OFF;

 if (ulEnvironment <= 2)
  state->app_env_default = (enum app_env)
      (ulEnvironment);
 if (ulEnvironmentDiversity <= 2)
  state->app_env_diversity = (enum app_env)
      (ulEnvironmentDiversity);

 if (ulIFFilter == IFFILTER_DISCRETE) {

  state->noise_cal.cpOpt = 0;
  state->noise_cal.cpNexpOfs = 40;
  state->noise_cal.tdCal2k = -40;
  state->noise_cal.tdCal8k = -24;
 } else {

  state->noise_cal.cpOpt = 1;
  state->noise_cal.cpNexpOfs = 0;
  state->noise_cal.tdCal2k = -21;
  state->noise_cal.tdCal8k = -24;
 }
 state->m_EcOcRegOcModeLop = (u16) (ulEcOcRegOcModeLop);

 state->chip_adr = (state->config.demod_address << 1) | 1;
 switch (ulHiI2cPatch) {
 case 1:
  state->m_HiI2cPatch = DRXD_HiI2cPatch_1;
  break;
 case 3:
  state->m_HiI2cPatch = DRXD_HiI2cPatch_3;
  break;
 default:
  state->m_HiI2cPatch = ((void*)0);
 }


 state->intermediate_freq = (u16) (IntermediateFrequency / 1000);

 state->expected_sys_clock_freq = 48000;

 state->sys_clock_freq = 48000;
 state->osc_clock_freq = (u16) ulClock;
 state->osc_clock_deviation = 0;
 state->cscd_state = CSCD_INIT;
 state->drxd_state = DRXD_UNINITIALIZED;

 state->PGA = 0;
 state->type_A = 0;
 state->tuner_mirrors = 0;


 state->insert_rs_byte = state->config.insert_rs_byte;
 state->enable_parallel = (ulSerialMode != 1);




 state->hi_cfg_timing_div = (u16) ((state->sys_clock_freq / 1000) *
       ulHiI2cDelay) / 1000;


 state->hi_cfg_bridge_delay = (u16) ((state->osc_clock_freq / 1000) *
         ulHiI2cBridgeDelay) / 1000;

 state->m_FeAgRegAgPwd = DRXD_DEF_AG_PWD_CONSUMER;

 state->m_FeAgRegAgAgcSio = DRXD_DEF_AG_AGC_SIO;
 return 0;
}
int main() {
  struct drxd_state * state;
  u32 IntermediateFrequency;
  CDRXD(state, IntermediateFrequency);
  return 0;
}
