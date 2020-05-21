# 1 "extr_.reactosdllopenglmesapointers.c_init_dlist_pointers_with_main.c"
# 1 "extr_.reactosdllopenglmesapointers.c_init_dlist_pointers_with_main.c" 1
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
# 1 "extr_.reactosdllopenglmesapointers.c_init_dlist_pointers_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






struct gl_api_table {int Viewport; int VertexPointer; int Vertex3fv; int Vertex4f; int Vertex3f; int Vertex2f; int Translatef; int TexParameterfv; int TexSubImage2D; int TexSubImage1D; int TexImage2D; int TexImage1D; int TexGenfv; int TexEnvfv; int TexCoordPointer; int TexCoord4f; int TexCoord2f; int StencilOp; int StencilMask; int StencilFunc; int ShadeModel; int SelectBuffer; int Scissor; int Scalef; int Rotatef; int RenderMode; int Rectf; int ReadPixels; int ReadBuffer; int RasterPos4f; int PushName; int PushMatrix; int PushClientAttrib; int PushAttrib; int PrioritizeTextures; int PopName; int PopMatrix; int PopClientAttrib; int PopAttrib; int PolygonStipple; int PolygonOffset; int PolygonMode; int PointSize; int PixelZoom; int PixelTransferf; int PixelStorei; int PixelMapfv; int PassThrough; int Ortho; int NormalPointer; int Normal3fv; int Normal3f; int NewList; int MultMatrixf; int MatrixMode; int Materialfv; int MapGrid2f; int MapGrid1f; int Map2f; int Map1f; int LogicOp; int LoadName; int LoadMatrixf; int LoadIdentity; int ListBase; int LineWidth; int LineStipple; int Lightfv; int LightModelfv; int IsList; int IsTexture; int IsEnabled; int InterleavedArrays; int InitNames; int IndexPointer; int Indexi; int Indexf; int IndexMask; int Hint; int GetTexParameteriv; int GetTexParameterfv; int GetTexLevelParameteriv; int GetTexLevelParameterfv; int GetTexImage; int GetTexGeniv; int GetTexGenfv; int GetTexGendv; int GetTexEnviv; int GetTexEnvfv; int GetPolygonStipple; int GetPointerv; int GetPixelMapusv; int GetPixelMapuiv; int GetPixelMapfv; int GetMaterialiv; int GetMaterialfv; int GetMapiv; int GetMapfv; int GetMapdv; int GetLightiv; int GetLightfv; int GetString; int GetIntegerv; int GetFloatv; int GetError; int GetDoublev; int GetColorTableParameteriv; int GetColorTable; int GetClipPlane; int GetBooleanv; int GenTextures; int GenLists; int Frustum; int FrontFace; int Fogfv; int Flush; int Finish; int FeedbackBuffer; int EvalPoint2; int EvalPoint1; int EvalMesh2; int EvalMesh1; int EvalCoord2f; int EvalCoord1f; int EndList; int End; int EnableClientState; int Enable; int EdgeFlagPointer; int EdgeFlag; int DrawPixels; int DrawElements; int DrawBuffer; int DrawArrays; int DisableClientState; int Disable; int DepthRange; int DepthMask; int DepthFunc; int DeleteTextures; int DeleteLists; int CullFace; int CopyTexSubImage2D; int CopyTexSubImage1D; int CopyTexImage2D; int CopyTexImage1D; int CopyPixels; int ColorSubTable; int ColorTable; int ColorPointer; int ColorMaterial; int ColorMask; int Color4ubv; int Color4ub; int Color4fv; int Color4f; int Color3fv; int Color3f; int ClipPlane; int ClearStencil; int ClearIndex; int ClearDepth; int ClearColor; int ClearAccum; int Clear; int CallLists; int CallList; int BlendFunc; int Bitmap; int BindTexture; int Begin; int ArrayElement; int AreTexturesResident; int AlphaFunc; int Accum; } ;


 int gl_AreTexturesResident ;
 int gl_ColorPointer ;
 int gl_DeleteLists ;
 int gl_DeleteTextures ;
 int gl_DisableClientState ;
 int gl_DrawPixels ;
 int gl_EdgeFlagPointer ;
 int gl_EnableClientState ;
 int gl_EndList ;
 int gl_FeedbackBuffer ;
 int gl_Finish ;
 int gl_Flush ;
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
 int gl_IndexPointer ;
 int gl_IsEnabled ;
 int gl_IsList ;
 int gl_IsTexture ;
 int gl_NormalPointer ;
 int gl_PixelStorei ;
 int gl_PopClientAttrib ;
 int gl_PushClientAttrib ;
 int gl_ReadPixels ;
 int gl_RenderMode ;
 int gl_SelectBuffer ;
 int gl_TexCoordPointer ;
 int gl_VertexPointer ;
 int gl_save_Accum ;
 int gl_save_AlphaFunc ;
 int gl_save_ArrayElement ;
 int gl_save_Begin ;
 int gl_save_BindTexture ;
 int gl_save_Bitmap ;
 int gl_save_BlendFunc ;
 int gl_save_CallList ;
 int gl_save_CallLists ;
 int gl_save_Clear ;
 int gl_save_ClearAccum ;
 int gl_save_ClearColor ;
 int gl_save_ClearDepth ;
 int gl_save_ClearIndex ;
 int gl_save_ClearStencil ;
 int gl_save_ClipPlane ;
 int gl_save_Color3f ;
 int gl_save_Color3fv ;
 int gl_save_Color4f ;
 int gl_save_Color4fv ;
 int gl_save_Color4ub ;
 int gl_save_Color4ubv ;
 int gl_save_ColorMask ;
 int gl_save_ColorMaterial ;
 int gl_save_ColorSubTable ;
 int gl_save_ColorTable ;
 int gl_save_CopyPixels ;
 int gl_save_CopyTexImage1D ;
 int gl_save_CopyTexImage2D ;
 int gl_save_CopyTexSubImage1D ;
 int gl_save_CopyTexSubImage2D ;
 int gl_save_CullFace ;
 int gl_save_DepthFunc ;
 int gl_save_DepthMask ;
 int gl_save_DepthRange ;
 int gl_save_Disable ;
 int gl_save_DrawArrays ;
 int gl_save_DrawBuffer ;
 int gl_save_DrawElements ;
 int gl_save_EdgeFlag ;
 int gl_save_Enable ;
 int gl_save_End ;
 int gl_save_EvalCoord1f ;
 int gl_save_EvalCoord2f ;
 int gl_save_EvalMesh1 ;
 int gl_save_EvalMesh2 ;
 int gl_save_EvalPoint1 ;
 int gl_save_EvalPoint2 ;
 int gl_save_Fogfv ;
 int gl_save_FrontFace ;
 int gl_save_Frustum ;
 int gl_save_Hint ;
 int gl_save_IndexMask ;
 int gl_save_Indexf ;
 int gl_save_Indexi ;
 int gl_save_InitNames ;
 int gl_save_InterleavedArrays ;
 int gl_save_LightModelfv ;
 int gl_save_Lightfv ;
 int gl_save_LineStipple ;
 int gl_save_LineWidth ;
 int gl_save_ListBase ;
 int gl_save_LoadIdentity ;
 int gl_save_LoadMatrixf ;
 int gl_save_LoadName ;
 int gl_save_LogicOp ;
 int gl_save_Map1f ;
 int gl_save_Map2f ;
 int gl_save_MapGrid1f ;
 int gl_save_MapGrid2f ;
 int gl_save_Materialfv ;
 int gl_save_MatrixMode ;
 int gl_save_MultMatrixf ;
 int gl_save_NewList ;
 int gl_save_Normal3f ;
 int gl_save_Normal3fv ;
 int gl_save_Ortho ;
 int gl_save_PassThrough ;
 int gl_save_PixelMapfv ;
 int gl_save_PixelTransferf ;
 int gl_save_PixelZoom ;
 int gl_save_PointSize ;
 int gl_save_PolygonMode ;
 int gl_save_PolygonOffset ;
 int gl_save_PolygonStipple ;
 int gl_save_PopAttrib ;
 int gl_save_PopMatrix ;
 int gl_save_PopName ;
 int gl_save_PrioritizeTextures ;
 int gl_save_PushAttrib ;
 int gl_save_PushMatrix ;
 int gl_save_PushName ;
 int gl_save_RasterPos4f ;
 int gl_save_ReadBuffer ;
 int gl_save_Rectf ;
 int gl_save_Rotatef ;
 int gl_save_Scalef ;
 int gl_save_Scissor ;
 int gl_save_ShadeModel ;
 int gl_save_StencilFunc ;
 int gl_save_StencilMask ;
 int gl_save_StencilOp ;
 int gl_save_TexCoord2f ;
 int gl_save_TexCoord4f ;
 int gl_save_TexEnvfv ;
 int gl_save_TexGenfv ;
 int gl_save_TexImage1D ;
 int gl_save_TexImage2D ;
 int gl_save_TexParameterfv ;
 int gl_save_TexSubImage1D ;
 int gl_save_TexSubImage2D ;
 int gl_save_Translatef ;
 int gl_save_Vertex2f ;
 int gl_save_Vertex3f ;
 int gl_save_Vertex3fv ;
 int gl_save_Vertex4f ;
 int gl_save_Viewport ;

