# 1 "extr_.kphp-kdbcommoncrc32.c_crc32_partial_with_main.c"
# 1 "extr_.kphp-kdbcommoncrc32.c_crc32_partial_with_main.c" 1
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
# 1 "extr_.kphp-kdbcommoncrc32.c_crc32_partial_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.kphp-kdbcommoncrc32.c_crc32_partial_with_main.c"
 unsigned int* crc32_table ;
 unsigned int* crc32_table0 ;
 unsigned int* crc32_table1 ;
 unsigned int* crc32_table2 ;

unsigned crc32_partial (const void *data, int len, unsigned crc) {
  const int *p = (const int *) data;
  int x;



  for (x = (len >> 5); x > 0; x--) {
    crc ^= (p)[0]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p)[1]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p)[2]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p)[3]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];;;
    crc ^= (p + 4)[0]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p + 4)[1]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p + 4)[2]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p + 4)[3]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];;;
    p += 8;
  }
  if (len & 16) {
    crc ^= (p)[0]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p)[1]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p)[2]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];; crc ^= (p)[3]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];;;
    p += 4;
  }
  if (len & 8) {
    crc ^= p[0]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];;
    crc ^= p[1]; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];;
    p += 2;
  }
  if (len & 4) {
    crc ^= *p++; crc = crc32_table0[crc & 0xff] ^ crc32_table1[(crc & 0xff00) >> 8] ^ crc32_table2[(crc & 0xff0000) >> 16] ^ crc32_table[crc >> 24];;
  }







  const char *q = (const char *) p;
  if (len & 2) {
    crc = crc32_table[(crc ^ q[0]) & 0xff] ^ (crc >> 8);
    crc = crc32_table[(crc ^ q[1]) & 0xff] ^ (crc >> 8);
    q += 2;
  }
  if (len & 1) {
    crc = crc32_table[(crc ^ *q++) & 0xff] ^ (crc >> 8);
  }
  return crc;
}
int main() {
  const void * data;
  int len;
  unsigned int crc;
  crc32_partial(data, len, crc);
  return 0;
}
