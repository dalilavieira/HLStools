# 1 "extr_.reactosdll3rdpartydxtntxc_compress_dxtn.c_storedxtencodedblock_with_main.c"
# 1 "extr_.reactosdll3rdpartydxtntxc_compress_dxtn.c_storedxtencodedblock_with_main.c" 1
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
# 1 "extr_.reactosdll3rdpartydxtntxc_compress_dxtn.c_storedxtencodedblock_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef scalar_t__ GLboolean ;


 int ALPHACUT ;
 int BLUEWEIGHT ;
 int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT ;
 int GL_COMPRESSED_RGB_S3TC_DXT1_EXT ;
 int GREENWEIGHT ;
 int REDWEIGHT ;

__attribute__((used)) static void storedxtencodedblock( GLubyte *blkaddr, GLubyte srccolors[4][4][4], GLubyte *bestcolor[2],
                           GLint numxpixels, GLint numypixels, GLuint type, GLboolean haveAlpha)
{


   GLint i, j, colors;
   GLuint testerror, testerror2, pixerror, pixerrorbest;
   GLint colordist;
   GLushort color0, color1, tempcolor;
   GLuint bits = 0, bits2 = 0;
   GLubyte *colorptr;
   GLubyte enc = 0;
   GLubyte cv[4][4];

   bestcolor[0][0] = bestcolor[0][0] & 0xf8;
   bestcolor[0][1] = bestcolor[0][1] & 0xfc;
   bestcolor[0][2] = bestcolor[0][2] & 0xf8;
   bestcolor[1][0] = bestcolor[1][0] & 0xf8;
   bestcolor[1][1] = bestcolor[1][1] & 0xfc;
   bestcolor[1][2] = bestcolor[1][2] & 0xf8;

   color0 = bestcolor[0][0] << 8 | bestcolor[0][1] << 3 | bestcolor[0][2] >> 3;
   color1 = bestcolor[1][0] << 8 | bestcolor[1][1] << 3 | bestcolor[1][2] >> 3;
   if (color0 < color1) {
      tempcolor = color0; color0 = color1; color1 = tempcolor;
      colorptr = bestcolor[0]; bestcolor[0] = bestcolor[1]; bestcolor[1] = colorptr;
   }


   for (i = 0; i < 3; i++) {
      cv[0][i] = bestcolor[0][i];
      cv[1][i] = bestcolor[1][i];
      cv[2][i] = (bestcolor[0][i] * 2 + bestcolor[1][i]) / 3;
      cv[3][i] = (bestcolor[0][i] + bestcolor[1][i] * 2) / 3;
   }

   testerror = 0;
   for (j = 0; j < numypixels; j++) {
      for (i = 0; i < numxpixels; i++) {
         pixerrorbest = 0xffffffff;
         for (colors = 0; colors < 4; colors++) {
            colordist = srccolors[j][i][0] - cv[colors][0];
            pixerror = colordist * colordist * REDWEIGHT;
            colordist = srccolors[j][i][1] - cv[colors][1];
            pixerror += colordist * colordist * GREENWEIGHT;
            colordist = srccolors[j][i][2] - cv[colors][2];
            pixerror += colordist * colordist * BLUEWEIGHT;
            if (pixerror < pixerrorbest) {
               pixerrorbest = pixerror;
               enc = colors;
            }
         }
         testerror += pixerrorbest;
         bits |= enc << (2 * (j * 4 + i));
      }
   }


   if (type == GL_COMPRESSED_RGB_S3TC_DXT1_EXT || type == GL_COMPRESSED_RGBA_S3TC_DXT1_EXT) {
      for (i = 0; i < 3; i++) {
         cv[2][i] = (bestcolor[0][i] + bestcolor[1][i]) / 2;




         cv[3][i] = 0;
      }
      testerror2 = 0;
      for (j = 0; j < numypixels; j++) {
         for (i = 0; i < numxpixels; i++) {
            pixerrorbest = 0xffffffff;
            if ((type == GL_COMPRESSED_RGBA_S3TC_DXT1_EXT) && (srccolors[j][i][3] <= ALPHACUT)) {
               enc = 3;
               pixerrorbest = 0;
            }
            else {

               for (colors = 0; colors < 3; colors++) {
                  colordist = srccolors[j][i][0] - cv[colors][0];
                  pixerror = colordist * colordist * REDWEIGHT;
                  colordist = srccolors[j][i][1] - cv[colors][1];
                  pixerror += colordist * colordist * GREENWEIGHT;
                  colordist = srccolors[j][i][2] - cv[colors][2];
                  pixerror += colordist * colordist * BLUEWEIGHT;
                  if (pixerror < pixerrorbest) {
                     pixerrorbest = pixerror;

                     if (colors > 1) enc = colors;
                     else enc = colors ^ 1;
                  }
               }
            }
            testerror2 += pixerrorbest;
            bits2 |= enc << (2 * (j * 4 + i));
         }
      }
   } else {
      testerror2 = 0xffffffff;
   }


   if ((testerror > testerror2) || (haveAlpha)) {
      *blkaddr++ = color1 & 0xff;
      *blkaddr++ = color1 >> 8;
      *blkaddr++ = color0 & 0xff;
      *blkaddr++ = color0 >> 8;
      *blkaddr++ = bits2 & 0xff;
      *blkaddr++ = ( bits2 >> 8) & 0xff;
      *blkaddr++ = ( bits2 >> 16) & 0xff;
      *blkaddr = bits2 >> 24;
   }
   else {
      *blkaddr++ = color0 & 0xff;
      *blkaddr++ = color0 >> 8;
      *blkaddr++ = color1 & 0xff;
      *blkaddr++ = color1 >> 8;
      *blkaddr++ = bits & 0xff;
      *blkaddr++ = ( bits >> 8) & 0xff;
      *blkaddr++ = ( bits >> 16) & 0xff;
      *blkaddr = bits >> 24;
   }
}
int main() {
  GLubyte * blkaddr;
  GLubyte (*)[4][4] srccolors;
  GLubyte ** bestcolor;
  GLint numxpixels;
  GLint numypixels;
  GLuint type;
  GLboolean haveAlpha;
  storedxtencodedblock(blkaddr, srccolors, bestcolor, numxpixels, numypixels, type, haveAlpha);
  return 0;
}
