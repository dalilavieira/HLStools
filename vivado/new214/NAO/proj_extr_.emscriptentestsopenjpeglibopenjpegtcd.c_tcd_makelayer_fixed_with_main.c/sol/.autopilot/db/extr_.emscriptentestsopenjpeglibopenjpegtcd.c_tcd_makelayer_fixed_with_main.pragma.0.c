# 1 "extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_fixed_with_main.c"
# 1 "extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_fixed_with_main.c" 1
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
# 1 "extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_fixed_with_main.c" 2


typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_25__ {int numlayers; } ;
typedef TYPE_5__ opj_tcp_t ;
struct TYPE_26__ {int numresolutions; TYPE_9__* resolutions; } ;
typedef TYPE_6__ opj_tcd_tilecomp_t ;
struct TYPE_27__ {int numcomps; TYPE_6__* comps; } ;
typedef TYPE_7__ opj_tcd_tile_t ;
struct TYPE_28__ {TYPE_3__* image; TYPE_5__* tcp; TYPE_7__* tcd_tile; TYPE_14__* cp; } ;
typedef TYPE_8__ opj_tcd_t ;
struct TYPE_29__ {int numbands; int pw; int ph; TYPE_13__* bands; } ;
typedef TYPE_9__ opj_tcd_resolution_t ;
struct TYPE_21__ {TYPE_12__* enc; } ;
struct TYPE_16__ {int cw; int ch; TYPE_1__ cblks; } ;
typedef TYPE_10__ opj_tcd_precinct_t ;
struct TYPE_17__ {int numpasses; scalar_t__ data; scalar_t__ len; } ;
typedef TYPE_11__ opj_tcd_layer_t ;
struct TYPE_18__ {int numbps; int numpassesinlayers; TYPE_4__* passes; scalar_t__ data; TYPE_11__* layers; } ;
typedef TYPE_12__ opj_tcd_cblk_enc_t ;
struct TYPE_19__ {TYPE_10__* precincts; } ;
typedef TYPE_13__ opj_tcd_band_t ;
struct TYPE_20__ {float* matrice; } ;
typedef TYPE_14__ opj_cp_t ;
struct TYPE_24__ {scalar_t__ rate; } ;
struct TYPE_23__ {TYPE_2__* comps; } ;
struct TYPE_22__ {double prec; } ;



void tcd_makelayer_fixed(volatile opj_tcd_t *tcd, int layno, int final) {
 int compno, resno, bandno, precno, cblkno;
 int value;
 int matrice[10][10][3];
 int i, j, k;

 opj_cp_t *cp = tcd->cp;
 opj_tcd_tile_t *tcd_tile = tcd->tcd_tile;
 opj_tcp_t *tcd_tcp = tcd->tcp;



 for (compno = 0; compno < tcd_tile->numcomps; compno++) {
  opj_tcd_tilecomp_t *tilec = &tcd_tile->comps[compno];
  for (i = 0; i < tcd_tcp->numlayers; i++) {
   for (j = 0; j < tilec->numresolutions; j++) {
    for (k = 0; k < 3; k++) {
     matrice[i][j][k] =
      (int) (cp->matrice[i * tilec->numresolutions * 3 + j * 3 + k]
      * (float) (tcd->image->comps[compno].prec / 16.0));
    }
   }
  }

  for (resno = 0; resno < tilec->numresolutions; resno++) {
   opj_tcd_resolution_t *res = &tilec->resolutions[resno];
   for (bandno = 0; bandno < res->numbands; bandno++) {
    opj_tcd_band_t *band = &res->bands[bandno];
    for (precno = 0; precno < res->pw * res->ph; precno++) {
     opj_tcd_precinct_t *prc = &band->precincts[precno];
     for (cblkno = 0; cblkno < prc->cw * prc->ch; cblkno++) {
      opj_tcd_cblk_enc_t *cblk = &prc->cblks.enc[cblkno];
      opj_tcd_layer_t *layer = &cblk->layers[layno];
      int n;
      int imsb = tcd->image->comps[compno].prec - cblk->numbps;

      if (layno == 0) {
       value = matrice[layno][resno][bandno];
       if (imsb >= value) {
        value = 0;
       } else {
        value -= imsb;
       }
      } else {
       value = matrice[layno][resno][bandno] - matrice[layno - 1][resno][bandno];
       if (imsb >= matrice[layno - 1][resno][bandno]) {
        value -= (imsb - matrice[layno - 1][resno][bandno]);
        if (value < 0) {
         value = 0;
        }
       }
      }

      if (layno == 0) {
       cblk->numpassesinlayers = 0;
      }

      n = cblk->numpassesinlayers;
      if (cblk->numpassesinlayers == 0) {
       if (value != 0) {
        n = 3 * value - 2 + cblk->numpassesinlayers;
       } else {
        n = cblk->numpassesinlayers;
       }
      } else {
       n = 3 * value + cblk->numpassesinlayers;
      }

      layer->numpasses = n - cblk->numpassesinlayers;

      if (!layer->numpasses)
       continue;

      if (cblk->numpassesinlayers == 0) {
       layer->len = cblk->passes[n - 1].rate;
       layer->data = cblk->data;
      } else {
       layer->len = cblk->passes[n - 1].rate - cblk->passes[cblk->numpassesinlayers - 1].rate;
       layer->data = cblk->data + cblk->passes[cblk->numpassesinlayers - 1].rate;
      }
      if (final)
       cblk->numpassesinlayers = n;
     }
    }
   }
  }
 }
}
int main() {
  opj_tcd_t * tcd;
  int layno;
  int final;
  tcd_makelayer_fixed(tcd, layno, final);
  return 0;
}