__attribute__((used)) static void init_dlist_pointers( struct gl_api_table *table )
{
   table->Accum = gl_save_Accum;
   table->AlphaFunc = gl_save_AlphaFunc;
   table->AreTexturesResident = gl_AreTexturesResident;
   table->ArrayElement = gl_save_ArrayElement;
   table->Begin = gl_save_Begin;
   table->BindTexture = gl_save_BindTexture;
   table->Bitmap = gl_save_Bitmap;
   table->BlendFunc = gl_save_BlendFunc;
   table->CallList = gl_save_CallList;
   table->CallLists = gl_save_CallLists;
   table->Clear = gl_save_Clear;
   table->ClearAccum = gl_save_ClearAccum;
   table->ClearColor = gl_save_ClearColor;
   table->ClearDepth = gl_save_ClearDepth;
   table->ClearIndex = gl_save_ClearIndex;
   table->ClearStencil = gl_save_ClearStencil;
   table->ClipPlane = gl_save_ClipPlane;
   table->Color3f = gl_save_Color3f;
   table->Color3fv = gl_save_Color3fv;
   table->Color4f = gl_save_Color4f;
   table->Color4fv = gl_save_Color4fv;
   table->Color4ub = gl_save_Color4ub;
   table->Color4ubv = gl_save_Color4ubv;
   table->ColorMask = gl_save_ColorMask;
   table->ColorMaterial = gl_save_ColorMaterial;
   table->ColorPointer = gl_ColorPointer;
   table->ColorTable = gl_save_ColorTable;
   table->ColorSubTable = gl_save_ColorSubTable;
   table->CopyPixels = gl_save_CopyPixels;
   table->CopyTexImage1D = gl_save_CopyTexImage1D;
   table->CopyTexImage2D = gl_save_CopyTexImage2D;
   table->CopyTexSubImage1D = gl_save_CopyTexSubImage1D;
   table->CopyTexSubImage2D = gl_save_CopyTexSubImage2D;
   table->CullFace = gl_save_CullFace;
   table->DeleteLists = gl_DeleteLists;
   table->DeleteTextures = gl_DeleteTextures;
   table->DepthFunc = gl_save_DepthFunc;
   table->DepthMask = gl_save_DepthMask;
   table->DepthRange = gl_save_DepthRange;
   table->Disable = gl_save_Disable;
   table->DisableClientState = gl_DisableClientState;
   table->DrawArrays = gl_save_DrawArrays;
   table->DrawBuffer = gl_save_DrawBuffer;
   table->DrawElements = gl_save_DrawElements;
   table->DrawPixels = gl_DrawPixels;
   table->EdgeFlag = gl_save_EdgeFlag;
   table->EdgeFlagPointer = gl_EdgeFlagPointer;
   table->Enable = gl_save_Enable;
   table->EnableClientState = gl_EnableClientState;
   table->End = gl_save_End;
   table->EndList = gl_EndList;
   table->EvalCoord1f = gl_save_EvalCoord1f;
   table->EvalCoord2f = gl_save_EvalCoord2f;
   table->EvalMesh1 = gl_save_EvalMesh1;
   table->EvalMesh2 = gl_save_EvalMesh2;
   table->EvalPoint1 = gl_save_EvalPoint1;
   table->EvalPoint2 = gl_save_EvalPoint2;
   table->FeedbackBuffer = gl_FeedbackBuffer;
   table->Finish = gl_Finish;
   table->Flush = gl_Flush;
   table->Fogfv = gl_save_Fogfv;
   table->FrontFace = gl_save_FrontFace;
   table->Frustum = gl_save_Frustum;
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
   table->GetString = gl_GetString;
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
   table->GetPointerv = gl_GetPointerv;
   table->GetPolygonStipple = gl_GetPolygonStipple;
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

   table->Hint = gl_save_Hint;
   table->IndexMask = gl_save_IndexMask;
   table->Indexf = gl_save_Indexf;
   table->Indexi = gl_save_Indexi;
   table->IndexPointer = gl_IndexPointer;
   table->InitNames = gl_save_InitNames;
   table->InterleavedArrays = gl_save_InterleavedArrays;
   table->IsEnabled = gl_IsEnabled;
   table->IsTexture = gl_IsTexture;
   table->IsList = gl_IsList;
   table->LightModelfv = gl_save_LightModelfv;
   table->Lightfv = gl_save_Lightfv;
   table->LineStipple = gl_save_LineStipple;
   table->LineWidth = gl_save_LineWidth;
   table->ListBase = gl_save_ListBase;
   table->LoadIdentity = gl_save_LoadIdentity;
   table->LoadMatrixf = gl_save_LoadMatrixf;
   table->LoadName = gl_save_LoadName;
   table->LogicOp = gl_save_LogicOp;
   table->Map1f = gl_save_Map1f;
   table->Map2f = gl_save_Map2f;
   table->MapGrid1f = gl_save_MapGrid1f;
   table->MapGrid2f = gl_save_MapGrid2f;
   table->Materialfv = gl_save_Materialfv;
   table->MatrixMode = gl_save_MatrixMode;
   table->MultMatrixf = gl_save_MultMatrixf;
   table->NewList = gl_save_NewList;
   table->Normal3f = gl_save_Normal3f;
   table->Normal3fv = gl_save_Normal3fv;
   table->NormalPointer = gl_NormalPointer;
   table->Ortho = gl_save_Ortho;
   table->PassThrough = gl_save_PassThrough;
   table->PixelMapfv = gl_save_PixelMapfv;
   table->PixelStorei = gl_PixelStorei;
   table->PixelTransferf = gl_save_PixelTransferf;
   table->PixelZoom = gl_save_PixelZoom;
   table->PointSize = gl_save_PointSize;
   table->PolygonMode = gl_save_PolygonMode;
   table->PolygonOffset = gl_save_PolygonOffset;
   table->PolygonStipple = gl_save_PolygonStipple;
   table->PopAttrib = gl_save_PopAttrib;
   table->PopClientAttrib = gl_PopClientAttrib;
   table->PopMatrix = gl_save_PopMatrix;
   table->PopName = gl_save_PopName;
   table->PrioritizeTextures = gl_save_PrioritizeTextures;
   table->PushAttrib = gl_save_PushAttrib;
   table->PushClientAttrib = gl_PushClientAttrib;
   table->PushMatrix = gl_save_PushMatrix;
   table->PushName = gl_save_PushName;
   table->RasterPos4f = gl_save_RasterPos4f;
   table->ReadBuffer = gl_save_ReadBuffer;
   table->ReadPixels = gl_ReadPixels;
   table->Rectf = gl_save_Rectf;
   table->RenderMode = gl_RenderMode;
   table->Rotatef = gl_save_Rotatef;
   table->Scalef = gl_save_Scalef;
   table->Scissor = gl_save_Scissor;
   table->SelectBuffer = gl_SelectBuffer;
   table->ShadeModel = gl_save_ShadeModel;
   table->StencilFunc = gl_save_StencilFunc;
   table->StencilMask = gl_save_StencilMask;
   table->StencilOp = gl_save_StencilOp;
   table->TexCoord2f = gl_save_TexCoord2f;
   table->TexCoord4f = gl_save_TexCoord4f;
   table->TexCoordPointer = gl_TexCoordPointer;
   table->TexEnvfv = gl_save_TexEnvfv;
   table->TexGenfv = gl_save_TexGenfv;
   table->TexImage1D = gl_save_TexImage1D;
   table->TexImage2D = gl_save_TexImage2D;
   table->TexSubImage1D = gl_save_TexSubImage1D;
   table->TexSubImage2D = gl_save_TexSubImage2D;
   table->TexParameterfv = gl_save_TexParameterfv;
   table->Translatef = gl_save_Translatef;
   table->Vertex2f = gl_save_Vertex2f;
   table->Vertex3f = gl_save_Vertex3f;
   table->Vertex4f = gl_save_Vertex4f;
   table->Vertex3fv = gl_save_Vertex3fv;
   table->VertexPointer = gl_VertexPointer;
   table->Viewport = gl_save_Viewport;
}
int main() {
  struct gl_api_table * table;
  init_dlist_pointers(table);
  return 0;
}
