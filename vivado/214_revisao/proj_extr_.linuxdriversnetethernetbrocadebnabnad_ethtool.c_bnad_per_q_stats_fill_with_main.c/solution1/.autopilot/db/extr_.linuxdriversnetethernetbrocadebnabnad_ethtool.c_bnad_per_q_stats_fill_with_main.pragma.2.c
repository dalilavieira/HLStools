# 1 "extr_.linuxdriversnetethernetbrocadebnabnad_ethtool.c_bnad_per_q_stats_fill_with_main.c"
# 1 "extr_.linuxdriversnetethernetbrocadebnabnad_ethtool.c_bnad_per_q_stats_fill_with_main.c" 1
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
# 1 "extr_.linuxdriversnetethernetbrocadebnabnad_ethtool.c_bnad_per_q_stats_fill_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct bnad {int num_rx; int num_rxp_per_rx; int num_tx; int num_txq_per_tx; TYPE_1__* tx_info; TYPE_6__* rx_info; } ;
struct bna_tcb {int * hw_consumer_index; int consumer_index; int producer_index; TYPE_2__* txq; } ;
struct bna_rcb {int consumer_index; int producer_index; TYPE_3__* rxq; } ;
struct TYPE_12__ {TYPE_5__* rx_ctrl; int rx; } ;
struct TYPE_11__ {TYPE_4__* ccb; int rx_complete; int rx_keep_poll; int rx_schedule; int rx_poll_ctr; int rx_intr_ctr; } ;
struct TYPE_10__ {struct bna_rcb** rcb; int * hw_producer_index; int producer_index; } ;
struct TYPE_9__ {int rxbuf_map_failed; int rxbuf_alloc_failed; int rx_packets_with_error; int rx_bytes; int rx_packets; } ;
struct TYPE_8__ {int tx_bytes; int tx_packets; } ;
struct TYPE_7__ {struct bna_tcb** tcb; int tx; } ;



__attribute__((used)) static int
bnad_per_q_stats_fill(struct bnad *bnad, u64 *buf, int bi)
{
 int i, j;
 struct bna_rcb *rcb = ((void*)0);
 struct bna_tcb *tcb = ((void*)0);

 for (i = 0; i < bnad->num_rx; i++) {
  if (!bnad->rx_info[i].rx)
   continue;
  for (j = 0; j < bnad->num_rxp_per_rx; j++)
   if (bnad->rx_info[i].rx_ctrl[j].ccb &&
    bnad->rx_info[i].rx_ctrl[j].ccb->rcb[0] &&
    bnad->rx_info[i].rx_ctrl[j].ccb->rcb[0]->rxq) {
    buf[bi++] = bnad->rx_info[i].rx_ctrl[j].
      ccb->producer_index;
    buf[bi++] = 0;
    buf[bi++] = *(bnad->rx_info[i].rx_ctrl[j].
      ccb->hw_producer_index);

    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_intr_ctr;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_poll_ctr;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_schedule;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_keep_poll;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_complete;
   }
 }
 for (i = 0; i < bnad->num_rx; i++) {
  if (!bnad->rx_info[i].rx)
   continue;
  for (j = 0; j < bnad->num_rxp_per_rx; j++)
   if (bnad->rx_info[i].rx_ctrl[j].ccb) {
    if (bnad->rx_info[i].rx_ctrl[j].ccb->rcb[0] &&
     bnad->rx_info[i].rx_ctrl[j].ccb->
     rcb[0]->rxq) {
     rcb = bnad->rx_info[i].rx_ctrl[j].
       ccb->rcb[0];
     buf[bi++] = rcb->rxq->rx_packets;
     buf[bi++] = rcb->rxq->rx_bytes;
     buf[bi++] = rcb->rxq->
       rx_packets_with_error;
     buf[bi++] = rcb->rxq->
       rxbuf_alloc_failed;
     buf[bi++] = rcb->rxq->rxbuf_map_failed;
     buf[bi++] = rcb->producer_index;
     buf[bi++] = rcb->consumer_index;
    }
    if (bnad->rx_info[i].rx_ctrl[j].ccb->rcb[1] &&
     bnad->rx_info[i].rx_ctrl[j].ccb->
     rcb[1]->rxq) {
     rcb = bnad->rx_info[i].rx_ctrl[j].
        ccb->rcb[1];
     buf[bi++] = rcb->rxq->rx_packets;
     buf[bi++] = rcb->rxq->rx_bytes;
     buf[bi++] = rcb->rxq->
       rx_packets_with_error;
     buf[bi++] = rcb->rxq->
       rxbuf_alloc_failed;
     buf[bi++] = rcb->rxq->rxbuf_map_failed;
     buf[bi++] = rcb->producer_index;
     buf[bi++] = rcb->consumer_index;
    }
   }
 }

 for (i = 0; i < bnad->num_tx; i++) {
  if (!bnad->tx_info[i].tx)
   continue;
  for (j = 0; j < bnad->num_txq_per_tx; j++)
   if (bnad->tx_info[i].tcb[j] &&
    bnad->tx_info[i].tcb[j]->txq) {
    tcb = bnad->tx_info[i].tcb[j];
    buf[bi++] = tcb->txq->tx_packets;
    buf[bi++] = tcb->txq->tx_bytes;
    buf[bi++] = tcb->producer_index;
    buf[bi++] = tcb->consumer_index;
    buf[bi++] = *(tcb->hw_consumer_index);
   }
 }

 return bi;
}
int main() {
  struct bnad * bnad;
  u64 * buf;
  int bi;
  bnad_per_q_stats_fill(bnad, buf, bi);
  return 0;
}
