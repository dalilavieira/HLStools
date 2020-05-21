# 1 "extr_.linuxdriversttyserialip22zilog.c_ip22zilog_convert_to_zs_with_main.c"
# 1 "extr_.linuxdriversttyserialip22zilog.c_ip22zilog_convert_to_zs_with_main.c" 1
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
# 1 "extr_.linuxdriversttyserialip22zilog.c_ip22zilog_convert_to_zs_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_status_mask; int ignore_status_mask; } ;
struct uart_ip22zilog_port {int* curregs; int parity_mask; TYPE_1__ port; } ;


 int BRENAB ;
 unsigned int BRKINT ;
 int BRK_ABRT ;
 int CRC_ERR ;
 unsigned int CREAD ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int IGNBRK ;
 unsigned int IGNPAR ;
 unsigned int INPCK ;
 int NRZ ;
 unsigned int PARENB ;
 unsigned int PARMRK ;
 unsigned int PARODD ;
 int PAR_ENAB ;
 int PAR_ERR ;
 int PAR_EVEN ;
 size_t R10 ;
 size_t R11 ;
 size_t R12 ;
 size_t R13 ;
 size_t R14 ;
 size_t R4 ;
 int RCBR ;
 int Rx5 ;
 int Rx6 ;
 int Rx7 ;
 int Rx8 ;
 int RxN_MASK ;
 int Rx_OVR ;
 int SB1 ;
 int SB2 ;
 int TCBR ;
 int Tx5 ;
 int Tx6 ;
 int Tx7 ;
 int Tx8 ;
 int TxN_MASK ;
 int X16CLK ;
 int XCLK_MASK ;

__attribute__((used)) static void
ip22zilog_convert_to_zs(struct uart_ip22zilog_port *up, unsigned int cflag,
         unsigned int iflag, int brg)
{

 up->curregs[R10] = NRZ;
 up->curregs[R11] = TCBR | RCBR;


 up->curregs[R4] &= ~XCLK_MASK;
 up->curregs[R4] |= X16CLK;
 up->curregs[R12] = brg & 0xff;
 up->curregs[R13] = (brg >> 8) & 0xff;
 up->curregs[R14] = BRENAB;


 up->curregs[3] &= ~RxN_MASK;
 up->curregs[5] &= ~TxN_MASK;
 switch (cflag & CSIZE) {
 case 131:
  up->curregs[3] |= Rx5;
  up->curregs[5] |= Tx5;
  up->parity_mask = 0x1f;
  break;
 case 130:
  up->curregs[3] |= Rx6;
  up->curregs[5] |= Tx6;
  up->parity_mask = 0x3f;
  break;
 case 129:
  up->curregs[3] |= Rx7;
  up->curregs[5] |= Tx7;
  up->parity_mask = 0x7f;
  break;
 case 128:
 default:
  up->curregs[3] |= Rx8;
  up->curregs[5] |= Tx8;
  up->parity_mask = 0xff;
  break;
 }
 up->curregs[4] &= ~0x0c;
 if (cflag & CSTOPB)
  up->curregs[4] |= SB2;
 else
  up->curregs[4] |= SB1;
 if (cflag & PARENB)
  up->curregs[4] |= PAR_ENAB;
 else
  up->curregs[4] &= ~PAR_ENAB;
 if (!(cflag & PARODD))
  up->curregs[4] |= PAR_EVEN;
 else
  up->curregs[4] &= ~PAR_EVEN;

 up->port.read_status_mask = Rx_OVR;
 if (iflag & INPCK)
  up->port.read_status_mask |= CRC_ERR | PAR_ERR;
 if (iflag & (IGNBRK | BRKINT | PARMRK))
  up->port.read_status_mask |= BRK_ABRT;

 up->port.ignore_status_mask = 0;
 if (iflag & IGNPAR)
  up->port.ignore_status_mask |= CRC_ERR | PAR_ERR;
 if (iflag & IGNBRK) {
  up->port.ignore_status_mask |= BRK_ABRT;
  if (iflag & IGNPAR)
   up->port.ignore_status_mask |= Rx_OVR;
 }

 if ((cflag & CREAD) == 0)
  up->port.ignore_status_mask = 0xff;
}
int main() {
  struct uart_ip22zilog_port * up;
  unsigned int cflag;
  unsigned int iflag;
  int brg;
  ip22zilog_convert_to_zs(up, cflag, iflag, brg);
  return 0;
}
