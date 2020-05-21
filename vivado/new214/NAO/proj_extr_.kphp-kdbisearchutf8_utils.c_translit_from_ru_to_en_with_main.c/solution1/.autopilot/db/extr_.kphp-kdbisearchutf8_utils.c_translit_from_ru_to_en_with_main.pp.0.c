# 1 "extr_.kphp-kdbisearchutf8_utils.c_translit_from_ru_to_en_with_main.c"
# 1 "extr_.kphp-kdbisearchutf8_utils.c_translit_from_ru_to_en_with_main.c" 1
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
# 1 "extr_.kphp-kdbisearchutf8_utils.c_translit_from_ru_to_en_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.kphp-kdbisearchutf8_utils.c_translit_from_ru_to_en_with_main.c"
 long long HASH_MUL ;
 int _a_44_ ;
 int _a_45_ ;
 int _a_46_ ;
 int _a_47_ ;
 int _a_48_ ;
 int _a_49_ ;
 int _a_50_ ;
 int _a_51_ ;
 int _a_52_ ;
 int _a_53_ ;
 int _a_54_ ;
 int _a_55_ ;
 int _a_56_ ;
 int _a_57_ ;
 int _a_58_ ;
 int _a_59_ ;
 int _a_60_ ;
 int _a_61_ ;
 int _a_62_ ;
 int _a_63_ ;
 int _a_64_ ;
 int _a_65_ ;
 int _a_66_ ;
 int _a_67_ ;
 int _a_68_ ;
 int _a_69_ ;
 int _a_70_ ;
 int _a_71_ ;
 int _a_72_ ;
 int _a_73_ ;
 int _a_74_ ;
 int _a_75_ ;
 int _a_76_ ;
 int _a_77_ ;
 int _a_78_ ;
 int _a_79_ ;
 int _a_80_ ;
 int _a_81_ ;
 int _a_82_ ;
 int _a_83_ ;
 long long _h_44_ ;
 long long _h_45_ ;
 long long _h_46_ ;
 long long _h_47_ ;
 long long _h_48_ ;
 long long _h_49_ ;
 long long _h_50_ ;
 long long _h_51_ ;
 long long _h_52_ ;
 long long _h_53_ ;
 long long _h_54_ ;
 long long _h_55_ ;
 long long _h_56_ ;
 long long _h_57_ ;
 long long _h_58_ ;
 long long _h_59_ ;
 long long _h_60_ ;
 long long _h_61_ ;
 long long _h_62_ ;
 long long _h_63_ ;
 long long _h_64_ ;
 long long _h_65_ ;
 long long _h_66_ ;
 long long _h_67_ ;
 long long _h_68_ ;
 long long _h_69_ ;
 long long _h_70_ ;
 long long _h_71_ ;
 long long _h_72_ ;
 long long _h_73_ ;
 long long _h_74_ ;
 long long _h_75_ ;
 long long _h_76_ ;
 long long _h_77_ ;
 long long _h_78_ ;
 long long _h_79_ ;
 long long _h_80_ ;
 long long _h_81_ ;
 long long _h_82_ ;
 long long _h_83_ ;
 int* _s_44_ ;
 int* _s_45_ ;
 int* _s_46_ ;
 int* _s_47_ ;
 int* _s_48_ ;
 int* _s_49_ ;
 int* _s_50_ ;
 int* _s_51_ ;
 int* _s_52_ ;
 int* _s_53_ ;
 int* _s_54_ ;
 int* _s_55_ ;
 int* _s_56_ ;
 int* _s_57_ ;
 int* _s_58_ ;
 int* _s_59_ ;
 int* _s_60_ ;
 int* _s_61_ ;
 int* _s_62_ ;
 int* _s_63_ ;
 int* _s_64_ ;
 int* _s_65_ ;
 int* _s_66_ ;
 int* _s_67_ ;
 int* _s_68_ ;
 int* _s_69_ ;
 int* _s_70_ ;
 int* _s_71_ ;
 int* _s_72_ ;
 int* _s_73_ ;
 int* _s_74_ ;
 int* _s_75_ ;
 int* _s_76_ ;
 int* _s_77_ ;
 int* _s_78_ ;
 int* _s_79_ ;
 int* _s_80_ ;
 int* _s_81_ ;
 int* _s_82_ ;
 int* _s_83_ ;

