# 1 "extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main.c"
# 1 "extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main.c" 1
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
# 1 "extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct cx2341x_mpeg_params {int audio_sampling_freq; int capabilities; int audio_encoding; int audio_l2_bitrate; int audio_ac3_bitrate; int audio_mode; int audio_mode_extension; int audio_emphasis; int audio_crc; int audio_mute; int video_aspect; int video_gop_size; int video_b_frames; int video_gop_closure; int video_bitrate_mode; int video_bitrate; int video_bitrate_peak; int video_temporal_decimation; int video_mute; int video_mute_yuv; int stream_type; int stream_vbi_fmt; int video_spatial_filter_mode; int video_spatial_filter; int video_luma_spatial_filter_type; int video_chroma_spatial_filter_type; int video_temporal_filter_mode; int video_temporal_filter; int video_median_filter_type; int video_luma_median_filter_top; int video_luma_median_filter_bottom; int video_chroma_median_filter_top; int video_chroma_median_filter_bottom; int stream_insert_nav_packets; int video_encoding; } ;


 int CX2341X_CAP_HAS_AC3 ;
 int EBUSY ;
 int EINVAL ;
 int ERANGE ;
# 53 "extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main.c"
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_AUDIO_ENCODING_LAYER_2 ;
 int V4L2_MPEG_STREAM_TYPE_MPEG1_SS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG1_VCD ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;

__attribute__((used)) static int cx2341x_set_ctrl(struct cx2341x_mpeg_params *params, int busy,
  struct v4l2_ext_control *ctrl)
{
 switch (ctrl->id) {
 case 152:
  if (busy)
   return -EBUSY;
  params->audio_sampling_freq = ctrl->value;
  break;
 case 157:
  if (busy)
   return -EBUSY;
  if (params->capabilities & CX2341X_CAP_HAS_AC3)
   if (ctrl->value != V4L2_MPEG_AUDIO_ENCODING_LAYER_2 &&
       ctrl->value != V4L2_MPEG_AUDIO_ENCODING_AC3)
    return -ERANGE;
  params->audio_encoding = ctrl->value;
  break;
 case 156:
  if (busy)
   return -EBUSY;
  params->audio_l2_bitrate = ctrl->value;
  break;
 case 160:
  if (busy)
   return -EBUSY;
  if (!(params->capabilities & CX2341X_CAP_HAS_AC3))
   return -EINVAL;
  params->audio_ac3_bitrate = ctrl->value;
  break;
 case 155:
  params->audio_mode = ctrl->value;
  break;
 case 154:
  params->audio_mode_extension = ctrl->value;
  break;
 case 158:
  params->audio_emphasis = ctrl->value;
  break;
 case 159:
  params->audio_crc = ctrl->value;
  break;
 case 153:
  params->audio_mute = ctrl->value;
  break;
 case 137:
  params->video_aspect = ctrl->value;
  break;
 case 133: {
  int b = ctrl->value + 1;
  int gop = params->video_gop_size;
  params->video_b_frames = ctrl->value;
  params->video_gop_size = b * ((gop + b - 1) / b);

  while (params->video_gop_size > 34)
   params->video_gop_size -= b;
  break;
 }
 case 131: {
  int b = params->video_b_frames + 1;
  int gop = ctrl->value;
  params->video_gop_size = b * ((gop + b - 1) / b);

  while (params->video_gop_size > 34)
   params->video_gop_size -= b;
  ctrl->value = params->video_gop_size;
  break;
 }
 case 132:
  params->video_gop_closure = ctrl->value;
  break;
 case 135:
  if (busy)
   return -EBUSY;

  if (params->video_encoding == V4L2_MPEG_VIDEO_ENCODING_MPEG_1 &&
      ctrl->value != V4L2_MPEG_VIDEO_BITRATE_MODE_CBR)
   return -EINVAL;
  params->video_bitrate_mode = ctrl->value;
  break;
 case 136:
  if (busy)
   return -EBUSY;
  params->video_bitrate = ctrl->value;
  break;
 case 134:
  if (busy)
   return -EBUSY;
  params->video_bitrate_peak = ctrl->value;
  break;
 case 128:
  params->video_temporal_decimation = ctrl->value;
  break;
 case 130:
  params->video_mute = (ctrl->value != 0);
  break;
 case 129:
  params->video_mute_yuv = ctrl->value;
  break;
 case 139:
  if (busy)
   return -EBUSY;
  params->stream_type = ctrl->value;
  params->video_encoding =
      (params->stream_type == V4L2_MPEG_STREAM_TYPE_MPEG1_SS ||
       params->stream_type == V4L2_MPEG_STREAM_TYPE_MPEG1_VCD) ?
   V4L2_MPEG_VIDEO_ENCODING_MPEG_1 :
   V4L2_MPEG_VIDEO_ENCODING_MPEG_2;
  if (params->video_encoding == V4L2_MPEG_VIDEO_ENCODING_MPEG_1)

   params->video_bitrate_mode =
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR;
  break;
 case 138:
  params->stream_vbi_fmt = ctrl->value;
  break;
 case 142:
  params->video_spatial_filter_mode = ctrl->value;
  break;
 case 143:
  params->video_spatial_filter = ctrl->value;
  break;
 case 145:
  params->video_luma_spatial_filter_type = ctrl->value;
  break;
 case 148:
  params->video_chroma_spatial_filter_type = ctrl->value;
  break;
 case 140:
  params->video_temporal_filter_mode = ctrl->value;
  break;
 case 141:
  params->video_temporal_filter = ctrl->value;
  break;
 case 144:
  params->video_median_filter_type = ctrl->value;
  break;
 case 146:
  params->video_luma_median_filter_top = ctrl->value;
  break;
 case 147:
  params->video_luma_median_filter_bottom = ctrl->value;
  break;
 case 149:
  params->video_chroma_median_filter_top = ctrl->value;
  break;
 case 150:
  params->video_chroma_median_filter_bottom = ctrl->value;
  break;
 case 151:
  params->stream_insert_nav_packets = ctrl->value;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
int main() {
  struct cx2341x_mpeg_params * params;
  int busy;
  struct v4l2_ext_control * ctrl;
  cx2341x_set_ctrl(params, busy, ctrl);
  return 0;
}
