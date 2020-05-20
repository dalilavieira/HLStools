# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnizbarqrcodeisaac.c_isaac_update_with_main.c"
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnizbarqrcodeisaac.c_isaac_update_with_main.c" 1
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
# 1 "extr_.BGAQRCode-Androidzbarsrcmainjnizbarqrcodeisaac.c_isaac_update_with_main.c" 2


typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* m; unsigned int* r; unsigned int a; unsigned int b; unsigned int c; int n; } ;
typedef TYPE_1__ isaac_ctx ;


 unsigned int ISAAC_MASK ;
 int ISAAC_SZ ;
 int ISAAC_SZ_LOG ;

__attribute__((used)) static void isaac_update(volatile isaac_ctx *_ctx){
  unsigned *m;
  unsigned *r;
  unsigned a;
  unsigned b;
  unsigned x;
  unsigned y;
  int i;
  m=_ctx->m;
  r=_ctx->r;
  a=_ctx->a;
  b=_ctx->b+(++_ctx->c)&ISAAC_MASK;
  for(i=0;i<ISAAC_SZ/2;i++){
    x=m[i];
    a=(a^a<<13)+m[i+ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
    x=m[++i];
    a=(a^a>>6)+m[i+ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
    x=m[++i];
    a=(a^a<<2)+m[i+ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
    x=m[++i];
    a=(a^a>>16)+m[i+ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
  }
  for(i=ISAAC_SZ/2;i<ISAAC_SZ;i++){
    x=m[i];
    a=(a^a<<13)+m[i-ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
    x=m[++i];
    a=(a^a>>6)+m[i-ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
    x=m[++i];
    a=(a^a<<2)+m[i-ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
    x=m[++i];
    a=(a^a>>16)+m[i-ISAAC_SZ/2]&ISAAC_MASK;
    m[i]=y=m[(x&ISAAC_SZ-1<<2)>>2]+a+b&ISAAC_MASK;
    r[i]=b=m[y>>ISAAC_SZ_LOG+2&ISAAC_SZ-1]+x&ISAAC_MASK;
  }
  _ctx->b=b;
  _ctx->a=a;
  _ctx->n=ISAAC_SZ;
}
int main() {
  isaac_ctx * _ctx;
  isaac_update(_ctx);
  return 0;
}
