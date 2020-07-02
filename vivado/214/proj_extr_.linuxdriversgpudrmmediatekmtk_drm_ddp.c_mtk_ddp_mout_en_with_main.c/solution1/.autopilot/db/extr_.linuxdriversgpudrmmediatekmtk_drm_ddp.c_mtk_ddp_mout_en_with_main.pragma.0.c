# 1 "extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c"
# 1 "extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c" 1
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
# 1 "extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef enum mtk_ddp_comp_id { ____Placeholder_mtk_ddp_comp_id } mtk_ddp_comp_id ;


 int DDP_COMPONENT_COLOR0 ;
 int DDP_COMPONENT_COLOR1 ;
 int DDP_COMPONENT_DPI0 ;
 int DDP_COMPONENT_DPI1 ;
 int DDP_COMPONENT_DSI0 ;
 int DDP_COMPONENT_DSI1 ;
 int DDP_COMPONENT_DSI2 ;
 int DDP_COMPONENT_DSI3 ;
 int DDP_COMPONENT_GAMMA ;
 int DDP_COMPONENT_OD0 ;
 int DDP_COMPONENT_OD1 ;
 int DDP_COMPONENT_OVL0 ;
 int DDP_COMPONENT_OVL1 ;
 int DDP_COMPONENT_RDMA0 ;
 int DDP_COMPONENT_RDMA1 ;
 int DDP_COMPONENT_RDMA2 ;
 int DDP_COMPONENT_UFOE ;
 unsigned int DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_OD_MOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_OVL0_MOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_OVL1_MOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_OVL_MOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN ;
 unsigned int DISP_REG_CONFIG_DISP_RDMA2_SOUT ;
 unsigned int DISP_REG_CONFIG_DISP_UFOE_MOUT_EN ;
 unsigned int GAMMA_MOUT_EN_RDMA1 ;
 unsigned int OD1_MOUT_EN_RDMA1 ;
 unsigned int OD_MOUT_EN_RDMA0 ;
 unsigned int OVL0_MOUT_EN_COLOR0 ;
 unsigned int OVL1_MOUT_EN_COLOR1 ;
 unsigned int OVL_MOUT_EN_RDMA ;
 unsigned int RDMA0_SOUT_DPI0 ;
 unsigned int RDMA0_SOUT_DPI1 ;
 unsigned int RDMA0_SOUT_DSI1 ;
 unsigned int RDMA0_SOUT_DSI2 ;
 unsigned int RDMA0_SOUT_DSI3 ;
 unsigned int RDMA1_SOUT_DPI0 ;
 unsigned int RDMA1_SOUT_DPI1 ;
 unsigned int RDMA1_SOUT_DSI1 ;
 unsigned int RDMA1_SOUT_DSI2 ;
 unsigned int RDMA1_SOUT_DSI3 ;
 unsigned int RDMA2_SOUT_DPI0 ;
 unsigned int RDMA2_SOUT_DPI1 ;
 unsigned int RDMA2_SOUT_DSI1 ;
 unsigned int RDMA2_SOUT_DSI2 ;
 unsigned int RDMA2_SOUT_DSI3 ;
 unsigned int UFOE_MOUT_EN_DSI0 ;

unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
        enum mtk_ddp_comp_id next,
        volatile unsigned int *addr)
{
 unsigned int value;

 if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
  *addr = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN;
  value = OVL0_MOUT_EN_COLOR0;
 } else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
  *addr = DISP_REG_CONFIG_DISP_OVL_MOUT_EN;
  value = OVL_MOUT_EN_RDMA;
 } else if (cur == DDP_COMPONENT_OD0 && next == DDP_COMPONENT_RDMA0) {
  *addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
  value = OD_MOUT_EN_RDMA0;
 } else if (cur == DDP_COMPONENT_UFOE && next == DDP_COMPONENT_DSI0) {
  *addr = DISP_REG_CONFIG_DISP_UFOE_MOUT_EN;
  value = UFOE_MOUT_EN_DSI0;
 } else if (cur == DDP_COMPONENT_OVL1 && next == DDP_COMPONENT_COLOR1) {
  *addr = DISP_REG_CONFIG_DISP_OVL1_MOUT_EN;
  value = OVL1_MOUT_EN_COLOR1;
 } else if (cur == DDP_COMPONENT_GAMMA && next == DDP_COMPONENT_RDMA1) {
  *addr = DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN;
  value = GAMMA_MOUT_EN_RDMA1;
 } else if (cur == DDP_COMPONENT_OD1 && next == DDP_COMPONENT_RDMA1) {
  *addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
  value = OD1_MOUT_EN_RDMA1;
 } else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI0) {
  *addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
  value = RDMA0_SOUT_DPI0;
 } else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI1) {
  *addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
  value = RDMA0_SOUT_DPI1;
 } else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI1) {
  *addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
  value = RDMA0_SOUT_DSI1;
 } else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI2) {
  *addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
  value = RDMA0_SOUT_DSI2;
 } else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI3) {
  *addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
  value = RDMA0_SOUT_DSI3;
 } else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
  *addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
  value = RDMA1_SOUT_DSI1;
 } else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
  *addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
  value = RDMA1_SOUT_DSI2;
 } else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
  *addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
  value = RDMA1_SOUT_DSI3;
 } else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
  *addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
  value = RDMA1_SOUT_DPI0;
 } else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
  *addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
  value = RDMA1_SOUT_DPI1;
 } else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
  *addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
  value = RDMA2_SOUT_DPI0;
 } else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
  *addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
  value = RDMA2_SOUT_DPI1;
 } else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
  *addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
  value = RDMA2_SOUT_DSI1;
 } else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
  *addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
  value = RDMA2_SOUT_DSI2;
 } else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
  *addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
  value = RDMA2_SOUT_DSI3;
 } else {
  value = 0;
 }

 return value;
}
int main() {
  enum mtk_ddp_comp_id cur;
  enum mtk_ddp_comp_id next;
  unsigned int * addr;
  mtk_ddp_mout_en(cur, next, addr);
  return 0;
}
