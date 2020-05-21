# 1 "extr_.radare2libranalarchhexagonhexagon_anal.c_hexagon_anal_instruction_with_main.c"
# 1 "extr_.radare2libranalarchhexagonhexagon_anal.c_hexagon_anal_instruction_with_main.c" 1
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
# 1 "extr_.radare2libranalarchhexagonhexagon_anal.c_hexagon_anal_instruction_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int instruction; TYPE_2__* ops; } ;
struct TYPE_9__ {int jump; int addr; int fail; int size; void* type; } ;
struct TYPE_7__ {int imm; } ;
struct TYPE_8__ {TYPE_1__ op; } ;
typedef TYPE_3__ RAnalOp ;
typedef TYPE_4__ HexInsn ;
# 329 "extr_.radare2libranalarchhexagonhexagon_anal.c_hexagon_anal_instruction_with_main.c"
 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_RET ;

int hexagon_anal_instruction(HexInsn *hi, RAnalOp *op) {
 switch (hi->instruction) {
 case 432: {

  op->type = R_ANAL_OP_TYPE_CALL;
  op->jump = op->addr + hi->ops[0].op.imm;
  break;
 }
 case 237: {

  op->type = R_ANAL_OP_TYPE_CALL;
  op->jump = op->addr + hi->ops[1].op.imm;
  break;
 }
 case 247: {

  op->type = R_ANAL_OP_TYPE_CALL;
  op->jump = op->addr + hi->ops[1].op.imm;
  break;
 }
 case 193: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 173: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 169: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 192: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 172: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 168: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 191: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 171: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 167: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 190: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 170: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 166: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 197: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 196: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 195: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 194: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 177: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 176: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 175: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 174: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 185: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 184: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 183: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 182: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 157: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 137: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 133: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 156: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 136: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 132: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 155: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 135: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 131: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 154: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 134: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 130: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 161: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 160: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 159: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 158: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 141: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 140: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 139: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 138: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 149: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 148: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 147: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 146: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 201: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 165: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 200: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 164: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 199: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 163: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 198: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 162: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 181: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 145: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 180: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 144: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 179: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 143: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 178: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 142: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 189: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 153: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 188: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 152: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 187: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 151: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 186: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 150: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 202: {

  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = hi->ops[0].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 236: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 235: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 246: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 245: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 239: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 238: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 244: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 243: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 228: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 227: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 234: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 233: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 230: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 229: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 232: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 231: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 128: {

  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 129: {

  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 431: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 242: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 240: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 241: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 249: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 250: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 248: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 270: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 269: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 224: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 223: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 258: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 257: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 212: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 211: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 264: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 263: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 218: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 217: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 252: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 251: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 206: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 205: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 260: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 259: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 214: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 213: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 268: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 267: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 222: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 221: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 256: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 255: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 210: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 209: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 262: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 261: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 216: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 215: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[2].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 226: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 225: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 204: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 203: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 266: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 265: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 220: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 219: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 254: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 253: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 208: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 207: {

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = hi->ops[1].op.imm;
  op->fail = op->addr + op->size;
  break;
 }
 case 290: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 286: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 287: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 288: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 289: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 295: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 291: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 292: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 293: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 294: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 315: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 311: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 312: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 313: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 314: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 365: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 361: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 362: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 363: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 364: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 370: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 366: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 367: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 368: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 369: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 360: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 356: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 357: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 358: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 359: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 355: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 351: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 352: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 353: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 354: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 350: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 346: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 347: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 348: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 349: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 345: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 341: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 342: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 343: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 344: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 340: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 336: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 337: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 338: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 339: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 335: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 331: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 332: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 333: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 334: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 330: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 326: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 327: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 328: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 329: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 325: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 321: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 322: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 323: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 324: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 320: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 316: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 317: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 318: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 319: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 310: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 306: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 307: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 308: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 309: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 305: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 301: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 302: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 303: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 304: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 300: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 296: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 297: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 298: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 299: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 395: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 391: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 392: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 393: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 394: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 400: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 396: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 397: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 398: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 399: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 390: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 386: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 387: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 388: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 389: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 385: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 381: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 382: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 383: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 384: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 380: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 376: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 377: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 378: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 379: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 405: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 401: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 402: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 403: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 404: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 375: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 371: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 372: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 373: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 374: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 285: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 281: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 282: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 283: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 284: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 275: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 271: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 272: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 273: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 274: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 280: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 276: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 277: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 278: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 279: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 415: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 411: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 412: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 413: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 414: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 420: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 416: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 417: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 418: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 419: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 425: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 421: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 422: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 423: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 424: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 430: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 426: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 427: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 428: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 429: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 410: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 406: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 407: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 408: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 case 409: {

  op->type = R_ANAL_OP_TYPE_RET;
  break;
 }
 }
 return op->size;
}
int main() {
  HexInsn * hi;
  RAnalOp * op;
  hexagon_anal_instruction(hi, op);
  return 0;
}
