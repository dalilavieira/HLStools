# 1 "extr_.reactosdllopenglmesapointers.c_init_exec_pointers_with_main.c"
# 1 "extr_.reactosdllopenglmesapointers.c_init_exec_pointers_with_main.c" 1
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
# 1 "extr_.reactosdllopenglmesapointers.c_init_exec_pointers_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct gl_api_table {int Viewport; int VertexPointer; int Vertex3fv; int Vertex4f; int Vertex3f; int Vertex2f; int Translatef; int TexParameterfv; int TexSubImage2D; int TexSubImage1D; int TexImage2D; int TexImage1D; int TexGenfv; int TexEnvfv; int TexCoordPointer; int TexCoord4f; int TexCoord2f; int StencilOp; int StencilMask; int StencilFunc; int ShadeModel; int SelectBuffer; int Scissor; int Scalef; int Rotatef; int RenderMode; int Rectf; int ReadPixels; int ReadBuffer; int RasterPos4f; int PushName; int PushMatrix; int PushClientAttrib; int PushAttrib; int PrioritizeTextures; int PopName; int PopMatrix; int PopClientAttrib; int PopAttrib; int PolygonStipple; int PolygonOffset; int PolygonMode; int PointSize; int PixelZoom; int PixelTransferf; int PixelStorei; int PixelMapfv; int PassThrough; int Ortho; int Normal3fv; int NormalPointer; int Normal3f; int NewList; int MultMatrixf; int MatrixMode; int Materialfv; int MapGrid2f; int MapGrid1f; int Map2f; int Map1f; int LogicOp; int LoadName; int LoadMatrixf; int LoadIdentity; int ListBase; int LineWidth; int LineStipple; int Lightfv; int LightModelfv; int IsTexture; int IsList; int IsEnabled; int InterleavedArrays; int InitNames; int IndexPointer; int IndexMask; int Indexi; int Indexf; int Hint; int GetTexParameteriv; int GetTexParameterfv; int GetTexLevelParameteriv; int GetTexLevelParameterfv; int GetTexImage; int GetTexGeniv; int GetTexGenfv; int GetTexGendv; int GetTexEnviv; int GetTexEnvfv; int GetString; int GetPolygonStipple; int GetPixelMapusv; int GetPixelMapuiv; int GetPixelMapfv; int GetMaterialiv; int GetMaterialfv; int GetMapiv; int GetMapfv; int GetMapdv; int GetLightiv; int GetLightfv; int GetPointerv; int GetIntegerv; int GetFloatv; int GetError; int GetDoublev; int GetColorTableParameteriv; int GetColorTable; int GetClipPlane; int GetBooleanv; int GenTextures; int GenLists; int Frustum; int FrontFace; int Fogfv; int Flush; int Finish; int FeedbackBuffer; int EvalPoint2; int EvalPoint1; int EvalMesh2; int EvalMesh1; int EvalCoord2f; int EvalCoord1f; int EndList; int End; int EnableClientState; int Enable; int EdgeFlagPointer; int EdgeFlag; int DrawPixels; int DrawElements; int DrawBuffer; int DrawArrays; int DisableClientState; int Disable; int DepthRange; int DepthMask; int DepthFunc; int DeleteTextures; int DeleteLists; int CullFace; int CopyTexSubImage2D; int CopyTexSubImage1D; int CopyTexImage2D; int CopyTexImage1D; int CopyPixels; int ColorSubTable; int ColorTable; int ColorPointer; int ColorMaterial; int ColorMask; int Color4ubv; int Color4ub; int Color4fv; int Color4f; int Color3fv; int Color3f; int ClipPlane; int ClearStencil; int ClearIndex; int ClearDepth; int ClearColor; int ClearAccum; int Clear; int CallLists; int CallList; int BlendFunc; int Bitmap; int BindTexture; int Begin; int ArrayElement; int AreTexturesResident; int AlphaFunc; int Accum; } ;


 int gl_Accum ;
 int gl_AlphaFunc ;
 int gl_AreTexturesResident ;
 int gl_ArrayElement ;
 int gl_Begin ;
 int gl_BindTexture ;
 int gl_Bitmap ;
 int gl_BlendFunc ;
 int gl_CallList ;
 int gl_CallLists ;
 int gl_Clear ;
 int gl_ClearAccum ;
 int gl_ClearColor ;
 int gl_ClearDepth ;
 int gl_ClearIndex ;
 int gl_ClearStencil ;
 int gl_ClipPlane ;
 int gl_Color3f ;
 int gl_Color3fv ;
 int gl_Color4f ;
 int gl_Color4fv ;
 int gl_Color4ub ;
 int gl_Color4ubv ;
 int gl_ColorMask ;
 int gl_ColorMaterial ;
 int gl_ColorPointer ;
 int gl_ColorSubTable ;
 int gl_ColorTable ;
 int gl_CopyPixels ;
 int gl_CopyTexImage1D ;
 int gl_CopyTexImage2D ;
 int gl_CopyTexSubImage1D ;
 int gl_CopyTexSubImage2D ;
 int gl_CullFace ;
 int gl_DeleteLists ;
 int gl_DeleteTextures ;
 int gl_DepthFunc ;
 int gl_DepthMask ;
 int gl_DepthRange ;
 int gl_Disable ;
 int gl_DisableClientState ;
 int gl_DrawArrays ;
 int gl_DrawBuffer ;
 int gl_DrawElements ;
 int gl_DrawPixels ;
 int gl_EdgeFlag ;
 int gl_EdgeFlagPointer ;
 int gl_Enable ;
 int gl_EnableClientState ;
 int gl_End ;
 int gl_EndList ;
 int gl_EvalCoord1f ;
 int gl_EvalCoord2f ;
 int gl_EvalMesh1 ;
 int gl_EvalMesh2 ;
 int gl_EvalPoint1 ;
 int gl_EvalPoint2 ;
 int gl_FeedbackBuffer ;
 int gl_Finish ;
 int gl_Flush ;
 int gl_Fogfv ;
 int gl_FrontFace ;
 int gl_Frustum ;
 int gl_GenLists ;
 int gl_GenTextures ;
 int gl_GetBooleanv ;
 int gl_GetClipPlane ;
 int gl_GetColorTable ;
 int gl_GetColorTableParameteriv ;
 int gl_GetDoublev ;
 int gl_GetError ;
 int gl_GetFloatv ;
 int gl_GetIntegerv ;
 int gl_GetLightfv ;
 int gl_GetLightiv ;
 int gl_GetMapdv ;
 int gl_GetMapfv ;
 int gl_GetMapiv ;
 int gl_GetMaterialfv ;
 int gl_GetMaterialiv ;
 int gl_GetPixelMapfv ;
 int gl_GetPixelMapuiv ;
 int gl_GetPixelMapusv ;
 int gl_GetPointerv ;
 int gl_GetPolygonStipple ;
 int gl_GetString ;
 int gl_GetTexEnvfv ;
 int gl_GetTexEnviv ;
 int gl_GetTexGendv ;
 int gl_GetTexGenfv ;
 int gl_GetTexGeniv ;
 int gl_GetTexImage ;
 int gl_GetTexLevelParameterfv ;
 int gl_GetTexLevelParameteriv ;
 int gl_GetTexParameterfv ;
 int gl_GetTexParameteriv ;
 int gl_Hint ;
 int gl_IndexMask ;
 int gl_IndexPointer ;
 int gl_Indexf ;
 int gl_Indexi ;
 int gl_InitNames ;
 int gl_InterleavedArrays ;
 int gl_IsEnabled ;
 int gl_IsList ;
 int gl_IsTexture ;
 int gl_LightModelfv ;
 int gl_Lightfv ;
 int gl_LineStipple ;
 int gl_LineWidth ;
 int gl_ListBase ;
 int gl_LoadIdentity ;
 int gl_LoadMatrixf ;
 int gl_LoadName ;
 int gl_LogicOp ;
 int gl_Map1f ;
 int gl_Map2f ;
 int gl_MapGrid1f ;
 int gl_MapGrid2f ;
 int gl_Materialfv ;
 int gl_MatrixMode ;
 int gl_MultMatrixf ;
 int gl_NewList ;
 int gl_Normal3f ;
 int gl_Normal3fv ;
 int gl_NormalPointer ;
 int gl_Ortho ;
 int gl_PassThrough ;
 int gl_PixelMapfv ;
 int gl_PixelStorei ;
 int gl_PixelTransferf ;
 int gl_PixelZoom ;
 int gl_PointSize ;
 int gl_PolygonMode ;
 int gl_PolygonOffset ;
 int gl_PolygonStipple ;
 int gl_PopAttrib ;
 int gl_PopClientAttrib ;
 int gl_PopMatrix ;
 int gl_PopName ;
 int gl_PrioritizeTextures ;
 int gl_PushAttrib ;
 int gl_PushClientAttrib ;
 int gl_PushMatrix ;
 int gl_PushName ;
 int gl_RasterPos4f ;
 int gl_ReadBuffer ;
 int gl_ReadPixels ;
 int gl_Rectf ;
 int gl_RenderMode ;
 int gl_Rotatef ;
 int gl_Scalef ;
 int gl_Scissor ;
 int gl_SelectBuffer ;
 int gl_ShadeModel ;
 int gl_StencilFunc ;
 int gl_StencilMask ;
 int gl_StencilOp ;
 int gl_TexCoord2f ;
 int gl_TexCoord4f ;
 int gl_TexCoordPointer ;
 int gl_TexEnvfv ;
 int gl_TexGenfv ;
 int gl_TexImage1D ;
 int gl_TexImage2D ;
 int gl_TexParameterfv ;
 int gl_TexSubImage1D ;
 int gl_TexSubImage2D ;
 int gl_Translatef ;
 int gl_VertexPointer ;
 int gl_Viewport ;
 int gl_vertex2f_nop ;
 int gl_vertex3f_nop ;
 int gl_vertex3fv_nop ;
 int gl_vertex4f_nop ;

