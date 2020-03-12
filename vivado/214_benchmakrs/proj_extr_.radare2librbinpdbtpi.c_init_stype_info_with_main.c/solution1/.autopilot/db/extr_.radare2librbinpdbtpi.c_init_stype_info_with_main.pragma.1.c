# 1 "extr_.radare2librbinpdbtpi.c_init_stype_info_with_main.c"
# 1 "extr_.radare2librbinpdbtpi.c_init_stype_info_with_main.c" 1
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
# 1 "extr_.radare2librbinpdbtpi.c_init_stype_info_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int leaf_type; scalar_t__ get_print_type; scalar_t__ get_mlist; scalar_t__ get_index; scalar_t__ get_arglist; scalar_t__ get_this_type; scalar_t__ get_class_type; scalar_t__ get_return_type; scalar_t__ get_utype; scalar_t__ get_vshape; scalar_t__ get_derived; scalar_t__ get_base_type; scalar_t__ get_index_type; scalar_t__ get_element_type; scalar_t__ get_arg_type; scalar_t__ get_members; scalar_t__ get_name_len; scalar_t__ get_val; scalar_t__ get_name; scalar_t__ free_; scalar_t__ is_fwdref; scalar_t__ get_modified_type; } ;
typedef TYPE_1__ STypeInfo ;
# 36 "extr_.radare2librbinpdbtpi.c_init_stype_info_with_main.c"
 scalar_t__ free_lf_arglist ;
 scalar_t__ free_lf_array ;
 scalar_t__ free_lf_class ;
 scalar_t__ free_lf_enum ;
 scalar_t__ free_lf_enumerate ;
 scalar_t__ free_lf_fieldlist ;
 scalar_t__ free_lf_member ;
 scalar_t__ free_lf_method ;
 scalar_t__ free_lf_nesttype ;
 scalar_t__ free_lf_onemethod ;
 scalar_t__ free_lf_union ;
 scalar_t__ free_lf_vtshape ;
 scalar_t__ get_arglist_print_type ;
 scalar_t__ get_array_element_type ;
 scalar_t__ get_array_index_type ;
 scalar_t__ get_array_name ;
 scalar_t__ get_array_name_len ;
 scalar_t__ get_array_print_type ;
 scalar_t__ get_array_val ;
 scalar_t__ get_bitfield_base_type ;
 scalar_t__ get_bitfield_print_type ;
 scalar_t__ get_class_struct_derived ;
 scalar_t__ get_class_struct_name ;
 scalar_t__ get_class_struct_name_len ;
 scalar_t__ get_class_struct_print_type ;
 scalar_t__ get_class_struct_val ;
 scalar_t__ get_class_struct_vshape ;
 scalar_t__ get_enum_members ;
 scalar_t__ get_enum_name ;
 scalar_t__ get_enum_name_len ;
 scalar_t__ get_enum_print_type ;
 scalar_t__ get_enum_utype ;
 scalar_t__ get_enumerate_name ;
 scalar_t__ get_enumerate_name_len ;
 scalar_t__ get_enumerate_print_type ;
 scalar_t__ get_enumerate_val ;
 scalar_t__ get_fieldlist_members ;
 scalar_t__ get_fieldlist_print_type ;
 scalar_t__ get_member_index ;
 scalar_t__ get_member_name ;
 scalar_t__ get_member_name_len ;
 scalar_t__ get_member_print_type ;
 scalar_t__ get_member_val ;
 scalar_t__ get_method_mlist ;
 scalar_t__ get_method_name ;
 scalar_t__ get_method_name_len ;
 scalar_t__ get_method_print_type ;
 scalar_t__ get_mfunction_arglist ;
 scalar_t__ get_mfunction_class_type ;
 scalar_t__ get_mfunction_print_type ;
 scalar_t__ get_mfunction_return_type ;
 scalar_t__ get_mfunction_this_type ;
 scalar_t__ get_modifier_modified_type ;
 scalar_t__ get_modifier_print_type ;
 scalar_t__ get_nesttype_index ;
 scalar_t__ get_nesttype_name ;
 scalar_t__ get_nesttype_name_len ;
 scalar_t__ get_nesttype_print_type ;
 scalar_t__ get_onemethod_index ;
 scalar_t__ get_onemethod_name ;
 scalar_t__ get_onemethod_name_len ;
 scalar_t__ get_onemethod_print_type ;
 scalar_t__ get_onemethod_val ;
 scalar_t__ get_pointer_print_type ;
 scalar_t__ get_pointer_utype ;
 scalar_t__ get_procedure_arglist ;
 scalar_t__ get_procedure_print_type ;
 scalar_t__ get_procedure_return_type ;
 scalar_t__ get_struct_class_members ;
 scalar_t__ get_union_members ;
 scalar_t__ get_union_name ;
 scalar_t__ get_union_name_len ;
 scalar_t__ get_union_print_type ;
 scalar_t__ get_union_val ;
 scalar_t__ get_vtshape_print_type ;
 scalar_t__ is_struct_class_fwdref ;
 scalar_t__ is_union_fwdref ;

