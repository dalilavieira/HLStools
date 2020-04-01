# 1 "extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c"
# 1 "extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c" 1
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
# 1 "extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c"
 long long HASH_MUL ;
 int _a_10_ ;
 int _a_11_ ;
 int _a_12_ ;
 int _a_13_ ;
 int _a_14_ ;
 int _a_15_ ;
 int _a_16_ ;
 int _a_17_ ;
 int _a_18_ ;
 int _a_19_ ;
 int _a_1_ ;
 int _a_20_ ;
 int _a_21_ ;
 int _a_22_ ;
 int _a_23_ ;
 int _a_24_ ;
 int _a_25_ ;
 int _a_26_ ;
 int _a_27_ ;
 int _a_28_ ;
 int _a_29_ ;
 int _a_2_ ;
 int _a_30_ ;
 int _a_31_ ;
 int _a_32_ ;
 int _a_33_ ;
 int _a_34_ ;
 int _a_35_ ;
 int _a_36_ ;
 int _a_37_ ;
 int _a_38_ ;
 int _a_39_ ;
 int _a_3_ ;
 int _a_40_ ;
 int _a_41_ ;
 int _a_42_ ;
 int _a_43_ ;
 int _a_4_ ;
 int _a_5_ ;
 int _a_6_ ;
 int _a_7_ ;
 int _a_8_ ;
 int _a_9_ ;
 long long _h_10_ ;
 long long _h_11_ ;
 long long _h_12_ ;
 long long _h_13_ ;
 long long _h_14_ ;
 long long _h_15_ ;
 long long _h_16_ ;
 long long _h_17_ ;
 long long _h_18_ ;
 long long _h_19_ ;
 long long _h_1_ ;
 long long _h_20_ ;
 long long _h_21_ ;
 long long _h_22_ ;
 long long _h_23_ ;
 long long _h_24_ ;
 long long _h_25_ ;
 long long _h_26_ ;
 long long _h_27_ ;
 long long _h_28_ ;
 long long _h_29_ ;
 long long _h_2_ ;
 long long _h_30_ ;
 long long _h_31_ ;
 long long _h_32_ ;
 long long _h_33_ ;
 long long _h_34_ ;
 long long _h_35_ ;
 long long _h_36_ ;
 long long _h_37_ ;
 long long _h_38_ ;
 long long _h_39_ ;
 long long _h_3_ ;
 long long _h_40_ ;
 long long _h_41_ ;
 long long _h_42_ ;
 long long _h_43_ ;
 long long _h_4_ ;
 long long _h_5_ ;
 long long _h_6_ ;
 long long _h_7_ ;
 long long _h_8_ ;
 long long _h_9_ ;
 int* _s_10_ ;
 int* _s_11_ ;
 int* _s_12_ ;
 int* _s_13_ ;
 int* _s_14_ ;
 int* _s_15_ ;
 int* _s_16_ ;
 int* _s_17_ ;
 int* _s_18_ ;
 int* _s_19_ ;
 int* _s_1_ ;
 int* _s_20_ ;
 int* _s_21_ ;
 int* _s_22_ ;
 int* _s_23_ ;
 int* _s_24_ ;
 int* _s_25_ ;
 int* _s_26_ ;
 int* _s_27_ ;
 int* _s_28_ ;
 int* _s_29_ ;
 int* _s_2_ ;
 int* _s_30_ ;
 int* _s_31_ ;
 int* _s_32_ ;
 int* _s_33_ ;
 int* _s_34_ ;
 int* _s_35_ ;
 int* _s_36_ ;
 int* _s_37_ ;
 int* _s_38_ ;
 int* _s_39_ ;
 int* _s_3_ ;
 int* _s_40_ ;
 int* _s_41_ ;
 int* _s_42_ ;
 int* _s_43_ ;
 int* _s_4_ ;
 int* _s_5_ ;
 int* _s_6_ ;
 int* _s_7_ ;
 int* _s_8_ ;
 int* _s_9_ ;