void init_exec_pointers( struct gl_api_table *table )
{
   table->Accum = gl_Accum;
   table->AlphaFunc = gl_AlphaFunc;
   table->AreTexturesResident = gl_AreTexturesResident;
   table->ArrayElement = gl_ArrayElement;
   table->Begin = gl_Begin;
   table->BindTexture = gl_BindTexture;
   table->Bitmap = gl_Bitmap;
   table->BlendFunc = gl_BlendFunc;
   table->CallList = gl_CallList;
   table->CallLists = gl_CallLists;
   table->Clear = gl_Clear;
   table->ClearAccum = gl_ClearAccum;
   table->ClearColor = gl_ClearColor;
   table->ClearDepth = gl_ClearDepth;
   table->ClearIndex = gl_ClearIndex;
   table->ClearStencil = gl_ClearStencil;
   table->ClipPlane = gl_ClipPlane;
   table->Color3f = gl_Color3f;
   table->Color3fv = gl_Color3fv;
   table->Color4f = gl_Color4f;
   table->Color4fv = gl_Color4fv;
   table->Color4ub = gl_Color4ub;
   table->Color4ubv = gl_Color4ubv;
   table->ColorMask = gl_ColorMask;
   table->ColorMaterial = gl_ColorMaterial;
   table->ColorPointer = gl_ColorPointer;
   table->ColorTable = gl_ColorTable;
   table->ColorSubTable = gl_ColorSubTable;
   table->CopyPixels = gl_CopyPixels;
   table->CopyTexImage1D = gl_CopyTexImage1D;
   table->CopyTexImage2D = gl_CopyTexImage2D;
   table->CopyTexSubImage1D = gl_CopyTexSubImage1D;
   table->CopyTexSubImage2D = gl_CopyTexSubImage2D;
   table->CullFace = gl_CullFace;
   table->DeleteLists = gl_DeleteLists;
   table->DeleteTextures = gl_DeleteTextures;
   table->DepthFunc = gl_DepthFunc;
   table->DepthMask = gl_DepthMask;
   table->DepthRange = gl_DepthRange;
   table->Disable = gl_Disable;
   table->DisableClientState = gl_DisableClientState;
   table->DrawArrays = gl_DrawArrays;
   table->DrawBuffer = gl_DrawBuffer;
   table->DrawElements = gl_DrawElements;
   table->DrawPixels = gl_DrawPixels;
   table->EdgeFlag = gl_EdgeFlag;
   table->EdgeFlagPointer = gl_EdgeFlagPointer;
   table->Enable = gl_Enable;
   table->EnableClientState = gl_EnableClientState;
   table->End = gl_End;
   table->EndList = gl_EndList;
   table->EvalCoord1f = gl_EvalCoord1f;
   table->EvalCoord2f = gl_EvalCoord2f;
   table->EvalMesh1 = gl_EvalMesh1;
   table->EvalMesh2 = gl_EvalMesh2;
   table->EvalPoint1 = gl_EvalPoint1;
   table->EvalPoint2 = gl_EvalPoint2;
   table->FeedbackBuffer = gl_FeedbackBuffer;
   table->Finish = gl_Finish;
   table->Flush = gl_Flush;
   table->Fogfv = gl_Fogfv;
   table->FrontFace = gl_FrontFace;
   table->Frustum = gl_Frustum;
   table->GenLists = gl_GenLists;
   table->GenTextures = gl_GenTextures;
   table->GetBooleanv = gl_GetBooleanv;
   table->GetClipPlane = gl_GetClipPlane;
   table->GetColorTable = gl_GetColorTable;
   table->GetColorTableParameteriv = gl_GetColorTableParameteriv;
   table->GetDoublev = gl_GetDoublev;
   table->GetError = gl_GetError;
   table->GetFloatv = gl_GetFloatv;
   table->GetIntegerv = gl_GetIntegerv;
   table->GetPointerv = gl_GetPointerv;
   table->GetLightfv = gl_GetLightfv;
   table->GetLightiv = gl_GetLightiv;
   table->GetMapdv = gl_GetMapdv;
   table->GetMapfv = gl_GetMapfv;
   table->GetMapiv = gl_GetMapiv;
   table->GetMaterialfv = gl_GetMaterialfv;
   table->GetMaterialiv = gl_GetMaterialiv;
   table->GetPixelMapfv = gl_GetPixelMapfv;
   table->GetPixelMapuiv = gl_GetPixelMapuiv;
   table->GetPixelMapusv = gl_GetPixelMapusv;
   table->GetPolygonStipple = gl_GetPolygonStipple;
   table->GetString = gl_GetString;
   table->GetTexEnvfv = gl_GetTexEnvfv;
   table->GetTexEnviv = gl_GetTexEnviv;
   table->GetTexGendv = gl_GetTexGendv;
   table->GetTexGenfv = gl_GetTexGenfv;
   table->GetTexGeniv = gl_GetTexGeniv;
   table->GetTexImage = gl_GetTexImage;
   table->GetTexLevelParameterfv = gl_GetTexLevelParameterfv;
   table->GetTexLevelParameteriv = gl_GetTexLevelParameteriv;
   table->GetTexParameterfv = gl_GetTexParameterfv;
   table->GetTexParameteriv = gl_GetTexParameteriv;
   table->Hint = gl_Hint;
   table->Indexf = gl_Indexf;
   table->Indexi = gl_Indexi;
   table->IndexMask = gl_IndexMask;
   table->IndexPointer = gl_IndexPointer;
   table->InitNames = gl_InitNames;
   table->InterleavedArrays = gl_InterleavedArrays;
   table->IsEnabled = gl_IsEnabled;
   table->IsList = gl_IsList;
   table->IsTexture = gl_IsTexture;
   table->LightModelfv = gl_LightModelfv;
   table->Lightfv = gl_Lightfv;
   table->LineStipple = gl_LineStipple;
   table->LineWidth = gl_LineWidth;
   table->ListBase = gl_ListBase;
   table->LoadIdentity = gl_LoadIdentity;
   table->LoadMatrixf = gl_LoadMatrixf;
   table->LoadName = gl_LoadName;
   table->LogicOp = gl_LogicOp;
   table->Map1f = gl_Map1f;
   table->Map2f = gl_Map2f;
   table->MapGrid1f = gl_MapGrid1f;
   table->MapGrid2f = gl_MapGrid2f;
   table->Materialfv = gl_Materialfv;
   table->MatrixMode = gl_MatrixMode;
   table->MultMatrixf = gl_MultMatrixf;
   table->NewList = gl_NewList;
   table->Normal3f = gl_Normal3f;
   table->NormalPointer = gl_NormalPointer;
   table->Normal3fv = gl_Normal3fv;
   table->Ortho = gl_Ortho;
   table->PassThrough = gl_PassThrough;
   table->PixelMapfv = gl_PixelMapfv;
   table->PixelStorei = gl_PixelStorei;
   table->PixelTransferf = gl_PixelTransferf;
   table->PixelZoom = gl_PixelZoom;
   table->PointSize = gl_PointSize;
   table->PolygonMode = gl_PolygonMode;
   table->PolygonOffset = gl_PolygonOffset;
   table->PolygonStipple = gl_PolygonStipple;
   table->PopAttrib = gl_PopAttrib;
   table->PopClientAttrib = gl_PopClientAttrib;
   table->PopMatrix = gl_PopMatrix;
   table->PopName = gl_PopName;
   table->PrioritizeTextures = gl_PrioritizeTextures;
   table->PushAttrib = gl_PushAttrib;
   table->PushClientAttrib = gl_PushClientAttrib;
   table->PushMatrix = gl_PushMatrix;
   table->PushName = gl_PushName;
   table->RasterPos4f = gl_RasterPos4f;
   table->ReadBuffer = gl_ReadBuffer;
   table->ReadPixels = gl_ReadPixels;
   table->Rectf = gl_Rectf;
   table->RenderMode = gl_RenderMode;
   table->Rotatef = gl_Rotatef;
   table->Scalef = gl_Scalef;
   table->Scissor = gl_Scissor;
   table->SelectBuffer = gl_SelectBuffer;
   table->ShadeModel = gl_ShadeModel;
   table->StencilFunc = gl_StencilFunc;
   table->StencilMask = gl_StencilMask;
   table->StencilOp = gl_StencilOp;
   table->TexCoord2f = gl_TexCoord2f;
   table->TexCoord4f = gl_TexCoord4f;
   table->TexCoordPointer = gl_TexCoordPointer;
   table->TexEnvfv = gl_TexEnvfv;
   table->TexGenfv = gl_TexGenfv;
   table->TexImage1D = gl_TexImage1D;
   table->TexImage2D = gl_TexImage2D;
   table->TexSubImage1D = gl_TexSubImage1D;
   table->TexSubImage2D = gl_TexSubImage2D;
   table->TexParameterfv = gl_TexParameterfv;
   table->Translatef = gl_Translatef;
   table->Vertex2f = gl_vertex2f_nop;
   table->Vertex3f = gl_vertex3f_nop;
   table->Vertex4f = gl_vertex4f_nop;
   table->Vertex3fv = gl_vertex3fv_nop;
   table->VertexPointer = gl_VertexPointer;
   table->Viewport = gl_Viewport;
}
int main() {
  struct gl_api_table * table;
  init_exec_pointers(table);
  return 0;
}
