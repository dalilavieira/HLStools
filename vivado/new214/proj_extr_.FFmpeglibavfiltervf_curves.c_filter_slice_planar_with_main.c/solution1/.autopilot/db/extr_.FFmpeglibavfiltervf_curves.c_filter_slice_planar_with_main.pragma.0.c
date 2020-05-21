# 1 "extr_.FFmpeglibavfiltervf_curves.c_filter_slice_planar_with_main.c"
# 1 "extr_.FFmpeglibavfiltervf_curves.c_filter_slice_planar_with_main.c" 1
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
# 1 "extr_.FFmpeglibavfiltervf_curves.c_filter_slice_planar_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct TYPE_7__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_10__ {TYPE_2__* priv; } ;
struct TYPE_9__ {int height; size_t** data; int* linesize; int width; } ;
struct TYPE_8__ {int step; size_t* rgba_map; size_t** graph; scalar_t__ is_16bit; } ;
typedef TYPE_2__ CurvesContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterContext ;


 size_t A ;
 size_t B ;
 size_t G ;
 size_t R ;

__attribute__((used)) static int filter_slice_planar(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    int x, y;
    const CurvesContext *curves = ctx->priv;
    const ThreadData *td = arg;
    const AVFrame *in = td->in;
    const AVFrame *out = td->out;
    const int direct = out == in;
    const int step = curves->step;
    const uint8_t r = curves->rgba_map[R];
    const uint8_t g = curves->rgba_map[G];
    const uint8_t b = curves->rgba_map[B];
    const uint8_t a = curves->rgba_map[A];
    const int slice_start = (in->height * jobnr ) / nb_jobs;
    const int slice_end = (in->height * (jobnr+1)) / nb_jobs;

    if (curves->is_16bit) {
        for (y = slice_start; y < slice_end; y++) {
            uint16_t *dstrp = ( uint16_t *)(out->data[r] + y * out->linesize[r]);
            uint16_t *dstgp = ( uint16_t *)(out->data[g] + y * out->linesize[g]);
            uint16_t *dstbp = ( uint16_t *)(out->data[b] + y * out->linesize[b]);
            uint16_t *dstap = ( uint16_t *)(out->data[a] + y * out->linesize[a]);
            const uint16_t *srcrp = (const uint16_t *)(in ->data[r] + y * in->linesize[r]);
            const uint16_t *srcgp = (const uint16_t *)(in ->data[g] + y * in->linesize[g]);
            const uint16_t *srcbp = (const uint16_t *)(in ->data[b] + y * in->linesize[b]);
            const uint16_t *srcap = (const uint16_t *)(in ->data[a] + y * in->linesize[a]);

            for (x = 0; x < in->width; x++) {
                dstrp[x] = curves->graph[R][srcrp[x]];
                dstgp[x] = curves->graph[G][srcgp[x]];
                dstbp[x] = curves->graph[B][srcbp[x]];
                if (!direct && step == 4)
                    dstap[x] = srcap[x];
            }
        }
    } else {
        uint8_t *dstr = out->data[r] + slice_start * out->linesize[r];
        uint8_t *dstg = out->data[g] + slice_start * out->linesize[g];
        uint8_t *dstb = out->data[b] + slice_start * out->linesize[b];
        uint8_t *dsta = out->data[a] + slice_start * out->linesize[a];
        const uint8_t *srcr = in->data[r] + slice_start * in->linesize[r];
        const uint8_t *srcg = in->data[g] + slice_start * in->linesize[g];
        const uint8_t *srcb = in->data[b] + slice_start * in->linesize[b];
        const uint8_t *srca = in->data[a] + slice_start * in->linesize[a];

        for (y = slice_start; y < slice_end; y++) {
            for (x = 0; x < in->width; x++) {
                dstr[x] = curves->graph[R][srcr[x]];
                dstg[x] = curves->graph[G][srcg[x]];
                dstb[x] = curves->graph[B][srcb[x]];
                if (!direct && step == 4)
                    dsta[x] = srca[x];
            }
            dstr += out->linesize[r];
            dstg += out->linesize[g];
            dstb += out->linesize[b];
            dsta += out->linesize[a];
            srcr += in ->linesize[r];
            srcg += in ->linesize[g];
            srcb += in ->linesize[b];
            srca += in ->linesize[a];
        }
    }
    return 0;
}
int main() {
  AVFilterContext * ctx;
  void * arg;
  int jobnr;
  int nb_jobs;
  filter_slice_planar(ctx, arg, jobnr, nb_jobs);
  return 0;
}
