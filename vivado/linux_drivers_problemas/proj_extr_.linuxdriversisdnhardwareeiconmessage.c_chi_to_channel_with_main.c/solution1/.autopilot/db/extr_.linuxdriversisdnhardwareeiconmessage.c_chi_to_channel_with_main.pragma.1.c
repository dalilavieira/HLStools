# 1 "extr_.linuxdriversisdnhardwareeiconmessage.c_chi_to_channel_with_main.c"
# 1 "extr_.linuxdriversisdnhardwareeiconmessage.c_chi_to_channel_with_main.c" 1
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
# 1 "extr_.linuxdriversisdnhardwareeiconmessage.c_chi_to_channel_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int dword ;
typedef int byte ;



__attribute__((used)) static byte chi_to_channel(byte *chi, dword *pchannelmap)
{
 int p;
 int i;
 dword map;
 byte excl;
 byte ofs;
 byte ch;

 if (pchannelmap) *pchannelmap = 0;
 if (!chi[0]) return 0xff;
 excl = 0;

 if (chi[1] & 0x20) {
  if (chi[0] == 1 && chi[1] == 0xac) return 0xfd;
  for (i = 1; i < chi[0] && !(chi[i] & 0x80); i++);
  if (i == chi[0] || !(chi[i] & 0x80)) return 0xfe;
  if ((chi[1] | 0xc8) != 0xe9) return 0xfe;
  if (chi[1] & 0x08) excl = 0x40;


  if (chi[1] & 0x40) {
   p = i + 1;
   for (i = p; i < chi[0] && !(chi[i] & 0x80); i++);
   if (i == chi[0] || !(chi[i] & 0x80)) return 0xfe;
  }


  p = i + 1;
  for (i = p; i < chi[0] && !(chi[i] & 0x80); i++);
  if (i == chi[0] || !(chi[i] & 0x80)) return 0xfe;
  if ((chi[p] | 0xd0) != 0xd3) return 0xfe;


  if (chi[p] & 0x10) {


   if ((chi[0] - p) == 4) ofs = 0;
   else if ((chi[0] - p) == 3) ofs = 1;
   else return 0xfe;
   ch = 0;
   map = 0;
   for (i = 0; i < 4 && p < chi[0]; i++) {
    p++;
    ch += 8;
    map <<= 8;
    if (chi[p]) {
     for (ch = 0; !(chi[p] & (1 << ch)); ch++);
     map |= chi[p];
    }
   }
   ch += ofs;
   map <<= ofs;
  }
  else {


   p = i + 1;
   ch = chi[p] & 0x3f;
   if (pchannelmap) {
    if ((byte)(chi[0] - p) > 30) return 0xfe;
    map = 0;
    for (i = p; i <= chi[0]; i++) {
     if ((chi[i] & 0x7f) > 31) return 0xfe;
     map |= (1L << (chi[i] & 0x7f));
    }
   }
   else {
    if (p != chi[0]) return 0xfe;
    if (ch > 31) return 0xfe;
    map = (1L << ch);
   }
   if (chi[p] & 0x40) return 0xfe;
  }
  if (pchannelmap) *pchannelmap = map;
  else if (map != ((dword)(1L << ch))) return 0xfe;
  return (byte)(excl | ch);
 }
 else {
  for (i = 1; i < chi[0] && !(chi[i] & 0x80); i++);
  if (i != chi[0] || !(chi[i] & 0x80)) return 0xfe;
  if (chi[1] & 0x08) excl = 0x40;

  switch (chi[1] | 0x98) {
  case 0x98: return 0;
  case 0x99:
   if (pchannelmap) *pchannelmap = 2;
   return excl | 1;
  case 0x9a:
   if (pchannelmap) *pchannelmap = 4;
   return excl | 2;
  case 0x9b: return 0xff;
  case 0x9c: return 0xfd;
  default: return 0xfe;
  }
 }
}
int main() {
  byte * chi;
  dword * pchannelmap;
  chi_to_channel(chi, pchannelmap);
  return 0;
}