void translit_from_en_to_ru (int *s, long long *rh, int *hn) {
# 168 "extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c"
  *hn = 0;
  int *ns = s, i;
  long long h = 0, nh = 0;

  while (*s) {
    switch (*s) {
    case 97:

      i = 1; while (s[i] && s[i] == _s_1_[i]) { i++; } if (!s[i] || !_s_1_[i]) { nh = h * _h_1_ + _a_1_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 98:

      i = 1; while (s[i] && s[i] == _s_2_[i]) { i++; } if (!s[i] || !_s_2_[i]) { nh = h * _h_2_ + _a_2_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 99:

      i = 1; while (s[i] && s[i] == _s_3_[i]) { i++; } if (!s[i] || !_s_3_[i]) { nh = h * _h_3_ + _a_3_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_4_[i]) { i++; } if (!s[i] || !_s_4_[i]) { nh = h * _h_4_ + _a_4_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 100:

      i = 1; while (s[i] && s[i] == _s_5_[i]) { i++; } if (!s[i] || !_s_5_[i]) { nh = h * _h_5_ + _a_5_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 101:

      i = 1; while (s[i] && s[i] == _s_6_[i]) { i++; } if (!s[i] || !_s_6_[i]) { nh = h * _h_6_ + _a_6_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_7_[i]) { i++; } if (!s[i] || !_s_7_[i]) { nh = h * _h_7_ + _a_7_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_8_[i]) { i++; } if (!s[i] || !_s_8_[i]) { nh = h * _h_8_ + _a_8_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 102:

      i = 1; while (s[i] && s[i] == _s_9_[i]) { i++; } if (!s[i] || !_s_9_[i]) { nh = h * _h_9_ + _a_9_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 103:

      i = 1; while (s[i] && s[i] == _s_10_[i]) { i++; } if (!s[i] || !_s_10_[i]) { nh = h * _h_10_ + _a_10_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 104:

      i = 1; while (s[i] && s[i] == _s_11_[i]) { i++; } if (!s[i] || !_s_11_[i]) { nh = h * _h_11_ + _a_11_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 105:

      i = 1; while (s[i] && s[i] == _s_12_[i]) { i++; } if (!s[i] || !_s_12_[i]) { nh = h * _h_12_ + _a_12_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_13_[i]) { i++; } if (!s[i] || !_s_13_[i]) { nh = h * _h_13_ + _a_13_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_14_[i]) { i++; } if (!s[i] || !_s_14_[i]) { nh = h * _h_14_ + _a_14_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 106:

      i = 1; while (s[i] && s[i] == _s_15_[i]) { i++; } if (!s[i] || !_s_15_[i]) { nh = h * _h_15_ + _a_15_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_16_[i]) { i++; } if (!s[i] || !_s_16_[i]) { nh = h * _h_16_ + _a_16_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_17_[i]) { i++; } if (!s[i] || !_s_17_[i]) { nh = h * _h_17_ + _a_17_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_18_[i]) { i++; } if (!s[i] || !_s_18_[i]) { nh = h * _h_18_ + _a_18_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 107:

      i = 1; while (s[i] && s[i] == _s_19_[i]) { i++; } if (!s[i] || !_s_19_[i]) { nh = h * _h_19_ + _a_19_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_20_[i]) { i++; } if (!s[i] || !_s_20_[i]) { nh = h * _h_20_ + _a_20_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 108:

      i = 1; while (s[i] && s[i] == _s_21_[i]) { i++; } if (!s[i] || !_s_21_[i]) { nh = h * _h_21_ + _a_21_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 109:

      i = 1; while (s[i] && s[i] == _s_22_[i]) { i++; } if (!s[i] || !_s_22_[i]) { nh = h * _h_22_ + _a_22_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 110:

      i = 1; while (s[i] && s[i] == _s_23_[i]) { i++; } if (!s[i] || !_s_23_[i]) { nh = h * _h_23_ + _a_23_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 111:

      i = 1; while (s[i] && s[i] == _s_24_[i]) { i++; } if (!s[i] || !_s_24_[i]) { nh = h * _h_24_ + _a_24_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 112:

      i = 1; while (s[i] && s[i] == _s_25_[i]) { i++; } if (!s[i] || !_s_25_[i]) { nh = h * _h_25_ + _a_25_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 113:

      i = 1; while (s[i] && s[i] == _s_26_[i]) { i++; } if (!s[i] || !_s_26_[i]) { nh = h * _h_26_ + _a_26_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 114:

      i = 1; while (s[i] && s[i] == _s_27_[i]) { i++; } if (!s[i] || !_s_27_[i]) { nh = h * _h_27_ + _a_27_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 115:

      i = 1; while (s[i] && s[i] == _s_28_[i]) { i++; } if (!s[i] || !_s_28_[i]) { nh = h * _h_28_ + _a_28_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_29_[i]) { i++; } if (!s[i] || !_s_29_[i]) { nh = h * _h_29_ + _a_29_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_30_[i]) { i++; } if (!s[i] || !_s_30_[i]) { nh = h * _h_30_ + _a_30_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_31_[i]) { i++; } if (!s[i] || !_s_31_[i]) { nh = h * _h_31_ + _a_31_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 116:

      i = 1; while (s[i] && s[i] == _s_32_[i]) { i++; } if (!s[i] || !_s_32_[i]) { nh = h * _h_32_ + _a_32_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_33_[i]) { i++; } if (!s[i] || !_s_33_[i]) { nh = h * _h_33_ + _a_33_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 117:

      i = 1; while (s[i] && s[i] == _s_34_[i]) { i++; } if (!s[i] || !_s_34_[i]) { nh = h * _h_34_ + _a_34_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 118:

      i = 1; while (s[i] && s[i] == _s_35_[i]) { i++; } if (!s[i] || !_s_35_[i]) { nh = h * _h_35_ + _a_35_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 119:

      i = 1; while (s[i] && s[i] == _s_36_[i]) { i++; } if (!s[i] || !_s_36_[i]) { nh = h * _h_36_ + _a_36_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 120:

      i = 1; while (s[i] && s[i] == _s_37_[i]) { i++; } if (!s[i] || !_s_37_[i]) { nh = h * _h_37_ + _a_37_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 121:

      i = 1; while (s[i] && s[i] == _s_38_[i]) { i++; } if (!s[i] || !_s_38_[i]) { nh = h * _h_38_ + _a_38_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_39_[i]) { i++; } if (!s[i] || !_s_39_[i]) { nh = h * _h_39_ + _a_39_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_40_[i]) { i++; } if (!s[i] || !_s_40_[i]) { nh = h * _h_40_ + _a_40_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_41_[i]) { i++; } if (!s[i] || !_s_41_[i]) { nh = h * _h_41_ + _a_41_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 122:

      i = 1; while (s[i] && s[i] == _s_42_[i]) { i++; } if (!s[i] || !_s_42_[i]) { nh = h * _h_42_ + _a_42_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_43_[i]) { i++; } if (!s[i] || !_s_43_[i]) { nh = h * _h_43_ + _a_43_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    default:
      nh = h * HASH_MUL + s[0]; ns = s + 1; if (!*ns) { rh[(*hn)++] = nh; };
    }
    s = ns++;
    h = nh;
  }


}
int main() {
  int * s;
  long long * rh;
  int * hn;
  translit_from_en_to_ru(s, rh, hn);
  return 0;
}
