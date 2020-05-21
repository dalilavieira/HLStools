# 1 "extr_.obs-studiodepslibcaptionsrceia608_from_utf8.c__eia608_from_utf8_with_main.c"
# 1 "extr_.obs-studiodepslibcaptionsrceia608_from_utf8.c__eia608_from_utf8_with_main.c" 1
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
# 1 "extr_.obs-studiodepslibcaptionsrceia608_from_utf8.c__eia608_from_utf8_with_main.c" 2

typedef unsigned long size_t;
typedef int scalar_t__;

typedef int bool;






typedef int utf8_char_t ;
typedef int uint16_t ;



uint16_t _eia608_from_utf8 (const utf8_char_t* s)
{
    const unsigned char* YYMARKER = 0;
    const unsigned char* YYCURSOR = (const unsigned char*) s;

    if (0==s) { return 0x0000;}


{
    unsigned char yych;
    yych = *YYCURSOR;
    if (yych <= '`') {
        if (yych <= '*') {
            if (yych <= '&') {
                if (yych <= 0x00) goto yy2;
                if (yych <= 0x1F) goto yy4;
                goto yy6;
            } else {
                if (yych <= '\'') goto yy8;
                if (yych <= ')') goto yy6;
                goto yy10;
            }
        } else {
            if (yych <= ']') {
                if (yych == '\\') goto yy12;
                goto yy6;
            } else {
                if (yych <= '^') goto yy14;
                if (yych <= '_') goto yy16;
                goto yy18;
            }
        }
    } else {
        if (yych <= 0x7F) {
            if (yych <= '|') {
                if (yych <= 'z') goto yy6;
                if (yych <= '{') goto yy20;
                goto yy22;
            } else {
                if (yych <= '}') goto yy24;
                if (yych <= '~') goto yy26;
                goto yy28;
            }
        } else {
            if (yych <= 0xC3) {
                if (yych <= 0xC1) goto yy4;
                if (yych <= 0xC2) goto yy30;
                goto yy31;
            } else {
                if (yych == 0xE2) goto yy32;
                goto yy4;
            }
        }
    }
yy2:
    ++YYCURSOR;
    { return 0x0000; }
yy4:
    ++YYCURSOR;
yy5:
    { return 0x0000; }
yy6:
    ++YYCURSOR;
    { return (s[0]<<8) &0xFF00; }
yy8:
    ++YYCURSOR;
    { return 0x1229; }
yy10:
    ++YYCURSOR;
    { return 0x1228; }
yy12:
    ++YYCURSOR;
    { return 0x132B; }
yy14:
    ++YYCURSOR;
    { return 0x132C; }
yy16:
    ++YYCURSOR;
    { return 0x132D; }
yy18:
    ++YYCURSOR;
    { return 0x1226; }
yy20:
    ++YYCURSOR;
    { return 0x1329; }
yy22:
    ++YYCURSOR;
    { return 0x132E; }
yy24:
    ++YYCURSOR;
    { return 0x132A; }
yy26:
    ++YYCURSOR;
    { return 0x132F; }
yy28:
    ++YYCURSOR;
    { return 0x0000; }
yy30:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0xA0: goto yy33;
    case 0xA1: goto yy35;
    case 0xA2: goto yy37;
    case 0xA3: goto yy39;
    case 0xA4: goto yy41;
    case 0xA5: goto yy43;
    case 0xA6: goto yy45;
    case 0xA9: goto yy47;
    case 0xAB: goto yy49;
    case 0xAE: goto yy51;
    case 0xB0: goto yy53;
    case 0xBB: goto yy55;
    case 0xBD: goto yy57;
    case 0xBF: goto yy59;
    default: goto yy5;
    }
yy31:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0x80: goto yy61;
    case 0x81: goto yy63;
    case 0x82: goto yy65;
    case 0x83: goto yy67;
    case 0x84: goto yy69;
    case 0x85: goto yy71;
    case 0x87: goto yy73;
    case 0x88: goto yy75;
    case 0x89: goto yy77;
    case 0x8A: goto yy79;
    case 0x8B: goto yy81;
    case 0x8C: goto yy83;
    case 0x8D: goto yy85;
    case 0x8E: goto yy87;
    case 0x8F: goto yy89;
    case 0x91: goto yy91;
    case 0x92: goto yy93;
    case 0x93: goto yy95;
    case 0x94: goto yy97;
    case 0x95: goto yy99;
    case 0x96: goto yy101;
    case 0x98: goto yy103;
    case 0x99: goto yy105;
    case 0x9A: goto yy107;
    case 0x9B: goto yy109;
    case 0x9C: goto yy111;
    case 0x9F: goto yy113;
    case 0xA0: goto yy115;
    case 0xA1: goto yy117;
    case 0xA2: goto yy119;
    case 0xA3: goto yy121;
    case 0xA4: goto yy123;
    case 0xA5: goto yy125;
    case 0xA7: goto yy127;
    case 0xA8: goto yy129;
    case 0xA9: goto yy131;
    case 0xAA: goto yy133;
    case 0xAB: goto yy135;
    case 0xAC: goto yy137;
    case 0xAD: goto yy139;
    case 0xAE: goto yy141;
    case 0xAF: goto yy143;
    case 0xB1: goto yy145;
    case 0xB2: goto yy147;
    case 0xB3: goto yy149;
    case 0xB4: goto yy151;
    case 0xB5: goto yy153;
    case 0xB6: goto yy155;
    case 0xB7: goto yy157;
    case 0xB8: goto yy159;
    case 0xB9: goto yy161;
    case 0xBA: goto yy163;
    case 0xBB: goto yy165;
    case 0xBC: goto yy167;
    default: goto yy5;
    }
