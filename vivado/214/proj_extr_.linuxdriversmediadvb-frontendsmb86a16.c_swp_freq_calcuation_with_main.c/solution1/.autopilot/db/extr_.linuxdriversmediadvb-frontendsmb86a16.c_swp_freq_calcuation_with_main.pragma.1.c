# 1 "extr_.linuxdriversmediadvb-frontendsmb86a16.c_swp_freq_calcuation_with_main.c"
# 1 "extr_.linuxdriversmediadvb-frontendsmb86a16.c_swp_freq_calcuation_with_main.c" 1
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
# 1 "extr_.linuxdriversmediadvb-frontendsmb86a16.c_swp_freq_calcuation_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;



__attribute__((used)) static int swp_freq_calcuation(struct mb86a16_state *state, int i, int v, int *V, int vmax, int vmin,
          int SIGMIN, int fOSC, int afcex_freq, int swp_ofs, unsigned char *SIG1)
{
 int swp_freq ;

 if ((i % 2 == 1) && (v <= vmax)) {

  if ((v - 1 == vmin) &&
      (*(V + 30 + v) >= 0) &&
      (*(V + 30 + v - 1) >= 0) &&
      (*(V + 30 + v - 1) > *(V + 30 + v)) &&
      (*(V + 30 + v - 1) > SIGMIN)) {

   swp_freq = fOSC * 1000 + afcex_freq - swp_ofs;
   *SIG1 = *(V + 30 + v - 1);
  } else if ((v == vmax) &&
      (*(V + 30 + v) >= 0) &&
      (*(V + 30 + v - 1) >= 0) &&
      (*(V + 30 + v) > *(V + 30 + v - 1)) &&
      (*(V + 30 + v) > SIGMIN)) {

   swp_freq = fOSC * 1000 + afcex_freq;
   *SIG1 = *(V + 30 + v);
  } else if ((*(V + 30 + v) > 0) &&
      (*(V + 30 + v - 1) > 0) &&
      (*(V + 30 + v - 2) > 0) &&
      (*(V + 30 + v - 3) > 0) &&
      (*(V + 30 + v - 1) > *(V + 30 + v)) &&
      (*(V + 30 + v - 2) > *(V + 30 + v - 3)) &&
      ((*(V + 30 + v - 1) > SIGMIN) ||
      (*(V + 30 + v - 2) > SIGMIN))) {

   if (*(V + 30 + v - 1) >= *(V + 30 + v - 2)) {
    swp_freq = fOSC * 1000 + afcex_freq - swp_ofs;
    *SIG1 = *(V + 30 + v - 1);
   } else {
    swp_freq = fOSC * 1000 + afcex_freq - swp_ofs * 2;
    *SIG1 = *(V + 30 + v - 2);
   }
  } else if ((v == vmax) &&
      (*(V + 30 + v) >= 0) &&
      (*(V + 30 + v - 1) >= 0) &&
      (*(V + 30 + v - 2) >= 0) &&
      (*(V + 30 + v) > *(V + 30 + v - 2)) &&
      (*(V + 30 + v - 1) > *(V + 30 + v - 2)) &&
      ((*(V + 30 + v) > SIGMIN) ||
      (*(V + 30 + v - 1) > SIGMIN))) {

   if (*(V + 30 + v) >= *(V + 30 + v - 1)) {
    swp_freq = fOSC * 1000 + afcex_freq;
    *SIG1 = *(V + 30 + v);
   } else {
    swp_freq = fOSC * 1000 + afcex_freq - swp_ofs;
    *SIG1 = *(V + 30 + v - 1);
   }
  } else {
   swp_freq = -1 ;
  }
 } else if ((i % 2 == 0) && (v >= vmin)) {

  if ((*(V + 30 + v) > 0) &&
      (*(V + 30 + v + 1) > 0) &&
      (*(V + 30 + v + 2) > 0) &&
      (*(V + 30 + v + 1) > *(V + 30 + v)) &&
      (*(V + 30 + v + 1) > *(V + 30 + v + 2)) &&
      (*(V + 30 + v + 1) > SIGMIN)) {

   swp_freq = fOSC * 1000 + afcex_freq + swp_ofs;
   *SIG1 = *(V + 30 + v + 1);
  } else if ((v + 1 == vmax) &&
      (*(V + 30 + v) >= 0) &&
      (*(V + 30 + v + 1) >= 0) &&
      (*(V + 30 + v + 1) > *(V + 30 + v)) &&
      (*(V + 30 + v + 1) > SIGMIN)) {

   swp_freq = fOSC * 1000 + afcex_freq + swp_ofs;
   *SIG1 = *(V + 30 + v);
  } else if ((v == vmin) &&
      (*(V + 30 + v) > 0) &&
      (*(V + 30 + v + 1) > 0) &&
      (*(V + 30 + v + 2) > 0) &&
      (*(V + 30 + v) > *(V + 30 + v + 1)) &&
      (*(V + 30 + v) > *(V + 30 + v + 2)) &&
      (*(V + 30 + v) > SIGMIN)) {

   swp_freq = fOSC * 1000 + afcex_freq;
   *SIG1 = *(V + 30 + v);
  } else if ((*(V + 30 + v) >= 0) &&
      (*(V + 30 + v + 1) >= 0) &&
      (*(V + 30 + v + 2) >= 0) &&
      (*(V + 30 + v + 3) >= 0) &&
      (*(V + 30 + v + 1) > *(V + 30 + v)) &&
      (*(V + 30 + v + 2) > *(V + 30 + v + 3)) &&
      ((*(V + 30 + v + 1) > SIGMIN) ||
       (*(V + 30 + v + 2) > SIGMIN))) {

   if (*(V + 30 + v + 1) >= *(V + 30 + v + 2)) {
    swp_freq = fOSC * 1000 + afcex_freq + swp_ofs;
    *SIG1 = *(V + 30 + v + 1);
   } else {
    swp_freq = fOSC * 1000 + afcex_freq + swp_ofs * 2;
    *SIG1 = *(V + 30 + v + 2);
   }
  } else if ((*(V + 30 + v) >= 0) &&
      (*(V + 30 + v + 1) >= 0) &&
      (*(V + 30 + v + 2) >= 0) &&
      (*(V + 30 + v + 3) >= 0) &&
      (*(V + 30 + v) > *(V + 30 + v + 2)) &&
      (*(V + 30 + v + 1) > *(V + 30 + v + 2)) &&
      (*(V + 30 + v) > *(V + 30 + v + 3)) &&
      (*(V + 30 + v + 1) > *(V + 30 + v + 3)) &&
      ((*(V + 30 + v) > SIGMIN) ||
       (*(V + 30 + v + 1) > SIGMIN))) {

   if (*(V + 30 + v) >= *(V + 30 + v + 1)) {
    swp_freq = fOSC * 1000 + afcex_freq;
    *SIG1 = *(V + 30 + v);
   } else {
    swp_freq = fOSC * 1000 + afcex_freq + swp_ofs;
    *SIG1 = *(V + 30 + v + 1);
   }
  } else if ((v + 2 == vmin) &&
      (*(V + 30 + v) >= 0) &&
      (*(V + 30 + v + 1) >= 0) &&
      (*(V + 30 + v + 2) >= 0) &&
      (*(V + 30 + v + 1) > *(V + 30 + v)) &&
      (*(V + 30 + v + 2) > *(V + 30 + v)) &&
      ((*(V + 30 + v + 1) > SIGMIN) ||
       (*(V + 30 + v + 2) > SIGMIN))) {

   if (*(V + 30 + v + 1) >= *(V + 30 + v + 2)) {
    swp_freq = fOSC * 1000 + afcex_freq + swp_ofs;
    *SIG1 = *(V + 30 + v + 1);
   } else {
    swp_freq = fOSC * 1000 + afcex_freq + swp_ofs * 2;
    *SIG1 = *(V + 30 + v + 2);
   }
  } else if ((vmax == 0) && (vmin == 0) && (*(V + 30 + v) > SIGMIN)) {
   swp_freq = fOSC * 1000;
   *SIG1 = *(V + 30 + v);
  } else
   swp_freq = -1;
 } else
  swp_freq = -1;

 return swp_freq;
}
int main() {
  struct mb86a16_state * state;
  int i;
  int v;
  int * V;
  int vmax;
  int vmin;
  int SIGMIN;
  int fOSC;
  int afcex_freq;
  int swp_ofs;
  unsigned char * SIG1;
  swp_freq_calcuation(state, i, v, V, vmax, vmin, SIGMIN, fOSC, afcex_freq, swp_ofs, SIG1);
  return 0;
}
