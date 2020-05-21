# 1 "extr_.linuxdriversinputmiscad714x.c_touchpad_check_endpoint_with_main.c"
# 1 "extr_.linuxdriversinputmiscad714x.c_touchpad_check_endpoint_with_main.c" 1
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
# 1 "extr_.linuxdriversinputmiscad714x.c_touchpad_check_endpoint_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_touchpad_plat {size_t x_start_stage; size_t x_end_stage; size_t y_start_stage; size_t y_end_stage; } ;
struct ad714x_touchpad_drv {int left_ep; int left_ep_val; int right_ep; int right_ep_val; int top_ep; int top_ep_val; int bottom_ep; int bottom_ep_val; } ;
struct ad714x_chip {int* sensor_val; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_touchpad_drv* touchpad; } ;
struct TYPE_3__ {struct ad714x_touchpad_plat* touchpad; } ;


 int BOTTOM_END_POINT_DETECTION_LEVEL ;
 int LEFT_END_POINT_DETECTION_LEVEL ;
 int LEFT_RIGHT_END_POINT_DEAVTIVALION_LEVEL ;
 int RIGHT_END_POINT_DETECTION_LEVEL ;
 int TOP_BOTTOM_END_POINT_DEAVTIVALION_LEVEL ;
 int TOP_END_POINT_DETECTION_LEVEL ;

__attribute__((used)) static int touchpad_check_endpoint(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_touchpad_plat *hw = &ad714x->hw->touchpad[idx];
 struct ad714x_touchpad_drv *sw = &ad714x->sw->touchpad[idx];
 int percent_sensor_diff;


 percent_sensor_diff = (ad714x->sensor_val[hw->x_start_stage] -
   ad714x->sensor_val[hw->x_start_stage + 1]) * 100 /
   ad714x->sensor_val[hw->x_start_stage + 1];
 if (!sw->left_ep) {
  if (percent_sensor_diff >= LEFT_END_POINT_DETECTION_LEVEL) {
   sw->left_ep = 1;
   sw->left_ep_val =
    ad714x->sensor_val[hw->x_start_stage + 1];
  }
 } else {
  if ((percent_sensor_diff < LEFT_END_POINT_DETECTION_LEVEL) &&
      (ad714x->sensor_val[hw->x_start_stage + 1] >
       LEFT_RIGHT_END_POINT_DEAVTIVALION_LEVEL + sw->left_ep_val))
   sw->left_ep = 0;
 }


 percent_sensor_diff = (ad714x->sensor_val[hw->x_end_stage] -
   ad714x->sensor_val[hw->x_end_stage - 1]) * 100 /
   ad714x->sensor_val[hw->x_end_stage - 1];
 if (!sw->right_ep) {
  if (percent_sensor_diff >= RIGHT_END_POINT_DETECTION_LEVEL) {
   sw->right_ep = 1;
   sw->right_ep_val =
    ad714x->sensor_val[hw->x_end_stage - 1];
  }
 } else {
  if ((percent_sensor_diff < RIGHT_END_POINT_DETECTION_LEVEL) &&
  (ad714x->sensor_val[hw->x_end_stage - 1] >
  LEFT_RIGHT_END_POINT_DEAVTIVALION_LEVEL + sw->right_ep_val))
   sw->right_ep = 0;
 }


 percent_sensor_diff = (ad714x->sensor_val[hw->y_start_stage] -
   ad714x->sensor_val[hw->y_start_stage + 1]) * 100 /
   ad714x->sensor_val[hw->y_start_stage + 1];
 if (!sw->top_ep) {
  if (percent_sensor_diff >= TOP_END_POINT_DETECTION_LEVEL) {
   sw->top_ep = 1;
   sw->top_ep_val =
    ad714x->sensor_val[hw->y_start_stage + 1];
  }
 } else {
  if ((percent_sensor_diff < TOP_END_POINT_DETECTION_LEVEL) &&
  (ad714x->sensor_val[hw->y_start_stage + 1] >
  TOP_BOTTOM_END_POINT_DEAVTIVALION_LEVEL + sw->top_ep_val))
   sw->top_ep = 0;
 }


 percent_sensor_diff = (ad714x->sensor_val[hw->y_end_stage] -
  ad714x->sensor_val[hw->y_end_stage - 1]) * 100 /
  ad714x->sensor_val[hw->y_end_stage - 1];
 if (!sw->bottom_ep) {
  if (percent_sensor_diff >= BOTTOM_END_POINT_DETECTION_LEVEL) {
   sw->bottom_ep = 1;
   sw->bottom_ep_val =
    ad714x->sensor_val[hw->y_end_stage - 1];
  }
 } else {
  if ((percent_sensor_diff < BOTTOM_END_POINT_DETECTION_LEVEL) &&
  (ad714x->sensor_val[hw->y_end_stage - 1] >
   TOP_BOTTOM_END_POINT_DEAVTIVALION_LEVEL + sw->bottom_ep_val))
   sw->bottom_ep = 0;
 }

 return sw->left_ep || sw->right_ep || sw->top_ep || sw->bottom_ep;
}
int main() {
  struct ad714x_chip * ad714x;
  int idx;
  touchpad_check_endpoint(ad714x, idx);
  return 0;
}
