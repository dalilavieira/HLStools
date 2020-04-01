# 1 "extr_.linuxdriversgpudrmamdpowerplayhwmgrsmu7_hwmgr.c_smu7_get_profiling_clk_with_main.c"
# 1 "extr_.linuxdriversgpudrmamdpowerplayhwmgrsmu7_hwmgr.c_smu7_get_profiling_clk_with_main.c" 1
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
# 1 "extr_.linuxdriversgpudrmamdpowerplayhwmgrsmu7_hwmgr.c_smu7_get_profiling_clk_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_12__ {int count; } ;
struct TYPE_13__ {TYPE_10__ pcie_speed_table; } ;
struct TYPE_22__ {int count; TYPE_3__* dpm_levels; } ;
struct TYPE_15__ {int count; TYPE_1__* dpm_levels; } ;
struct smu7_dpm_table {TYPE_9__ mclk_table; TYPE_2__ sclk_table; } ;
struct smu7_hwmgr {TYPE_11__ dpm_table; struct smu7_dpm_table golden_dpm_table; } ;
struct TYPE_19__ {TYPE_5__* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {scalar_t__ pp_table_version; int pstate_sclk; int pstate_mclk; int * pptable; TYPE_6__ dyn_state; int * backend; } ;
struct phm_ppt_v1_information {TYPE_8__* vdd_dep_on_sclk; } ;
typedef int int32_t ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
struct TYPE_21__ {int count; TYPE_7__* entries; } ;
struct TYPE_20__ {int clk; } ;
struct TYPE_18__ {int count; TYPE_4__* entries; } ;
struct TYPE_17__ {int clk; } ;
struct TYPE_16__ {int value; } ;
struct TYPE_14__ {int value; } ;


 int AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_PEAK ;
 int EINVAL ;
 scalar_t__ PP_TABLE_V0 ;
 scalar_t__ PP_TABLE_V1 ;

__attribute__((used)) static int smu7_get_profiling_clk(struct pp_hwmgr *hwmgr, enum amd_dpm_forced_level level,
    uint32_t *sclk_mask, uint32_t *mclk_mask, uint32_t *pcie_mask)
{
 uint32_t percentage;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct smu7_dpm_table *golden_dpm_table = &data->golden_dpm_table;
 int32_t tmp_mclk;
 int32_t tmp_sclk;
 int32_t count;

 if (golden_dpm_table->mclk_table.count < 1)
  return -EINVAL;

 percentage = 100 * golden_dpm_table->sclk_table.dpm_levels[golden_dpm_table->sclk_table.count - 1].value /
   golden_dpm_table->mclk_table.dpm_levels[golden_dpm_table->mclk_table.count - 1].value;

 if (golden_dpm_table->mclk_table.count == 1) {
  percentage = 70;
  tmp_mclk = golden_dpm_table->mclk_table.dpm_levels[golden_dpm_table->mclk_table.count - 1].value;
  *mclk_mask = golden_dpm_table->mclk_table.count - 1;
 } else {
  tmp_mclk = golden_dpm_table->mclk_table.dpm_levels[golden_dpm_table->mclk_table.count - 2].value;
  *mclk_mask = golden_dpm_table->mclk_table.count - 2;
 }

 tmp_sclk = tmp_mclk * percentage / 100;

 if (hwmgr->pp_table_version == PP_TABLE_V0) {
  for (count = hwmgr->dyn_state.vddc_dependency_on_sclk->count-1;
   count >= 0; count--) {
   if (tmp_sclk >= hwmgr->dyn_state.vddc_dependency_on_sclk->entries[count].clk) {
    tmp_sclk = hwmgr->dyn_state.vddc_dependency_on_sclk->entries[count].clk;
    *sclk_mask = count;
    break;
   }
  }
  if (count < 0 || level == AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK) {
   *sclk_mask = 0;
   tmp_sclk = hwmgr->dyn_state.vddc_dependency_on_sclk->entries[0].clk;
  }

  if (level == AMD_DPM_FORCED_LEVEL_PROFILE_PEAK)
   *sclk_mask = hwmgr->dyn_state.vddc_dependency_on_sclk->count-1;
 } else if (hwmgr->pp_table_version == PP_TABLE_V1) {
  struct phm_ppt_v1_information *table_info =
    (struct phm_ppt_v1_information *)(hwmgr->pptable);

  for (count = table_info->vdd_dep_on_sclk->count-1; count >= 0; count--) {
   if (tmp_sclk >= table_info->vdd_dep_on_sclk->entries[count].clk) {
    tmp_sclk = table_info->vdd_dep_on_sclk->entries[count].clk;
    *sclk_mask = count;
    break;
   }
  }
  if (count < 0 || level == AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK) {
   *sclk_mask = 0;
   tmp_sclk = table_info->vdd_dep_on_sclk->entries[0].clk;
  }

  if (level == AMD_DPM_FORCED_LEVEL_PROFILE_PEAK)
   *sclk_mask = table_info->vdd_dep_on_sclk->count - 1;
 }

 if (level == AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK)
  *mclk_mask = 0;
 else if (level == AMD_DPM_FORCED_LEVEL_PROFILE_PEAK)
  *mclk_mask = golden_dpm_table->mclk_table.count - 1;

 *pcie_mask = data->dpm_table.pcie_speed_table.count - 1;
 hwmgr->pstate_sclk = tmp_sclk;
 hwmgr->pstate_mclk = tmp_mclk;

 return 0;
}
int main() {
  struct pp_hwmgr * hwmgr;
  enum amd_dpm_forced_level level;
  uint32_t * sclk_mask;
  uint32_t * mclk_mask;
  uint32_t * pcie_mask;
  smu7_get_profiling_clk(hwmgr, level, sclk_mask, mclk_mask, pcie_mask);
  return 0;
}
