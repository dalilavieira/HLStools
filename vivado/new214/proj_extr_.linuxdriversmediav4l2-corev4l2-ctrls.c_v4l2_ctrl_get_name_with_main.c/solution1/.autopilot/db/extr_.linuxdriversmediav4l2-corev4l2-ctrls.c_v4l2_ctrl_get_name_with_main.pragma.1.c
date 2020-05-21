# 1 "extr_.linuxdriversmediav4l2-corev4l2-ctrls.c_v4l2_ctrl_get_name_with_main.c"
# 1 "extr_.linuxdriversmediav4l2-corev4l2-ctrls.c_v4l2_ctrl_get_name_with_main.c" 1
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
# 1 "extr_.linuxdriversmediav4l2-corev4l2-ctrls.c_v4l2_ctrl_get_name_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u32 ;
# 344 "extr_.linuxdriversmediav4l2-corev4l2-ctrls.c_v4l2_ctrl_get_name_with_main.c"
const char *v4l2_ctrl_get_name(u32 id)
{
 switch (id) {


 case 135: return "User Controls";
 case 424: return "Brightness";
 case 417: return "Contrast";
 case 151: return "Saturation";
 case 371: return "Hue";
 case 439: return "Volume";
 case 452: return "Balance";
 case 451: return "Bass";
 case 440: return "Treble";
 case 441: return "Mute";
 case 442: return "Loudness";
 case 426: return "Black Level";
 case 430: return "White Balance, Automatic";
 case 409: return "Do White Balance";
 case 164: return "Red Balance";
 case 425: return "Blue Balance";
 case 374: return "Gamma";
 case 398: return "Exposure";
 case 437: return "Gain, Automatic";
 case 375: return "Gain";
 case 372: return "Horizontal Flip";
 case 133: return "Vertical Flip";
 case 187: return "Power Line Frequency";
 case 370: return "Hue, Automatic";
 case 132: return "White Balance Temperature";
 case 149: return "Sharpness";
 case 429: return "Backlight Compensation";
 case 422: return "Chroma AGC";
 case 418: return "Color Killer";
 case 420: return "Color Effects";
 case 438: return "Brightness, Automatic";
 case 428: return "Band-Stop Filter";
 case 152: return "Rotate";
 case 427: return "Background Color";
 case 421: return "Chroma Gain";
 case 369: return "Illuminator 1";
 case 368: return "Illuminator 2";
 case 354: return "Min Number of Capture Buffers";
 case 353: return "Min Number of Output Buffers";
 case 454: return "Alpha Component";
 case 419: return "Color Effects, CbCr";





 case 338: return "Codec Controls";
 case 331: return "Stream Type";
 case 333: return "Stream PMT Program ID";
 case 335: return "Stream Audio Program ID";
 case 332: return "Stream Video Program ID";
 case 334: return "Stream PCR Program ID";
 case 337: return "Stream PES Audio ID";
 case 336: return "Stream PES Video ID";
 case 330: return "Stream VBI Format";
 case 339: return "Audio Sampling Frequency";
 case 346: return "Audio Encoding";
 case 345: return "Audio Layer I Bitrate";
 case 344: return "Audio Layer II Bitrate";
 case 343: return "Audio Layer III Bitrate";
 case 342: return "Audio Stereo Mode";
 case 341: return "Audio Stereo Mode Extension";
 case 347: return "Audio Emphasis";
 case 350: return "Audio CRC";
 case 340: return "Audio Mute";
 case 352: return "Audio AAC Bitrate";
 case 351: return "Audio AC-3 Bitrate";
 case 348: return "Audio Playback";
 case 349: return "Audio Multilingual Playback";
 case 319: return "Video Encoding";
 case 329: return "Video Aspect";
 case 325: return "Video B Frames";
 case 315: return "Video GOP Size";
 case 316: return "Video GOP Closure";
 case 214: return "Video Pulldown";
 case 327: return "Video Bitrate Mode";
 case 328: return "Video Bitrate";
 case 326: return "Video Peak Bitrate";
 case 211: return "Video Temporal Decimation";
 case 219: return "Video Mute";
 case 218: return "Video Mute YUV";
 case 322: return "Decoder Slice Interface";
 case 323: return "MPEG4 Loop Filter Enable";
 case 324: return "Number of Intra Refresh MBs";
 case 317: return "Frame Level Rate Control Enable";
 case 231: return "H264 MB Level Rate Control";
 case 276: return "Sequence Header Mode";
 case 232: return "Max Number of Reference Pics";
 case 313: return "H263 I-Frame QP Value";
 case 310: return "H263 P-Frame QP Value";
 case 314: return "H263 B-Frame QP Value";
 case 311: return "H263 Minimum QP Value";
 case 312: return "H263 Maximum QP Value";
 case 293: return "H264 I-Frame QP Value";
 case 284: return "H264 P-Frame QP Value";
 case 306: return "H264 B-Frame QP Value";
 case 287: return "H264 Maximum QP Value";
 case 286: return "H264 Minimum QP Value";
 case 309: return "H264 8x8 Transform Enable";
 case 305: return "H264 CPB Buffer Size";
 case 304: return "H264 Entropy Mode";
 case 292: return "H264 I-Frame Period";
 case 291: return "H264 Level";
 case 290: return "H264 Loop Filter Alpha Offset";
 case 289: return "H264 Loop Filter Beta Offset";
 case 288: return "H264 Loop Filter Mode";
 case 285: return "H264 Profile";
 case 280: return "Vertical Size of SAR";
 case 279: return "Horizontal Size of SAR";
 case 278: return "Aspect Ratio VUI Enable";
 case 277: return "VUI Aspect Ratio IDC";
 case 281: return "H264 Enable Frame Packing SEI";
 case 282: return "H264 Set Curr. Frame as Frame0";
 case 283: return "H264 FP Arrangement Type";
 case 303: return "H264 Flexible MB Ordering";
 case 300: return "H264 Map Type for FMO";
 case 298: return "H264 FMO Number of Slice Groups";
 case 302: return "H264 FMO Direction of Change";
 case 301: return "H264 FMO Size of 1st Slice Grp";
 case 299: return "H264 FMO No. of Consecutive MBs";
 case 308: return "H264 Arbitrary Slice Ordering";
 case 307: return "H264 ASO Slice Order";
 case 297: return "Enable H264 Hierarchical Coding";
 case 294: return "H264 Hierarchical Coding Type";
 case 296:return "H264 Number of HC Layers";
 case 295:
        return "H264 Set QP Value for HC Layers";
 case 229: return "MPEG4 I-Frame QP Value";
 case 224: return "MPEG4 P-Frame QP Value";
 case 230: return "MPEG4 B-Frame QP Value";
 case 226: return "MPEG4 Minimum QP Value";
 case 227: return "MPEG4 Maximum QP Value";
 case 228: return "MPEG4 Level";
 case 225: return "MPEG4 Profile";
 case 223: return "Quarter Pixel Search Enable";
 case 222: return "Maximum Bytes in a Slice";
 case 221: return "Number of MBs in a Slice";
 case 220: return "Slice Partitioning Method";
 case 209: return "VBV Buffer Size";
 case 320: return "Video Decoder PTS";
 case 321: return "Video Decoder Frame Count";
 case 210: return "Initial Delay for VBV Control";
 case 217: return "Horizontal MV Search Range";
 case 216: return "Vertical MV Search Range";
 case 212: return "Repeat Sequence Header";
 case 318: return "Force Key Frame";


 case 198: return "VPX Number of Partitions";
 case 202: return "VPX Intra Mode Decision Disable";
 case 197: return "VPX No. of Refs for P Frame";
 case 206: return "VPX Loop Filter Level Range";
 case 205: return "VPX Deblocking Effect Control";
 case 204: return "VPX Golden Frame Refresh Period";
 case 203: return "VPX Golden Frame Indicator";
 case 199: return "VPX Minimum QP Value";
 case 200: return "VPX Maximum QP Value";
 case 201: return "VPX I-Frame QP Value";
 case 196: return "VPX P-Frame QP Value";
 case 208: return "VP8 Profile";
 case 207: return "VP9 Profile";


 case 253: return "HEVC I-Frame QP Value";
 case 242: return "HEVC P-Frame QP Value";
 case 275: return "HEVC B-Frame QP Value";
 case 244: return "HEVC Minimum QP Value";
 case 245: return "HEVC Maximum QP Value";
 case 243: return "HEVC Profile";
 case 252: return "HEVC Level";
 case 236: return "HEVC Tier";
 case 273: return "HEVC Frame Rate Resolution";
 case 246: return "HEVC Maximum Coding Unit Depth";
 case 240: return "HEVC Refresh Type";
 case 274: return "HEVC Constant Intra Prediction";
 case 248: return "HEVC Lossless Encoding";
 case 234: return "HEVC Wavefront";
 case 249: return "HEVC Loop Filter";
 case 255: return "HEVC QP Values";
 case 256: return "HEVC Hierarchical Coding Type";
 case 257: return "HEVC Hierarchical Coding Layer";
 case 270: return "HEVC Hierarchical Layer 0 QP";
 case 268: return "HEVC Hierarchical Layer 1 QP";
 case 266: return "HEVC Hierarchical Layer 2 QP";
 case 264: return "HEVC Hierarchical Layer 3 QP";
 case 262: return "HEVC Hierarchical Layer 4 QP";
 case 260: return "HEVC Hierarchical Layer 5 QP";
 case 258: return "HEVC Hierarchical Layer 6 QP";
 case 271: return "HEVC Hierarchical Lay 0 BitRate";
 case 269: return "HEVC Hierarchical Lay 1 BitRate";
 case 267: return "HEVC Hierarchical Lay 2 BitRate";
 case 265: return "HEVC Hierarchical Lay 3 BitRate";
 case 263: return "HEVC Hierarchical Lay 4 BitRate";
 case 261: return "HEVC Hierarchical Lay 5 BitRate";
 case 259: return "HEVC Hierarchical Lay 6 BitRate";
 case 272: return "HEVC General PB";
 case 237: return "HEVC Temporal ID";
 case 238: return "HEVC Strong Intra Smoothing";
 case 254: return "HEVC Intra PU Split";
 case 235: return "HEVC TMV Prediction";
 case 247: return "HEVC Max Num of Candidate MVs";
 case 233: return "HEVC ENC Without Startcode";
 case 241: return "HEVC Num of I-Frame b/w 2 IDR";
 case 251: return "HEVC Loop Filter Beta Offset";
 case 250: return "HEVC Loop Filter TC Offset";
 case 239: return "HEVC Size of Length Field";
 case 213: return "Reference Frames for a P-Frame";
 case 215: return "Prepend SPS and PPS to IDR";



 case 423: return "Camera Controls";
 case 396: return "Auto Exposure";
 case 397: return "Exposure Time, Absolute";
 case 395: return "Exposure, Dynamic Framerate";
 case 194: return "Pan, Relative";
 case 142: return "Tilt, Relative";
 case 193: return "Pan, Reset";
 case 141: return "Tilt, Reset";
 case 195: return "Pan, Absolute";
 case 143: return "Tilt, Absolute";
 case 378: return "Focus, Absolute";
 case 376: return "Focus, Relative";
 case 377: return "Focus, Automatic Continuous";
 case 130: return "Zoom, Absolute";
 case 128: return "Zoom, Relative";
 case 129: return "Zoom, Continuous";
 case 186: return "Privacy";
 case 364: return "Iris, Absolute";
 case 363: return "Iris, Relative";
 case 436: return "Auto Exposure, Bias";
 case 431: return "White Balance, Auto & Preset";
 case 131: return "Wide Dynamic Range";
 case 365: return "Image Stabilization";
 case 362: return "ISO Sensitivity";
 case 361: return "ISO Sensitivity, Auto";
 case 394: return "Exposure, Metering Mode";
 case 150: return "Scene Mode";
 case 455: return "3A Lock";
 case 434: return "Auto Focus, Start";
 case 432: return "Auto Focus, Stop";
 case 433: return "Auto Focus, Status";
 case 435: return "Auto Focus, Range";
 case 192: return "Pan, Speed";
 case 140: return "Tilt, Speed";



 case 379: return "FM Radio Modulator Controls";
 case 174: return "RDS Signal Deviation";
 case 170: return "RDS Program ID";
 case 168: return "RDS Program Type";
 case 169: return "RDS PS Name";
 case 167: return "RDS Radio Text";
 case 172: return "RDS Stereo";
 case 176: return "RDS Artificial Head";
 case 175: return "RDS Compressed";
 case 173: return "RDS Dynamic PTY";
 case 166: return "RDS Traffic Announcement";
 case 165: return "RDS Traffic Program";
 case 171: return "RDS Music";
 case 177: return "RDS Enable Alt Frequencies";
 case 178: return "RDS Alternate Frequencies";
 case 444: return "Audio Limiter Feature Enabled";
 case 443: return "Audio Limiter Release Time";
 case 445: return "Audio Limiter Deviation";
 case 449: return "Audio Compression Enabled";
 case 448: return "Audio Compression Gain";
 case 446: return "Audio Compression Threshold";
 case 450: return "Audio Compression Attack Time";
 case 447: return "Audio Compression Release Time";
 case 190: return "Pilot Tone Feature Enabled";
 case 191: return "Pilot Tone Deviation";
 case 189: return "Pilot Tone Frequency";
 case 136: return "Pre-Emphasis";
 case 137: return "Tune Power Level";
 case 139: return "Tune Antenna Capacitor";



 case 392: return "Flash Controls";
 case 388: return "LED Mode";
 case 385: return "Strobe Source";
 case 386: return "Strobe";
 case 383: return "Stop Strobe";
 case 384: return "Strobe Status";
 case 382: return "Strobe Timeout";
 case 389: return "Intensity, Flash Mode";
 case 381: return "Intensity, Torch Mode";
 case 390: return "Intensity, Indicator";
 case 391: return "Faults";
 case 393: return "Charge";
 case 387: return "Ready to Strobe";



 case 358: return "JPEG Compression Controls";
 case 359: return "Chroma Subsampling";
 case 356: return "Restart Interval";
 case 357: return "Compression Quality";
 case 360: return "Active Markers";



 case 366: return "Image Source Controls";
 case 134: return "Vertical Blanking";
 case 373: return "Horizontal Blanking";
 case 453: return "Analogue Gain";
 case 144: return "Red Pixel Value";
 case 145: return "Green (Red) Pixel Value";
 case 147: return "Blue Pixel Value";
 case 146: return "Green (Blue) Pixel Value";



 case 367: return "Image Processing Controls";
 case 355: return "Link Frequency";
 case 188: return "Pixel Rate";
 case 148: return "Test Pattern";
 case 416: return "Deinterlacing Mode";
 case 410: return "Digital Gain";



 case 408: return "Digital Video Controls";
 case 403: return "Hotplug Present";
 case 399: return "RxSense Present";
 case 404: return "EDID Present";
 case 401: return "Transmit Mode";
 case 400: return "Tx RGB Quantization Range";
 case 402: return "Tx IT Content Type";
 case 406: return "Power Present";
 case 405: return "Rx RGB Quantization Range";
 case 407: return "Rx IT Content Type";

 case 380: return "FM Radio Receiver Controls";
 case 138: return "De-Emphasis";
 case 185: return "RDS Reception";
 case 161: return "RF Tuner Controls";
 case 153: return "RF Gain";
 case 157: return "LNA Gain, Auto";
 case 158: return "LNA Gain";
 case 155: return "Mixer Gain, Auto";
 case 156: return "Mixer Gain";
 case 159: return "IF Gain, Auto";
 case 160: return "IF Gain";
 case 162: return "Bandwidth, Auto";
 case 163: return "Bandwidth";
 case 154: return "PLL Lock";
 case 182: return "RDS Program Type";
 case 183: return "RDS PS Name";
 case 181: return "RDS Radio Text";
 case 180: return "RDS Traffic Announcement";
 case 179: return "RDS Traffic Program";
 case 184: return "RDS Music";



 case 415: return "Detection Controls";
 case 413: return "Motion Detection Mode";
 case 414: return "MD Global Threshold";
 case 411: return "MD Threshold Grid";
 case 412: return "MD Region Grid";
 default:
  return ((void*)0);
 }
}
int main() {
  u32 id;
  v4l2_ctrl_get_name(id);
  return 0;
}
