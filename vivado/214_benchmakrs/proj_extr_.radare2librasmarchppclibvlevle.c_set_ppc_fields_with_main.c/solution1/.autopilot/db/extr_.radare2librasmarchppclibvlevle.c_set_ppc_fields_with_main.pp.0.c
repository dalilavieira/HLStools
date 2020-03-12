# 1 "extr_.radare2librasmarchppclibvlevle.c_set_ppc_fields_with_main.c"
# 1 "extr_.radare2librasmarchppclibvlevle.c_set_ppc_fields_with_main.c" 1
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
# 1 "extr_.radare2librasmarchppclibvlevle.c_set_ppc_fields_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int n; TYPE_1__* fields; } ;
typedef TYPE_2__ vle_t ;
typedef int ut32 ;
struct TYPE_8__ {int type; int * types; } ;
typedef TYPE_3__ ppc_t ;
struct TYPE_6__ {int value; int type; } ;
# 39 "extr_.radare2librasmarchppclibvlevle.c_set_ppc_fields_with_main.c"
 int TYPE_NONE ;

__attribute__((used)) static void set_ppc_fields(vle_t * v, const ppc_t* p, ut32 data) {
 if (!v) {
  return;
 }
 switch (p->type) {
  case 133:
  case 130:
  case 137:
  {
   v->n = 0;
   if (p->types[0] != TYPE_NONE) {
    v->fields[0].value = (data & 0x3E00000) >> 21;
    v->fields[0].type = p->types[0];
    v->n++;
   }
   if (p->types[1] != TYPE_NONE) {
    v->fields[1].value = (data & 0x1F0000) >> 16;
    v->fields[1].type = p->types[1];
    v->n++;
   }
   if (p->types[2] != TYPE_NONE) {
    v->fields[2].value = (data & 0xF800) >> 11;
    v->fields[2].type = p->types[2];
    v->n++;
   }
  }
   break;
  case 128:
  {
   v->n = 1;
   v->fields[0].value = (data & 0x8000) >> 15;
   v->fields[0].type = p->types[0];
  }
   break;
  case 129:
  {
   v->n = 3;
   v->fields[1].value = (data & 0x3E00000) >> 21;
   v->fields[1].type = p->types[0];
   v->fields[0].value = (data & 0x1F0000) >> 16;
   v->fields[0].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 141:
  {
   v->n = 3;
   v->fields[0].value = (data & 0x3800000) >> 23;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 140:
  {
   v->n = 3;
   v->fields[0].value = (data & 0x0E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 139:
  {
   v->n = 3;
   v->fields[0].value = (data & 0x1E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
  }
   break;
  case 138:
  {
   v->n = 1;
   v->fields[0].value = (data & 0xE00000) >> 21;
   v->fields[0].type = p->types[0];
  }
   break;
  case 136:
  {
   v->n = 2;
   v->fields[0].value = (data & 0x3E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
  }
   break;
  case 142:
  {
   v->n = 4;
   v->fields[0].value = (data & 0x1E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1F0000) >> 16;
   v->fields[1].type = p->types[1];
   v->fields[2].value = (data & 0xF800) >> 11;
   v->fields[2].type = p->types[2];
   v->fields[3].value = (data & 0x7C0) >> 6;
   v->fields[3].type = p->types[3];
  }
   break;
  case 131:
  {
   v->n = 1;
   v->fields[0].value = (data & 0x3E00000) >> 21;
   v->fields[0].type = p->types[0];
  }
   break;
  case 132:
  {
   v->n = 1;
   v->fields[0].value = (data & 0x3800000) >> 23;
   v->fields[0].type = p->types[0];
  }
   break;
  case 135:
  {
   v->n = 2;
   v->fields[0].value = (data & 0x1E00000) >> 21;
   v->fields[0].type = p->types[0];
   v->fields[1].value = (data & 0x1FF800) >> 11;
   v->fields[1].type = p->types[1];
   break;
  }
  case 134:
  {
   v->n = 2;

   v->fields[1].value = (data & 0x1E00000) >> 21;
   v->fields[1].type = p->types[1];
   v->fields[0].value = (data & 0x1FF800) >> 11;
   v->fields[0].type = p->types[0];
  }
   break;
  case 143:
  default:
   v->n = 0;
   break;
 }
}
int main() {
  vle_t * v;
  const ppc_t * p;
  ut32 data;
  set_ppc_fields(v, p, data);
  return 0;
}
