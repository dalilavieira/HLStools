#include "HLS/hls.h"
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  aarch64_opcode ;

/* Variables and functions */
 int /*<<< orphan*/  const* aarch64_opcode_table ; 

const aarch64_opcode *
aarch64_find_next_opcode (const aarch64_opcode *opcode)
{
  /* Use the index as the key to locate the next opcode.  */
  int key = opcode - aarch64_opcode_table;
  int value;
  switch (key)
    {
    case 941: value = 945; break;	/* stnp --> stp.  */
    case 945: return 0;		/* stp --> 0.  */
    case 939: value = 940; break;	/* stllrb --> stllrh.  */
    case 940: return 0;		/* stllrh --> 0.  */
    case 942: value = 946; break;	/* ldnp --> ldp.  */
    case 946: return 0;		/* ldp --> 0.  */
    case 1584: value = 1585; break;	/* ldff1b --> ldff1b.  */
    case 1585: return 0;		/* ldff1b --> 0.  */
    case 1640: value = 1641; break;	/* ldff1sw --> ldff1sw.  */
    case 1641: return 0;		/* ldff1sw --> 0.  */
    case 1588: value = 1589; break;	/* ldff1b --> ldff1b.  */
    case 1589: return 0;		/* ldff1b --> 0.  */
    case 1607: value = 1608; break;	/* ldff1h --> ldff1h.  */
    case 1608: return 0;		/* ldff1h --> 0.  */
    case 1586: value = 1587; break;	/* ldff1b --> ldff1b.  */
    case 1587: return 0;		/* ldff1b --> 0.  */
    case 1605: value = 1606; break;	/* ldff1h --> ldff1h.  */
    case 1606: return 0;		/* ldff1h --> 0.  */
    case 1590: value = 1591; break;	/* ldff1b --> ldff1b.  */
    case 1591: return 0;		/* ldff1b --> 0.  */
    case 1609: value = 1610; break;	/* ldff1h --> ldff1h.  */
    case 1610: return 0;		/* ldff1h --> 0.  */
    case 1630: value = 1631; break;	/* ldff1sh --> ldff1sh.  */
    case 1631: return 0;		/* ldff1sh --> 0.  */
    case 1618: value = 1619; break;	/* ldff1sb --> ldff1sb.  */
    case 1619: return 0;		/* ldff1sb --> 0.  */
    case 1649: value = 1650; break;	/* ldff1w --> ldff1w.  */
    case 1650: return 0;		/* ldff1w --> 0.  */
    case 1622: value = 1623; break;	/* ldff1sb --> ldff1sb.  */
    case 1623: return 0;		/* ldff1sb --> 0.  */
    case 1632: value = 1633; break;	/* ldff1sh --> ldff1sh.  */
    case 1633: return 0;		/* ldff1sh --> 0.  */
    case 1620: value = 1621; break;	/* ldff1sb --> ldff1sb.  */
    case 1621: return 0;		/* ldff1sb --> 0.  */
    case 1651: value = 1652; break;	/* ldff1w --> ldff1w.  */
    case 1652: return 0;		/* ldff1w --> 0.  */
    case 1596: value = 1597; break;	/* ldff1d --> ldff1d.  */
    case 1597: return 0;		/* ldff1d --> 0.  */
    case 1157: value = 1158; break;	/* msr --> hint.  */
    case 1158: value = 1173; break;	/* hint --> clrex.  */
    case 1173: value = 1174; break;	/* clrex --> dsb.  */
    case 1174: value = 1177; break;	/* dsb --> dmb.  */
    case 1177: value = 1178; break;	/* dmb --> isb.  */
    case 1178: value = 1179; break;	/* isb --> sys.  */
    case 1179: value = 1184; break;	/* sys --> msr.  */
    case 1184: value = 2042; break;	/* msr --> cfinv.  */
    case 2042: return 0;		/* cfinv --> 0.  */
    case 1185: value = 1186; break;	/* sysl --> mrs.  */
    case 1186: return 0;		/* mrs --> 0.  */
    case 434: value = 435; break;	/* st4 --> st1.  */
    case 435: value = 436; break;	/* st1 --> st2.  */
    case 436: value = 437; break;	/* st2 --> st3.  */
    case 437: return 0;		/* st3 --> 0.  */
    case 442: value = 443; break;	/* st4 --> st1.  */
    case 443: value = 444; break;	/* st1 --> st2.  */
    case 444: value = 445; break;	/* st2 --> st3.  */
    case 445: return 0;		/* st3 --> 0.  */
    case 438: value = 439; break;	/* ld4 --> ld1.  */
    case 439: value = 440; break;	/* ld1 --> ld2.  */
    case 440: value = 441; break;	/* ld2 --> ld3.  */
    case 441: return 0;		/* ld3 --> 0.  */
    case 454: value = 456; break;	/* ld1 --> ld1r.  */
    case 456: return 0;		/* ld1r --> 0.  */
    case 458: value = 460; break;	/* ld2 --> ld2r.  */
    case 460: return 0;		/* ld2r --> 0.  */
    case 455: value = 457; break;	/* ld3 --> ld3r.  */
    case 457: return 0;		/* ld3r --> 0.  */
    case 459: value = 461; break;	/* ld4 --> ld4r.  */
    case 461: return 0;		/* ld4r --> 0.  */
    case 446: value = 447; break;	/* ld4 --> ld1.  */
    case 447: value = 448; break;	/* ld1 --> ld2.  */
    case 448: value = 449; break;	/* ld2 --> ld3.  */
    case 449: return 0;		/* ld3 --> 0.  */
    case 466: value = 468; break;	/* ld1 --> ld1r.  */
    case 468: return 0;		/* ld1r --> 0.  */
    case 467: value = 469; break;	/* ld3 --> ld3r.  */
    case 469: return 0;		/* ld3r --> 0.  */
    case 470: value = 472; break;	/* ld2 --> ld2r.  */
    case 472: return 0;		/* ld2r --> 0.  */
    case 471: value = 473; break;	/* ld4 --> ld4r.  */
    case 473: return 0;		/* ld4r --> 0.  */
    case 752: value = 753; break;	/* fcvtzs --> fcvtzs.  */
    case 753: return 0;		/* fcvtzs --> 0.  */
    case 748: value = 749; break;	/* scvtf --> scvtf.  */
    case 749: return 0;		/* scvtf --> 0.  */
    case 754: value = 755; break;	/* fcvtzu --> fcvtzu.  */
    case 755: return 0;		/* fcvtzu --> 0.  */
    case 750: value = 751; break;	/* ucvtf --> ucvtf.  */
    case 751: return 0;		/* ucvtf --> 0.  */
    case 756: value = 757; break;	/* fcvtns --> fcvtns.  */
    case 757: return 0;		/* fcvtns --> 0.  */
    case 776: value = 777; break;	/* fcvtms --> fcvtms.  */
    case 777: return 0;		/* fcvtms --> 0.  */
    case 772: value = 773; break;	/* fcvtps --> fcvtps.  */
    case 773: return 0;		/* fcvtps --> 0.  */
    case 780: value = 781; break;	/* fcvtzs --> fcvtzs.  */
    case 781: return 0;		/* fcvtzs --> 0.  */
    case 764: value = 765; break;	/* fcvtas --> fcvtas.  */
    case 765: return 0;		/* fcvtas --> 0.  */
    case 760: value = 761; break;	/* scvtf --> scvtf.  */
    case 761: return 0;		/* scvtf --> 0.  */
    case 768: value = 769; break;	/* fmov --> fmov.  */
    case 769: return 0;		/* fmov --> 0.  */
    case 758: value = 759; break;	/* fcvtnu --> fcvtnu.  */
    case 759: return 0;		/* fcvtnu --> 0.  */
    case 778: value = 779; break;	/* fcvtmu --> fcvtmu.  */
    case 779: return 0;		/* fcvtmu --> 0.  */
    case 774: value = 775; break;	/* fcvtpu --> fcvtpu.  */
    case 775: return 0;		/* fcvtpu --> 0.  */
    case 782: value = 783; break;	/* fcvtzu --> fcvtzu.  */
    case 783: return 0;		/* fcvtzu --> 0.  */
    case 766: value = 767; break;	/* fcvtau --> fcvtau.  */
    case 767: return 0;		/* fcvtau --> 0.  */
    case 762: value = 763; break;	/* ucvtf --> ucvtf.  */
    case 763: return 0;		/* ucvtf --> 0.  */
    case 770: value = 771; break;	/* fmov --> fmov.  */
    case 771: return 0;		/* fmov --> 0.  */
    case 799: value = 800; break;	/* fmov --> fmov.  */
    case 800: return 0;		/* fmov --> 0.  */
    case 808: value = 809; break;	/* frintn --> frintn.  */
    case 809: return 0;		/* frintn --> 0.  */
    case 803: value = 804; break;	/* fneg --> fneg.  */
    case 804: return 0;		/* fneg --> 0.  */
    case 812: value = 813; break;	/* frintm --> frintm.  */
    case 813: return 0;		/* frintm --> 0.  */
    case 801: value = 802; break;	/* fabs --> fabs.  */
    case 802: return 0;		/* fabs --> 0.  */
    case 810: value = 811; break;	/* frintp --> frintp.  */
    case 811: return 0;		/* frintp --> 0.  */
    case 805: value = 806; break;	/* fsqrt --> fsqrt.  */
    case 806: return 0;		/* fsqrt --> 0.  */
    case 814: value = 815; break;	/* frintz --> frintz.  */
    case 815: return 0;		/* frintz --> 0.  */
    case 816: value = 817; break;	/* frinta --> frinta.  */
    case 817: return 0;		/* frinta --> 0.  */
    case 818: value = 819; break;	/* frintx --> frintx.  */
    case 819: return 0;		/* frintx --> 0.  */
    case 820: value = 821; break;	/* frinti --> frinti.  */
    case 821: return 0;		/* frinti --> 0.  */
    case 791: value = 792; break;	/* fcmp --> fcmp.  */
    case 792: return 0;		/* fcmp --> 0.  */
    case 793: value = 794; break;	/* fcmpe --> fcmpe.  */
    case 794: return 0;		/* fcmpe --> 0.  */
    case 795: value = 796; break;	/* fcmp --> fcmp.  */
    case 796: return 0;		/* fcmp --> 0.  */
    case 797: value = 798; break;	/* fcmpe --> fcmpe.  */
    case 798: return 0;		/* fcmpe --> 0.  */
    case 848: value = 849; break;	/* fmov --> fmov.  */
    case 849: return 0;		/* fmov --> 0.  */
    case 822: value = 823; break;	/* fmul --> fmul.  */
    case 823: return 0;		/* fmul --> 0.  */
    case 838: value = 839; break;	/* fnmul --> fnmul.  */
    case 839: return 0;		/* fnmul --> 0.  */
    case 830: value = 831; break;	/* fmax --> fmax.  */
    case 831: return 0;		/* fmax --> 0.  */
    case 826: value = 827; break;	/* fadd --> fadd.  */
    case 827: return 0;		/* fadd --> 0.  */
    case 834: value = 835; break;	/* fmaxnm --> fmaxnm.  */
    case 835: return 0;		/* fmaxnm --> 0.  */
    case 824: value = 825; break;	/* fdiv --> fdiv.  */
    case 825: return 0;		/* fdiv --> 0.  */
    case 832: value = 833; break;	/* fmin --> fmin.  */
    case 833: return 0;		/* fmin --> 0.  */
    case 828: value = 829; break;	/* fsub --> fsub.  */
    case 829: return 0;		/* fsub --> 0.  */
    case 836: value = 837; break;	/* fminnm --> fminnm.  */
    case 837: return 0;		/* fminnm --> 0.  */
    case 787: value = 788; break;	/* fccmp --> fccmp.  */
    case 788: return 0;		/* fccmp --> 0.  */
    case 789: value = 790; break;	/* fccmpe --> fccmpe.  */
    case 790: return 0;		/* fccmpe --> 0.  */
    case 850: value = 851; break;	/* fcsel --> fcsel.  */
    case 851: return 0;		/* fcsel --> 0.  */
    case 131: value = 368; break;	/* movi --> sshr.  */
    case 368: value = 370; break;	/* sshr --> srshr.  */
    case 370: return 0;		/* srshr --> 0.  */
    case 139: value = 390; break;	/* mvni --> ushr.  */
    case 390: value = 392; break;	/* ushr --> urshr.  */
    case 392: value = 394; break;	/* urshr --> sri.  */
    case 394: value = 396; break;	/* sri --> sqshlu.  */
    case 396: return 0;		/* sqshlu --> 0.  */
    case 132: value = 369; break;	/* orr --> ssra.  */
    case 369: value = 371; break;	/* ssra --> srsra.  */
    case 371: value = 372; break;	/* srsra --> shl.  */
    case 372: value = 373; break;	/* shl --> sqshl.  */
    case 373: return 0;		/* sqshl --> 0.  */
    case 140: value = 391; break;	/* bic --> usra.  */
    case 391: value = 393; break;	/* usra --> ursra.  */
    case 393: value = 395; break;	/* ursra --> sli.  */
    case 395: value = 397; break;	/* sli --> uqshl.  */
    case 397: return 0;		/* uqshl --> 0.  */
    case 840: value = 841; break;	/* fmadd --> fmadd.  */
    case 841: return 0;		/* fmadd --> 0.  */
    case 844: value = 845; break;	/* fnmadd --> fnmadd.  */
    case 845: return 0;		/* fnmadd --> 0.  */
    case 133: value = 374; break;	/* movi --> shrn.  */
    case 374: value = 375; break;	/* shrn --> shrn2.  */
    case 375: value = 382; break;	/* shrn2 --> sshll.  */
    case 382: value = 384; break;	/* sshll --> sshll2.  */
    case 384: return 0;		/* sshll2 --> 0.  */
    case 141: value = 398; break;	/* mvni --> sqshrun.  */
    case 398: value = 399; break;	/* sqshrun --> sqshrun2.  */
    case 399: value = 406; break;	/* sqshrun2 --> ushll.  */
    case 406: value = 408; break;	/* ushll --> ushll2.  */
    case 408: return 0;		/* ushll2 --> 0.  */
    case 134: value = 378; break;	/* orr --> sqshrn.  */
    case 378: value = 379; break;	/* sqshrn --> sqshrn2.  */
    case 379: return 0;		/* sqshrn2 --> 0.  */
    case 142: value = 402; break;	/* bic --> uqshrn.  */
    case 402: value = 403; break;	/* uqshrn --> uqshrn2.  */
    case 403: return 0;		/* uqshrn2 --> 0.  */
    case 136: value = 386; break;	/* movi --> scvtf.  */
    case 386: value = 387; break;	/* scvtf --> scvtf.  */
    case 387: return 0;		/* scvtf --> 0.  */
    case 144: value = 145; break;	/* movi --> movi.  */
    case 145: value = 410; break;	/* movi --> ucvtf.  */
    case 410: value = 411; break;	/* ucvtf --> ucvtf.  */
    case 411: return 0;		/* ucvtf --> 0.  */
    case 138: value = 388; break;	/* fmov --> fcvtzs.  */
    case 388: value = 389; break;	/* fcvtzs --> fcvtzs.  */
    case 389: return 0;		/* fcvtzs --> 0.  */
    case 412: value = 413; break;	/* fcvtzu --> fcvtzu.  */
    case 413: return 0;		/* fcvtzu --> 0.  */
    case 842: value = 843; break;	/* fmsub --> fmsub.  */
    case 843: return 0;		/* fmsub --> 0.  */
    case 846: value = 847; break;	/* fnmsub --> fnmsub.  */
    case 847: return 0;		/* fnmsub --> 0.  */
    case 592: value = 593; break;	/* scvtf --> scvtf.  */
    case 593: return 0;		/* scvtf --> 0.  */
    case 594: value = 595; break;	/* fcvtzs --> fcvtzs.  */
    case 595: return 0;		/* fcvtzs --> 0.  */
    case 608: value = 609; break;	/* ucvtf --> ucvtf.  */
    case 609: return 0;		/* ucvtf --> 0.  */
    case 610: value = 611; break;	/* fcvtzu --> fcvtzu.  */
    case 611: return 0;		/* fcvtzu --> 0.  */
    default: return 0;
    }

  return aarch64_opcode_table + value;
}

/* Main routine for aarch64_find_next_opcode */
component int main() {
  const aarch64_opcode * opcode;
  aarch64_find_next_opcode(opcode);
  return 0;
}