void translit_from_ru_to_en (int *s, long long *rh, int *hn) {
# 159 "extr_.kphp-kdbisearchutf8_utils.c_translit_from_ru_to_en_with_main.c"
  *hn = 0;
  int *ns = s, i;
  long long h = 0, nh = 0;

  while (*s) {
    switch (*s) {
    case 1072:

      i = 1; while (s[i] && s[i] == _s_44_[i]) { i++; } if (!s[i] || !_s_44_[i]) { nh = h * _h_44_ + _a_44_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1073:

      i = 1; while (s[i] && s[i] == _s_45_[i]) { i++; } if (!s[i] || !_s_45_[i]) { nh = h * _h_45_ + _a_45_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1074:

      i = 1; while (s[i] && s[i] == _s_46_[i]) { i++; } if (!s[i] || !_s_46_[i]) { nh = h * _h_46_ + _a_46_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1075:

      i = 1; while (s[i] && s[i] == _s_47_[i]) { i++; } if (!s[i] || !_s_47_[i]) { nh = h * _h_47_ + _a_47_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1076:

      i = 1; while (s[i] && s[i] == _s_48_[i]) { i++; } if (!s[i] || !_s_48_[i]) { nh = h * _h_48_ + _a_48_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1077:

      i = 1; while (s[i] && s[i] == _s_49_[i]) { i++; } if (!s[i] || !_s_49_[i]) { nh = h * _h_49_ + _a_49_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1105:

      i = 1; while (s[i] && s[i] == _s_50_[i]) { i++; } if (!s[i] || !_s_50_[i]) { nh = h * _h_50_ + _a_50_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1078:

      i = 1; while (s[i] && s[i] == _s_51_[i]) { i++; } if (!s[i] || !_s_51_[i]) { nh = h * _h_51_ + _a_51_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1079:

      i = 1; while (s[i] && s[i] == _s_52_[i]) { i++; } if (!s[i] || !_s_52_[i]) { nh = h * _h_52_ + _a_52_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1080:

      i = 1; while (s[i] && s[i] == _s_53_[i]) { i++; } if (!s[i] || !_s_53_[i]) { nh = h * _h_53_ + _a_53_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_54_[i]) { i++; } if (!s[i] || !_s_54_[i]) { nh = h * _h_54_ + _a_54_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_55_[i]) { i++; } if (!s[i] || !_s_55_[i]) { nh = h * _h_55_ + _a_55_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1081:

      i = 1; while (s[i] && s[i] == _s_56_[i]) { i++; } if (!s[i] || !_s_56_[i]) { nh = h * _h_56_ + _a_56_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1082:

      i = 1; while (s[i] && s[i] == _s_57_[i]) { i++; } if (!s[i] || !_s_57_[i]) { nh = h * _h_57_ + _a_57_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_58_[i]) { i++; } if (!s[i] || !_s_58_[i]) { nh = h * _h_58_ + _a_58_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1083:

      i = 1; while (s[i] && s[i] == _s_59_[i]) { i++; } if (!s[i] || !_s_59_[i]) { nh = h * _h_59_ + _a_59_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1084:

      i = 1; while (s[i] && s[i] == _s_60_[i]) { i++; } if (!s[i] || !_s_60_[i]) { nh = h * _h_60_ + _a_60_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1085:

      i = 1; while (s[i] && s[i] == _s_61_[i]) { i++; } if (!s[i] || !_s_61_[i]) { nh = h * _h_61_ + _a_61_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1086:

      i = 1; while (s[i] && s[i] == _s_62_[i]) { i++; } if (!s[i] || !_s_62_[i]) { nh = h * _h_62_ + _a_62_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1087:

      i = 1; while (s[i] && s[i] == _s_63_[i]) { i++; } if (!s[i] || !_s_63_[i]) { nh = h * _h_63_ + _a_63_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1088:

      i = 1; while (s[i] && s[i] == _s_64_[i]) { i++; } if (!s[i] || !_s_64_[i]) { nh = h * _h_64_ + _a_64_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1089:

      i = 1; while (s[i] && s[i] == _s_65_[i]) { i++; } if (!s[i] || !_s_65_[i]) { nh = h * _h_65_ + _a_65_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1090:

      i = 1; while (s[i] && s[i] == _s_66_[i]) { i++; } if (!s[i] || !_s_66_[i]) { nh = h * _h_66_ + _a_66_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1091:

      i = 1; while (s[i] && s[i] == _s_67_[i]) { i++; } if (!s[i] || !_s_67_[i]) { nh = h * _h_67_ + _a_67_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1092:

      i = 1; while (s[i] && s[i] == _s_68_[i]) { i++; } if (!s[i] || !_s_68_[i]) { nh = h * _h_68_ + _a_68_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1093:

      i = 1; while (s[i] && s[i] == _s_69_[i]) { i++; } if (!s[i] || !_s_69_[i]) { nh = h * _h_69_ + _a_69_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1094:

      i = 1; while (s[i] && s[i] == _s_70_[i]) { i++; } if (!s[i] || !_s_70_[i]) { nh = h * _h_70_ + _a_70_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1095:

      i = 1; while (s[i] && s[i] == _s_71_[i]) { i++; } if (!s[i] || !_s_71_[i]) { nh = h * _h_71_ + _a_71_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1096:

      i = 1; while (s[i] && s[i] == _s_72_[i]) { i++; } if (!s[i] || !_s_72_[i]) { nh = h * _h_72_ + _a_72_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1097:

      i = 1; while (s[i] && s[i] == _s_73_[i]) { i++; } if (!s[i] || !_s_73_[i]) { nh = h * _h_73_ + _a_73_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1098:

      i = 1; while (s[i] && s[i] == _s_74_[i]) { i++; } if (!s[i] || !_s_74_[i]) { nh = h * _h_74_ + _a_74_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1099:

      i = 1; while (s[i] && s[i] == _s_75_[i]) { i++; } if (!s[i] || !_s_75_[i]) { nh = h * _h_75_ + _a_75_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1100:

      i = 1; while (s[i] && s[i] == _s_76_[i]) { i++; } if (!s[i] || !_s_76_[i]) { nh = h * _h_76_ + _a_76_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1101:

      i = 1; while (s[i] && s[i] == _s_77_[i]) { i++; } if (!s[i] || !_s_77_[i]) { nh = h * _h_77_ + _a_77_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1102:

      i = 1; while (s[i] && s[i] == _s_78_[i]) { i++; } if (!s[i] || !_s_78_[i]) { nh = h * _h_78_ + _a_78_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 1103:

      i = 1; while (s[i] && s[i] == _s_79_[i]) { i++; } if (!s[i] || !_s_79_[i]) { nh = h * _h_79_ + _a_79_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 121:

      i = 1; while (s[i] && s[i] == _s_80_[i]) { i++; } if (!s[i] || !_s_80_[i]) { nh = h * _h_80_ + _a_80_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_81_[i]) { i++; } if (!s[i] || !_s_81_[i]) { nh = h * _h_81_ + _a_81_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
      break;
    case 106:

      i = 1; while (s[i] && s[i] == _s_82_[i]) { i++; } if (!s[i] || !_s_82_[i]) { nh = h * _h_82_ + _a_82_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };

      i = 1; while (s[i] && s[i] == _s_83_[i]) { i++; } if (!s[i] || !_s_83_[i]) { nh = h * _h_83_ + _a_83_; ns = s + i; } if (!*ns) { rh[(*hn)++] = nh; };
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
  translit_from_ru_to_en(s, rh, hn);
  return 0;
}
