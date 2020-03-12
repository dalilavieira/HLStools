# 1 "extr_.linuxdriversnetethernetmellanoxmlx5corecmd.c_mlx5_command_str_with_main.c"
# 1 "extr_.linuxdriversnetethernetmellanoxmlx5corecmd.c_mlx5_command_str_with_main.c" 1
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
# 1 "extr_.linuxdriversnetethernetmellanoxmlx5corecmd.c_mlx5_command_str_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;
# 183 "extr_.linuxdriversnetethernetmellanoxmlx5corecmd.c_mlx5_command_str_with_main.c"
const char *mlx5_command_str(int command)
{


 switch (command) {
 case 174: return "QUERY_HCA_CAP";
 case 187: return "QUERY_ADAPTER";
 case 209: return "INIT_HCA";
 case 128: return "TEARDOWN_HCA";
 case 219: return "ENABLE_HCA";
 case 221: return "DISABLE_HCA";
 case 163: return "QUERY_PAGES";
 case 207: return "MANAGE_PAGES";
 case 137: return "SET_HCA_CAP";
 case 170: return "QUERY_ISSI";
 case 136: return "SET_ISSI";
 case 140: return "SET_DRIVER_VERSION";
 case 270: return "CREATE_MKEY";
 case 166: return "QUERY_MKEY";
 case 237: return "DESTROY_MKEY";
 case 154: return "QUERY_SPECIAL_CONTEXTS";
 case 188: return "PAGE_FAULT_RESUME";
 case 275: return "CREATE_EQ";
 case 242: return "DESTROY_EQ";
 case 181: return "QUERY_EQ";
 case 213: return "GEN_EQE";
 case 277: return "CREATE_CQ";
 case 244: return "DESTROY_CQ";
 case 183: return "QUERY_CQ";
 case 204: return "MODIFY_CQ";
 case 267: return "CREATE_QP";
 case 234: return "DESTROY_QP";
 case 143: return "RST2INIT_QP";
 case 210: return "INIT2RTR_QP";
 case 142: return "RTR2RTS_QP";
 case 141: return "RTS2RTS_QP";
 case 129: return "SQERR2RTS_QP";
 case 295: return "2ERR_QP";
 case 294: return "2RST_QP";
 case 162: return "QUERY_QP";
 case 130: return "SQD_RTS_QP";
 case 211: return "INIT2INIT_QP";
 case 269: return "CREATE_PSV";
 case 236: return "DESTROY_PSV";
 case 261: return "CREATE_SRQ";
 case 228: return "DESTROY_SRQ";
 case 152: return "QUERY_SRQ";
 case 282: return "ARM_RQ";
 case 257: return "CREATE_XRC_SRQ";
 case 224: return "DESTROY_XRC_SRQ";
 case 145: return "QUERY_XRC_SRQ";
 case 281: return "ARM_XRC_SRQ";
 case 276: return "CREATE_DCT";
 case 243: return "DESTROY_DCT";
 case 220: return "DRAIN_DCT";
 case 182: return "QUERY_DCT";
 case 283: return "ARM_DCT_FOR_KEY_VIOLATION";
 case 147: return "QUERY_VPORT_STATE";
 case 190: return "MODIFY_VPORT_STATE";
 case 180: return "QUERY_ESW_VPORT_CONTEXT";
 case 203: return "MODIFY_ESW_VPORT_CONTEXT";
 case 164: return "QUERY_NIC_VPORT_CONTEXT";
 case 198: return "MODIFY_NIC_VPORT_CONTEXT";
 case 158: return "QUERY_ROCE_ADDRESS";
 case 132: return "SET_ROCE_ADDRESS";
 case 173: return "QUERY_HCA_VPORT_CONTEXT";
 case 200: return "MODIFY_HCA_VPORT_CONTEXT";
 case 172: return "QUERY_HCA_VPORT_GID";
 case 171: return "QUERY_HCA_VPORT_PKEY";
 case 149: return "QUERY_VNIC_ENV";
 case 148: return "QUERY_VPORT_COUNTER";
 case 287: return "ALLOC_Q_COUNTER";
 case 251: return "DEALLOC_Q_COUNTER";
 case 161: return "QUERY_Q_COUNTER";
 case 133: return "SET_PP_RATE_LIMIT";
 case 160: return "QUERY_RATE_LIMIT";
 case 263: return "CREATE_SCHEDULING_ELEMENT";
 case 230: return "DESTROY_SCHEDULING_ELEMENT";
 case 155: return "QUERY_SCHEDULING_ELEMENT";
 case 194: return "MODIFY_SCHEDULING_ELEMENT";
 case 268: return "CREATE_QOS_PARA_VPORT";
 case 235: return "DESTROY_QOS_PARA_VPORT";
 case 288: return "ALLOC_PD";
 case 252: return "DEALLOC_PD";
 case 285: return "ALLOC_UAR";
 case 249: return "DEALLOC_UAR";
 case 278: return "CONFIG_INT_MODERATION";
 case 293: return "ACCESS_REG";
 case 279: return "ATTACH_TO_MCG";
 case 222: return "DETACH_FROM_MCG";
 case 212: return "GET_DROPPED_PACKET_LOG";
 case 208: return "MAD_IFC";
 case 167: return "QUERY_MAD_DEMUX";
 case 134: return "SET_MAD_DEMUX";
 case 189: return "NOP";
 case 284: return "ALLOC_XRCD";
 case 248: return "DEALLOC_XRCD";
 case 286: return "ALLOC_TRANSPORT_DOMAIN";
 case 250: return "DEALLOC_TRANSPORT_DOMAIN";
 case 184: return "QUERY_CONG_STATUS";
 case 205: return "MODIFY_CONG_STATUS";
 case 186: return "QUERY_CONG_PARAMS";
 case 206: return "MODIFY_CONG_PARAMS";
 case 185: return "QUERY_CONG_STATISTICS";
 case 292: return "ADD_VXLAN_UDP_DPORT";
 case 245: return "DELETE_VXLAN_UDP_DPORT";
 case 135: return "SET_L2_TABLE_ENTRY";
 case 169: return "QUERY_L2_TABLE_ENTRY";
 case 246: return "DELETE_L2_TABLE_ENTRY";
 case 131: return "SET_WOL_ROL";
 case 146: return "QUERY_WOL_ROL";
 case 271: return "CREATE_LAG";
 case 199: return "MODIFY_LAG";
 case 168: return "QUERY_LAG";
 case 238: return "DESTROY_LAG";
 case 258: return "CREATE_VPORT_LAG";
 case 225: return "DESTROY_VPORT_LAG";
 case 260: return "CREATE_TIR";
 case 192: return "MODIFY_TIR";
 case 227: return "DESTROY_TIR";
 case 151: return "QUERY_TIR";
 case 262: return "CREATE_SQ";
 case 193: return "MODIFY_SQ";
 case 229: return "DESTROY_SQ";
 case 153: return "QUERY_SQ";
 case 265: return "CREATE_RQ";
 case 196: return "MODIFY_RQ";
 case 232: return "DESTROY_RQ";
 case 157: return "QUERY_RQ";
 case 266: return "CREATE_RMP";
 case 197: return "MODIFY_RMP";
 case 233: return "DESTROY_RMP";
 case 159: return "QUERY_RMP";
 case 259: return "CREATE_TIS";
 case 191: return "MODIFY_TIS";
 case 226: return "DESTROY_TIS";
 case 150: return "QUERY_TIS";
 case 264: return "CREATE_RQT";
 case 195: return "MODIFY_RQT";
 case 231: return "DESTROY_RQT";
 case 156: return "QUERY_RQT";
 case 138: return "SET_FLOW_TABLE_ROOT";
 case 273: return "CREATE_FLOW_TABLE";
 case 240: return "DESTROY_FLOW_TABLE";
 case 177: return "QUERY_FLOW_TABLE";
 case 274: return "CREATE_FLOW_GROUP";
 case 241: return "DESTROY_FLOW_GROUP";
 case 178: return "QUERY_FLOW_GROUP";
 case 139: return "SET_FLOW_TABLE_ENTRY";
 case 176: return "QUERY_FLOW_TABLE_ENTRY";
 case 247: return "DELETE_FLOW_TABLE_ENTRY";
 case 290: return "ALLOC_FLOW_COUNTER";
 case 254: return "DEALLOC_FLOW_COUNTER";
 case 179: return "QUERY_FLOW_COUNTER";
 case 202: return "MODIFY_FLOW_TABLE";
 case 291: return "ALLOC_ENCAP_HEADER";
 case 255: return "DEALLOC_ENCAP_HEADER";
 case 289: return "ALLOC_MODIFY_HEADER_CONTEXT";
 case 253: return "DEALLOC_MODIFY_HEADER_CONTEXT";
 case 218: return "FPGA_CREATE_QP";
 case 216: return "FPGA_MODIFY_QP";
 case 215: return "FPGA_QUERY_QP";
 case 214: return "FPGA_QUERY_QP_COUNTERS";
 case 217: return "FPGA_DESTROY_QP";
 case 256: return "CREATE_XRQ";
 case 223: return "DESTROY_XRQ";
 case 144: return "QUERY_XRQ";
 case 280: return "ARM_XRQ";
 case 272: return "CREATE_GENERAL_OBJECT";
 case 239: return "DESTROY_GENERAL_OBJECT";
 case 201: return "MODIFY_GENERAL_OBJECT";
 case 175: return "QUERY_GENERAL_OBJECT";
 case 165: return "QUERY_MODIFY_HEADER_CONTEXT";
 default: return "unknown command opcode";
 }
}
int main() {
  int command;
  mlx5_command_str(command);
  return 0;
}
