# 1 "extr_.labq3map2libsddslibddslib.c_DDSDecodeAlpha3BitLinear_with_main.c"
# 1 "extr_.labq3map2libsddslibddslib.c_DDSDecodeAlpha3BitLinear_with_main.c" 1
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
# 1 "extr_.labq3map2libsddslibddslib.c_DDSDecodeAlpha3BitLinear_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char a; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
typedef TYPE_1__ ddsColor_t ;
struct TYPE_5__ {unsigned short alpha0; unsigned short alpha1; int * stuff; } ;
typedef TYPE_2__ ddsAlphaBlock3BitLinear_t ;



__attribute__((used)) static void DDSDecodeAlpha3BitLinear( unsigned int *pixel, ddsAlphaBlock3BitLinear_t *alphaBlock, int width, unsigned int alphaZero ){

 int row, pix;
 unsigned int stuff;
 unsigned char bits[ 4 ][ 4 ];
 unsigned short alphas[ 8 ];
 ddsColor_t aColors[ 4 ][ 4 ];



 alphas[ 0 ] = alphaBlock->alpha0;
 alphas[ 1 ] = alphaBlock->alpha1;


 if ( alphas[ 0 ] > alphas[ 1 ] ) {

  alphas[ 2 ] = ( 6 * alphas[ 0 ] + alphas[ 1 ] ) / 7;
  alphas[ 3 ] = ( 5 * alphas[ 0 ] + 2 * alphas[ 1 ] ) / 7;
  alphas[ 4 ] = ( 4 * alphas[ 0 ] + 3 * alphas[ 1 ] ) / 7;
  alphas[ 5 ] = ( 3 * alphas[ 0 ] + 4 * alphas[ 1 ] ) / 7;
  alphas[ 6 ] = ( 2 * alphas[ 0 ] + 5 * alphas[ 1 ] ) / 7;
  alphas[ 7 ] = ( alphas[ 0 ] + 6 * alphas[ 1 ] ) / 7;
 }


 else
 {

  alphas[ 2 ] = ( 4 * alphas[ 0 ] + alphas[ 1 ] ) / 5;
  alphas[ 3 ] = ( 3 * alphas[ 0 ] + 2 * alphas[ 1 ] ) / 5;
  alphas[ 4 ] = ( 2 * alphas[ 0 ] + 3 * alphas[ 1 ] ) / 5;
  alphas[ 5 ] = ( alphas[ 0 ] + 4 * alphas[ 1 ] ) / 5;
  alphas[ 6 ] = 0;
  alphas[ 7 ] = 255;
 }




 stuff = *( (unsigned int*) &( alphaBlock->stuff[ 0 ] ) );

 bits[ 0 ][ 0 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 0 ][ 1 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 0 ][ 2 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 0 ][ 3 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 1 ][ 0 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 1 ][ 1 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 1 ][ 2 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 1 ][ 3 ] = (unsigned char) ( stuff & 0x00000007 );


 stuff = *( (unsigned int*) &( alphaBlock->stuff[ 3 ] ) );

 bits[ 2 ][ 0 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 2 ][ 1 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 2 ][ 2 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 2 ][ 3 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 3 ][ 0 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 3 ][ 1 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 3 ][ 2 ] = (unsigned char) ( stuff & 0x00000007 );
 stuff >>= 3;
 bits[ 3 ][ 3 ] = (unsigned char) ( stuff & 0x00000007 );


 for ( row = 0; row < 4; row++ )
 {
  for ( pix = 0; pix < 4; pix++ )
  {
   aColors[ row ][ pix ].r = 0;
   aColors[ row ][ pix ].g = 0;
   aColors[ row ][ pix ].b = 0;
   aColors[ row ][ pix ].a = (unsigned char) alphas[ bits[ row ][ pix ] ];
  }
 }


 for ( row = 0; row < 4; row++, pixel += width - 4 )
 {
  for ( pix = 0; pix < 4; pix++ )
  {

   *pixel &= alphaZero;


   *pixel |= *( (unsigned int*) &( aColors[ row ][ pix ] ) );
   pixel++;
  }
 }
}
int main() {
  unsigned int * pixel;
  ddsAlphaBlock3BitLinear_t * alphaBlock;
  int width;
  unsigned int alphaZero;
  DDSDecodeAlpha3BitLinear(pixel, alphaBlock, width, alphaZero);
  return 0;
}
