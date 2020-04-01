# 1 "extr_.linuxdriversnetethernetatherosatlxatl1.c_atl1_inc_smb_with_main.c"
# 1 "extr_.linuxdriversnetethernetatherosatlxatl1.c_atl1_inc_smb_with_main.c" 1
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
# 1 "extr_.linuxdriversnetethernetatherosatlxatl1.c_atl1_inc_smb_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct stats_msg_block {scalar_t__ tx_pause; scalar_t__ tx_trunc; scalar_t__ tx_underrun; scalar_t__ tx_late_col; scalar_t__ tx_2_col; scalar_t__ tx_1_col; scalar_t__ tx_defer; scalar_t__ tx_abort_col; scalar_t__ rx_sz_ov; scalar_t__ rx_rrd_ov; scalar_t__ rx_pause; scalar_t__ rx_align_err; scalar_t__ rx_fcs_err; scalar_t__ rx_len_err; scalar_t__ rx_rxf_ov; scalar_t__ rx_mcast; scalar_t__ tx_byte_cnt; scalar_t__ rx_byte_cnt; scalar_t__ tx_ok; scalar_t__ rx_ok; scalar_t__ rx_frag; } ;
struct TYPE_6__ {int tx_packets; int rx_packets; int tx_carrier_errors; int tx_window_errors; int tx_aborted_errors; int tx_fifo_errors; int tx_errors; int rx_dropped; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; int collisions; int multicast; int tx_bytes; int rx_bytes; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_5__ {int tx_packets; int rx_packets; int tx_carrier_errors; int tx_window_errors; int tx_aborted_errors; int tx_fifo_errors; int tx_errors; int rx_rrd_ov; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; int collisions; int multicast; int tx_bytes; int rx_bytes; int tx_pause; int tx_trunc; int tx_underun; int latecol; int mcc; int scc; int deffer; int excecol; int rx_trunc; int rx_pause; } ;
struct TYPE_4__ {struct stats_msg_block* smb; } ;
struct atl1_adapter {TYPE_2__ soft_stats; TYPE_1__ smb; struct net_device* netdev; } ;



__attribute__((used)) static void atl1_inc_smb(struct atl1_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct stats_msg_block *smb = adapter->smb.smb;

 u64 new_rx_errors = smb->rx_frag +
       smb->rx_fcs_err +
       smb->rx_len_err +
       smb->rx_sz_ov +
       smb->rx_rxf_ov +
       smb->rx_rrd_ov +
       smb->rx_align_err;
 u64 new_tx_errors = smb->tx_late_col +
       smb->tx_abort_col +
       smb->tx_underrun +
       smb->tx_trunc;


 adapter->soft_stats.rx_packets += smb->rx_ok + new_rx_errors;
 adapter->soft_stats.tx_packets += smb->tx_ok + new_tx_errors;
 adapter->soft_stats.rx_bytes += smb->rx_byte_cnt;
 adapter->soft_stats.tx_bytes += smb->tx_byte_cnt;
 adapter->soft_stats.multicast += smb->rx_mcast;
 adapter->soft_stats.collisions += smb->tx_1_col +
       smb->tx_2_col +
       smb->tx_late_col +
       smb->tx_abort_col;


 adapter->soft_stats.rx_errors += new_rx_errors;
 adapter->soft_stats.rx_fifo_errors += smb->rx_rxf_ov;
 adapter->soft_stats.rx_length_errors += smb->rx_len_err;
 adapter->soft_stats.rx_crc_errors += smb->rx_fcs_err;
 adapter->soft_stats.rx_frame_errors += smb->rx_align_err;

 adapter->soft_stats.rx_pause += smb->rx_pause;
 adapter->soft_stats.rx_rrd_ov += smb->rx_rrd_ov;
 adapter->soft_stats.rx_trunc += smb->rx_sz_ov;


 adapter->soft_stats.tx_errors += new_tx_errors;
 adapter->soft_stats.tx_fifo_errors += smb->tx_underrun;
 adapter->soft_stats.tx_aborted_errors += smb->tx_abort_col;
 adapter->soft_stats.tx_window_errors += smb->tx_late_col;

 adapter->soft_stats.excecol += smb->tx_abort_col;
 adapter->soft_stats.deffer += smb->tx_defer;
 adapter->soft_stats.scc += smb->tx_1_col;
 adapter->soft_stats.mcc += smb->tx_2_col;
 adapter->soft_stats.latecol += smb->tx_late_col;
 adapter->soft_stats.tx_underun += smb->tx_underrun;
 adapter->soft_stats.tx_trunc += smb->tx_trunc;
 adapter->soft_stats.tx_pause += smb->tx_pause;

 netdev->stats.rx_bytes = adapter->soft_stats.rx_bytes;
 netdev->stats.tx_bytes = adapter->soft_stats.tx_bytes;
 netdev->stats.multicast = adapter->soft_stats.multicast;
 netdev->stats.collisions = adapter->soft_stats.collisions;
 netdev->stats.rx_errors = adapter->soft_stats.rx_errors;
 netdev->stats.rx_length_errors =
  adapter->soft_stats.rx_length_errors;
 netdev->stats.rx_crc_errors = adapter->soft_stats.rx_crc_errors;
 netdev->stats.rx_frame_errors =
  adapter->soft_stats.rx_frame_errors;
 netdev->stats.rx_fifo_errors = adapter->soft_stats.rx_fifo_errors;
 netdev->stats.rx_dropped = adapter->soft_stats.rx_rrd_ov;
 netdev->stats.tx_errors = adapter->soft_stats.tx_errors;
 netdev->stats.tx_fifo_errors = adapter->soft_stats.tx_fifo_errors;
 netdev->stats.tx_aborted_errors =
  adapter->soft_stats.tx_aborted_errors;
 netdev->stats.tx_window_errors =
  adapter->soft_stats.tx_window_errors;
 netdev->stats.tx_carrier_errors =
  adapter->soft_stats.tx_carrier_errors;

 netdev->stats.rx_packets = adapter->soft_stats.rx_packets;
 netdev->stats.tx_packets = adapter->soft_stats.tx_packets;
}
int main() {
  struct atl1_adapter * adapter;
  atl1_inc_smb(adapter);
  return 0;
}
