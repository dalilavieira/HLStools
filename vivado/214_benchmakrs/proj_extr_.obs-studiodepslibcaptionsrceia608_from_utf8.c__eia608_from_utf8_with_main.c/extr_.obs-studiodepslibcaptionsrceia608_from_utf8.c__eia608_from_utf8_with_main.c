#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int utf8_char_t ;
typedef  int uint16_t ;

/* Variables and functions */

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
    { /*NULL*/ return 0x0000; }
yy4:
    ++YYCURSOR;
yy5:
    { /*DEFAULT_RULE*/ return 0x0000; }
yy6:
    ++YYCURSOR;
    { /*ASCII range*/ return (s[0]<<8) &0xFF00; }
yy8:
    ++YYCURSOR;
    { /*APOSTROPHE -> RIGHT_SINGLE_QUOTATION_MARK*/ return 0x1229; }
yy10:
    ++YYCURSOR;
    { /*ASTERISK*/ return 0x1228; }
yy12:
    ++YYCURSOR;
    { /*REVERSE_SOLIDUS*/ return 0x132B; }
yy14:
    ++YYCURSOR;
    { /*CIRCUMFLEX_ACCENT*/ return 0x132C; }
yy16:
    ++YYCURSOR;
    { /*LOW_LINE*/ return 0x132D; }
yy18:
    ++YYCURSOR;
    { /*GRAVE_ACCENT -> LEFT_SINGLE_QUOTATION_MARK*/ return 0x1226; }
yy20:
    ++YYCURSOR;
    { /*LEFT_CURLY_BRACKET*/ return 0x1329; }
yy22:
    ++YYCURSOR;
    { /*VERTICAL_LINE*/ return 0x132E; }
yy24:
    ++YYCURSOR;
    { /*RIGHT_CURLY_BRACKET*/ return 0x132A; }
yy26:
    ++YYCURSOR;
    { /*TILDE*/ return 0x132F; }
yy28:
    ++YYCURSOR;
    { /*DEL/BACKSPACE. Need to set bits 9 and 12! return 0x1421;*/ return 0x0000; }
yy30:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0xA0:    goto yy33;
    case 0xA1:    goto yy35;
    case 0xA2:    goto yy37;
    case 0xA3:    goto yy39;
    case 0xA4:    goto yy41;
    case 0xA5:    goto yy43;
    case 0xA6:    goto yy45;
    case 0xA9:    goto yy47;
    case 0xAB:    goto yy49;
    case 0xAE:    goto yy51;
    case 0xB0:    goto yy53;
    case 0xBB:    goto yy55;
    case 0xBD:    goto yy57;
    case 0xBF:    goto yy59;
    default:    goto yy5;
    }
yy31:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0x80:    goto yy61;
    case 0x81:    goto yy63;
    case 0x82:    goto yy65;
    case 0x83:    goto yy67;
    case 0x84:    goto yy69;
    case 0x85:    goto yy71;
    case 0x87:    goto yy73;
    case 0x88:    goto yy75;
    case 0x89:    goto yy77;
    case 0x8A:    goto yy79;
    case 0x8B:    goto yy81;
    case 0x8C:    goto yy83;
    case 0x8D:    goto yy85;
    case 0x8E:    goto yy87;
    case 0x8F:    goto yy89;
    case 0x91:    goto yy91;
    case 0x92:    goto yy93;
    case 0x93:    goto yy95;
    case 0x94:    goto yy97;
    case 0x95:    goto yy99;
    case 0x96:    goto yy101;
    case 0x98:    goto yy103;
    case 0x99:    goto yy105;
    case 0x9A:    goto yy107;
    case 0x9B:    goto yy109;
    case 0x9C:    goto yy111;
    case 0x9F:    goto yy113;
    case 0xA0:    goto yy115;
    case 0xA1:    goto yy117;
    case 0xA2:    goto yy119;
    case 0xA3:    goto yy121;
    case 0xA4:    goto yy123;
    case 0xA5:    goto yy125;
    case 0xA7:    goto yy127;
    case 0xA8:    goto yy129;
    case 0xA9:    goto yy131;
    case 0xAA:    goto yy133;
    case 0xAB:    goto yy135;
    case 0xAC:    goto yy137;
    case 0xAD:    goto yy139;
    case 0xAE:    goto yy141;
    case 0xAF:    goto yy143;
    case 0xB1:    goto yy145;
    case 0xB2:    goto yy147;
    case 0xB3:    goto yy149;
    case 0xB4:    goto yy151;
    case 0xB5:    goto yy153;
    case 0xB6:    goto yy155;
    case 0xB7:    goto yy157;
    case 0xB8:    goto yy159;
    case 0xB9:    goto yy161;
    case 0xBA:    goto yy163;
    case 0xBB:    goto yy165;
    case 0xBC:    goto yy167;
    default:    goto yy5;
    }
