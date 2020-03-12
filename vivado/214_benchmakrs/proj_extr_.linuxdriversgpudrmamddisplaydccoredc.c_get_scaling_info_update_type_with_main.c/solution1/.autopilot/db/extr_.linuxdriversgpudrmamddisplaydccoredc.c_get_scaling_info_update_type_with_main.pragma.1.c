# 1 "extr_.linuxdriversgpudrmamddisplaydccoredc.c_get_scaling_info_update_type_with_main.c"
# 1 "extr_.linuxdriversgpudrmamddisplaydccoredc.c_get_scaling_info_update_type_with_main.c" 1
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
# 1 "extr_.linuxdriversgpudrmamddisplaydccoredc.c_get_scaling_info_update_type_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {int scaling_change; int bandwidth_change; int clock_change; int position_change; } ;
union surface_update_flags {TYPE_9__ bits; } ;
struct dc_surface_update {TYPE_8__* surface; TYPE_6__* scaling_info; } ;
typedef enum surface_update_type { ____Placeholder_surface_update_type } surface_update_type ;
struct TYPE_16__ {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_11__ {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_17__ {TYPE_7__ dst_rect; TYPE_4__ clip_rect; TYPE_2__ src_rect; union surface_update_flags update_flags; } ;
struct TYPE_14__ {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_12__ {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_10__ {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_15__ {TYPE_5__ dst_rect; TYPE_3__ clip_rect; TYPE_1__ src_rect; } ;


 int UPDATE_TYPE_FAST ;
 int UPDATE_TYPE_FULL ;
 int UPDATE_TYPE_MED ;

__attribute__((used)) static enum surface_update_type get_scaling_info_update_type(
  const struct dc_surface_update *u)
{
 union surface_update_flags *update_flags = &u->surface->update_flags;

 if (!u->scaling_info)
  return UPDATE_TYPE_FAST;

 if (u->scaling_info->clip_rect.width != u->surface->clip_rect.width
   || u->scaling_info->clip_rect.height != u->surface->clip_rect.height
   || u->scaling_info->dst_rect.width != u->surface->dst_rect.width
   || u->scaling_info->dst_rect.height != u->surface->dst_rect.height) {
  update_flags->bits.scaling_change = 1;

  if ((u->scaling_info->dst_rect.width < u->surface->dst_rect.width
   || u->scaling_info->dst_rect.height < u->surface->dst_rect.height)
    && (u->scaling_info->dst_rect.width < u->surface->src_rect.width
     || u->scaling_info->dst_rect.height < u->surface->src_rect.height))

   update_flags->bits.bandwidth_change = 1;
 }

 if (u->scaling_info->src_rect.width != u->surface->src_rect.width
  || u->scaling_info->src_rect.height != u->surface->src_rect.height) {

  update_flags->bits.scaling_change = 1;
  if (u->scaling_info->src_rect.width > u->surface->src_rect.width
    && u->scaling_info->src_rect.height > u->surface->src_rect.height)

   update_flags->bits.clock_change = 1;
 }

 if (u->scaling_info->src_rect.x != u->surface->src_rect.x
   || u->scaling_info->src_rect.y != u->surface->src_rect.y
   || u->scaling_info->clip_rect.x != u->surface->clip_rect.x
   || u->scaling_info->clip_rect.y != u->surface->clip_rect.y
   || u->scaling_info->dst_rect.x != u->surface->dst_rect.x
   || u->scaling_info->dst_rect.y != u->surface->dst_rect.y)
  update_flags->bits.position_change = 1;

 if (update_flags->bits.clock_change
   || update_flags->bits.bandwidth_change)
  return UPDATE_TYPE_FULL;

 if (update_flags->bits.scaling_change
   || update_flags->bits.position_change)
  return UPDATE_TYPE_MED;

 return UPDATE_TYPE_FAST;
}
int main() {
  const struct dc_surface_update * u;
  get_scaling_info_update_type(u);
  return 0;
}