yy32:
    yych = *(YYMARKER = ++YYCURSOR);
    switch (yych) {
    case 0x80: goto yy169;
    case 0x84: goto yy171;
    case 0x94: goto yy172;
    case 0x96: goto yy173;
    case 0x99: goto yy174;
    default: goto yy5;
    }
yy33:
    ++YYCURSOR;
    { return 0x1139; }
yy35:
    ++YYCURSOR;
    { return 0x1227; }
yy37:
    ++YYCURSOR;
    { return 0x1135; }
yy39:
    ++YYCURSOR;
    { return 0x1136; }
yy41:
    ++YYCURSOR;
    { return 0x1336; }
yy43:
    ++YYCURSOR;
    { return 0x1335; }
yy45:
    ++YYCURSOR;
    { return 0x1337; }
yy47:
    ++YYCURSOR;
    { return 0x122B; }
yy49:
    ++YYCURSOR;
    { return 0x123E; }
yy51:
    ++YYCURSOR;
    { return 0x1130; }
yy53:
    ++YYCURSOR;
    { return 0x1131; }
yy55:
    ++YYCURSOR;
    { return 0x123F; }
yy57:
    ++YYCURSOR;
    { return 0x1132; }
yy59:
    ++YYCURSOR;
    { return 0x1133; }
yy61:
    ++YYCURSOR;
    { return 0x1230; }
yy63:
    ++YYCURSOR;
    { return 0x1220; }
yy65:
    ++YYCURSOR;
    { return 0x1231; }
yy67:
    ++YYCURSOR;
    { return 0x1320; }
yy69:
    ++YYCURSOR;
    { return 0x1330; }
yy71:
    ++YYCURSOR;
    { return 0x1338; }
yy73:
    ++YYCURSOR;
    { return 0x1232; }
yy75:
    ++YYCURSOR;
    { return 0x1233; }
yy77:
    ++YYCURSOR;
    { return 0x1221; }
yy79:
    ++YYCURSOR;
    { return 0x1234; }
yy81:
    ++YYCURSOR;
    { return 0x1235; }
yy83:
    ++YYCURSOR;
    { return 0x1323; }
yy85:
    ++YYCURSOR;
    { return 0x1322; }
yy87:
    ++YYCURSOR;
    { return 0x1237; }
yy89:
    ++YYCURSOR;
    { return 0x1238; }
yy91:
    ++YYCURSOR;
    { return 0x7D00; }
yy93:
    ++YYCURSOR;
    { return 0x1325; }
yy95:
    ++YYCURSOR;
    { return 0x1222; }
yy97:
    ++YYCURSOR;
    { return 0x123A; }
yy99:
    ++YYCURSOR;
    { return 0x1327; }
yy101:
    ++YYCURSOR;
    { return 0x1332; }
yy103:
    ++YYCURSOR;
    { return 0x133A; }
