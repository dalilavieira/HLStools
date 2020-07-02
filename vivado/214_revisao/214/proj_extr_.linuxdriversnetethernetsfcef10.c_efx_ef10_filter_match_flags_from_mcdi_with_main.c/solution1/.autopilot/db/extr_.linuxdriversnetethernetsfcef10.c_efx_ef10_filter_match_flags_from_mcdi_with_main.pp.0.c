# 1 "extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main.c"
# 1 "extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main.c" 1
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
# 1 "extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u32 ;


 int EFX_FILTER_MATCH_ENCAP_TYPE ;
 int EFX_FILTER_MATCH_ETHER_TYPE ;
 int EFX_FILTER_MATCH_INNER_VID ;
 int EFX_FILTER_MATCH_IP_PROTO ;
 int EFX_FILTER_MATCH_LOC_HOST ;
 int EFX_FILTER_MATCH_LOC_MAC ;
 int EFX_FILTER_MATCH_LOC_MAC_IG ;
 int EFX_FILTER_MATCH_LOC_PORT ;
 int EFX_FILTER_MATCH_OUTER_VID ;
 int EFX_FILTER_MATCH_REM_HOST ;
 int EFX_FILTER_MATCH_REM_MAC ;
 int EFX_FILTER_MATCH_REM_PORT ;
 int EINVAL ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_DST_IP_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_DST_MAC_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_DST_PORT_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_ETHER_TYPE_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_DST_IP_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_DST_MAC_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_DST_PORT_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_ETHER_TYPE_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_IP_PROTO_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_SRC_IP_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_SRC_MAC_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_SRC_PORT_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_UNKNOWN_MCAST_DST_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_UNKNOWN_UCAST_DST_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_INNER_VLAN_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_IP_PROTO_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_OUTER_VLAN_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_SRC_IP_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_SRC_MAC_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_SRC_PORT_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_UNKNOWN_MCAST_DST_LBN ;
 int MC_CMD_FILTER_OP_EXT_IN_MATCH_UNKNOWN_UCAST_DST_LBN ;

int efx_ef10_filter_match_flags_from_mcdi(bool encap, u32 mcdi_flags)
{
 int match_flags = 0;
# 63 "extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main.c"
 if (encap) {

  match_flags |= EFX_FILTER_MATCH_ENCAP_TYPE;

  mcdi_flags &=
   ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IP_PROTO_LBN);
  mcdi_flags &=
   ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_ETHER_TYPE_LBN);

  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_INNER_VLAN_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_INNER_VID; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_OUTER_VLAN_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_OUTER_VID; } while (0);

  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_UNKNOWN_UCAST_DST_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_MAC_IG; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_UNKNOWN_MCAST_DST_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_MAC_IG; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_SRC_IP_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_REM_HOST; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_DST_IP_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_HOST; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_SRC_MAC_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_REM_MAC; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_SRC_PORT_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_REM_PORT; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_DST_MAC_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_MAC; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_DST_PORT_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_PORT; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_ETHER_TYPE_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_ETHER_TYPE; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IFRM_IP_PROTO_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_IP_PROTO; } while (0);
 } else {
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_UNKNOWN_UCAST_DST_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_MAC_IG; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_UNKNOWN_MCAST_DST_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_MAC_IG; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_SRC_IP_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_REM_HOST; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_DST_IP_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_HOST; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_SRC_MAC_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_REM_MAC; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_SRC_PORT_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_REM_PORT; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_DST_MAC_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_MAC; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_DST_PORT_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_LOC_PORT; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_ETHER_TYPE_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_ETHER_TYPE; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_INNER_VLAN_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_INNER_VID; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_OUTER_VLAN_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_OUTER_VID; } while (0);
  do { u32 old_mcdi_flags = mcdi_flags; mcdi_flags &= ~(1 << MC_CMD_FILTER_OP_EXT_IN_MATCH_IP_PROTO_LBN); if (mcdi_flags != old_mcdi_flags) match_flags |= EFX_FILTER_MATCH_IP_PROTO; } while (0);
 }



 if (mcdi_flags)
  return -EINVAL;

 return match_flags;
}
int main() {
  bool encap;
  u32 mcdi_flags;
  efx_ef10_filter_match_flags_from_mcdi(encap, mcdi_flags);
  return 0;
}
