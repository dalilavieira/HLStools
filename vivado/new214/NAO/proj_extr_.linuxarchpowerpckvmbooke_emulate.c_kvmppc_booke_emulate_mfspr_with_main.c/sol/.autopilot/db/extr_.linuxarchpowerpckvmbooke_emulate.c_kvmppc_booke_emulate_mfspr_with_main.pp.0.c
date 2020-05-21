# 1 "extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main.c"
# 1 "extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main.c" 1
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
# 1 "extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_5__ {int iac1; int iac2; int dac1; int dac2; int dbcr0; int dbcr1; int dbcr2; } ;
struct TYPE_6__ {int ivpr; int epr; int csrr0; int csrr1; int dsrr0; int dsrr1; int dbsr; int tsr; int tcr; int* ivor; int mcsr; TYPE_2__ dbg_reg; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_3__ arch; int guest_debug; } ;
struct TYPE_4__ {int dar; int esr; } ;


 size_t BOOKE_IRQPRIO_ALIGNMENT ;
 size_t BOOKE_IRQPRIO_AP_UNAVAIL ;
 size_t BOOKE_IRQPRIO_CRITICAL ;
 size_t BOOKE_IRQPRIO_DATA_STORAGE ;
 size_t BOOKE_IRQPRIO_DEBUG ;
 size_t BOOKE_IRQPRIO_DECREMENTER ;
 size_t BOOKE_IRQPRIO_DTLB_MISS ;
 size_t BOOKE_IRQPRIO_EXTERNAL ;
 size_t BOOKE_IRQPRIO_FIT ;
 size_t BOOKE_IRQPRIO_FP_UNAVAIL ;
 size_t BOOKE_IRQPRIO_INST_STORAGE ;
 size_t BOOKE_IRQPRIO_ITLB_MISS ;
 size_t BOOKE_IRQPRIO_MACHINE_CHECK ;
 size_t BOOKE_IRQPRIO_PROGRAM ;
 size_t BOOKE_IRQPRIO_SYSCALL ;
 size_t BOOKE_IRQPRIO_WATCHDOG ;
 int DBCR0_EDM ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
# 77 "extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main.c"
int kvmppc_booke_emulate_mfspr(struct kvm_vcpu *vcpu, int sprn, ulong *spr_val)
{
 int emulated = EMULATE_DONE;

 switch (sprn) {
 case 131:
  *spr_val = vcpu->arch.ivpr;
  break;
 case 154:
  *spr_val = vcpu->arch.shared->dar;
  break;
 case 150:
  *spr_val = vcpu->arch.shared->esr;
  break;
 case 151:
  *spr_val = vcpu->arch.epr;
  break;
 case 162:
  *spr_val = vcpu->arch.csrr0;
  break;
 case 161:
  *spr_val = vcpu->arch.csrr1;
  break;
 case 153:
  *spr_val = vcpu->arch.dsrr0;
  break;
 case 152:
  *spr_val = vcpu->arch.dsrr1;
  break;
 case 149:
  *spr_val = vcpu->arch.dbg_reg.iac1;
  break;
 case 148:
  *spr_val = vcpu->arch.dbg_reg.iac2;
  break;
# 120 "extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main.c"
 case 160:
  *spr_val = vcpu->arch.dbg_reg.dac1;
  break;
 case 159:
  *spr_val = vcpu->arch.dbg_reg.dac2;
  break;
 case 158:
  *spr_val = vcpu->arch.dbg_reg.dbcr0;
  if (vcpu->guest_debug)
   *spr_val = *spr_val | DBCR0_EDM;
  break;
 case 157:
  *spr_val = vcpu->arch.dbg_reg.dbcr1;
  break;
 case 156:
  *spr_val = vcpu->arch.dbg_reg.dbcr2;
  break;
 case 155:
  *spr_val = vcpu->arch.dbsr;
  break;
 case 128:
  *spr_val = vcpu->arch.tsr;
  break;
 case 129:
  *spr_val = vcpu->arch.tcr;
  break;

 case 147:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_CRITICAL];
  break;
 case 146:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_MACHINE_CHECK];
  break;
 case 139:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DATA_STORAGE];
  break;
 case 138:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_INST_STORAGE];
  break;
 case 137:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_EXTERNAL];
  break;
 case 136:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_ALIGNMENT];
  break;
 case 135:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_PROGRAM];
  break;
 case 134:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_FP_UNAVAIL];
  break;
 case 133:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_SYSCALL];
  break;
 case 132:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_AP_UNAVAIL];
  break;
 case 145:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DECREMENTER];
  break;
 case 144:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_FIT];
  break;
 case 143:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_WATCHDOG];
  break;
 case 142:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DTLB_MISS];
  break;
 case 141:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_ITLB_MISS];
  break;
 case 140:
  *spr_val = vcpu->arch.ivor[BOOKE_IRQPRIO_DEBUG];
  break;
 case 130:
  *spr_val = vcpu->arch.mcsr;
  break;






 default:
  emulated = EMULATE_FAIL;
 }

 return emulated;
}
int main() {
  struct kvm_vcpu * vcpu;
  int sprn;
  ulong * spr_val;
  kvmppc_booke_emulate_mfspr(vcpu, sprn, spr_val);
  return 0;
}
