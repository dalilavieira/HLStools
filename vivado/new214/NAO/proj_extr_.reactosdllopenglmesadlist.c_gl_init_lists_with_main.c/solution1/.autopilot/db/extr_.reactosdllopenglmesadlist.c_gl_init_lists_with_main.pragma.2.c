# 1 "extr_.reactosdllopenglmesadlist.c_gl_init_lists_with_main.c"
# 1 "extr_.reactosdllopenglmesadlist.c_gl_init_lists_with_main.c" 1
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
# 1 "extr_.reactosdllopenglmesadlist.c_gl_init_lists_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 14 "extr_.reactosdllopenglmesadlist.c_gl_init_lists_with_main.c"
 int* InstSize ;
 size_t OPCODE_ACCUM ;
 size_t OPCODE_ALPHA_FUNC ;
 size_t OPCODE_BEGIN ;
 size_t OPCODE_BIND_TEXTURE ;
 size_t OPCODE_BITMAP ;
 size_t OPCODE_BLEND_FUNC ;
 size_t OPCODE_CALL_LIST ;
 size_t OPCODE_CALL_LIST_OFFSET ;
 size_t OPCODE_CLEAR ;
 size_t OPCODE_CLEAR_ACCUM ;
 size_t OPCODE_CLEAR_COLOR ;
 size_t OPCODE_CLEAR_DEPTH ;
 size_t OPCODE_CLEAR_INDEX ;
 size_t OPCODE_CLEAR_STENCIL ;
 size_t OPCODE_CLIP_PLANE ;
 size_t OPCODE_COLOR_3F ;
 size_t OPCODE_COLOR_4F ;
 size_t OPCODE_COLOR_4UB ;
 size_t OPCODE_COLOR_MASK ;
 size_t OPCODE_COLOR_MATERIAL ;
 size_t OPCODE_COLOR_SUB_TABLE ;
 size_t OPCODE_COLOR_TABLE ;
 size_t OPCODE_CONTINUE ;
 size_t OPCODE_COPY_PIXELS ;
 size_t OPCODE_COPY_TEX_IMAGE1D ;
 size_t OPCODE_COPY_TEX_IMAGE2D ;
 size_t OPCODE_COPY_TEX_SUB_IMAGE1D ;
 size_t OPCODE_COPY_TEX_SUB_IMAGE2D ;
 size_t OPCODE_CULL_FACE ;
 size_t OPCODE_DEPTH_FUNC ;
 size_t OPCODE_DEPTH_MASK ;
 size_t OPCODE_DEPTH_RANGE ;
 size_t OPCODE_DISABLE ;
 size_t OPCODE_DRAW_BUFFER ;
 size_t OPCODE_DRAW_PIXELS ;
 size_t OPCODE_EDGE_FLAG ;
 size_t OPCODE_ENABLE ;
 size_t OPCODE_END ;
 size_t OPCODE_END_OF_LIST ;
 size_t OPCODE_EVALCOORD1 ;
 size_t OPCODE_EVALCOORD2 ;
 size_t OPCODE_EVALMESH1 ;
 size_t OPCODE_EVALMESH2 ;
 size_t OPCODE_EVALPOINT1 ;
 size_t OPCODE_EVALPOINT2 ;
 size_t OPCODE_FOG ;
 size_t OPCODE_FRONT_FACE ;
 size_t OPCODE_FRUSTUM ;
 size_t OPCODE_HINT ;
 size_t OPCODE_INDEX ;
 size_t OPCODE_INDEX_MASK ;
 size_t OPCODE_INIT_NAMES ;
 size_t OPCODE_LIGHT ;
 size_t OPCODE_LIGHT_MODEL ;
 size_t OPCODE_LINE_STIPPLE ;
 size_t OPCODE_LINE_WIDTH ;
 size_t OPCODE_LIST_BASE ;
 size_t OPCODE_LOAD_IDENTITY ;
 size_t OPCODE_LOAD_MATRIX ;
 size_t OPCODE_LOAD_NAME ;
 size_t OPCODE_LOGIC_OP ;
 size_t OPCODE_MAP1 ;
 size_t OPCODE_MAP2 ;
 size_t OPCODE_MAPGRID1 ;
 size_t OPCODE_MAPGRID2 ;
 size_t OPCODE_MATERIAL ;
 size_t OPCODE_MATRIX_MODE ;
 size_t OPCODE_MULT_MATRIX ;
 size_t OPCODE_NORMAL ;
 size_t OPCODE_ORTHO ;
 size_t OPCODE_PASSTHROUGH ;
 size_t OPCODE_PIXEL_MAP ;
 size_t OPCODE_PIXEL_TRANSFER ;
 size_t OPCODE_PIXEL_ZOOM ;
 size_t OPCODE_POINT_SIZE ;
 size_t OPCODE_POLYGON_MODE ;
 size_t OPCODE_POLYGON_OFFSET ;
 size_t OPCODE_POLYGON_STIPPLE ;
 size_t OPCODE_POP_ATTRIB ;
 size_t OPCODE_POP_MATRIX ;
 size_t OPCODE_POP_NAME ;
 size_t OPCODE_PRIORITIZE_TEXTURE ;
 size_t OPCODE_PUSH_ATTRIB ;
 size_t OPCODE_PUSH_MATRIX ;
 size_t OPCODE_PUSH_NAME ;
 size_t OPCODE_RASTER_POS ;
 size_t OPCODE_READ_BUFFER ;
 size_t OPCODE_RECTF ;
 size_t OPCODE_SCALE ;
 size_t OPCODE_SCISSOR ;
 size_t OPCODE_SHADE_MODEL ;
 size_t OPCODE_STENCIL_FUNC ;
 size_t OPCODE_STENCIL_MASK ;
 size_t OPCODE_STENCIL_OP ;
 size_t OPCODE_TEXCOORD2 ;
 size_t OPCODE_TEXCOORD4 ;
 size_t OPCODE_TEXENV ;
 size_t OPCODE_TEXGEN ;
 size_t OPCODE_TEXPARAMETER ;
 size_t OPCODE_TEX_IMAGE1D ;
 size_t OPCODE_TEX_IMAGE2D ;
 size_t OPCODE_TEX_SUB_IMAGE1D ;
 size_t OPCODE_TEX_SUB_IMAGE2D ;
 size_t OPCODE_TRANSLATE ;
 size_t OPCODE_VERTEX2 ;
 size_t OPCODE_VERTEX3 ;
 size_t OPCODE_VERTEX4 ;
 size_t OPCODE_VIEWPORT ;

