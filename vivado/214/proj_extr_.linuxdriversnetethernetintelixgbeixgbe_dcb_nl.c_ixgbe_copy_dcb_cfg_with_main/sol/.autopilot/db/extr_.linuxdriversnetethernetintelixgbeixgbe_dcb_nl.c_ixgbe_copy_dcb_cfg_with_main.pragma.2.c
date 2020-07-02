# 1 "extr_.linuxdriversnetethernetintelixgbeixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg_with_main.c"
# 1 "extr_.linuxdriversnetethernetintelixgbeixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg_with_main.c" 1
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
# 1 "extr_.linuxdriversnetethernetintelixgbeixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;





typedef struct TYPE_2__ TYPE_1__ ;


struct tc_configuration {scalar_t__ dcb_pfc; TYPE_1__* path; } ;
struct ixgbe_dcb_config {scalar_t__** bw_percentage; scalar_t__ pfc_mode_enable; struct tc_configuration* tc_config; } ;
struct ixgbe_adapter {struct ixgbe_dcb_config dcb_cfg; struct ixgbe_dcb_config temp_dcb_cfg; } ;
struct TYPE_2__ {scalar_t__ prio_type; scalar_t__ bwg_id; scalar_t__ bwg_percent; scalar_t__ up_to_tc_bitmap; } ;


 int BIT_APP_UPCHG ;
 int BIT_PFC ;
 int BIT_PG_RX ;
 int BIT_PG_TX ;
 int DCB_PFC_UP_ATTR_0 ;
 int DCB_PFC_UP_ATTR_MAX ;
 int DCB_PG_ATTR_BW_ID_0 ;
 int DCB_PG_ATTR_BW_ID_MAX ;
 int DCB_PG_ATTR_TC_0 ;
 int DCB_RX_CONFIG ;
 int DCB_TX_CONFIG ;

int ixgbe_copy_dcb_cfg(struct ixgbe_adapter *adapter, int tc_max)
{
 struct ixgbe_dcb_config *scfg = &adapter->temp_dcb_cfg;
 struct ixgbe_dcb_config *dcfg = &adapter->dcb_cfg;
 struct tc_configuration *src = 0;
 struct tc_configuration *dst = 0;
 int i, j;
 int tx = DCB_TX_CONFIG;
 int rx = DCB_RX_CONFIG;
 int changes = 0;
# 51 "extr_.linuxdriversnetethernetintelixgbeixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg_with_main.c"
 for (i = DCB_PG_ATTR_TC_0; i < tc_max + DCB_PG_ATTR_TC_0; i++) {
  src = &scfg->tc_config[i - DCB_PG_ATTR_TC_0];
  dst = &dcfg->tc_config[i - DCB_PG_ATTR_TC_0];

  if (dst->path[tx].prio_type != src->path[tx].prio_type) {
   dst->path[tx].prio_type = src->path[tx].prio_type;
   changes |= BIT_PG_TX;
  }

  if (dst->path[tx].bwg_id != src->path[tx].bwg_id) {
   dst->path[tx].bwg_id = src->path[tx].bwg_id;
   changes |= BIT_PG_TX;
  }

  if (dst->path[tx].bwg_percent != src->path[tx].bwg_percent) {
   dst->path[tx].bwg_percent = src->path[tx].bwg_percent;
   changes |= BIT_PG_TX;
  }

  if (dst->path[tx].up_to_tc_bitmap !=
    src->path[tx].up_to_tc_bitmap) {
   dst->path[tx].up_to_tc_bitmap =
    src->path[tx].up_to_tc_bitmap;
   changes |= (BIT_PG_TX | BIT_PFC | BIT_APP_UPCHG);
  }

  if (dst->path[rx].prio_type != src->path[rx].prio_type) {
   dst->path[rx].prio_type = src->path[rx].prio_type;
   changes |= BIT_PG_RX;
  }

  if (dst->path[rx].bwg_id != src->path[rx].bwg_id) {
   dst->path[rx].bwg_id = src->path[rx].bwg_id;
   changes |= BIT_PG_RX;
  }

  if (dst->path[rx].bwg_percent != src->path[rx].bwg_percent) {
   dst->path[rx].bwg_percent = src->path[rx].bwg_percent;
   changes |= BIT_PG_RX;
  }

  if (dst->path[rx].up_to_tc_bitmap !=
    src->path[rx].up_to_tc_bitmap) {
   dst->path[rx].up_to_tc_bitmap =
    src->path[rx].up_to_tc_bitmap;
   changes |= (BIT_PG_RX | BIT_PFC | BIT_APP_UPCHG);
  }
 }

 for (i = DCB_PG_ATTR_BW_ID_0; i < DCB_PG_ATTR_BW_ID_MAX; i++) {
  j = i - DCB_PG_ATTR_BW_ID_0;
  if (dcfg->bw_percentage[tx][j] != scfg->bw_percentage[tx][j]) {
   dcfg->bw_percentage[tx][j] = scfg->bw_percentage[tx][j];
   changes |= BIT_PG_TX;
  }
  if (dcfg->bw_percentage[rx][j] != scfg->bw_percentage[rx][j]) {
   dcfg->bw_percentage[rx][j] = scfg->bw_percentage[rx][j];
   changes |= BIT_PG_RX;
  }
 }

 for (i = DCB_PFC_UP_ATTR_0; i < DCB_PFC_UP_ATTR_MAX; i++) {
  j = i - DCB_PFC_UP_ATTR_0;
  if (dcfg->tc_config[j].dcb_pfc != scfg->tc_config[j].dcb_pfc) {
   dcfg->tc_config[j].dcb_pfc = scfg->tc_config[j].dcb_pfc;
   changes |= BIT_PFC;
  }
 }

 if (dcfg->pfc_mode_enable != scfg->pfc_mode_enable) {
  dcfg->pfc_mode_enable = scfg->pfc_mode_enable;
  changes |= BIT_PFC;
 }

 return changes;
}
int main() {
  struct ixgbe_adapter * adapter;
  int tc_max;
  ixgbe_copy_dcb_cfg(adapter, tc_max);
  return 0;
}
