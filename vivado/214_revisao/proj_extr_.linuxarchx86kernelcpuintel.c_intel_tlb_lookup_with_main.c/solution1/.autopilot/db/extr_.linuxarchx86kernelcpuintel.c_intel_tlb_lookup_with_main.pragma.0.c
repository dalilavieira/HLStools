# 1 "extr_.linuxarchx86kernelcpuintel.c_intel_tlb_lookup_with_main.c"
# 1 "extr_.linuxarchx86kernelcpuintel.c_intel_tlb_lookup_with_main.c" 1
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
# 1 "extr_.linuxarchx86kernelcpuintel.c_intel_tlb_lookup_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const descriptor; int tlb_type; int entries; } ;


 size_t ENTRIES ;
# 31 "extr_.linuxarchx86kernelcpuintel.c_intel_tlb_lookup_with_main.c"
 TYPE_1__* intel_tlb_table ;
 int * tlb_lld_1g ;
 int * tlb_lld_2m ;
 int * tlb_lld_4k ;
 int * tlb_lld_4m ;
 int * tlb_lli_2m ;
 int * tlb_lli_4k ;
 int * tlb_lli_4m ;

__attribute__((used)) static void intel_tlb_lookup(const unsigned char desc)
{
 unsigned char k;
 if (desc == 0)
  return;


 for (k = 0; intel_tlb_table[k].descriptor != desc && intel_tlb_table[k].descriptor != 0; k++)

  ;

 if (intel_tlb_table[k].tlb_type == 0)
  return;

 switch (intel_tlb_table[k].tlb_type) {
 case 141:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 140:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 128:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 130:
  if (tlb_lli_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4k[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 129:
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 131:
  if (tlb_lli_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lli_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lli_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 134:
 case 138:
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 132:
 case 137:
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 135:
 case 139:
  if (tlb_lld_2m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_2m[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 133:
  if (tlb_lld_4k[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4k[ENTRIES] = intel_tlb_table[k].entries;
  if (tlb_lld_4m[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_4m[ENTRIES] = intel_tlb_table[k].entries;
  break;
 case 136:
  if (tlb_lld_1g[ENTRIES] < intel_tlb_table[k].entries)
   tlb_lld_1g[ENTRIES] = intel_tlb_table[k].entries;
  break;
 }
}
int main() {
  const unsigned char desc;
  intel_tlb_lookup(desc);
  return 0;
}