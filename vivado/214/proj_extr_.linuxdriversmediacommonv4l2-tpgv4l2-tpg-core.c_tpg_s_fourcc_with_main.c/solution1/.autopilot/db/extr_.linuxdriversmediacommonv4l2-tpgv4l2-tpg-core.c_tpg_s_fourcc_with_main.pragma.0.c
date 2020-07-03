# 1 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main.c"
# 1 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main.c" 1
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
# 1 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpg_data {int fourcc; int planes; int buffers; int recalc_colors; int interleaved; int* vdownsampling; int* hdownsampling; int* hmask; int* twopixelsize; void* color_enc; } ;


 void* TGP_COLOR_ENC_HSV ;
 void* TGP_COLOR_ENC_LUMA ;
 void* TGP_COLOR_ENC_RGB ;
 void* TGP_COLOR_ENC_YCBCR ;
# 88 "extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main.c"
bool tpg_s_fourcc(struct tpg_data tpg[1000], u32 fourcc)
{_ssdm_SpecArrayDimSize(tpg, 1000);
 tpg->fourcc = fourcc;
 tpg->planes = 1;
 tpg->buffers = 1;
 tpg->recalc_colors = 1;
 tpg->interleaved = 0;
 tpg->vdownsampling[0] = 1;
 tpg->hdownsampling[0] = 1;
 tpg->hmask[0] = ~0;
 tpg->hmask[1] = ~0;
 tpg->hmask[2] = ~0;

 switch (fourcc) {
 case 163:
 case 160:
 case 157:
 case 154:
 case 165:
 case 162:
 case 159:
 case 156:
 case 164:
 case 161:
 case 158:
 case 155:
  tpg->interleaved = 1;
  tpg->vdownsampling[1] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->planes = 2;

 case 171:
 case 167:
 case 166:
 case 170:
 case 149:
 case 192:
 case 169:
 case 148:
 case 191:
 case 168:
 case 147:
 case 190:
 case 187:
 case 173:
 case 189:
 case 172:
 case 188:
 case 150:
 case 151:
 case 193:
 case 194:
  tpg->color_enc = TGP_COLOR_ENC_RGB;
  break;
 case 186:
 case 146:
 case 145:
 case 144:
 case 143:
  tpg->color_enc = TGP_COLOR_ENC_LUMA;
  break;
 case 137:
 case 135:
 case 134:
 case 142:
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 140:
 case 131:
  tpg->buffers = 3;

 case 141:
 case 132:
  tpg->vdownsampling[1] = 2;
  tpg->vdownsampling[2] = 2;
  tpg->hdownsampling[1] = 2;
  tpg->hdownsampling[2] = 2;
  tpg->planes = 3;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 139:
 case 130:
  tpg->buffers = 3;

 case 138:
  tpg->vdownsampling[1] = 1;
  tpg->vdownsampling[2] = 1;
  tpg->hdownsampling[1] = 2;
  tpg->hdownsampling[2] = 2;
  tpg->planes = 3;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 180:
 case 174:
  tpg->buffers = 2;

 case 181:
 case 175:
  tpg->vdownsampling[1] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->hmask[1] = ~1;
  tpg->planes = 2;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 182:
 case 178:
  tpg->buffers = 2;

 case 183:
 case 179:
  tpg->vdownsampling[1] = 2;
  tpg->hdownsampling[1] = 1;
  tpg->hmask[1] = ~1;
  tpg->planes = 2;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 136:
 case 129:
  tpg->buffers = 3;
  tpg->planes = 3;
  tpg->vdownsampling[1] = 1;
  tpg->vdownsampling[2] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->hdownsampling[2] = 1;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 177:
 case 176:
  tpg->vdownsampling[1] = 1;
  tpg->hdownsampling[1] = 1;
  tpg->planes = 2;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 133:
 case 153:
 case 128:
 case 152:
  tpg->hmask[0] = ~1;
  tpg->color_enc = TGP_COLOR_ENC_YCBCR;
  break;
 case 185:
 case 184:
  tpg->color_enc = TGP_COLOR_ENC_HSV;
  break;
 default:
  return 0;
 }

 switch (fourcc) {
 case 186:
 case 171:
  tpg->twopixelsize[0] = 2;
  break;
 case 167:
 case 166:
 case 170:
 case 149:
 case 192:
 case 169:
 case 148:
 case 191:
 case 168:
 case 147:
 case 190:
 case 133:
 case 153:
 case 128:
 case 152:
 case 137:
 case 135:
 case 134:
 case 146:
 case 145:
 case 144:
 case 143:
  tpg->twopixelsize[0] = 2 * 2;
  break;
 case 173:
 case 189:
 case 185:
  tpg->twopixelsize[0] = 2 * 3;
  break;
 case 187:
 case 172:
 case 188:
 case 150:
 case 151:
 case 193:
 case 194:
 case 142:
 case 184:
  tpg->twopixelsize[0] = 2 * 4;
  break;
 case 183:
 case 179:
 case 182:
 case 178:
 case 181:
 case 175:
 case 180:
 case 174:
 case 163:
 case 160:
 case 157:
 case 154:
  tpg->twopixelsize[0] = 2;
  tpg->twopixelsize[1] = 2;
  break;
 case 156:
 case 159:
 case 162:
 case 165:
 case 155:
 case 158:
 case 161:
 case 164:
  tpg->twopixelsize[0] = 4;
  tpg->twopixelsize[1] = 4;
  break;
 case 136:
 case 129:
 case 139:
 case 130:
 case 138:
 case 141:
 case 132:
 case 140:
 case 131:
  tpg->twopixelsize[0] = 2;
  tpg->twopixelsize[1] = 2;
  tpg->twopixelsize[2] = 2;
  break;
 case 177:
 case 176:
  tpg->twopixelsize[0] = 2;
  tpg->twopixelsize[1] = 4;
  break;
 }
 return 1;
}
int main() {
  struct tpg_data * tpg;
  u32 fourcc;
  tpg_s_fourcc(tpg, fourcc);
  return 0;
}
