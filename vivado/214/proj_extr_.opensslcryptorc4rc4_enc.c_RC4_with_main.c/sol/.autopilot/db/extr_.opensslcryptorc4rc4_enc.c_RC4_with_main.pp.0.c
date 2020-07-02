# 1 "extr_.opensslcryptorc4rc4_enc.c_RC4_with_main.c"
# 1 "extr_.opensslcryptorc4rc4_enc.c_RC4_with_main.c" 1
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
# 1 "extr_.opensslcryptorc4rc4_enc.c_RC4_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int* data; } ;
typedef TYPE_1__ RC4_KEY ;
typedef int RC4_INT ;



void RC4(RC4_KEY *key, size_t len, const unsigned char *indata,
         unsigned char *outdata)
{
    register RC4_INT *d;
    register RC4_INT x, y, tx, ty;
    size_t i;

    x = key->x;
    y = key->y;
    d = key->data;
# 38 "extr_.opensslcryptorc4rc4_enc.c_RC4_with_main.c"
    i = len >> 3;
    if (i) {
        for (;;) {
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[0]) = d[(tx+ty)&0xff]^ (indata[0]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[1]) = d[(tx+ty)&0xff]^ (indata[1]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[2]) = d[(tx+ty)&0xff]^ (indata[2]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[3]) = d[(tx+ty)&0xff]^ (indata[3]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[4]) = d[(tx+ty)&0xff]^ (indata[4]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[5]) = d[(tx+ty)&0xff]^ (indata[5]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[6]) = d[(tx+ty)&0xff]^ (indata[6]);;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[7]) = d[(tx+ty)&0xff]^ (indata[7]);;
            indata += 8;
            outdata += 8;
            if (--i == 0)
                break;
        }
    }
    i = len & 0x07;
    if (i) {
        for (;;) {
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[0]) = d[(tx+ty)&0xff]^ (indata[0]);;
            if (--i == 0)
                break;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[1]) = d[(tx+ty)&0xff]^ (indata[1]);;
            if (--i == 0)
                break;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[2]) = d[(tx+ty)&0xff]^ (indata[2]);;
            if (--i == 0)
                break;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[3]) = d[(tx+ty)&0xff]^ (indata[3]);;
            if (--i == 0)
                break;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[4]) = d[(tx+ty)&0xff]^ (indata[4]);;
            if (--i == 0)
                break;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[5]) = d[(tx+ty)&0xff]^ (indata[5]);;
            if (--i == 0)
                break;
            x=((x+1)&0xff); tx=d[x]; y=(tx+y)&0xff; d[x]=ty=d[y]; d[y]=tx; (outdata[6]) = d[(tx+ty)&0xff]^ (indata[6]);;
            if (--i == 0)
                break;
        }
    }
    key->x = x;
    key->y = y;
}
int main() {
  RC4_KEY * key;
  size_t len;
  const unsigned char * indata;
  unsigned char * outdata;
  RC4(key, len, indata, outdata);
  return 0;
}
