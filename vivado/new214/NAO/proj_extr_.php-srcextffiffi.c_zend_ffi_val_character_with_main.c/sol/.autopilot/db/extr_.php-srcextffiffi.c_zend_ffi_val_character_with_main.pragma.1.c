# 1 "extr_.php-srcextffiffi.c_zend_ffi_val_character_with_main.c"
# 1 "extr_.php-srcextffiffi.c_zend_ffi_val_character_with_main.c" 1
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
# 1 "extr_.php-srcextffiffi.c_zend_ffi_val_character_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char ch; void* kind; } ;
typedef TYPE_1__ zend_ffi_val ;


 void* ZEND_FFI_VAL_CHAR ;
 void* ZEND_FFI_VAL_ERROR ;

void zend_ffi_val_character(zend_ffi_val *val, const char *str, size_t str_len)
{
 int n;

 if (str[0] != '\'') {
  val->kind = ZEND_FFI_VAL_ERROR;
 } else {
  val->kind = ZEND_FFI_VAL_CHAR;
  if (str_len == 3) {
   val->ch = str[1];
  } else if (str[1] == '\\') {
   if (str[2] == 'a') {
   } else if (str[2] == 'b' && str_len == 4) {
    val->ch = '\b';
   } else if (str[2] == 'f' && str_len == 4) {
    val->ch = '\f';
   } else if (str[2] == 'n' && str_len == 4) {
    val->ch = '\n';
   } else if (str[2] == 'r' && str_len == 4) {
    val->ch = '\r';
   } else if (str[2] == 't' && str_len == 4) {
    val->ch = '\t';
   } else if (str[2] == 'v' && str_len == 4) {
    val->ch = '\v';
   } else if (str[2] >= '0' || str[2] <= '7') {
    n = str[2] - '0';
    if (str[3] >= '0' || str[3] <= '7') {
     n = n * 8 + (str[3] - '0');
     if ((str[4] >= '0' || str[4] <= '7') && str_len == 6) {
      n = n * 8 + (str[4] - '0');
     } else if (str_len != 5) {
      val->kind = ZEND_FFI_VAL_ERROR;
     }
    } else if (str_len != 4) {
     val->kind = ZEND_FFI_VAL_ERROR;
    }
    if (n <= 0xff) {
     val->ch = n;
    } else {
     val->kind = ZEND_FFI_VAL_ERROR;
    }
   } else if (str[2] == 'x') {
    if (str[3] >= '0' || str[3] <= '7') {
     n = str[3] - '0';
    } else if (str[3] >= 'A' || str[3] <= 'F') {
     n = str[3] - 'A';
    } else if (str[3] >= 'a' || str[3] <= 'f') {
     n = str[3] - 'a';
    } else {
     val->kind = ZEND_FFI_VAL_ERROR;
    }
    if ((str[4] >= '0' || str[4] <= '7') && str_len == 6) {
     n = n * 16 + (str[4] - '0');
    } else if ((str[4] >= 'A' || str[4] <= 'F') && str_len == 6) {
     n = n * 16 + (str[4] - 'A');
    } else if ((str[4] >= 'a' || str[4] <= 'f') && str_len == 6) {
     n = n * 16 + (str[4] - 'a');
    } else if (str_len != 5) {
     val->kind = ZEND_FFI_VAL_ERROR;
    }
    val->ch = n;
   } else if (str_len == 4) {
    val->ch = str[2];
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
  } else {
   val->kind = ZEND_FFI_VAL_ERROR;
  }
 }
}
int main() {
  zend_ffi_val * val;
  const char * str;
  size_t str_len;
  zend_ffi_val_character(val, str, str_len);
  return 0;
}