yy105:
    ++YYCURSOR;
    { return 0x123B; }
yy107:
    ++YYCURSOR;
    { return 0x1223; }
yy109:
    ++YYCURSOR;
    { return 0x123D; }
yy111:
    ++YYCURSOR;
    { return 0x1224; }
yy113:
    ++YYCURSOR;
    { return 0x1334; }
yy115:
    ++YYCURSOR;
    { return 0x1138; }
yy117:
    ++YYCURSOR;
    { return 0x2A00; }
yy119:
    ++YYCURSOR;
    { return 0x113B; }
yy121:
    ++YYCURSOR;
    { return 0x1321; }
yy123:
    ++YYCURSOR;
    { return 0x1331; }
yy125:
    ++YYCURSOR;
    { return 0x1339; }
yy127:
    ++YYCURSOR;
    { return 0x7B00; }
yy129:
    ++YYCURSOR;
    { return 0x113A; }
yy131:
    ++YYCURSOR;
    { return 0x5C00; }
yy133:
    ++YYCURSOR;
    { return 0x113C; }
yy135:
    ++YYCURSOR;
    { return 0x1236; }
yy137:
    ++YYCURSOR;
    { return 0x1324; }
yy139:
    ++YYCURSOR;
    { return 0x5E00; }
yy141:
    ++YYCURSOR;
    { return 0x113D; }
yy143:
    ++YYCURSOR;
    { return 0x1239; }
yy145:
    ++YYCURSOR;
    { return 0x7E00; }
yy147:
    ++YYCURSOR;
    { return 0x1326; }
yy149:
    ++YYCURSOR;
    { return 0x5F00; }
yy151:
    ++YYCURSOR;
    { return 0x113E; }
yy153:
    ++YYCURSOR;
    { return 0x1328; }
yy155:
    ++YYCURSOR;
    { return 0x1333; }
yy157:
    ++YYCURSOR;
    { return 0x7C00; }
yy159:
    ++YYCURSOR;
    { return 0x133B; }
yy161:
    ++YYCURSOR;
    { return 0x123C; }
yy163:
    ++YYCURSOR;
    { return 0x6000; }
yy165:
    ++YYCURSOR;
    { return 0x113F; }
yy167:
    ++YYCURSOR;
    { return 0x1225; }
yy169:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0x94: goto yy175;
    case 0x98: goto yy177;
    case 0x99: goto yy179;
    case 0x9C: goto yy181;
    case 0x9D: goto yy183;
    case 0xA2: goto yy185;
    default: goto yy170;
    }
yy170:
    YYCURSOR = YYMARKER;
    goto yy5;
yy171:
    yych = *++YYCURSOR;
    if (yych == 0xA0) goto yy187;
    if (yych == 0xA2) goto yy189;
    goto yy170;
yy172:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0x8C: goto yy191;
    case 0x90: goto yy193;
    case 0x94: goto yy195;
    case 0x98: goto yy197;
    default: goto yy170;
    }
yy173:
    yych = *++YYCURSOR;
    if (yych == 0x88) goto yy199;
    goto yy170;
yy174:
    yych = *++YYCURSOR;
    if (yych == 0xAA) goto yy201;
    goto yy170;
yy175:
    ++YYCURSOR;
    { return 0x122A; }
yy177:
    ++YYCURSOR;
    { return 0x1226; }
yy179:
    ++YYCURSOR;
    { return 0x2700; }
yy181:
    ++YYCURSOR;
    { return 0x122E; }
yy183:
    ++YYCURSOR;
    { return 0x122F; }
yy185:
    ++YYCURSOR;
    { return 0x122D; }
yy187:
    ++YYCURSOR;
    { return 0x122C; }
yy189:
    ++YYCURSOR;
    { return 0x1134; }
yy191:
    ++YYCURSOR;
    { return 0x133C; }
yy193:
    ++YYCURSOR;
    { return 0x133D; }
yy195:
    ++YYCURSOR;
    { return 0x133E; }
yy197:
    ++YYCURSOR;
    { return 0x133F; }
yy199:
    ++YYCURSOR;
    { return 0x7F00; }
yy201:
    ++YYCURSOR;
    { return 0x1137; }
}

}
int main() {
  const utf8_char_t * s;
  _eia608_from_utf8(s);
  return 0;
}
