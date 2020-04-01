# 1 "extr_.linuxdriversgpudrmradeonr600.c_rs780_pm_init_profile_with_main.c"
# 1 "extr_.linuxdriversgpudrmradeonr600.c_rs780_pm_init_profile_with_main.c" 1
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
# 1 "extr_.linuxdriversgpudrmradeonr600.c_rs780_pm_init_profile_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_power_states; int default_power_state_index; TYPE_1__* profiles; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_3__ {int dpms_off_ps_idx; int dpms_on_ps_idx; scalar_t__ dpms_on_cm_idx; scalar_t__ dpms_off_cm_idx; } ;


 size_t PM_PROFILE_DEFAULT_IDX ;
 size_t PM_PROFILE_HIGH_MH_IDX ;
 size_t PM_PROFILE_HIGH_SH_IDX ;
 size_t PM_PROFILE_LOW_MH_IDX ;
 size_t PM_PROFILE_LOW_SH_IDX ;
 size_t PM_PROFILE_MID_MH_IDX ;
 size_t PM_PROFILE_MID_SH_IDX ;

void rs780_pm_init_profile(struct radeon_device *rdev)
{
 if (rdev->pm.num_power_states == 2) {

  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_off_ps_idx = rdev->pm.default_power_state_index;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_on_ps_idx = rdev->pm.default_power_state_index;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_off_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_on_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_off_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_on_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_off_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_on_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_off_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_on_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_off_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_on_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_off_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_cm_idx = 0;
 } else if (rdev->pm.num_power_states == 3) {

  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_off_ps_idx = rdev->pm.default_power_state_index;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_on_ps_idx = rdev->pm.default_power_state_index;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_off_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_on_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_off_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_on_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_off_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_on_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_off_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_on_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_off_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_on_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_off_ps_idx = 1;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_cm_idx = 0;
 } else {

  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_off_ps_idx = rdev->pm.default_power_state_index;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_on_ps_idx = rdev->pm.default_power_state_index;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_DEFAULT_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_off_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_on_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_off_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_on_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_off_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_on_ps_idx = 3;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_SH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_off_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_on_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_LOW_MH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_off_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_on_ps_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_MID_MH_IDX].dpms_on_cm_idx = 0;

  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_off_ps_idx = 2;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_ps_idx = 3;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_off_cm_idx = 0;
  rdev->pm.profiles[PM_PROFILE_HIGH_MH_IDX].dpms_on_cm_idx = 0;
 }
}
int main() {
  struct radeon_device * rdev;
  rs780_pm_init_profile(rdev);
  return 0;
}