yy32:
    yych = *(YYMARKER = ++YYCURSOR);
    switch (yych) {
    case 0x80:    goto yy169;
    case 0x84:    goto yy171;
    case 0x94:    goto yy172;
    case 0x96:    goto yy173;
    case 0x99:    goto yy174;
    default:    goto yy5;
    }
yy33:
    ++YYCURSOR;
    { /*NO_BREAK_SPACE*/ return 0x1139; }
yy35:
    ++YYCURSOR;
    { /*INVERTED_EXCLAMATION_MARK*/ return 0x1227; }
yy37:
    ++YYCURSOR;
    { /*CENT_SIGN*/ return 0x1135; }
yy39:
    ++YYCURSOR;
    { /*POUND_SIGN*/ return 0x1136; }
yy41:
    ++YYCURSOR;
    { /*CURRENCY_SIGN*/ return 0x1336; }
yy43:
    ++YYCURSOR;
    { /*YEN_SIGN*/ return 0x1335; }
yy45:
    ++YYCURSOR;
    { /*BROKEN_BAR*/ return 0x1337; }
yy47:
    ++YYCURSOR;
    { /*COPYRIGHT_SIGN*/ return 0x122B; }
yy49:
    ++YYCURSOR;
    { /*LEFT_POINTING_DOUBLE_ANGLE_QUOTATION_MARK*/ return 0x123E; }
yy51:
    ++YYCURSOR;
    { /*REGISTERED_SIGN*/ return 0x1130; }
yy53:
    ++YYCURSOR;
    { /*DEGREE_SIGN*/ return 0x1131; }
yy55:
    ++YYCURSOR;
    { /*RIGHT_POINTING_DOUBLE_ANGLE_QUOTATION_MARK*/ return 0x123F; }
yy57:
    ++YYCURSOR;
    { /*VULGAR_FRACTION_ONE_HALF*/ return 0x1132; }
yy59:
    ++YYCURSOR;
    { /*INVERTED_QUESTION_MARK*/ return 0x1133; }
yy61:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_A_WITH_GRAVE*/ return 0x1230; }
yy63:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_A_WITH_ACUTE*/ return 0x1220; }
yy65:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_A_WITH_CIRCUMFLEX*/ return 0x1231; }
yy67:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_A_WITH_TILDE*/ return 0x1320; }
yy69:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_A_WITH_DIAERESIS*/ return 0x1330; }
yy71:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE*/ return 0x1338; }
yy73:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_C_WITH_CEDILLA*/ return 0x1232; }
yy75:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_E_WITH_GRAVE*/ return 0x1233; }
yy77:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_E_WITH_ACUTE*/ return 0x1221; }
yy79:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_E_WITH_CIRCUMFLEX*/ return 0x1234; }
yy81:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_E_WITH_DIAERESIS*/ return 0x1235; }
yy83:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_I_WITH_GRAVE*/ return 0x1323; }
yy85:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_I_WITH_ACUTE*/ return 0x1322; }
yy87:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_I_WITH_CIRCUMFLEX*/ return 0x1237; }
yy89:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_I_WITH_DIAERESIS*/ return 0x1238; }
yy91:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_N_WITH_TILDE*/ return 0x7D00; }
yy93:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_O_WITH_GRAVE*/ return 0x1325; }
yy95:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_O_WITH_ACUTE*/ return 0x1222; }
yy97:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_O_WITH_CIRCUMFLEX*/ return 0x123A; }
yy99:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_O_WITH_TILDE*/ return 0x1327; }
yy101:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_O_WITH_DIAERESIS*/ return 0x1332; }
yy103:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_O_WITH_STROKE*/ return 0x133A; }
yy105:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_U_WITH_GRAVE*/ return 0x123B; }
yy107:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_U_WITH_ACUTE*/ return 0x1223; }
yy109:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_U_WITH_CIRCUMFLEX*/ return 0x123D; }
yy111:
    ++YYCURSOR;
    { /*LATIN_CAPITAL_LETTER_U_WITH_DIAERESIS*/ return 0x1224; }