__attribute__((used)) static void init_stype_info(STypeInfo *type_info)
{
 type_info->free_ = 0;
 type_info->get_members = 0;
 type_info->get_name = 0;
 type_info->get_val = 0;
 type_info->get_name_len = 0;
 type_info->get_arg_type = 0;
 type_info->get_element_type = 0;
 type_info->get_index_type = 0;
 type_info->get_base_type = 0;
 type_info->get_derived = 0;
 type_info->get_vshape = 0;
 type_info->get_utype = 0;
 type_info->get_return_type = 0;
 type_info->get_class_type = 0;
 type_info->get_this_type = 0;
 type_info->get_arglist = 0;
 type_info->get_index = 0;
 type_info->get_mlist = 0;
 type_info->get_modified_type = 0;
 type_info->is_fwdref = 0;
 type_info->get_print_type = 0;

 switch (type_info->leaf_type) {
 case 140:
  type_info->get_members = get_fieldlist_members;
  type_info->free_ = free_lf_fieldlist;
  type_info->get_print_type = get_fieldlist_print_type;
  break;
 case 142:
  type_info->get_name = get_enum_name;
  type_info->get_name_len = get_enum_name_len;
  type_info->get_members = get_enum_members;
  type_info->get_utype = get_enum_utype;
  type_info->free_ = free_lf_enum;
  type_info->get_print_type = get_enum_print_type;
  break;
 case 143:
 case 130:
  type_info->get_name = get_class_struct_name;
  type_info->get_val = get_class_struct_val;
  type_info->get_name_len = get_class_struct_name_len;
  type_info->get_members = get_struct_class_members;
  type_info->get_derived = get_class_struct_derived;
  type_info->get_vshape = get_class_struct_vshape;
  type_info->is_fwdref = is_struct_class_fwdref;
  type_info->free_ = free_lf_class;
  type_info->get_print_type = get_class_struct_print_type;
  break;
 case 132:
  type_info->get_utype = get_pointer_utype;
  type_info->get_print_type = get_pointer_print_type;
  break;
 case 145:
  type_info->get_name = get_array_name;
  type_info->get_val = get_array_val;
  type_info->get_name_len = get_array_name_len;
  type_info->get_element_type = get_array_element_type;
  type_info->get_index_type = get_array_index_type;
  type_info->free_ = free_lf_array;
  type_info->get_print_type = get_array_print_type;
  break;
 case 135:
  type_info->get_modified_type = get_modifier_modified_type;
  type_info->get_print_type = get_modifier_print_type;
  break;
 case 146:
  type_info->free_ = free_lf_arglist;
  type_info->get_print_type = get_arglist_print_type;
  break;
 case 136:
  type_info->get_return_type = get_mfunction_return_type;
  type_info->get_class_type = get_mfunction_class_type;
  type_info->get_this_type = get_mfunction_this_type;
  type_info->get_arglist = get_mfunction_arglist;
  type_info->get_print_type = get_mfunction_print_type;
  break;
 case 137:
  break;
 case 131:
  type_info->get_return_type = get_procedure_return_type;
  type_info->get_arglist = get_procedure_arglist;
  type_info->get_print_type = get_procedure_print_type;
  break;
 case 129:
  type_info->get_name = get_union_name;
  type_info->get_val = get_union_val;
  type_info->get_name_len = get_union_name_len;
  type_info->get_members = get_union_members;
  type_info->is_fwdref = is_union_fwdref;
  type_info->free_ = free_lf_union;
  type_info->get_print_type = get_union_print_type;
  break;
 case 144:
  type_info->get_base_type = get_bitfield_base_type;
  type_info->get_print_type = get_bitfield_print_type;
  break;
 case 128:
  type_info->free_ = free_lf_vtshape;
  type_info->get_print_type = get_vtshape_print_type;
  break;
 case 141:
  type_info->get_name = get_enumerate_name;
  type_info->get_val = get_enumerate_val;
  type_info->get_name_len = get_enumerate_name_len;
  type_info->free_ = free_lf_enumerate;
  type_info->get_print_type = get_enumerate_print_type;
  break;
 case 134:
  type_info->get_name = get_nesttype_name;
  type_info->get_name_len = get_nesttype_name_len;
  type_info->get_index = get_nesttype_index;
  type_info->free_ = free_lf_nesttype;
  type_info->get_print_type = get_nesttype_print_type;
  break;
 case 138:
  type_info->get_name = get_method_name;
  type_info->get_name_len = get_method_name_len;
  type_info->get_mlist = get_method_mlist;
  type_info->free_ = free_lf_method;
  type_info->get_print_type = get_method_print_type;
  break;
 case 139:
  type_info->get_name = get_member_name;
  type_info->get_val = get_member_val;
  type_info->get_name_len = get_member_name_len;
  type_info->get_index = get_member_index;
  type_info->free_ = free_lf_member;
  type_info->get_print_type = get_member_print_type;
  break;
 case 133:
  type_info->get_name = get_onemethod_name;
  type_info->get_name_len = get_onemethod_name_len;
  type_info->get_val = get_onemethod_val;
  type_info->get_index = get_onemethod_index;
  type_info->free_ = free_lf_onemethod;
  type_info->get_print_type = get_onemethod_print_type;
  break;
 default:

  type_info->get_name = 0;
  type_info->get_val = 0;
  type_info->get_name_len = 0;
  type_info->get_members = 0;
  type_info->get_arg_type = 0;
  type_info->get_element_type = 0;
  type_info->get_index_type = 0;
  type_info->get_base_type = 0;
  type_info->get_derived = 0;
  type_info->get_vshape = 0;
  type_info->get_utype = 0;
  type_info->get_return_type = 0;
  type_info->get_class_type = 0;
  type_info->get_this_type = 0;
  type_info->get_arglist = 0;
  type_info->get_index = 0;
  type_info->get_mlist = 0;
  type_info->get_print_type = 0;
  break;
 }
}
int main() {
  STypeInfo * type_info;
  init_stype_info(type_info);
  return 0;
}
