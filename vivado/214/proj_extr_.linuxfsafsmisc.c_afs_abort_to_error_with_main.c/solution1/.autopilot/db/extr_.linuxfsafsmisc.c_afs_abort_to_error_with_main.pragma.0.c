# 1 "extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main.c"
# 1 "extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main.c" 1
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
# 1 "extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int u32 ;
# 43 "extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main.c"
 int EACCES ;
 int EAGAIN ;
 int EBADRQC ;
 int EBUSY ;
 int EDEADLK ;
 int EDOM ;
 int EDQUOT ;
 int EEXIST ;
 int EFBIG ;
 int EINVAL ;
 int EIO ;
 int EISDIR ;
 int EKEYEXPIRED ;
 int EKEYREJECTED ;
 int EMLINK ;
 int ENAMETOOLONG ;
 int ENODEV ;
 int ENOENT ;
 int ENOLCK ;
 int ENOMEDIUM ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOTCONN ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int ENOTSUPP ;
 int ENXIO ;
 int EPERM ;
 int EPROTO ;
 int ERANGE ;
 int EREMOTEIO ;
 int EROFS ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int EXDEV ;
# 104 "extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main.c"
int afs_abort_to_error(u32 abort_code)
{
 switch (abort_code) {

 case 13: return -EACCES;
 case 27: return -EFBIG;
 case 30: return -EROFS;


 case 129: return -EIO;
 case 134: return -ENOENT;
 case 133: return -ENOMEDIUM;
 case 128: return -EEXIST;
 case 135: return -EIO;
 case 132: return -ENOENT;
 case 131: return -EEXIST;
 case 137: return -ENOSPC;
 case 130: return -EDQUOT;
 case 138: return -EBUSY;
 case 136: return -ENXIO;


 case 163: return -EEXIST;
 case 162: return -EREMOTEIO;
 case 161: return -EEXIST;
 case 169: return -EREMOTEIO;
 case 160: return -ENOMEDIUM;
 case 167: return -ENOMEDIUM;
 case 166: return -ENOMEDIUM;
 case 178: return -EINVAL;
 case 179: return -EINVAL;
 case 170: return -EINVAL;
 case 174: return -EINVAL;
 case 177: return -EINVAL;
 case 156: return -EFBIG;
 case 158: return -ENOENT;
 case 168: return -EEXIST;
 case 154: return -ENOENT;
 case 176: return -EINVAL;
 case 153: return -EINVAL;
 case 180: return -EINVAL;
 case 172: return -EINVAL;
 case 164: return -EINVAL;
 case 165: return -EBUSY;
 case 171: return -EBADRQC;
 case 175: return -EINVAL;
 case 155: return -EREMOTEIO;
 case 173: return -EINVAL;
 case 157: return -EACCES;
 case 159: return -EREMOTEIO;


 case 0x2f6df00: return -EPERM;
 case 0x2f6df01: return -ENOENT;
 case 0x2f6df04: return -EIO;
 case 0x2f6df0a: return -EAGAIN;
 case 0x2f6df0b: return -ENOMEM;
 case 0x2f6df0c: return -EACCES;
 case 0x2f6df0f: return -EBUSY;
 case 0x2f6df10: return -EEXIST;
 case 0x2f6df11: return -EXDEV;
 case 0x2f6df12: return -ENODEV;
 case 0x2f6df13: return -ENOTDIR;
 case 0x2f6df14: return -EISDIR;
 case 0x2f6df15: return -EINVAL;
 case 0x2f6df1a: return -EFBIG;
 case 0x2f6df1b: return -ENOSPC;
 case 0x2f6df1d: return -EROFS;
 case 0x2f6df1e: return -EMLINK;
 case 0x2f6df20: return -EDOM;
 case 0x2f6df21: return -ERANGE;
 case 0x2f6df22: return -EDEADLK;
 case 0x2f6df23: return -ENAMETOOLONG;
 case 0x2f6df24: return -ENOLCK;
 case 0x2f6df26: return -ENOTEMPTY;
 case 0x2f6df28: return -EWOULDBLOCK;
 case 0x2f6df69: return -ENOTCONN;
 case 0x2f6df6c: return -ETIMEDOUT;
 case 0x2f6df78: return -EDQUOT;


 case 146: return -EPROTO;
 case 142: return -EPROTO;
 case 145: return -EKEYREJECTED;
 case 140: return -EKEYREJECTED;
 case 143: return -EPROTO;
 case 144: return -EKEYREJECTED;
 case 151: return -EKEYREJECTED;
 case 150: return -EKEYREJECTED;
 case 139: return -EKEYREJECTED;
 case 148: return -EKEYEXPIRED;
 case 141: return -EKEYREJECTED;
 case 149: return -EKEYREJECTED;
 case 147: return -EKEYREJECTED;

 case 152: return -ENOTSUPP;

 default: return -EREMOTEIO;
 }
}
int main() {
  u32 abort_code;
  afs_abort_to_error(abort_code);
  return 0;
}
