# 1 "extr_.labenginecoderenderercommontr_image_png.c_ConvertPixel_with_main.c"
# 1 "extr_.labenginecoderenderercommontr_image_png.c_ConvertPixel_with_main.c" 1
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
# 1 "extr_.labenginecoderenderercommontr_image_png.c_ConvertPixel_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct PNG_Chunk_IHDR {int ColourType; int BitDepth; } ;
typedef int qboolean ;
typedef int byte ;
# 28 "extr_.labenginecoderenderercommontr_image_png.c_ConvertPixel_with_main.c"
 int Q3IMAGE_BYTESPERPIXEL ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean ConvertPixel(struct PNG_Chunk_IHDR *IHDR,
  byte *OutPtr,
  uint8_t *DecompPtr,
  qboolean HasTransparentColour,
  uint8_t *TransparentColour,
  uint8_t *OutPal)
{




 if(!(IHDR && OutPtr && DecompPtr && TransparentColour && OutPal))
 {
  return(qfalse);
 }

 switch(IHDR->ColourType)
 {
  case 132 :
  {
   switch(IHDR->BitDepth)
   {
    case 137 :
    case 135 :
    case 134 :
    {
     uint8_t Step;
     uint8_t GreyValue;

     Step = 0xFF / ((1 << IHDR->BitDepth) - 1);

     GreyValue = DecompPtr[0] * Step;

     OutPtr[0] = GreyValue;
     OutPtr[1] = GreyValue;
     OutPtr[2] = GreyValue;
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if(TransparentColour[1] == DecompPtr[0])
      {
       OutPtr[3] = 0x00;
      }
     }


     break;
    }

    case 133 :
    case 136 :
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[0];
     OutPtr[2] = DecompPtr[0];
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if(IHDR->BitDepth == 133)
      {
       if(TransparentColour[1] == DecompPtr[0])
       {
        OutPtr[3] = 0x00;
       }
      }
      else
      {
       if((TransparentColour[0] == DecompPtr[0]) && (TransparentColour[1] == DecompPtr[1]))
       {
        OutPtr[3] = 0x00;
       }
      }
     }

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 129 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[1];
     OutPtr[2] = DecompPtr[2];
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if((TransparentColour[1] == DecompPtr[0]) &&
        (TransparentColour[3] == DecompPtr[1]) &&
        (TransparentColour[5] == DecompPtr[2]))
      {
       OutPtr[3] = 0x00;
      }
     }

     break;
    }

    case 136 :
    {




     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[2];
     OutPtr[2] = DecompPtr[4];
     OutPtr[3] = 0xFF;





     if(HasTransparentColour)
     {
      if((TransparentColour[0] == DecompPtr[0]) && (TransparentColour[1] == DecompPtr[1]) &&
        (TransparentColour[2] == DecompPtr[2]) && (TransparentColour[3] == DecompPtr[3]) &&
        (TransparentColour[4] == DecompPtr[4]) && (TransparentColour[5] == DecompPtr[5]))
      {
       OutPtr[3] = 0x00;
      }
     }

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 130 :
  {
   OutPtr[0] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 0];
   OutPtr[1] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 1];
   OutPtr[2] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 2];
   OutPtr[3] = OutPal[DecompPtr[0] * Q3IMAGE_BYTESPERPIXEL + 3];

   break;
  }

  case 131 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[0];
     OutPtr[2] = DecompPtr[0];
     OutPtr[3] = DecompPtr[1];

     break;
    }

    case 136 :
    {




     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[0];
     OutPtr[2] = DecompPtr[0];
     OutPtr[3] = DecompPtr[2];

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  case 128 :
  {
   switch(IHDR->BitDepth)
   {
    case 133 :
    {
     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[1];
     OutPtr[2] = DecompPtr[2];
     OutPtr[3] = DecompPtr[3];

     break;
    }

    case 136 :
    {




     OutPtr[0] = DecompPtr[0];
     OutPtr[1] = DecompPtr[2];
     OutPtr[2] = DecompPtr[4];
     OutPtr[3] = DecompPtr[6];

     break;
    }

    default :
    {
     return(qfalse);
    }
   }

   break;
  }

  default :
  {
   return(qfalse);
  }
 }

 return(qtrue);
}
int main() {
  struct PNG_Chunk_IHDR * IHDR;
  byte * OutPtr;
  uint8_t * DecompPtr;
  qboolean HasTransparentColour;
  uint8_t * TransparentColour;
  uint8_t * OutPal;
  ConvertPixel(IHDR, OutPtr, DecompPtr, HasTransparentColour, TransparentColour, OutPal);
  return 0;
}
