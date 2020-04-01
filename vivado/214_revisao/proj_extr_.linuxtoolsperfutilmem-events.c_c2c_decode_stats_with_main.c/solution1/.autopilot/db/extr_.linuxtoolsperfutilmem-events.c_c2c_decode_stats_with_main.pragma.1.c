# 1 "extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main.c"
# 1 "extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main.c" 1
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
# 1 "extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union perf_mem_data_src {int mem_op; int mem_lvl; int mem_snoop; int mem_lock; int mem_remote; } ;
typedef int u64 ;
struct TYPE_4__ {int map; } ;
struct TYPE_3__ {int addr; int map; } ;
struct mem_info {TYPE_2__ iaddr; TYPE_1__ daddr; union perf_mem_data_src data_src; } ;
struct c2c_stats {int nomap; int noparse; int st_l1miss; int st_l1hit; int st_uncache; int st_noadrs; int store; int ld_miss; int tot_hitm; int rmt_hitm; int rmt_hit; int ld_excl; int ld_shared; int rmt_dram; int lcl_dram; int ld_llchit; int lcl_hitm; int ld_l2hit; int ld_l1hit; int ld_fbhit; int ld_io; int ld_uncache; int ld_noadrs; int load; int locks; int nr_entries; } ;


 int PERF_MEM_LOCK_LOCKED ;
 int PERF_MEM_LVL_HIT ;
 int PERF_MEM_LVL_IO ;
 int PERF_MEM_LVL_L1 ;
 int PERF_MEM_LVL_L2 ;
 int PERF_MEM_LVL_L3 ;
 int PERF_MEM_LVL_LFB ;
 int PERF_MEM_LVL_LOC_RAM ;
 int PERF_MEM_LVL_MISS ;
 int PERF_MEM_LVL_REM_CCE1 ;
 int PERF_MEM_LVL_REM_CCE2 ;
 int PERF_MEM_LVL_REM_RAM1 ;
 int PERF_MEM_LVL_REM_RAM2 ;
 int PERF_MEM_LVL_UNC ;
 int PERF_MEM_OP_LOAD ;
 int PERF_MEM_OP_STORE ;
 int PERF_MEM_SNOOP_HIT ;
 int PERF_MEM_SNOOP_HITM ;

int c2c_decode_stats(struct c2c_stats *stats, struct mem_info *mi)
{
 union perf_mem_data_src *data_src = &mi->data_src;
 u64 daddr = mi->daddr.addr;
 u64 op = data_src->mem_op;
 u64 lvl = data_src->mem_lvl;
 u64 snoop = data_src->mem_snoop;
 u64 lock = data_src->mem_lock;




 bool mrem = data_src->mem_remote;
 int err = 0;
# 64 "extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main.c"
 stats->nr_entries++;

 if (lock & PERF_MEM_LOCK_LOCKED) stats->locks++;

 if (op & PERF_MEM_OP_LOAD) {

  stats->load++;

  if (!daddr) {
   stats->ld_noadrs++;
   return -1;
  }

  if (lvl & PERF_MEM_LVL_HIT) {
   if (lvl & PERF_MEM_LVL_UNC) stats->ld_uncache++;
   if (lvl & PERF_MEM_LVL_IO) stats->ld_io++;
   if (lvl & PERF_MEM_LVL_LFB) stats->ld_fbhit++;
   if (lvl & PERF_MEM_LVL_L1) stats->ld_l1hit++;
   if (lvl & PERF_MEM_LVL_L2) stats->ld_l2hit++;
   if (lvl & PERF_MEM_LVL_L3) {
    if (snoop & PERF_MEM_SNOOP_HITM)
     do { stats->lcl_hitm++; stats->tot_hitm++; } while (0);
    else
     stats->ld_llchit++;
   }

   if (lvl & PERF_MEM_LVL_LOC_RAM) {
    stats->lcl_dram++;
    if (snoop & PERF_MEM_SNOOP_HIT)
     stats->ld_shared++;
    else
     stats->ld_excl++;
   }

   if ((lvl & PERF_MEM_LVL_REM_RAM1) ||
       (lvl & PERF_MEM_LVL_REM_RAM2) ||
        mrem) {
    stats->rmt_dram++;
    if (snoop & PERF_MEM_SNOOP_HIT)
     stats->ld_shared++;
    else
     stats->ld_excl++;
   }
  }

  if ((lvl & PERF_MEM_LVL_REM_CCE1) ||
      (lvl & PERF_MEM_LVL_REM_CCE2) ||
       mrem) {
   if (snoop & PERF_MEM_SNOOP_HIT)
    stats->rmt_hit++;
   else if (snoop & PERF_MEM_SNOOP_HITM)
    do { stats->rmt_hitm++; stats->tot_hitm++; } while (0);
  }

  if ((lvl & PERF_MEM_LVL_MISS))
   stats->ld_miss++;

 } else if (op & PERF_MEM_OP_STORE) {

  stats->store++;

  if (!daddr) {
   stats->st_noadrs++;
   return -1;
  }

  if (lvl & PERF_MEM_LVL_HIT) {
   if (lvl & PERF_MEM_LVL_UNC) stats->st_uncache++;
   if (lvl & PERF_MEM_LVL_L1) stats->st_l1hit++;
  }
  if (lvl & PERF_MEM_LVL_MISS)
   if (lvl & PERF_MEM_LVL_L1) stats->st_l1miss++;
 } else {

  stats->noparse++;
  return -1;
 }

 if (!mi->daddr.map || !mi->iaddr.map) {
  stats->nomap++;
  return -1;
 }



 return err;
}
int main() {
  struct c2c_stats * stats;
  struct mem_info * mi;
  c2c_decode_stats(stats, mi);
  return 0;
}
