# 1 "extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_opcode_with_main.c"
# 1 "extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_opcode_with_main.c" 1
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
# 1 "extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_opcode_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int aarch64_opcode ;


 int const* aarch64_opcode_table ;

const aarch64_opcode *
aarch64_find_next_opcode (const aarch64_opcode *opcode)
{

  int key = opcode - aarch64_opcode_table;
  int value;
  switch (key)
    {
    case 941: value = 945; break;
    case 945: return ((void*)0);
    case 939: value = 940; break;
    case 940: return ((void*)0);
    case 942: value = 946; break;
    case 946: return ((void*)0);
    case 1584: value = 1585; break;
    case 1585: return ((void*)0);
    case 1640: value = 1641; break;
    case 1641: return ((void*)0);
    case 1588: value = 1589; break;
    case 1589: return ((void*)0);
    case 1607: value = 1608; break;
    case 1608: return ((void*)0);
    case 1586: value = 1587; break;
    case 1587: return ((void*)0);
    case 1605: value = 1606; break;
    case 1606: return ((void*)0);
    case 1590: value = 1591; break;
    case 1591: return ((void*)0);
    case 1609: value = 1610; break;
    case 1610: return ((void*)0);
    case 1630: value = 1631; break;
    case 1631: return ((void*)0);
    case 1618: value = 1619; break;
    case 1619: return ((void*)0);
    case 1649: value = 1650; break;
    case 1650: return ((void*)0);
    case 1622: value = 1623; break;
    case 1623: return ((void*)0);
    case 1632: value = 1633; break;
    case 1633: return ((void*)0);
    case 1620: value = 1621; break;
    case 1621: return ((void*)0);
    case 1651: value = 1652; break;
    case 1652: return ((void*)0);
    case 1596: value = 1597; break;
    case 1597: return ((void*)0);
    case 1157: value = 1158; break;
    case 1158: value = 1173; break;
    case 1173: value = 1174; break;
    case 1174: value = 1177; break;
    case 1177: value = 1178; break;
    case 1178: value = 1179; break;
    case 1179: value = 1184; break;
    case 1184: value = 2042; break;
    case 2042: return ((void*)0);
    case 1185: value = 1186; break;
    case 1186: return ((void*)0);
    case 434: value = 435; break;
    case 435: value = 436; break;
    case 436: value = 437; break;
    case 437: return ((void*)0);
    case 442: value = 443; break;
    case 443: value = 444; break;
    case 444: value = 445; break;
    case 445: return ((void*)0);
    case 438: value = 439; break;
    case 439: value = 440; break;
    case 440: value = 441; break;
    case 441: return ((void*)0);
    case 454: value = 456; break;
    case 456: return ((void*)0);
    case 458: value = 460; break;
    case 460: return ((void*)0);
    case 455: value = 457; break;
    case 457: return ((void*)0);
    case 459: value = 461; break;
    case 461: return ((void*)0);
    case 446: value = 447; break;
    case 447: value = 448; break;
    case 448: value = 449; break;
    case 449: return ((void*)0);
    case 466: value = 468; break;
    case 468: return ((void*)0);
    case 467: value = 469; break;
    case 469: return ((void*)0);
    case 470: value = 472; break;
    case 472: return ((void*)0);
    case 471: value = 473; break;
    case 473: return ((void*)0);
    case 752: value = 753; break;
    case 753: return ((void*)0);
    case 748: value = 749; break;
    case 749: return ((void*)0);
    case 754: value = 755; break;
    case 755: return ((void*)0);
    case 750: value = 751; break;
    case 751: return ((void*)0);
    case 756: value = 757; break;
    case 757: return ((void*)0);
    case 776: value = 777; break;
    case 777: return ((void*)0);
    case 772: value = 773; break;
    case 773: return ((void*)0);
    case 780: value = 781; break;
    case 781: return ((void*)0);
    case 764: value = 765; break;
    case 765: return ((void*)0);
    case 760: value = 761; break;
    case 761: return ((void*)0);
    case 768: value = 769; break;
    case 769: return ((void*)0);
    case 758: value = 759; break;
    case 759: return ((void*)0);
    case 778: value = 779; break;
    case 779: return ((void*)0);
    case 774: value = 775; break;
    case 775: return ((void*)0);
    case 782: value = 783; break;
    case 783: return ((void*)0);
    case 766: value = 767; break;
    case 767: return ((void*)0);
    case 762: value = 763; break;
    case 763: return ((void*)0);
    case 770: value = 771; break;
    case 771: return ((void*)0);
    case 799: value = 800; break;
    case 800: return ((void*)0);
    case 808: value = 809; break;
    case 809: return ((void*)0);
    case 803: value = 804; break;
    case 804: return ((void*)0);
    case 812: value = 813; break;
    case 813: return ((void*)0);
    case 801: value = 802; break;
    case 802: return ((void*)0);
    case 810: value = 811; break;
    case 811: return ((void*)0);
    case 805: value = 806; break;
    case 806: return ((void*)0);
    case 814: value = 815; break;
    case 815: return ((void*)0);
    case 816: value = 817; break;
    case 817: return ((void*)0);
    case 818: value = 819; break;
    case 819: return ((void*)0);
    case 820: value = 821; break;
    case 821: return ((void*)0);
    case 791: value = 792; break;
    case 792: return ((void*)0);
    case 793: value = 794; break;
    case 794: return ((void*)0);
    case 795: value = 796; break;
    case 796: return ((void*)0);
    case 797: value = 798; break;
    case 798: return ((void*)0);
    case 848: value = 849; break;
    case 849: return ((void*)0);
    case 822: value = 823; break;
    case 823: return ((void*)0);
    case 838: value = 839; break;
    case 839: return ((void*)0);
    case 830: value = 831; break;
    case 831: return ((void*)0);
    case 826: value = 827; break;
    case 827: return ((void*)0);
    case 834: value = 835; break;
    case 835: return ((void*)0);
    case 824: value = 825; break;
    case 825: return ((void*)0);
    case 832: value = 833; break;
    case 833: return ((void*)0);
    case 828: value = 829; break;
    case 829: return ((void*)0);
    case 836: value = 837; break;
    case 837: return ((void*)0);
    case 787: value = 788; break;
    case 788: return ((void*)0);
    case 789: value = 790; break;
    case 790: return ((void*)0);
    case 850: value = 851; break;
    case 851: return ((void*)0);
    case 131: value = 368; break;
    case 368: value = 370; break;
    case 370: return ((void*)0);
    case 139: value = 390; break;
    case 390: value = 392; break;
    case 392: value = 394; break;
    case 394: value = 396; break;
    case 396: return ((void*)0);
    case 132: value = 369; break;
    case 369: value = 371; break;
    case 371: value = 372; break;
    case 372: value = 373; break;
    case 373: return ((void*)0);
    case 140: value = 391; break;
    case 391: value = 393; break;
    case 393: value = 395; break;
    case 395: value = 397; break;
    case 397: return ((void*)0);
    case 840: value = 841; break;
    case 841: return ((void*)0);
    case 844: value = 845; break;
    case 845: return ((void*)0);
    case 133: value = 374; break;
    case 374: value = 375; break;
    case 375: value = 382; break;
    case 382: value = 384; break;
    case 384: return ((void*)0);
    case 141: value = 398; break;
    case 398: value = 399; break;
    case 399: value = 406; break;
    case 406: value = 408; break;
    case 408: return ((void*)0);
    case 134: value = 378; break;
    case 378: value = 379; break;
    case 379: return ((void*)0);
    case 142: value = 402; break;
    case 402: value = 403; break;
    case 403: return ((void*)0);
    case 136: value = 386; break;
    case 386: value = 387; break;
    case 387: return ((void*)0);
    case 144: value = 145; break;
    case 145: value = 410; break;
    case 410: value = 411; break;
    case 411: return ((void*)0);
    case 138: value = 388; break;
    case 388: value = 389; break;
    case 389: return ((void*)0);
    case 412: value = 413; break;
    case 413: return ((void*)0);
    case 842: value = 843; break;
    case 843: return ((void*)0);
    case 846: value = 847; break;
    case 847: return ((void*)0);
    case 592: value = 593; break;
    case 593: return ((void*)0);
    case 594: value = 595; break;
    case 595: return ((void*)0);
    case 608: value = 609; break;
    case 609: return ((void*)0);
    case 610: value = 611; break;
    case 611: return ((void*)0);
    default: return ((void*)0);
    }

  return aarch64_opcode_table + value;
}
int main() {
  const aarch64_opcode * opcode;
  aarch64_find_next_opcode(opcode);
  return 0;
}
