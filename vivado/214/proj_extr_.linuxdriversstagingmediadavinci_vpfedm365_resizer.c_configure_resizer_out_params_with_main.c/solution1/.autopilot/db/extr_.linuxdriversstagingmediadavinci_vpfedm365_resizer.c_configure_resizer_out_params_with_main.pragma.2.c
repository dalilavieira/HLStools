# 1 "extr_.linuxdriversstagingmediadavinci_vpfedm365_resizer.c_configure_resizer_out_params_with_main.c"
# 1 "extr_.linuxdriversstagingmediadavinci_vpfedm365_resizer.c_configure_resizer_out_params_with_main.c" 1
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
# 1 "extr_.linuxdriversstagingmediadavinci_vpfedm365_resizer.c_configure_resizer_out_params_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vpfe_rsz_output_spec {int user_y_ofst; int user_c_ofst; int h_dscale_ave_sz; int en_down_scale; int h_lpf_int_c; int h_lpf_int_y; int h_typ_c; int h_typ_y; int v_lpf_int_c; int v_lpf_int_y; int v_typ_c; int v_typ_y; int v_flip; int h_flip; int vst_c; int vst_y; int v_dscale_ave_sz; } ;
struct TYPE_6__ {scalar_t__ output; struct v4l2_mbus_framefmt* formats; } ;
struct TYPE_5__ {scalar_t__ output; struct v4l2_mbus_framefmt* formats; } ;
struct resizer_params {TYPE_4__* ext_mem_param; TYPE_3__* rsz_rsc_param; void** rsz_en; } ;
struct vpfe_resizer_device {TYPE_2__ resizer_b; TYPE_1__ resizer_a; struct resizer_params config; } ;
struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_8__ {int user_y_ofst; int user_c_ofst; scalar_t__ rsz_sdr_ptr_e_c; int rsz_sdr_ptr_s_c; scalar_t__ rsz_sdr_ptr_e_y; int rsz_sdr_ptr_s_y; } ;
struct TYPE_7__ {int v_dscale_ave_sz; int h_dscale_ave_sz; int dscale_en; int h_lpf_int_c; int h_lpf_int_y; int h_typ_c; int h_typ_y; int v_lpf_int_c; int v_lpf_int_y; int v_typ_c; int v_typ_y; int v_flip; int h_flip; scalar_t__ o_hsz; scalar_t__ o_vsz; } ;


 void* DISABLE ;
 void* ENABLE ;
 scalar_t__ RESIZER_OUTPUT_NONE ;
 size_t RESIZER_PAD_SOURCE ;
 int RSZ_A ;
 int RSZ_B ;

__attribute__((used)) static void
configure_resizer_out_params(struct vpfe_resizer_device *resizer, int index,
        void *output_spec, unsigned char partial,
        unsigned int flag)
{
 struct resizer_params *param = &resizer->config;
 struct v4l2_mbus_framefmt *outformat;
 struct vpfe_rsz_output_spec *output;

 if (index == RSZ_A &&
     resizer->resizer_a.output == RESIZER_OUTPUT_NONE) {
  param->rsz_en[index] = DISABLE;
  return;
 }
 if (index == RSZ_B &&
     resizer->resizer_b.output == RESIZER_OUTPUT_NONE) {
  param->rsz_en[index] = DISABLE;
  return;
 }
 output = output_spec;
 param->rsz_en[index] = ENABLE;
 if (partial) {
  param->rsz_rsc_param[index].h_flip = output->h_flip;
  param->rsz_rsc_param[index].v_flip = output->v_flip;
  param->rsz_rsc_param[index].v_typ_y = output->v_typ_y;
  param->rsz_rsc_param[index].v_typ_c = output->v_typ_c;
  param->rsz_rsc_param[index].v_lpf_int_y =
      output->v_lpf_int_y;
  param->rsz_rsc_param[index].v_lpf_int_c =
      output->v_lpf_int_c;
  param->rsz_rsc_param[index].h_typ_y = output->h_typ_y;
  param->rsz_rsc_param[index].h_typ_c = output->h_typ_c;
  param->rsz_rsc_param[index].h_lpf_int_y =
      output->h_lpf_int_y;
  param->rsz_rsc_param[index].h_lpf_int_c =
      output->h_lpf_int_c;
  param->rsz_rsc_param[index].dscale_en =
      output->en_down_scale;
  param->rsz_rsc_param[index].h_dscale_ave_sz =
      output->h_dscale_ave_sz;
  param->rsz_rsc_param[index].v_dscale_ave_sz =
      output->v_dscale_ave_sz;
  param->ext_mem_param[index].user_y_ofst =
        (output->user_y_ofst + 31) & ~0x1f;
  param->ext_mem_param[index].user_c_ofst =
        (output->user_c_ofst + 31) & ~0x1f;
  return;
 }

 if (index == RSZ_A)
  outformat = &resizer->resizer_a.formats[RESIZER_PAD_SOURCE];
 else
  outformat = &resizer->resizer_b.formats[RESIZER_PAD_SOURCE];
 param->rsz_rsc_param[index].o_vsz = outformat->height - 1;
 param->rsz_rsc_param[index].o_hsz = outformat->width - 1;
 param->ext_mem_param[index].rsz_sdr_ptr_s_y = output->vst_y;
 param->ext_mem_param[index].rsz_sdr_ptr_e_y = outformat->height;
 param->ext_mem_param[index].rsz_sdr_ptr_s_c = output->vst_c;
 param->ext_mem_param[index].rsz_sdr_ptr_e_c = outformat->height;

 if (!flag)
  return;

 param->rsz_rsc_param[index].h_flip = output->h_flip;
 param->rsz_rsc_param[index].v_flip = output->v_flip;
 param->rsz_rsc_param[index].v_typ_y = output->v_typ_y;
 param->rsz_rsc_param[index].v_typ_c = output->v_typ_c;
 param->rsz_rsc_param[index].v_lpf_int_y = output->v_lpf_int_y;
 param->rsz_rsc_param[index].v_lpf_int_c = output->v_lpf_int_c;
 param->rsz_rsc_param[index].h_typ_y = output->h_typ_y;
 param->rsz_rsc_param[index].h_typ_c = output->h_typ_c;
 param->rsz_rsc_param[index].h_lpf_int_y = output->h_lpf_int_y;
 param->rsz_rsc_param[index].h_lpf_int_c = output->h_lpf_int_c;
 param->rsz_rsc_param[index].dscale_en = output->en_down_scale;
 param->rsz_rsc_param[index].h_dscale_ave_sz = output->h_dscale_ave_sz;
 param->rsz_rsc_param[index].v_dscale_ave_sz = output->h_dscale_ave_sz;
 param->ext_mem_param[index].user_y_ofst =
     (output->user_y_ofst + 31) & ~0x1f;
 param->ext_mem_param[index].user_c_ofst =
     (output->user_c_ofst + 31) & ~0x1f;
}
int main() {
  struct vpfe_resizer_device * resizer;
  int index;
  void * output_spec;
  unsigned char partial;
  unsigned int flag;
  configure_resizer_out_params(resizer, index, output_spec, partial, flag);
  return 0;
}
