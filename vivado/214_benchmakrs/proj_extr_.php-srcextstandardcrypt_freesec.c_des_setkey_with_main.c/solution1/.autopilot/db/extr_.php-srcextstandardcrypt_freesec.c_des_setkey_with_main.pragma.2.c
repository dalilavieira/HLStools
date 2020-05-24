# 1 "extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c"
# 1 "extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c" 1
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
# 1 "extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct php_crypt_extended_data {int old_rawkey0; int old_rawkey1; int* de_keysl; int* en_keysl; int* de_keysr; int* en_keysr; } ;


 int** comp_maskl ;
 int** comp_maskr ;
 int** key_perm_maskl ;
 int** key_perm_maskr ;
 scalar_t__* key_shifts ;

int des_setkey(const char *key, struct php_crypt_extended_data data[1000])
{_ssdm_SpecArrayDimSize(data, 1000);
 uint32_t k0, k1, rawkey0, rawkey1;
 int shifts, round;

 rawkey0 =
  (uint32_t)(u_char)key[3] |
  ((uint32_t)(u_char)key[2] << 8) |
  ((uint32_t)(u_char)key[1] << 16) |
  ((uint32_t)(u_char)key[0] << 24);
 rawkey1 =
  (uint32_t)(u_char)key[7] |
  ((uint32_t)(u_char)key[6] << 8) |
  ((uint32_t)(u_char)key[5] << 16) |
  ((uint32_t)(u_char)key[4] << 24);

 if ((rawkey0 | rawkey1)
     && rawkey0 == data->old_rawkey0
     && rawkey1 == data->old_rawkey1) {






  return(0);
 }
 data->old_rawkey0 = rawkey0;
 data->old_rawkey1 = rawkey1;




 k0 = key_perm_maskl[0][rawkey0 >> 25]
    | key_perm_maskl[1][(rawkey0 >> 17) & 0x7f]
    | key_perm_maskl[2][(rawkey0 >> 9) & 0x7f]
    | key_perm_maskl[3][(rawkey0 >> 1) & 0x7f]
    | key_perm_maskl[4][rawkey1 >> 25]
    | key_perm_maskl[5][(rawkey1 >> 17) & 0x7f]
    | key_perm_maskl[6][(rawkey1 >> 9) & 0x7f]
    | key_perm_maskl[7][(rawkey1 >> 1) & 0x7f];
 k1 = key_perm_maskr[0][rawkey0 >> 25]
    | key_perm_maskr[1][(rawkey0 >> 17) & 0x7f]
    | key_perm_maskr[2][(rawkey0 >> 9) & 0x7f]
    | key_perm_maskr[3][(rawkey0 >> 1) & 0x7f]
    | key_perm_maskr[4][rawkey1 >> 25]
    | key_perm_maskr[5][(rawkey1 >> 17) & 0x7f]
    | key_perm_maskr[6][(rawkey1 >> 9) & 0x7f]
    | key_perm_maskr[7][(rawkey1 >> 1) & 0x7f];



 shifts = 0;
 for (round = 0; round < 16; round++) {
  uint32_t t0, t1;

  shifts += key_shifts[round];

  t0 = (k0 << shifts) | (k0 >> (28 - shifts));
  t1 = (k1 << shifts) | (k1 >> (28 - shifts));

  data->de_keysl[15 - round] =
  data->en_keysl[round] = comp_maskl[0][(t0 >> 21) & 0x7f]
    | comp_maskl[1][(t0 >> 14) & 0x7f]
    | comp_maskl[2][(t0 >> 7) & 0x7f]
    | comp_maskl[3][t0 & 0x7f]
    | comp_maskl[4][(t1 >> 21) & 0x7f]
    | comp_maskl[5][(t1 >> 14) & 0x7f]
    | comp_maskl[6][(t1 >> 7) & 0x7f]
    | comp_maskl[7][t1 & 0x7f];

  data->de_keysr[15 - round] =
  data->en_keysr[round] = comp_maskr[0][(t0 >> 21) & 0x7f]
    | comp_maskr[1][(t0 >> 14) & 0x7f]
    | comp_maskr[2][(t0 >> 7) & 0x7f]
    | comp_maskr[3][t0 & 0x7f]
    | comp_maskr[4][(t1 >> 21) & 0x7f]
    | comp_maskr[5][(t1 >> 14) & 0x7f]
    | comp_maskr[6][(t1 >> 7) & 0x7f]
    | comp_maskr[7][t1 & 0x7f];
 }
 return(0);
}
int main() {
  const char * key;
  struct php_crypt_extended_data * data;
  des_setkey(key, data);
  return 0;
}