yy113:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_SHARP_S*/ return 0x1334; }
yy115:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_A_WITH_GRAVE*/ return 0x1138; }
yy117:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_A_WITH_ACUTE*/ return 0x2A00; }
yy119:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_A_WITH_CIRCUMFLEX*/ return 0x113B; }
yy121:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_A_WITH_TILDE*/ return 0x1321; }
yy123:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_A_WITH_DIAERESIS*/ return 0x1331; }
yy125:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_A_WITH_RING_ABOVE*/ return 0x1339; }
yy127:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_C_WITH_CEDILLA*/ return 0x7B00; }
yy129:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_E_WITH_GRAVE*/ return 0x113A; }
yy131:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_E_WITH_ACUTE*/ return 0x5C00; }
yy133:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_E_WITH_CIRCUMFLEX*/ return 0x113C; }
yy135:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_E_WITH_DIAERESIS*/ return 0x1236; }
yy137:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_I_WITH_GRAVE*/ return 0x1324; }
yy139:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_I_WITH_ACUTE*/ return 0x5E00; }
yy141:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_I_WITH_CIRCUMFLEX*/ return 0x113D; }
yy143:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_I_WITH_DIAERESIS*/ return 0x1239; }
yy145:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_N_WITH_TILDE*/ return 0x7E00; }
yy147:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_O_WITH_GRAVE*/ return 0x1326; }
yy149:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_O_WITH_ACUTE*/ return 0x5F00; }
yy151:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_O_WITH_CIRCUMFLEX*/ return 0x113E; }
yy153:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_O_WITH_TILDE*/ return 0x1328; }
yy155:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_O_WITH_DIAERESIS*/ return 0x1333; }
yy157:
    ++YYCURSOR;
    { /*DIVISION_SIGN*/ return 0x7C00; }
yy159:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_O_WITH_STROKE*/ return 0x133B; }
yy161:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_U_WITH_GRAVE*/ return 0x123C; }
yy163:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_U_WITH_ACUTE*/ return 0x6000; }
yy165:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_U_WITH_CIRCUMFLEX*/ return 0x113F; }
yy167:
    ++YYCURSOR;
    { /*LATIN_SMALL_LETTER_U_WITH_DIAERESIS*/ return 0x1225; }
yy169:
    yych = *++YYCURSOR;
    switch (yych) {
    case 0x94:    goto yy175;
    case 0x98:    goto yy177;
    case 0x99:    goto yy179;
    case 0x9C:    goto yy181;
    case 0x9D:    goto yy183;
    case 0xA2:    goto yy185;
    default:    goto yy170;
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
    case 0x8C:    goto yy191;
    case 0x90:    goto yy193;
    case 0x94:    goto yy195;
    case 0x98:    goto yy197;
    default:    goto yy170;
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
    { /*EM_DASH*/ return 0x122A; }
yy177:
    ++YYCURSOR;
    { /*LEFT_SINGLE_QUOTATION_MARK*/ return 0x1226; }
yy179:
    ++YYCURSOR;
    { /*RIGHT_SINGLE_QUOTATION_MARK -> APOSTROPHE*/ return 0x2700; }
yy181:
    ++YYCURSOR;
    { /*LEFT_DOUBLE_QUOTATION_MARK*/ return 0x122E; }
yy183:
    ++YYCURSOR;
    { /*RIGHT_DOUBLE_QUOTATION_MARK*/ return 0x122F; }
yy185:
    ++YYCURSOR;
    { /*BULLET*/ return 0x122D; }
yy187:
    ++YYCURSOR;
    { /*SERVICE_MARK*/ return 0x122C; }
yy189:
    ++YYCURSOR;
    { /*TRADE_MARK_SIGN*/ return 0x1134; }
yy191:
    ++YYCURSOR;
    { /*EIA608_CHAR_BOX_DRAWINGS_LIGHT_DOWN_AND_RIGHT*/ return 0x133C; }
yy193:
    ++YYCURSOR;
    { /*EIA608_CHAR_BOX_DRAWINGS_LIGHT_DOWN_AND_LEFT*/ return 0x133D; }
yy195:
    ++YYCURSOR;
    { /*EIA608_CHAR_BOX_DRAWINGS_LIGHT_UP_AND_RIGHT*/ return 0x133E; }
yy197:
    ++YYCURSOR;
    { /*EIA608_CHAR_BOX_DRAWINGS_LIGHT_UP_AND_LEFT*/ return 0x133F; }
yy199:
    ++YYCURSOR;
    { /*FULL_BLOCK*/ return 0x7F00; }
yy201:
    ++YYCURSOR;
    { /*EIGHTH_NOTE*/ return 0x1137; }
}

}/* Main routine for _eia608_from_utf8 */
int main() {
  const utf8_char_t * s;
  _eia608_from_utf8(s);
  return 0;
}