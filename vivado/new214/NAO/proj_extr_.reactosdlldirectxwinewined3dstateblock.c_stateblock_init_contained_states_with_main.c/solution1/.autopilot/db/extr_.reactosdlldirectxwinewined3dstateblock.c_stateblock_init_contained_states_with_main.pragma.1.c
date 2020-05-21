# 1 "extr_.reactosdlldirectxwinewined3dstateblock.c_stateblock_init_contained_states_with_main.c"
# 1 "extr_.reactosdlldirectxwinewined3dstateblock.c_stateblock_init_contained_states_with_main.c" 1
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
# 1 "extr_.reactosdlldirectxwinewined3dstateblock.c_stateblock_init_contained_states_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int* renderState; int* transform; unsigned int vertexShaderConstantsI; unsigned int vertexShaderConstantsB; unsigned int pixelShaderConstantsI; unsigned int pixelShaderConstantsB; int* textureState; int* samplerState; scalar_t__* ps_consts_f; scalar_t__* vs_consts_f; } ;
struct wined3d_stateblock {unsigned int* contained_render_states; size_t num_contained_render_states; unsigned int* contained_transform_states; size_t num_contained_transform_states; unsigned int* contained_vs_consts_f; size_t num_contained_vs_consts_f; unsigned int* contained_vs_consts_i; size_t num_contained_vs_consts_i; unsigned int* contained_vs_consts_b; size_t num_contained_vs_consts_b; unsigned int* contained_ps_consts_f; size_t num_contained_ps_consts_f; unsigned int* contained_ps_consts_i; size_t num_contained_ps_consts_i; unsigned int* contained_ps_consts_b; size_t num_contained_ps_consts_b; size_t num_contained_tss_states; size_t num_contained_sampler_states; TYPE_6__* contained_sampler_states; TYPE_5__ changed; TYPE_4__* contained_tss_states; TYPE_2__* device; } ;
struct TYPE_9__ {unsigned int vs_uniform_count; unsigned int ps_uniform_count; } ;
struct wined3d_d3d_info {TYPE_3__ limits; } ;
struct TYPE_12__ {unsigned int stage; unsigned int state; } ;
struct TYPE_10__ {unsigned int stage; unsigned int state; } ;
struct TYPE_8__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {struct wined3d_d3d_info d3d_info; } ;
typedef int DWORD ;


 unsigned int HIGHEST_TRANSFORMSTATE ;
 unsigned int MAX_COMBINED_SAMPLERS ;
 unsigned int MAX_TEXTURES ;
 unsigned int WINED3D_MAX_CONSTS_B ;
 unsigned int WINED3D_MAX_CONSTS_I ;
 unsigned int WINEHIGHEST_RENDER_STATE ;

void stateblock_init_contained_states(struct wined3d_stateblock *stateblock)
{
    const struct wined3d_d3d_info *d3d_info = &stateblock->device->adapter->d3d_info;
    unsigned int i, j;

    for (i = 0; i <= WINEHIGHEST_RENDER_STATE >> 5; ++i)
    {
        DWORD map = stateblock->changed.renderState[i];
        for (j = 0; map; map >>= 1, ++j)
        {
            if (!(map & 1)) continue;

            stateblock->contained_render_states[stateblock->num_contained_render_states] = (i << 5) | j;
            ++stateblock->num_contained_render_states;
        }
    }

    for (i = 0; i <= HIGHEST_TRANSFORMSTATE >> 5; ++i)
    {
        DWORD map = stateblock->changed.transform[i];
        for (j = 0; map; map >>= 1, ++j)
        {
            if (!(map & 1)) continue;

            stateblock->contained_transform_states[stateblock->num_contained_transform_states] = (i << 5) | j;
            ++stateblock->num_contained_transform_states;
        }
    }

    for (i = 0; i < d3d_info->limits.vs_uniform_count; ++i)
    {
        if (stateblock->changed.vs_consts_f[i])
        {
            stateblock->contained_vs_consts_f[stateblock->num_contained_vs_consts_f] = i;
            ++stateblock->num_contained_vs_consts_f;
        }
    }

    for (i = 0; i < WINED3D_MAX_CONSTS_I; ++i)
    {
        if (stateblock->changed.vertexShaderConstantsI & (1u << i))
        {
            stateblock->contained_vs_consts_i[stateblock->num_contained_vs_consts_i] = i;
            ++stateblock->num_contained_vs_consts_i;
        }
    }

    for (i = 0; i < WINED3D_MAX_CONSTS_B; ++i)
    {
        if (stateblock->changed.vertexShaderConstantsB & (1u << i))
        {
            stateblock->contained_vs_consts_b[stateblock->num_contained_vs_consts_b] = i;
            ++stateblock->num_contained_vs_consts_b;
        }
    }

    for (i = 0; i < d3d_info->limits.ps_uniform_count; ++i)
    {
        if (stateblock->changed.ps_consts_f[i])
        {
            stateblock->contained_ps_consts_f[stateblock->num_contained_ps_consts_f] = i;
            ++stateblock->num_contained_ps_consts_f;
        }
    }

    for (i = 0; i < WINED3D_MAX_CONSTS_I; ++i)
    {
        if (stateblock->changed.pixelShaderConstantsI & (1u << i))
        {
            stateblock->contained_ps_consts_i[stateblock->num_contained_ps_consts_i] = i;
            ++stateblock->num_contained_ps_consts_i;
        }
    }

    for (i = 0; i < WINED3D_MAX_CONSTS_B; ++i)
    {
        if (stateblock->changed.pixelShaderConstantsB & (1u << i))
        {
            stateblock->contained_ps_consts_b[stateblock->num_contained_ps_consts_b] = i;
            ++stateblock->num_contained_ps_consts_b;
        }
    }

    for (i = 0; i < MAX_TEXTURES; ++i)
    {
        DWORD map = stateblock->changed.textureState[i];

        for(j = 0; map; map >>= 1, ++j)
        {
            if (!(map & 1)) continue;

            stateblock->contained_tss_states[stateblock->num_contained_tss_states].stage = i;
            stateblock->contained_tss_states[stateblock->num_contained_tss_states].state = j;
            ++stateblock->num_contained_tss_states;
        }
    }

    for (i = 0; i < MAX_COMBINED_SAMPLERS; ++i)
    {
        DWORD map = stateblock->changed.samplerState[i];

        for (j = 0; map; map >>= 1, ++j)
        {
            if (!(map & 1)) continue;

            stateblock->contained_sampler_states[stateblock->num_contained_sampler_states].stage = i;
            stateblock->contained_sampler_states[stateblock->num_contained_sampler_states].state = j;
            ++stateblock->num_contained_sampler_states;
        }
    }
}
int main() {
  struct wined3d_stateblock * stateblock;
  stateblock_init_contained_states(stateblock);
  return 0;
}