void gl_init_lists( void )
{
   static int init_flag = 0;

   if (init_flag==0) {
      InstSize[OPCODE_ACCUM] = 3;
      InstSize[OPCODE_ALPHA_FUNC] = 3;
      InstSize[OPCODE_BEGIN] = 2;
      InstSize[OPCODE_BIND_TEXTURE] = 3;
      InstSize[OPCODE_BITMAP] = 8;
      InstSize[OPCODE_BLEND_FUNC] = 3;
      InstSize[OPCODE_CALL_LIST] = 2;
      InstSize[OPCODE_CALL_LIST_OFFSET] = 2;
      InstSize[OPCODE_CLEAR] = 2;
      InstSize[OPCODE_CLEAR_ACCUM] = 5;
      InstSize[OPCODE_CLEAR_COLOR] = 5;
      InstSize[OPCODE_CLEAR_DEPTH] = 2;
      InstSize[OPCODE_CLEAR_INDEX] = 2;
      InstSize[OPCODE_CLEAR_STENCIL] = 2;
      InstSize[OPCODE_CLIP_PLANE] = 6;
      InstSize[OPCODE_COLOR_3F] = 4;
      InstSize[OPCODE_COLOR_4F] = 5;
      InstSize[OPCODE_COLOR_4UB] = 5;
      InstSize[OPCODE_COLOR_MASK] = 5;
      InstSize[OPCODE_COLOR_MATERIAL] = 3;
      InstSize[OPCODE_COLOR_TABLE] = 4;
      InstSize[OPCODE_COLOR_SUB_TABLE] = 4;
      InstSize[OPCODE_COPY_PIXELS] = 6;
      InstSize[OPCODE_COPY_TEX_IMAGE1D] = 8;
      InstSize[OPCODE_COPY_TEX_IMAGE2D] = 9;
      InstSize[OPCODE_COPY_TEX_SUB_IMAGE1D] = 7;
      InstSize[OPCODE_COPY_TEX_SUB_IMAGE2D] = 9;
      InstSize[OPCODE_CULL_FACE] = 2;
      InstSize[OPCODE_DEPTH_FUNC] = 2;
      InstSize[OPCODE_DEPTH_MASK] = 2;
      InstSize[OPCODE_DEPTH_RANGE] = 3;
      InstSize[OPCODE_DISABLE] = 2;
      InstSize[OPCODE_DRAW_BUFFER] = 2;
      InstSize[OPCODE_DRAW_PIXELS] = 6;
      InstSize[OPCODE_ENABLE] = 2;
      InstSize[OPCODE_EDGE_FLAG] = 2;
      InstSize[OPCODE_END] = 1;
      InstSize[OPCODE_EVALCOORD1] = 2;
      InstSize[OPCODE_EVALCOORD2] = 3;
      InstSize[OPCODE_EVALMESH1] = 4;
      InstSize[OPCODE_EVALMESH2] = 6;
      InstSize[OPCODE_EVALPOINT1] = 2;
      InstSize[OPCODE_EVALPOINT2] = 3;
      InstSize[OPCODE_FOG] = 6;
      InstSize[OPCODE_FRONT_FACE] = 2;
      InstSize[OPCODE_FRUSTUM] = 7;
      InstSize[OPCODE_HINT] = 3;
      InstSize[OPCODE_INDEX] = 2;
      InstSize[OPCODE_INDEX_MASK] = 2;
      InstSize[OPCODE_INIT_NAMES] = 1;
      InstSize[OPCODE_LIGHT] = 7;
      InstSize[OPCODE_LIGHT_MODEL] = 6;
      InstSize[OPCODE_LINE_STIPPLE] = 3;
      InstSize[OPCODE_LINE_WIDTH] = 2;
      InstSize[OPCODE_LIST_BASE] = 2;
      InstSize[OPCODE_LOAD_IDENTITY] = 1;
      InstSize[OPCODE_LOAD_MATRIX] = 17;
      InstSize[OPCODE_LOAD_NAME] = 2;
      InstSize[OPCODE_LOGIC_OP] = 2;
      InstSize[OPCODE_MAP1] = 7;
      InstSize[OPCODE_MAP2] = 11;
      InstSize[OPCODE_MAPGRID1] = 4;
      InstSize[OPCODE_MAPGRID2] = 7;
      InstSize[OPCODE_MATERIAL] = 7;
      InstSize[OPCODE_MATRIX_MODE] = 2;
      InstSize[OPCODE_MULT_MATRIX] = 17;
      InstSize[OPCODE_NORMAL] = 4;
      InstSize[OPCODE_ORTHO] = 7;
      InstSize[OPCODE_PASSTHROUGH] = 2;
      InstSize[OPCODE_PIXEL_MAP] = 4;
      InstSize[OPCODE_PIXEL_TRANSFER] = 3;
      InstSize[OPCODE_PIXEL_ZOOM] = 3;
      InstSize[OPCODE_POINT_SIZE] = 2;
      InstSize[OPCODE_POLYGON_MODE] = 3;
      InstSize[OPCODE_POLYGON_STIPPLE] = 2;
      InstSize[OPCODE_POLYGON_OFFSET] = 3;
      InstSize[OPCODE_POP_ATTRIB] = 1;
      InstSize[OPCODE_POP_MATRIX] = 1;
      InstSize[OPCODE_POP_NAME] = 1;
      InstSize[OPCODE_PRIORITIZE_TEXTURE] = 3;
      InstSize[OPCODE_PUSH_ATTRIB] = 2;
      InstSize[OPCODE_PUSH_MATRIX] = 1;
      InstSize[OPCODE_PUSH_NAME] = 2;
      InstSize[OPCODE_RASTER_POS] = 5;
      InstSize[OPCODE_RECTF] = 5;
      InstSize[OPCODE_READ_BUFFER] = 2;
      InstSize[OPCODE_SCALE] = 4;
      InstSize[OPCODE_SCISSOR] = 5;
      InstSize[OPCODE_STENCIL_FUNC] = 4;
      InstSize[OPCODE_STENCIL_MASK] = 2;
      InstSize[OPCODE_STENCIL_OP] = 4;
      InstSize[OPCODE_SHADE_MODEL] = 2;
      InstSize[OPCODE_TEXCOORD2] = 3;
      InstSize[OPCODE_TEXCOORD4] = 5;
      InstSize[OPCODE_TEXENV] = 7;
      InstSize[OPCODE_TEXGEN] = 7;
      InstSize[OPCODE_TEXPARAMETER] = 7;
      InstSize[OPCODE_TEX_IMAGE1D] = 9;
      InstSize[OPCODE_TEX_IMAGE2D] = 10;
      InstSize[OPCODE_TEX_SUB_IMAGE1D] = 8;
      InstSize[OPCODE_TEX_SUB_IMAGE2D] = 10;
      InstSize[OPCODE_TRANSLATE] = 4;
      InstSize[OPCODE_VERTEX2] = 3;
      InstSize[OPCODE_VERTEX3] = 4;
      InstSize[OPCODE_VERTEX4] = 5;
      InstSize[OPCODE_VIEWPORT] = 5;
      InstSize[OPCODE_CONTINUE] = 2;
      InstSize[OPCODE_END_OF_LIST] = 1;
   }
   init_flag = 1;
}
int main() {
  gl_init_lists();
  return 0;
}
