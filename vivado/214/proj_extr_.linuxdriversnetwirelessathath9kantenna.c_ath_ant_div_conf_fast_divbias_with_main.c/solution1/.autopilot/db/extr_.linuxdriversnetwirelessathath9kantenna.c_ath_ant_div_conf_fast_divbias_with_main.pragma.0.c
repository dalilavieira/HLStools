# 1 "extr_.linuxdriversnetwirelessathath9kantenna.c_ath_ant_div_conf_fast_divbias_with_main.c"
# 1 "extr_.linuxdriversnetwirelessathath9kantenna.c_ath_ant_div_conf_fast_divbias_with_main.c" 1
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
# 1 "extr_.linuxdriversnetwirelessathath9kantenna.c_ath_ant_div_conf_fast_divbias_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct ath_hw_antcomb_conf {int div_group; int main_lna_conf; int alt_lna_conf; int fast_div_bias; scalar_t__ alt_gaintb; scalar_t__ main_gaintb; } ;
struct ath_ant_comb {int ant_ratio; int fast_div_bias; int scan; } ;


 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO ;

void ath_ant_div_conf_fast_divbias(volatile struct ath_hw_antcomb_conf *ant_conf,
       volatile struct ath_ant_comb *antcomb,
       int alt_ratio)
{
 ant_conf->main_gaintb = 0;
 ant_conf->alt_gaintb = 0;

 if (ant_conf->div_group == 0) {

  switch ((ant_conf->main_lna_conf << 4) |
    ant_conf->alt_lna_conf) {
  case 0x01:
   ant_conf->fast_div_bias = 0x3b;
   break;
  case 0x02:
   ant_conf->fast_div_bias = 0x3d;
   break;
  case 0x03:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x10:
   ant_conf->fast_div_bias = 0x7;
   break;
  case 0x12:
   ant_conf->fast_div_bias = 0x2;
   break;
  case 0x13:
   ant_conf->fast_div_bias = 0x7;
   break;
  case 0x20:
   ant_conf->fast_div_bias = 0x6;
   break;
  case 0x21:
   ant_conf->fast_div_bias = 0x0;
   break;
  case 0x23:
   ant_conf->fast_div_bias = 0x6;
   break;
  case 0x30:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x31:
   ant_conf->fast_div_bias = 0x3b;
   break;
  case 0x32:
   ant_conf->fast_div_bias = 0x3d;
   break;
  default:
   break;
  }
 } else if (ant_conf->div_group == 1) {

  switch ((ant_conf->main_lna_conf << 4) |
   ant_conf->alt_lna_conf) {
  case 0x01:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x02:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x03:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x10:
   if (!(antcomb->scan) &&
       (alt_ratio > ATH_ANT_DIV_COMB_ALT_ANT_RATIO))
    ant_conf->fast_div_bias = 0x3f;
   else
    ant_conf->fast_div_bias = 0x1;
   break;
  case 0x12:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x13:
   if (!(antcomb->scan) &&
       (alt_ratio > ATH_ANT_DIV_COMB_ALT_ANT_RATIO))
    ant_conf->fast_div_bias = 0x3f;
   else
    ant_conf->fast_div_bias = 0x1;
   break;
  case 0x20:
   if (!(antcomb->scan) &&
       (alt_ratio > ATH_ANT_DIV_COMB_ALT_ANT_RATIO))
    ant_conf->fast_div_bias = 0x3f;
   else
    ant_conf->fast_div_bias = 0x1;
   break;
  case 0x21:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x23:
   if (!(antcomb->scan) &&
       (alt_ratio > ATH_ANT_DIV_COMB_ALT_ANT_RATIO))
    ant_conf->fast_div_bias = 0x3f;
   else
    ant_conf->fast_div_bias = 0x1;
   break;
  case 0x30:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x31:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x32:
   ant_conf->fast_div_bias = 0x1;
   break;
  default:
   break;
  }
 } else if (ant_conf->div_group == 2) {

  switch ((ant_conf->main_lna_conf << 4) |
    ant_conf->alt_lna_conf) {
  case 0x01:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x02:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x03:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x10:
   if (!antcomb->scan && (alt_ratio > antcomb->ant_ratio))
    ant_conf->fast_div_bias = 0x1;
   else
    ant_conf->fast_div_bias = 0x2;
   break;
  case 0x12:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x13:
   if (!antcomb->scan && (alt_ratio > antcomb->ant_ratio))
    ant_conf->fast_div_bias = 0x1;
   else
    ant_conf->fast_div_bias = 0x2;
   break;
  case 0x20:
   if (!antcomb->scan && (alt_ratio > antcomb->ant_ratio))
    ant_conf->fast_div_bias = 0x1;
   else
    ant_conf->fast_div_bias = 0x2;
   break;
  case 0x21:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x23:
   if (!antcomb->scan && (alt_ratio > antcomb->ant_ratio))
    ant_conf->fast_div_bias = 0x1;
   else
    ant_conf->fast_div_bias = 0x2;
   break;
  case 0x30:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x31:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x32:
   ant_conf->fast_div_bias = 0x1;
   break;
  default:
   break;
  }

  if (antcomb->fast_div_bias)
   ant_conf->fast_div_bias = antcomb->fast_div_bias;
 } else if (ant_conf->div_group == 3) {
  switch ((ant_conf->main_lna_conf << 4) |
   ant_conf->alt_lna_conf) {
  case 0x01:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x02:
   ant_conf->fast_div_bias = 0x39;
   break;
  case 0x03:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x10:
   ant_conf->fast_div_bias = 0x2;
   break;
  case 0x12:
   ant_conf->fast_div_bias = 0x3f;
   break;
  case 0x13:
   ant_conf->fast_div_bias = 0x2;
   break;
  case 0x20:
   ant_conf->fast_div_bias = 0x3;
   break;
  case 0x21:
   ant_conf->fast_div_bias = 0x3;
   break;
  case 0x23:
   ant_conf->fast_div_bias = 0x3;
   break;
  case 0x30:
   ant_conf->fast_div_bias = 0x1;
   break;
  case 0x31:
   ant_conf->fast_div_bias = 0x6;
   break;
  case 0x32:
   ant_conf->fast_div_bias = 0x1;
   break;
  default:
   break;
  }
 }
}
int main() {
  struct ath_hw_antcomb_conf * ant_conf;
  struct ath_ant_comb * antcomb;
  int alt_ratio;
  ath_ant_div_conf_fast_divbias(ant_conf, antcomb, alt_ratio);
  return 0;
}
