# 1 "extr_.ccvlibccv_util.c__ccv_sparse_matrix_index_for_hash_with_main.c"
# 1 "extr_.ccvlibccv_util.c__ccv_sparse_matrix_index_for_hash_with_main.c" 1
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
# 1 "extr_.ccvlibccv_util.c__ccv_sparse_matrix_index_for_hash_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



__attribute__((used)) static uint32_t _ccv_sparse_matrix_index_for_hash(const uint32_t hash, const int prime_index)
{
 switch(prime_index)
 {
 case 0:
  return 0u;
 case 1:
  return hash % 2u;
 case 2:
  return hash % 3u;
 case 3:
  return hash % 5u;
 case 4:
  return hash % 7u;
 case 5:
  return hash % 11u;
 case 6:
  return hash % 13u;
 case 7:
  return hash % 17u;
 case 8:
  return hash % 23u;
 case 9:
  return hash % 29u;
 case 10:
  return hash % 37u;
 case 11:
  return hash % 47u;
 case 12:
  return hash % 59u;
 case 13:
  return hash % 73u;
 case 14:
  return hash % 97u;
 case 15:
  return hash % 127u;
 case 16:
  return hash % 151u;
 case 17:
  return hash % 197u;
 case 18:
  return hash % 251u;
 case 19:
  return hash % 313u;
 case 20:
  return hash % 397u;
 case 21:
  return hash % 499u;
 case 22:
  return hash % 631u;
 case 23:
  return hash % 797u;
 case 24:
  return hash % 1009u;
 case 25:
  return hash % 1259u;
 case 26:
  return hash % 1597u;
 case 27:
  return hash % 2011u;
 case 28:
  return hash % 2539u;
 case 29:
  return hash % 3203u;
 case 30:
  return hash % 4027u;
 case 31:
  return hash % 5087u;
 case 32:
  return hash % 6421u;
 case 33:
  return hash % 8089u;
 case 34:
  return hash % 10193u;
 case 35:
  return hash % 12853u;
 case 36:
  return hash % 16193u;
 case 37:
  return hash % 20399u;
 case 38:
  return hash % 25717u;
 case 39:
  return hash % 32401u;
 case 40:
  return hash % 40823u;
 case 41:
  return hash % 51437u;
 case 42:
  return hash % 64811u;
 case 43:
  return hash % 81649u;
 case 44:
  return hash % 102877u;
 case 45:
  return hash % 129607u;
 case 46:
  return hash % 163307u;
 case 47:
  return hash % 205759u;
 case 48:
  return hash % 259229u;
 case 49:
  return hash % 326617u;
 case 50:
  return hash % 411527u;
 case 51:
  return hash % 518509u;
 case 52:
  return hash % 653267u;
 case 53:
  return hash % 823117u;
 case 54:
  return hash % 1037059u;
 case 55:
  return hash % 1306601u;
 case 56:
  return hash % 1646237u;
 case 57:
  return hash % 2074129u;
 case 58:
  return hash % 2613229u;
 case 59:
  return hash % 3292489u;
 case 60:
  return hash % 4148279u;
 case 61:
  return hash % 5226491u;
 case 62:
  return hash % 6584983u;
 case 63:
  return hash % 8296553u;
 case 64:
  return hash % 10453007u;
 case 65:
  return hash % 13169977u;
 case 66:
  return hash % 16593127u;
 case 67:
  return hash % 20906033u;
 case 68:
  return hash % 26339969u;
 case 69:
  return hash % 33186281u;
 case 70:
  return hash % 41812097u;
 case 71:
  return hash % 52679969u;
 case 72:
  return hash % 66372617u;
 case 73:
  return hash % 83624237u;
 case 74:
  return hash % 105359939u;
 case 75:
  return hash % 132745199u;
 case 76:
  return hash % 167248483u;
 case 77:
  return hash % 210719881u;
 case 78:
  return hash % 265490441u;
 case 79:
  return hash % 334496971u;
 case 80:
  return hash % 421439783u;
 case 81:
  return hash % 530980861u;
 case 82:
  return hash % 668993977u;
 case 83:
  return hash % 842879579u;
 case 84:
  return hash % 1061961721u;
 case 85:
  return hash % 1337987929u;
 case 86:
  return hash % 1685759167u;
 case 87:
  return hash % 2123923447u;
 case 88:
  return hash % 2675975881u;
 case 89:
  return hash % 3371518343u;
 case 90:
  return hash % 4247846927u;
 case 91:
  return hash % 4294967291u;
 default:
  return hash;
 }
}
int main() {
  const uint32_t hash;
  const int prime_index;
  _ccv_sparse_matrix_index_for_hash(hash, prime_index);
  return 0;
}
