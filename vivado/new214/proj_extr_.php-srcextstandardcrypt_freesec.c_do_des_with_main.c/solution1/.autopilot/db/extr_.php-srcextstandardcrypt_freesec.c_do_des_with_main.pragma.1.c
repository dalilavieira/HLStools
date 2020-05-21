# 1 "extr_.php-srcextstandardcrypt_freesec.c_do_des_with_main.c"
# 1 "extr_.php-srcextstandardcrypt_freesec.c_do_des_with_main.c" 1
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
# 1 "extr_.php-srcextstandardcrypt_freesec.c_do_des_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct php_crypt_extended_data {int* en_keysl; int* en_keysr; int* de_keysl; int* de_keysr; int saltbits; } ;


 int** fp_maskl ;
 int** fp_maskr ;
 int** ip_maskl ;
 int** ip_maskr ;
 size_t** m_sbox ;
 int** psbox ;

__attribute__((used)) static int
do_des(uint32_t l_in, uint32_t r_in, uint32_t *l_out, uint32_t *r_out,
 int count, struct php_crypt_extended_data *data)
{



 uint32_t l, r, *kl, *kr, *kl1, *kr1;
 uint32_t f, r48l, r48r, saltbits;
 int round;

 if (count == 0) {
  return(1);
 } else if (count > 0) {



  kl1 = data->en_keysl;
  kr1 = data->en_keysr;
 } else {



  count = -count;
  kl1 = data->de_keysl;
  kr1 = data->de_keysr;
 }




 l = ip_maskl[0][l_in >> 24]
   | ip_maskl[1][(l_in >> 16) & 0xff]
   | ip_maskl[2][(l_in >> 8) & 0xff]
   | ip_maskl[3][l_in & 0xff]
   | ip_maskl[4][r_in >> 24]
   | ip_maskl[5][(r_in >> 16) & 0xff]
   | ip_maskl[6][(r_in >> 8) & 0xff]
   | ip_maskl[7][r_in & 0xff];
 r = ip_maskr[0][l_in >> 24]
   | ip_maskr[1][(l_in >> 16) & 0xff]
   | ip_maskr[2][(l_in >> 8) & 0xff]
   | ip_maskr[3][l_in & 0xff]
   | ip_maskr[4][r_in >> 24]
   | ip_maskr[5][(r_in >> 16) & 0xff]
   | ip_maskr[6][(r_in >> 8) & 0xff]
   | ip_maskr[7][r_in & 0xff];

 saltbits = data->saltbits;
 while (count--) {



  kl = kl1;
  kr = kr1;
  round = 16;
  while (round--) {



   r48l = ((r & 0x00000001) << 23)
    | ((r & 0xf8000000) >> 9)
    | ((r & 0x1f800000) >> 11)
    | ((r & 0x01f80000) >> 13)
    | ((r & 0x001f8000) >> 15);

   r48r = ((r & 0x0001f800) << 7)
    | ((r & 0x00001f80) << 5)
    | ((r & 0x000001f8) << 3)
    | ((r & 0x0000001f) << 1)
    | ((r & 0x80000000) >> 31);




   f = (r48l ^ r48r) & saltbits;
   r48l ^= f ^ *kl++;
   r48r ^= f ^ *kr++;




   f = psbox[0][m_sbox[0][r48l >> 12]]
     | psbox[1][m_sbox[1][r48l & 0xfff]]
     | psbox[2][m_sbox[2][r48r >> 12]]
     | psbox[3][m_sbox[3][r48r & 0xfff]];



   f ^= l;
   l = r;
   r = f;
  }
  r = l;
  l = f;
 }



 *l_out = fp_maskl[0][l >> 24]
  | fp_maskl[1][(l >> 16) & 0xff]
  | fp_maskl[2][(l >> 8) & 0xff]
  | fp_maskl[3][l & 0xff]
  | fp_maskl[4][r >> 24]
  | fp_maskl[5][(r >> 16) & 0xff]
  | fp_maskl[6][(r >> 8) & 0xff]
  | fp_maskl[7][r & 0xff];
 *r_out = fp_maskr[0][l >> 24]
  | fp_maskr[1][(l >> 16) & 0xff]
  | fp_maskr[2][(l >> 8) & 0xff]
  | fp_maskr[3][l & 0xff]
  | fp_maskr[4][r >> 24]
  | fp_maskr[5][(r >> 16) & 0xff]
  | fp_maskr[6][(r >> 8) & 0xff]
  | fp_maskr[7][r & 0xff];
 return(0);
}
int main() {
  uint32_t l_in;
  uint32_t r_in;
  uint32_t * l_out;
  uint32_t * r_out;
  int count;
  struct php_crypt_extended_data * data;
  do_des(l_in, r_in, l_out, r_out, count, data);
  return 0;
}
