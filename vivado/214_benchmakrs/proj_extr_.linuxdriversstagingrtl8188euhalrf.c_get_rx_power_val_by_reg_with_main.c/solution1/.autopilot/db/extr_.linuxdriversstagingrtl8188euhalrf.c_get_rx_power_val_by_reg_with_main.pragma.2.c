# 1 "extr_.linuxdriversstagingrtl8188euhalrf.c_get_rx_power_val_by_reg_with_main.c"
# 1 "extr_.linuxdriversstagingrtl8188euhalrf.c_get_rx_power_val_by_reg_with_main.c" 1
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
# 1 "extr_.linuxdriversstagingrtl8188euhalrf.c_get_rx_power_val_by_reg_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dm_priv {scalar_t__ DynamicTxHighPowerLvl; } ;
struct hal_data_8188e {int EEPROMRegulatory; int** MCSTxPowerLevelOriginalOffset; int pwrGroupCnt; int PGMaxGroup; int** TxPwrLegacyHtDiff; int** TxPwrHt20Diff; int** PwrGroupHT40; int** PwrGroupHT20; int CurrentChannelBW; struct dm_priv dmpriv; } ;
struct adapter {struct hal_data_8188e* HalData; } ;
typedef int s8 ;


 int HT_CHANNEL_WIDTH_20 ;
 int HT_CHANNEL_WIDTH_40 ;
 scalar_t__ TxHighPwrLevel_Level1 ;
 scalar_t__ TxHighPwrLevel_Level2 ;

__attribute__((used)) static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
        u8 index, u32 *powerbase0, u32 *powerbase1,
        u32 *out_val)
{
 struct hal_data_8188e *hal_data = adapt->HalData;
 struct dm_priv *pdmpriv = &hal_data->dmpriv;
 u8 i, chnlGroup = 0, pwr_diff_limit[4], customer_pwr_limit;
 s8 pwr_diff = 0;
 u32 write_val, customer_limit, rf;
 u8 regulatory = hal_data->EEPROMRegulatory;



 for (rf = 0; rf < 2; rf++) {
  u8 j = index + (rf ? 8 : 0);

  switch (regulatory) {
  case 0:
   chnlGroup = 0;
   write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index+(rf ? 8 : 0)] +
    ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
   break;
  case 1:

   if (hal_data->pwrGroupCnt == 1)
    chnlGroup = 0;
   if (hal_data->pwrGroupCnt >= hal_data->PGMaxGroup) {
    if (channel < 3)
     chnlGroup = 0;
    else if (channel < 6)
     chnlGroup = 1;
    else if (channel < 9)
     chnlGroup = 2;
    else if (channel < 12)
     chnlGroup = 3;
    else if (channel < 14)
     chnlGroup = 4;
    else if (channel == 14)
     chnlGroup = 5;
   }
   write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][index+(rf ? 8 : 0)] +
     ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
   break;
  case 2:

   write_val = (index < 2) ? powerbase0[rf] : powerbase1[rf];
   break;
  case 3:

   chnlGroup = 0;

   if (index < 2)
    pwr_diff = hal_data->TxPwrLegacyHtDiff[rf][channel-1];
   else if (hal_data->CurrentChannelBW == HT_CHANNEL_WIDTH_20)
    pwr_diff = hal_data->TxPwrHt20Diff[rf][channel-1];

   if (hal_data->CurrentChannelBW == HT_CHANNEL_WIDTH_40)
    customer_pwr_limit = hal_data->PwrGroupHT40[rf][channel-1];
   else
    customer_pwr_limit = hal_data->PwrGroupHT20[rf][channel-1];

   if (pwr_diff >= customer_pwr_limit)
    pwr_diff = 0;
   else
    pwr_diff = customer_pwr_limit - pwr_diff;

   for (i = 0; i < 4; i++) {
    pwr_diff_limit[i] = (u8)((hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][j] &
        (0x7f << (i * 8))) >> (i * 8));

    if (pwr_diff_limit[i] > pwr_diff)
     pwr_diff_limit[i] = pwr_diff;
   }
   customer_limit = (pwr_diff_limit[3]<<24) |
      (pwr_diff_limit[2]<<16) |
      (pwr_diff_limit[1]<<8) |
      (pwr_diff_limit[0]);
   write_val = customer_limit + ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
   break;
  default:
   chnlGroup = 0;
   write_val = hal_data->MCSTxPowerLevelOriginalOffset[chnlGroup][j] +
     ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
   break;
  }




  if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level1)
   write_val = 0x14141414;
  else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level2)
   write_val = 0x00000000;

  *(out_val+rf) = write_val;
 }
}
int main() {
  struct adapter * adapt;
  u8 channel;
  u8 index;
  u32 * powerbase0;
  u32 * powerbase1;
  u32 * out_val;
  get_rx_power_val_by_reg(adapt, channel, index, powerbase0, powerbase1, out_val);
  return 0;
}
