// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 19.4 (Release Build #64)
// 
// Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from emscripten_dom_vk_to_string_i_sfc_logic_A000001Zen_dom_vk_to_string0
// SystemVerilog created on Sun May 24 22:31:35 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_dom_vk_to_string_i_sfc_logic_A000001Zen_dom_vk_to_string0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [63:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_emscripten_dom_vk_to_string1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0894_q;
    wire [31:0] c_i32_1895_q;
    wire [31:0] c_i32_287911_q;
    wire [31:0] c_i32_2896_q;
    wire [31:0] c_i32_291912_q;
    wire [31:0] c_i32_293913_q;
    wire [31:0] c_i32_300914_q;
    wire [31:0] c_i32_3897_q;
    wire [31:0] c_i32_4898_q;
    wire [31:0] c_i32_5884_q;
    wire [31:0] c_i32_6885_q;
    wire [31:0] c_i32_7879_q;
    wire [63:0] c_i64_4613374868287651840839_q;
    wire [63:0] c_i64_4613656343264362496840_q;
    wire [63:0] c_i64_4613937818241073152842_q;
    wire [63:0] c_i64_4614219293217783808843_q;
    wire [63:0] c_i64_4614500768194494464844_q;
    wire [63:0] c_i64_4614782243171205120845_q;
    wire [63:0] c_i64_4615063718147915776846_q;
    wire [63:0] c_i64_4615345193124626432847_q;
    wire [63:0] c_i64_4615626668101337088848_q;
    wire [63:0] c_i64_4615908143078047744850_q;
    wire [63:0] c_i64_4616189618054758400851_q;
    wire [63:0] c_i64_4616471093031469056852_q;
    wire [63:0] c_i64_4616752568008179712853_q;
    wire [63:0] c_i64_4617034042984890368854_q;
    wire [63:0] c_i64_4617315517961601024855_q;
    wire [63:0] c_i64_4617596992938311680856_q;
    wire [63:0] c_i64_4617878467915022336857_q;
    wire [63:0] c_i64_4618159942891732992858_q;
    wire [63:0] c_i64_4618441417868443648859_q;
    wire [63:0] c_i64_4618722892845154304860_q;
    wire [63:0] c_i64_4619004367821864960862_q;
    wire [63:0] c_i64_4619285842798575616863_q;
    wire [63:0] c_i64_4619567317775286272864_q;
    wire [63:0] c_i64_4619848792751996928865_q;
    wire [63:0] c_i64_4620130267728707584866_q;
    wire [63:0] c_i64_4620411742705418240867_q;
    wire [63:0] c_i64_4620693217682128896868_q;
    wire [63:0] c_i64_4620974692658839552869_q;
    wire [63:0] c_i64_4621256167635550208870_q;
    wire [63:0] c_i64_4621537642612260864871_q;
    wire [63:0] c_i64_4621819117588971520872_q;
    wire [63:0] c_i64_4622100592565682176873_q;
    wire [63:0] c_i64_4622382067542392832874_q;
    wire [63:0] c_i64_4622663542519103488875_q;
    wire [63:0] c_i64_4622945017495814144876_q;
    wire [63:0] c_i64_4623226492472524800877_q;
    wire [63:0] c_i64_4623507967449235456878_q;
    wire [63:0] c_i64_4623789442425946112893_q;
    wire [63:0] c_i64_4624070917402656768892_q;
    wire [63:0] c_i64_4624352392379367424891_q;
    wire [63:0] c_i64_4624633867356078080890_q;
    wire [63:0] c_i64_4624915342332788736889_q;
    wire [63:0] c_i64_4625196817309499392888_q;
    wire [63:0] c_i64_4625478292286210048887_q;
    wire [63:0] c_i64_4625759767262920704883_q;
    wire [63:0] c_i64_4626041242239631360882_q;
    wire [63:0] c_i64_4626322717216342016881_q;
    wire [63:0] c_i64_4626604192193052672900_q;
    wire [63:0] c_i64_4626885667169763328901_q;
    wire [63:0] c_i64_4627167142146473984902_q;
    wire [63:0] c_i64_4627448617123184640903_q;
    wire [63:0] c_i64_4627730092099895296904_q;
    wire [63:0] c_i64_4628011567076605952905_q;
    wire [63:0] c_i64_4628293042053316608909_q;
    wire [63:0] c_i64_4628574517030027264910_q;
    wire [63:0] c_i64_4628855992006737920908_q;
    wire [63:0] c_i64_4629137466983448576907_q;
    wire [63:0] c_i64_4629418941960159232915_q;
    wire [63:0] c_i64_4629700416936869888916_q;
    wire [63:0] c_i64_4629981891913580544917_q;
    wire [63:0] c_i64_4630263366890291200918_q;
    wire [63:0] c_i64_4630544841867001856919_q;
    wire [63:0] c_i64_4630826316843712512920_q;
    wire [63:0] c_i64_4631107791820423168921_q;
    wire [63:0] c_i64_4631389266797133824922_q;
    wire [63:0] c_i64_4631670741773844480923_q;
    wire [63:0] c_i64_4631952216750555136924_q;
    wire [63:0] c_i64_4632233691727265792925_q;
    wire [63:0] c_i64_4632515166703976448926_q;
    wire [63:0] c_i64_4632796641680687104927_q;
    wire [63:0] c_i64_4633078116657397760928_q;
    wire [63:0] c_i64_4633359591634108416929_q;
    wire [63:0] c_i64_4633641066610819072930_q;
    wire [63:0] c_i64_4633922541587529728931_q;
    wire [63:0] c_i64_4634204016564240384932_q;
    wire [63:0] c_i64_4634485491540951040933_q;
    wire [63:0] c_i64_4634766966517661696934_q;
    wire [63:0] c_i64_4635048441494372352935_q;
    wire [63:0] c_i64_4635329916471083008936_q;
    wire [63:0] c_i64_4635611391447793664937_q;
    wire [63:0] c_i64_4635892866424504320938_q;
    wire [63:0] c_i64_4636174341401214976939_q;
    wire [63:0] c_i64_4636455816377925632940_q;
    wire [63:0] c_i64_4636737291354636288941_q;
    wire [63:0] c_i64_4637018766331346944942_q;
    wire [63:0] c_i64_4637300241308057600943_q;
    wire [63:0] c_i64_4637581716284768256944_q;
    wire [63:0] c_i64_4637863191261478912945_q;
    wire [63:0] c_i64_4638144666238189568946_q;
    wire [63:0] c_i64_4638426141214900224947_q;
    wire [63:0] c_i64_4638707616191610880948_q;
    wire [63:0] c_i64_4638989091168321536949_q;
    wire [63:0] c_i64_4639270566145032192950_q;
    wire [63:0] c_i64_4639552041121742848951_q;
    wire [63:0] c_i64_4639833516098453504953_q;
    wire [63:0] c_i64_4640114991075164160954_q;
    wire [63:0] c_i64_4640396466051874816955_q;
    wire [63:0] c_i64_4640677941028585472956_q;
    wire [63:0] c_i64_4640959416005296128957_q;
    wire [63:0] c_i64_4641240890982006784958_q;
    wire [63:0] c_i64_4641522365958717440959_q;
    wire [63:0] c_i64_4641803840935428096960_q;
    wire [63:0] c_i64_4642085315912138752961_q;
    wire [63:0] c_i64_4642366790888849408962_q;
    wire [63:0] c_i64_4642648265865560064963_q;
    wire [63:0] c_i64_4642929740842270720964_q;
    wire [63:0] c_i64_4643211215818981376965_q;
    wire [63:0] c_i64_4643492690795692032966_q;
    wire [63:0] c_i64_4643774165772402688967_q;
    wire [63:0] c_i64_4644055640749113344968_q;
    wire [63:0] c_i64_4644337115725824000969_q;
    wire [63:0] c_i64_4644618590702534656970_q;
    wire [63:0] c_i64_4644900065679245312971_q;
    wire [63:0] c_i64_4645181540655955968972_q;
    wire [63:0] c_i64_4645463015632666624973_q;
    wire [63:0] c_i64_4645744490609377280974_q;
    wire [63:0] c_i64_4646025965586087936975_q;
    wire [63:0] c_i64_4646307440562798592976_q;
    wire [63:0] c_i64_4646588915539509248977_q;
    wire [63:0] c_i64_4646870390516219904978_q;
    wire [63:0] c_i64_4647151865492930560979_q;
    wire [63:0] c_i64_4647433340469641216980_q;
    wire [63:0] c_i64_4647714815446351872981_q;
    wire [63:0] c_i64_4647996290423062528982_q;
    wire [63:0] c_i64_4648277765399773184983_q;
    wire [63:0] c_i64_4648559240376483840984_q;
    wire [63:0] c_i64_4648840715353194496985_q;
    wire [63:0] c_i64_4649122190329905152986_q;
    wire [63:0] c_i64_4649403665306615808987_q;
    wire [63:0] c_i64_4649685140283326464988_q;
    wire [63:0] c_i64_4649966615260037120989_q;
    wire [63:0] c_i64_4650248090236747776990_q;
    wire [63:0] c_i64_4650529565213458432991_q;
    wire [63:0] c_i64_4650811040190169088992_q;
    wire [63:0] c_i64_4651092515166879744993_q;
    wire [63:0] c_i64_4651373990143590400995_q;
    wire [63:0] c_i64_4651655465120301056996_q;
    wire [63:0] c_i64_4651936940097011712997_q;
    wire [63:0] c_i64_4652218415073722368998_q;
    wire [63:0] c_i64_46524998900504330241000_q;
    wire [63:0] c_i64_46527813650271436801001_q;
    wire [63:0] c_i64_46530628400038543361002_q;
    wire [63:0] c_i64_46533443149805649921003_q;
    wire [63:0] c_i64_46536257899572756481004_q;
    wire [63:0] c_i64_46539072649339863041005_q;
    wire [63:0] c_i64_46541887399106969601006_q;
    wire [63:0] c_i64_46544702148874076161007_q;
    wire [63:0] c_i64_46547516898641182721008_q;
    wire [63:0] c_i64_46550331648408289281009_q;
    wire [63:0] c_i64_46553146398175395841010_q;
    wire [63:0] c_i64_46555961147942502401011_q;
    wire [63:0] c_i64_46558775897709608961012_q;
    wire [63:0] c_i64_46561590647476715521014_q;
    wire [63:0] c_i64_46564405397243822081015_q;
    wire [63:0] c_i64_46567220147010928641017_q;
    wire [63:0] c_i64_46570034896778035201018_q;
    wire [63:0] c_i64_46572849646545141761019_q;
    wire [63:0] c_i64_46575664396312248321020_q;
    wire [63:0] c_i64_46578479146079354881022_q;
    wire [63:0] c_i64_46581293895846461441023_q;
    wire [63:0] c_i64_46584108645613568001024_q;
    wire [63:0] c_i64_46586923395380674561025_q;
    wire [63:0] c_i64_46589738145147781121026_q;
    wire [63:0] c_i64_46592552894914887681027_q;
    wire [63:0] c_i64_46595367644681994241028_q;
    wire [63:0] c_i64_46598182394449100801029_q;
    wire [63:0] c_i64_46600997144216207361030_q;
    wire [63:0] c_i64_46603811893983313921031_q;
    wire [63:0] c_i64_46606626643750420481032_q;
    wire [63:0] c_i64_46609441393517527041033_q;
    wire [63:0] c_i64_46612256143284633601034_q;
    wire [63:0] c_i64_46615070893051740161035_q;
    wire [63:0] c_i64_46617885642818846721036_q;
    wire [63:0] c_i64_46620700392585953281037_q;
    wire [63:0] c_i64_46623515142353059841038_q;
    wire [63:0] c_i64_46626329892120166401040_q;
    wire [63:0] c_i64_46629144641887272961041_q;
    wire [63:0] c_i64_46631959391654379521042_q;
    wire [63:0] c_i64_46634774141421486081043_q;
    wire [63:0] c_i64_46637588891188592641044_q;
    wire [63:0] c_i64_46640403640955699201045_q;
    wire [63:0] c_i64_46643218390722805761046_q;
    wire [63:0] c_i64_46646033140489912321047_q;
    wire [63:0] c_i64_46648847890257018881049_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [0:0] i_acl_1003_emscripten_dom_vk_to_string470_s;
    reg [63:0] i_acl_1003_emscripten_dom_vk_to_string470_q;
    wire [0:0] i_acl_1007_emscripten_dom_vk_to_string471_q;
    wire [0:0] i_acl_1011_emscripten_dom_vk_to_string472_s;
    reg [63:0] i_acl_1011_emscripten_dom_vk_to_string472_q;
    wire [0:0] i_acl_1012_emscripten_dom_vk_to_string473_q;
    wire [0:0] i_acl_1019_emscripten_dom_vk_to_string474_s;
    reg [63:0] i_acl_1019_emscripten_dom_vk_to_string474_q;
    wire [0:0] i_acl_1020_emscripten_dom_vk_to_string475_q;
    wire [0:0] i_acl_1026_emscripten_dom_vk_to_string476_s;
    reg [63:0] i_acl_1026_emscripten_dom_vk_to_string476_q;
    wire [0:0] i_acl_1028_emscripten_dom_vk_to_string477_qi;
    reg [0:0] i_acl_1028_emscripten_dom_vk_to_string477_q;
    wire [0:0] i_acl_1034_emscripten_dom_vk_to_string478_s;
    reg [63:0] i_acl_1034_emscripten_dom_vk_to_string478_q;
    wire [0:0] i_acl_1035_emscripten_dom_vk_to_string479_qi;
    reg [0:0] i_acl_1035_emscripten_dom_vk_to_string479_q;
    wire [0:0] i_acl_1042_emscripten_dom_vk_to_string480_s;
    reg [63:0] i_acl_1042_emscripten_dom_vk_to_string480_q;
    wire [0:0] i_acl_1044_emscripten_dom_vk_to_string481_qi;
    reg [0:0] i_acl_1044_emscripten_dom_vk_to_string481_q;
    wire [0:0] i_acl_1049_emscripten_dom_vk_to_string482_s;
    reg [63:0] i_acl_1049_emscripten_dom_vk_to_string482_q;
    wire [0:0] i_acl_1052_emscripten_dom_vk_to_string483_qi;
    reg [0:0] i_acl_1052_emscripten_dom_vk_to_string483_q;
    wire [0:0] i_acl_1057_emscripten_dom_vk_to_string484_s;
    reg [63:0] i_acl_1057_emscripten_dom_vk_to_string484_q;
    wire [0:0] i_acl_1058_emscripten_dom_vk_to_string485_qi;
    reg [0:0] i_acl_1058_emscripten_dom_vk_to_string485_q;
    wire [0:0] i_acl_1065_emscripten_dom_vk_to_string486_s;
    reg [63:0] i_acl_1065_emscripten_dom_vk_to_string486_q;
    wire [0:0] i_acl_1066_emscripten_dom_vk_to_string487_qi;
    reg [0:0] i_acl_1066_emscripten_dom_vk_to_string487_q;
    wire [0:0] i_acl_1073_emscripten_dom_vk_to_string488_s;
    reg [63:0] i_acl_1073_emscripten_dom_vk_to_string488_q;
    wire [0:0] i_acl_1081_emscripten_dom_vk_to_string491_s;
    reg [63:0] i_acl_1081_emscripten_dom_vk_to_string491_q;
    wire [0:0] i_acl_1082_emscripten_dom_vk_to_string492_qi;
    reg [0:0] i_acl_1082_emscripten_dom_vk_to_string492_q;
    wire [0:0] i_acl_1089_emscripten_dom_vk_to_string493_s;
    reg [63:0] i_acl_1089_emscripten_dom_vk_to_string493_q;
    wire [0:0] i_acl_1092_emscripten_dom_vk_to_string494_qi;
    reg [0:0] i_acl_1092_emscripten_dom_vk_to_string494_q;
    wire [0:0] i_acl_1097_emscripten_dom_vk_to_string495_s;
    reg [63:0] i_acl_1097_emscripten_dom_vk_to_string495_q;
    wire [0:0] i_acl_1099_emscripten_dom_vk_to_string496_qi;
    reg [0:0] i_acl_1099_emscripten_dom_vk_to_string496_q;
    wire [0:0] i_acl_1105_emscripten_dom_vk_to_string497_s;
    reg [63:0] i_acl_1105_emscripten_dom_vk_to_string497_q;
    wire [0:0] i_acl_1107_emscripten_dom_vk_to_string498_qi;
    reg [0:0] i_acl_1107_emscripten_dom_vk_to_string498_q;
    wire [0:0] i_acl_1112_emscripten_dom_vk_to_string499_s;
    reg [63:0] i_acl_1112_emscripten_dom_vk_to_string499_q;
    wire [0:0] i_acl_1113_emscripten_dom_vk_to_string500_q;
    wire [0:0] i_acl_1119_emscripten_dom_vk_to_string501_s;
    reg [63:0] i_acl_1119_emscripten_dom_vk_to_string501_q;
    wire [0:0] i_acl_1120_emscripten_dom_vk_to_string502_q;
    wire [0:0] i_acl_1127_emscripten_dom_vk_to_string503_s;
    reg [63:0] i_acl_1127_emscripten_dom_vk_to_string503_q;
    wire [0:0] i_acl_1128_emscripten_dom_vk_to_string504_q;
    wire [0:0] i_acl_1134_emscripten_dom_vk_to_string505_s;
    reg [63:0] i_acl_1134_emscripten_dom_vk_to_string505_q;
    wire [0:0] i_acl_1136_emscripten_dom_vk_to_string506_qi;
    reg [0:0] i_acl_1136_emscripten_dom_vk_to_string506_q;
    wire [0:0] i_acl_1142_emscripten_dom_vk_to_string507_s;
    reg [63:0] i_acl_1142_emscripten_dom_vk_to_string507_q;
    wire [0:0] i_acl_1143_emscripten_dom_vk_to_string508_qi;
    reg [0:0] i_acl_1143_emscripten_dom_vk_to_string508_q;
    wire [0:0] i_acl_1150_emscripten_dom_vk_to_string509_s;
    reg [63:0] i_acl_1150_emscripten_dom_vk_to_string509_q;
    wire [0:0] i_acl_1152_emscripten_dom_vk_to_string510_qi;
    reg [0:0] i_acl_1152_emscripten_dom_vk_to_string510_q;
    wire [0:0] i_acl_1157_emscripten_dom_vk_to_string511_s;
    reg [63:0] i_acl_1157_emscripten_dom_vk_to_string511_q;
    wire [0:0] i_acl_1160_emscripten_dom_vk_to_string512_qi;
    reg [0:0] i_acl_1160_emscripten_dom_vk_to_string512_q;
    wire [0:0] i_acl_1165_emscripten_dom_vk_to_string513_s;
    reg [63:0] i_acl_1165_emscripten_dom_vk_to_string513_q;
    wire [0:0] i_acl_1166_emscripten_dom_vk_to_string514_qi;
    reg [0:0] i_acl_1166_emscripten_dom_vk_to_string514_q;
    wire [0:0] i_acl_1173_emscripten_dom_vk_to_string515_s;
    reg [63:0] i_acl_1173_emscripten_dom_vk_to_string515_q;
    wire [0:0] i_acl_1174_emscripten_dom_vk_to_string516_qi;
    reg [0:0] i_acl_1174_emscripten_dom_vk_to_string516_q;
    wire [0:0] i_acl_1180_emscripten_dom_vk_to_string517_s;
    reg [63:0] i_acl_1180_emscripten_dom_vk_to_string517_q;
    wire [0:0] i_acl_1182_emscripten_dom_vk_to_string518_q;
    wire [0:0] i_acl_1188_emscripten_dom_vk_to_string519_s;
    reg [63:0] i_acl_1188_emscripten_dom_vk_to_string519_q;
    wire [0:0] i_acl_1189_emscripten_dom_vk_to_string520_qi;
    reg [0:0] i_acl_1189_emscripten_dom_vk_to_string520_q;
    wire [0:0] i_acl_1196_emscripten_dom_vk_to_string521_s;
    reg [63:0] i_acl_1196_emscripten_dom_vk_to_string521_q;
    wire [0:0] i_acl_1199_emscripten_dom_vk_to_string522_q;
    wire [0:0] i_acl_1203_emscripten_dom_vk_to_string523_s;
    reg [63:0] i_acl_1203_emscripten_dom_vk_to_string523_q;
    wire [0:0] i_acl_1207_emscripten_dom_vk_to_string524_q;
    wire [0:0] i_acl_1211_emscripten_dom_vk_to_string525_s;
    reg [63:0] i_acl_1211_emscripten_dom_vk_to_string525_q;
    wire [0:0] i_acl_1212_emscripten_dom_vk_to_string526_q;
    wire [0:0] i_acl_1219_emscripten_dom_vk_to_string527_s;
    reg [63:0] i_acl_1219_emscripten_dom_vk_to_string527_q;
    wire [0:0] i_acl_1220_emscripten_dom_vk_to_string528_q;
    wire [0:0] i_acl_1226_emscripten_dom_vk_to_string529_s;
    reg [63:0] i_acl_1226_emscripten_dom_vk_to_string529_q;
    wire [0:0] i_acl_1228_emscripten_dom_vk_to_string530_q;
    wire [0:0] i_acl_1234_emscripten_dom_vk_to_string531_s;
    reg [63:0] i_acl_1234_emscripten_dom_vk_to_string531_q;
    wire [0:0] i_acl_1235_emscripten_dom_vk_to_string532_q;
    wire [0:0] i_acl_1242_emscripten_dom_vk_to_string533_s;
    reg [63:0] i_acl_1242_emscripten_dom_vk_to_string533_q;
    wire [0:0] i_acl_1244_emscripten_dom_vk_to_string534_qi;
    reg [0:0] i_acl_1244_emscripten_dom_vk_to_string534_q;
    wire [0:0] i_acl_1249_emscripten_dom_vk_to_string535_s;
    reg [63:0] i_acl_1249_emscripten_dom_vk_to_string535_q;
    wire [0:0] i_acl_1252_emscripten_dom_vk_to_string536_qi;
    reg [0:0] i_acl_1252_emscripten_dom_vk_to_string536_q;
    wire [0:0] i_acl_1257_emscripten_dom_vk_to_string537_s;
    reg [63:0] i_acl_1257_emscripten_dom_vk_to_string537_q;
    wire [0:0] i_acl_1258_emscripten_dom_vk_to_string538_qi;
    reg [0:0] i_acl_1258_emscripten_dom_vk_to_string538_q;
    wire [0:0] i_acl_1264_emscripten_dom_vk_to_string539_s;
    reg [63:0] i_acl_1264_emscripten_dom_vk_to_string539_q;
    wire [0:0] i_acl_1265_emscripten_dom_vk_to_string540_qi;
    reg [0:0] i_acl_1265_emscripten_dom_vk_to_string540_q;
    wire [0:0] i_acl_1271_emscripten_dom_vk_to_string541_s;
    reg [63:0] i_acl_1271_emscripten_dom_vk_to_string541_q;
    wire [0:0] i_acl_1275_emscripten_dom_vk_to_string542_qi;
    reg [0:0] i_acl_1275_emscripten_dom_vk_to_string542_q;
    wire [0:0] i_acl_1278_emscripten_dom_vk_to_string543_s;
    reg [63:0] i_acl_1278_emscripten_dom_vk_to_string543_q;
    wire [0:0] i_acl_1283_emscripten_dom_vk_to_string544_qi;
    reg [0:0] i_acl_1283_emscripten_dom_vk_to_string544_q;
    wire [0:0] i_acl_1286_emscripten_dom_vk_to_string545_s;
    reg [63:0] i_acl_1286_emscripten_dom_vk_to_string545_q;
    wire [0:0] i_acl_1287_emscripten_dom_vk_to_string546_qi;
    reg [0:0] i_acl_1287_emscripten_dom_vk_to_string546_q;
    wire [0:0] i_acl_1294_emscripten_dom_vk_to_string547_s;
    reg [63:0] i_acl_1294_emscripten_dom_vk_to_string547_q;
    wire [0:0] i_acl_1295_emscripten_dom_vk_to_string548_qi;
    reg [0:0] i_acl_1295_emscripten_dom_vk_to_string548_q;
    wire [0:0] i_acl_1301_emscripten_dom_vk_to_string549_s;
    reg [63:0] i_acl_1301_emscripten_dom_vk_to_string549_q;
    wire [0:0] i_acl_1302_emscripten_dom_vk_to_string550_qi;
    reg [0:0] i_acl_1302_emscripten_dom_vk_to_string550_q;
    wire [0:0] i_acl_1308_emscripten_dom_vk_to_string551_s;
    reg [63:0] i_acl_1308_emscripten_dom_vk_to_string551_q;
    wire [0:0] i_acl_1309_emscripten_dom_vk_to_string552_qi;
    reg [0:0] i_acl_1309_emscripten_dom_vk_to_string552_q;
    wire [0:0] i_acl_1316_emscripten_dom_vk_to_string553_s;
    reg [63:0] i_acl_1316_emscripten_dom_vk_to_string553_q;
    wire [0:0] i_acl_1317_emscripten_dom_vk_to_string554_qi;
    reg [0:0] i_acl_1317_emscripten_dom_vk_to_string554_q;
    wire [0:0] i_acl_1323_emscripten_dom_vk_to_string555_s;
    reg [63:0] i_acl_1323_emscripten_dom_vk_to_string555_q;
    wire [0:0] i_acl_1327_emscripten_dom_vk_to_string556_qi;
    reg [0:0] i_acl_1327_emscripten_dom_vk_to_string556_q;
    wire [0:0] i_acl_1331_emscripten_dom_vk_to_string557_s;
    reg [63:0] i_acl_1331_emscripten_dom_vk_to_string557_q;
    wire [0:0] i_acl_1332_emscripten_dom_vk_to_string558_qi;
    reg [0:0] i_acl_1332_emscripten_dom_vk_to_string558_q;
    wire [0:0] i_acl_1338_emscripten_dom_vk_to_string559_s;
    reg [63:0] i_acl_1338_emscripten_dom_vk_to_string559_q;
    wire [0:0] i_acl_1341_emscripten_dom_vk_to_string560_qi;
    reg [0:0] i_acl_1341_emscripten_dom_vk_to_string560_q;
    wire [0:0] i_acl_1345_emscripten_dom_vk_to_string561_s;
    reg [63:0] i_acl_1345_emscripten_dom_vk_to_string561_q;
    wire [0:0] i_acl_1347_emscripten_dom_vk_to_string562_qi;
    reg [0:0] i_acl_1347_emscripten_dom_vk_to_string562_q;
    wire [0:0] i_acl_1353_emscripten_dom_vk_to_string563_s;
    reg [63:0] i_acl_1353_emscripten_dom_vk_to_string563_q;
    wire [0:0] i_acl_1354_emscripten_dom_vk_to_string564_qi;
    reg [0:0] i_acl_1354_emscripten_dom_vk_to_string564_q;
    wire [0:0] i_acl_1361_emscripten_dom_vk_to_string565_s;
    reg [63:0] i_acl_1361_emscripten_dom_vk_to_string565_q;
    wire [0:0] i_acl_1362_emscripten_dom_vk_to_string566_qi;
    reg [0:0] i_acl_1362_emscripten_dom_vk_to_string566_q;
    wire [0:0] i_acl_1368_emscripten_dom_vk_to_string567_s;
    reg [63:0] i_acl_1368_emscripten_dom_vk_to_string567_q;
    wire [0:0] i_acl_1371_emscripten_dom_vk_to_string568_qi;
    reg [0:0] i_acl_1371_emscripten_dom_vk_to_string568_q;
    wire [0:0] i_acl_1376_emscripten_dom_vk_to_string569_s;
    reg [63:0] i_acl_1376_emscripten_dom_vk_to_string569_q;
    wire [0:0] i_acl_1377_emscripten_dom_vk_to_string570_qi;
    reg [0:0] i_acl_1377_emscripten_dom_vk_to_string570_q;
    wire [0:0] i_acl_1384_emscripten_dom_vk_to_string571_s;
    reg [63:0] i_acl_1384_emscripten_dom_vk_to_string571_q;
    wire [0:0] i_acl_1392_emscripten_dom_vk_to_string574_s;
    reg [63:0] i_acl_1392_emscripten_dom_vk_to_string574_q;
    wire [0:0] i_acl_1395_emscripten_dom_vk_to_string575_qi;
    reg [0:0] i_acl_1395_emscripten_dom_vk_to_string575_q;
    wire [0:0] i_acl_1399_emscripten_dom_vk_to_string576_s;
    reg [63:0] i_acl_1399_emscripten_dom_vk_to_string576_q;
    wire [0:0] i_acl_1400_emscripten_dom_vk_to_string577_qi;
    reg [0:0] i_acl_1400_emscripten_dom_vk_to_string577_q;
    wire [0:0] i_acl_1407_emscripten_dom_vk_to_string578_s;
    reg [63:0] i_acl_1407_emscripten_dom_vk_to_string578_q;
    wire [0:0] i_acl_1408_emscripten_dom_vk_to_string579_qi;
    reg [0:0] i_acl_1408_emscripten_dom_vk_to_string579_q;
    wire [0:0] i_acl_1415_emscripten_dom_vk_to_string580_s;
    reg [63:0] i_acl_1415_emscripten_dom_vk_to_string580_q;
    wire [0:0] i_acl_1423_emscripten_dom_vk_to_string583_s;
    reg [63:0] i_acl_1423_emscripten_dom_vk_to_string583_q;
    wire [0:0] i_acl_1426_emscripten_dom_vk_to_string584_qi;
    reg [0:0] i_acl_1426_emscripten_dom_vk_to_string584_q;
    wire [0:0] i_acl_1430_emscripten_dom_vk_to_string585_s;
    reg [63:0] i_acl_1430_emscripten_dom_vk_to_string585_q;
    wire [0:0] i_acl_1432_emscripten_dom_vk_to_string586_qi;
    reg [0:0] i_acl_1432_emscripten_dom_vk_to_string586_q;
    wire [0:0] i_acl_1438_emscripten_dom_vk_to_string587_s;
    reg [63:0] i_acl_1438_emscripten_dom_vk_to_string587_q;
    wire [0:0] i_acl_1440_emscripten_dom_vk_to_string588_qi;
    reg [0:0] i_acl_1440_emscripten_dom_vk_to_string588_q;
    wire [0:0] i_acl_1445_emscripten_dom_vk_to_string589_s;
    reg [63:0] i_acl_1445_emscripten_dom_vk_to_string589_q;
    wire [0:0] i_acl_1450_emscripten_dom_vk_to_string590_qi;
    reg [0:0] i_acl_1450_emscripten_dom_vk_to_string590_q;
    wire [0:0] i_acl_1453_emscripten_dom_vk_to_string591_s;
    reg [63:0] i_acl_1453_emscripten_dom_vk_to_string591_q;
    wire [0:0] i_acl_1456_emscripten_dom_vk_to_string592_qi;
    reg [0:0] i_acl_1456_emscripten_dom_vk_to_string592_q;
    wire [0:0] i_acl_1461_emscripten_dom_vk_to_string593_s;
    reg [63:0] i_acl_1461_emscripten_dom_vk_to_string593_q;
    wire [0:0] i_acl_1463_emscripten_dom_vk_to_string594_qi;
    reg [0:0] i_acl_1463_emscripten_dom_vk_to_string594_q;
    wire [0:0] i_acl_1469_emscripten_dom_vk_to_string595_s;
    reg [63:0] i_acl_1469_emscripten_dom_vk_to_string595_q;
    wire [0:0] i_acl_1471_emscripten_dom_vk_to_string596_qi;
    reg [0:0] i_acl_1471_emscripten_dom_vk_to_string596_q;
    wire [0:0] i_acl_1477_emscripten_dom_vk_to_string597_s;
    reg [63:0] i_acl_1477_emscripten_dom_vk_to_string597_q;
    wire [0:0] i_acl_1478_emscripten_dom_vk_to_string598_qi;
    reg [0:0] i_acl_1478_emscripten_dom_vk_to_string598_q;
    wire [0:0] i_acl_1484_emscripten_dom_vk_to_string599_s;
    reg [63:0] i_acl_1484_emscripten_dom_vk_to_string599_q;
    wire [0:0] i_acl_1485_emscripten_dom_vk_to_string600_qi;
    reg [0:0] i_acl_1485_emscripten_dom_vk_to_string600_q;
    wire [0:0] i_acl_1492_emscripten_dom_vk_to_string601_s;
    reg [63:0] i_acl_1492_emscripten_dom_vk_to_string601_q;
    wire [0:0] i_acl_1494_emscripten_dom_vk_to_string602_qi;
    reg [0:0] i_acl_1494_emscripten_dom_vk_to_string602_q;
    wire [0:0] i_acl_1500_emscripten_dom_vk_to_string603_s;
    reg [63:0] i_acl_1500_emscripten_dom_vk_to_string603_q;
    wire [0:0] i_acl_1501_emscripten_dom_vk_to_string604_qi;
    reg [0:0] i_acl_1501_emscripten_dom_vk_to_string604_q;
    wire [0:0] i_acl_1507_emscripten_dom_vk_to_string605_s;
    reg [63:0] i_acl_1507_emscripten_dom_vk_to_string605_q;
    wire [0:0] i_acl_1509_emscripten_dom_vk_to_string606_qi;
    reg [0:0] i_acl_1509_emscripten_dom_vk_to_string606_q;
    wire [0:0] i_acl_1515_emscripten_dom_vk_to_string607_s;
    reg [63:0] i_acl_1515_emscripten_dom_vk_to_string607_q;
    wire [0:0] i_acl_1522_emscripten_dom_vk_to_string610_s;
    reg [63:0] i_acl_1522_emscripten_dom_vk_to_string610_q;
    wire [0:0] i_acl_1526_emscripten_dom_vk_to_string611_qi;
    reg [0:0] i_acl_1526_emscripten_dom_vk_to_string611_q;
    wire [0:0] i_acl_1529_emscripten_dom_vk_to_string612_s;
    reg [63:0] i_acl_1529_emscripten_dom_vk_to_string612_q;
    wire [0:0] i_acl_1536_emscripten_dom_vk_to_string615_s;
    reg [63:0] i_acl_1536_emscripten_dom_vk_to_string615_q;
    wire [0:0] i_acl_1538_emscripten_dom_vk_to_string616_qi;
    reg [0:0] i_acl_1538_emscripten_dom_vk_to_string616_q;
    wire [0:0] i_acl_1543_emscripten_dom_vk_to_string617_s;
    reg [63:0] i_acl_1543_emscripten_dom_vk_to_string617_q;
    wire [0:0] i_acl_1544_emscripten_dom_vk_to_string618_qi;
    reg [0:0] i_acl_1544_emscripten_dom_vk_to_string618_q;
    wire [0:0] i_acl_1551_emscripten_dom_vk_to_string619_s;
    reg [63:0] i_acl_1551_emscripten_dom_vk_to_string619_q;
    wire [0:0] i_acl_1553_emscripten_dom_vk_to_string620_qi;
    reg [0:0] i_acl_1553_emscripten_dom_vk_to_string620_q;
    wire [0:0] i_acl_1558_emscripten_dom_vk_to_string621_s;
    reg [63:0] i_acl_1558_emscripten_dom_vk_to_string621_q;
    wire [0:0] i_acl_1565_emscripten_dom_vk_to_string624_s;
    reg [63:0] i_acl_1565_emscripten_dom_vk_to_string624_q;
    wire [0:0] i_acl_1566_emscripten_dom_vk_to_string625_qi;
    reg [0:0] i_acl_1566_emscripten_dom_vk_to_string625_q;
    wire [0:0] i_acl_1572_emscripten_dom_vk_to_string626_s;
    reg [63:0] i_acl_1572_emscripten_dom_vk_to_string626_q;
    wire [0:0] i_acl_1573_emscripten_dom_vk_to_string627_qi;
    reg [0:0] i_acl_1573_emscripten_dom_vk_to_string627_q;
    wire [0:0] i_acl_1580_emscripten_dom_vk_to_string628_s;
    reg [63:0] i_acl_1580_emscripten_dom_vk_to_string628_q;
    wire [0:0] i_acl_1581_emscripten_dom_vk_to_string629_qi;
    reg [0:0] i_acl_1581_emscripten_dom_vk_to_string629_q;
    wire [0:0] i_acl_1587_emscripten_dom_vk_to_string630_s;
    reg [63:0] i_acl_1587_emscripten_dom_vk_to_string630_q;
    wire [0:0] i_acl_1589_emscripten_dom_vk_to_string631_qi;
    reg [0:0] i_acl_1589_emscripten_dom_vk_to_string631_q;
    wire [0:0] i_acl_1594_emscripten_dom_vk_to_string632_s;
    reg [63:0] i_acl_1594_emscripten_dom_vk_to_string632_q;
    wire [0:0] i_acl_1595_emscripten_dom_vk_to_string633_qi;
    reg [0:0] i_acl_1595_emscripten_dom_vk_to_string633_q;
    wire [0:0] i_acl_1602_emscripten_dom_vk_to_string634_s;
    reg [63:0] i_acl_1602_emscripten_dom_vk_to_string634_q;
    wire [0:0] i_acl_1603_emscripten_dom_vk_to_string635_qi;
    reg [0:0] i_acl_1603_emscripten_dom_vk_to_string635_q;
    wire [0:0] i_acl_1609_emscripten_dom_vk_to_string636_s;
    reg [63:0] i_acl_1609_emscripten_dom_vk_to_string636_q;
    wire [0:0] i_acl_1611_emscripten_dom_vk_to_string637_qi;
    reg [0:0] i_acl_1611_emscripten_dom_vk_to_string637_q;
    wire [0:0] i_acl_1617_emscripten_dom_vk_to_string638_s;
    reg [63:0] i_acl_1617_emscripten_dom_vk_to_string638_q;
    wire [0:0] i_acl_1618_emscripten_dom_vk_to_string639_qi;
    reg [0:0] i_acl_1618_emscripten_dom_vk_to_string639_q;
    wire [0:0] i_acl_1625_emscripten_dom_vk_to_string640_s;
    reg [63:0] i_acl_1625_emscripten_dom_vk_to_string640_q;
    wire [0:0] i_acl_1628_emscripten_dom_vk_to_string641_qi;
    reg [0:0] i_acl_1628_emscripten_dom_vk_to_string641_q;
    wire [0:0] i_acl_1633_emscripten_dom_vk_to_string642_s;
    reg [63:0] i_acl_1633_emscripten_dom_vk_to_string642_q;
    wire [0:0] i_acl_1634_emscripten_dom_vk_to_string643_qi;
    reg [0:0] i_acl_1634_emscripten_dom_vk_to_string643_q;
    wire [0:0] i_acl_1641_emscripten_dom_vk_to_string644_s;
    reg [63:0] i_acl_1641_emscripten_dom_vk_to_string644_q;
    wire [0:0] i_acl_1645_emscripten_dom_vk_to_string645_qi;
    reg [0:0] i_acl_1645_emscripten_dom_vk_to_string645_q;
    wire [0:0] i_acl_1648_emscripten_dom_vk_to_string646_s;
    reg [63:0] i_acl_1648_emscripten_dom_vk_to_string646_q;
    wire [0:0] i_acl_1651_emscripten_dom_vk_to_string647_qi;
    reg [0:0] i_acl_1651_emscripten_dom_vk_to_string647_q;
    wire [0:0] i_acl_1656_emscripten_dom_vk_to_string648_s;
    reg [63:0] i_acl_1656_emscripten_dom_vk_to_string648_q;
    wire [0:0] i_acl_1658_emscripten_dom_vk_to_string649_qi;
    reg [0:0] i_acl_1658_emscripten_dom_vk_to_string649_q;
    wire [0:0] i_acl_1664_emscripten_dom_vk_to_string650_s;
    reg [63:0] i_acl_1664_emscripten_dom_vk_to_string650_q;
    wire [0:0] i_acl_1669_emscripten_dom_vk_to_string651_qi;
    reg [0:0] i_acl_1669_emscripten_dom_vk_to_string651_q;
    wire [0:0] i_acl_1672_emscripten_dom_vk_to_string652_s;
    reg [63:0] i_acl_1672_emscripten_dom_vk_to_string652_q;
    wire [0:0] i_acl_1674_emscripten_dom_vk_to_string653_qi;
    reg [0:0] i_acl_1674_emscripten_dom_vk_to_string653_q;
    wire [0:0] i_acl_1679_emscripten_dom_vk_to_string654_s;
    reg [63:0] i_acl_1679_emscripten_dom_vk_to_string654_q;
    wire [0:0] i_acl_1680_emscripten_dom_vk_to_string655_qi;
    reg [0:0] i_acl_1680_emscripten_dom_vk_to_string655_q;
    wire [0:0] i_acl_1687_emscripten_dom_vk_to_string656_s;
    reg [63:0] i_acl_1687_emscripten_dom_vk_to_string656_q;
    wire [0:0] i_acl_1695_emscripten_dom_vk_to_string659_s;
    reg [63:0] i_acl_1695_emscripten_dom_vk_to_string659_q;
    wire [0:0] i_acl_1696_emscripten_dom_vk_to_string660_qi;
    reg [0:0] i_acl_1696_emscripten_dom_vk_to_string660_q;
    wire [0:0] i_acl_1703_emscripten_dom_vk_to_string661_s;
    reg [63:0] i_acl_1703_emscripten_dom_vk_to_string661_q;
    wire [0:0] i_acl_1706_emscripten_dom_vk_to_string662_qi;
    reg [0:0] i_acl_1706_emscripten_dom_vk_to_string662_q;
    wire [0:0] i_acl_1711_emscripten_dom_vk_to_string663_s;
    reg [63:0] i_acl_1711_emscripten_dom_vk_to_string663_q;
    wire [0:0] i_acl_1712_emscripten_dom_vk_to_string664_qi;
    reg [0:0] i_acl_1712_emscripten_dom_vk_to_string664_q;
    wire [0:0] i_acl_1718_emscripten_dom_vk_to_string665_s;
    reg [63:0] i_acl_1718_emscripten_dom_vk_to_string665_q;
    wire [0:0] i_acl_1719_emscripten_dom_vk_to_string666_qi;
    reg [0:0] i_acl_1719_emscripten_dom_vk_to_string666_q;
    wire [0:0] i_acl_1726_emscripten_dom_vk_to_string667_s;
    reg [63:0] i_acl_1726_emscripten_dom_vk_to_string667_q;
    wire [0:0] i_acl_1734_emscripten_dom_vk_to_string668_s;
    reg [63:0] i_acl_1734_emscripten_dom_vk_to_string668_q;
    wire [0:0] i_acl_1736_emscripten_dom_vk_to_string669_qi;
    reg [0:0] i_acl_1736_emscripten_dom_vk_to_string669_q;
    wire [0:0] i_acl_1742_emscripten_dom_vk_to_string670_s;
    reg [63:0] i_acl_1742_emscripten_dom_vk_to_string670_q;
    wire [0:0] i_acl_1743_emscripten_dom_vk_to_string671_qi;
    reg [0:0] i_acl_1743_emscripten_dom_vk_to_string671_q;
    wire [0:0] i_acl_1749_emscripten_dom_vk_to_string672_s;
    reg [63:0] i_acl_1749_emscripten_dom_vk_to_string672_q;
    wire [0:0] i_acl_1750_emscripten_dom_vk_to_string673_q;
    wire [0:0] i_acl_1763_emscripten_dom_vk_to_string676_s;
    reg [0:0] i_acl_1763_emscripten_dom_vk_to_string676_q;
    wire [0:0] i_acl_1764_emscripten_dom_vk_to_string677_s;
    reg [63:0] i_acl_1764_emscripten_dom_vk_to_string677_q;
    wire [0:0] i_acl_366_emscripten_dom_vk_to_string321_qi;
    reg [0:0] i_acl_366_emscripten_dom_vk_to_string321_q;
    wire [0:0] i_acl_372_emscripten_dom_vk_to_string322_s;
    reg [63:0] i_acl_372_emscripten_dom_vk_to_string322_q;
    wire [0:0] i_acl_379_emscripten_dom_vk_to_string325_s;
    reg [63:0] i_acl_379_emscripten_dom_vk_to_string325_q;
    wire [0:0] i_acl_380_emscripten_dom_vk_to_string326_q;
    wire [0:0] i_acl_386_emscripten_dom_vk_to_string327_s;
    reg [63:0] i_acl_386_emscripten_dom_vk_to_string327_q;
    wire [0:0] i_acl_387_emscripten_dom_vk_to_string328_q;
    wire [0:0] i_acl_394_emscripten_dom_vk_to_string329_s;
    reg [63:0] i_acl_394_emscripten_dom_vk_to_string329_q;
    wire [0:0] i_acl_397_emscripten_dom_vk_to_string330_q;
    wire [0:0] i_acl_402_emscripten_dom_vk_to_string331_s;
    reg [63:0] i_acl_402_emscripten_dom_vk_to_string331_q;
    wire [0:0] i_acl_408_emscripten_dom_vk_to_string332_q;
    wire [0:0] i_acl_410_emscripten_dom_vk_to_string333_s;
    reg [63:0] i_acl_410_emscripten_dom_vk_to_string333_q;
    wire [0:0] i_acl_411_emscripten_dom_vk_to_string334_q;
    wire [0:0] i_acl_417_emscripten_dom_vk_to_string335_s;
    reg [63:0] i_acl_417_emscripten_dom_vk_to_string335_q;
    wire [0:0] i_acl_420_emscripten_dom_vk_to_string336_q;
    wire [0:0] i_acl_424_emscripten_dom_vk_to_string337_s;
    reg [63:0] i_acl_424_emscripten_dom_vk_to_string337_q;
    wire [0:0] i_acl_432_emscripten_dom_vk_to_string340_s;
    reg [63:0] i_acl_432_emscripten_dom_vk_to_string340_q;
    wire [0:0] i_acl_435_emscripten_dom_vk_to_string341_q;
    wire [0:0] i_acl_440_emscripten_dom_vk_to_string342_s;
    reg [63:0] i_acl_440_emscripten_dom_vk_to_string342_q;
    wire [0:0] i_acl_441_emscripten_dom_vk_to_string343_qi;
    reg [0:0] i_acl_441_emscripten_dom_vk_to_string343_q;
    wire [0:0] i_acl_447_emscripten_dom_vk_to_string344_s;
    reg [63:0] i_acl_447_emscripten_dom_vk_to_string344_q;
    wire [0:0] i_acl_448_emscripten_dom_vk_to_string345_q;
    wire [0:0] i_acl_455_emscripten_dom_vk_to_string346_s;
    reg [63:0] i_acl_455_emscripten_dom_vk_to_string346_q;
    wire [0:0] i_acl_456_emscripten_dom_vk_to_string347_q;
    wire [0:0] i_acl_462_emscripten_dom_vk_to_string348_s;
    reg [63:0] i_acl_462_emscripten_dom_vk_to_string348_q;
    wire [0:0] i_acl_463_emscripten_dom_vk_to_string349_q;
    wire [0:0] i_acl_469_emscripten_dom_vk_to_string350_s;
    reg [63:0] i_acl_469_emscripten_dom_vk_to_string350_q;
    wire [0:0] i_acl_471_emscripten_dom_vk_to_string351_q;
    wire [0:0] i_acl_477_emscripten_dom_vk_to_string352_s;
    reg [63:0] i_acl_477_emscripten_dom_vk_to_string352_q;
    wire [0:0] i_acl_484_emscripten_dom_vk_to_string353_qi;
    reg [0:0] i_acl_484_emscripten_dom_vk_to_string353_q;
    wire [0:0] i_acl_485_emscripten_dom_vk_to_string354_s;
    reg [63:0] i_acl_485_emscripten_dom_vk_to_string354_q;
    wire [0:0] i_acl_487_emscripten_dom_vk_to_string355_q;
    wire [0:0] i_acl_493_emscripten_dom_vk_to_string356_s;
    reg [63:0] i_acl_493_emscripten_dom_vk_to_string356_q;
    wire [0:0] i_acl_497_emscripten_dom_vk_to_string357_q;
    wire [0:0] i_acl_501_emscripten_dom_vk_to_string358_s;
    reg [63:0] i_acl_501_emscripten_dom_vk_to_string358_q;
    wire [0:0] i_acl_503_emscripten_dom_vk_to_string359_q;
    wire [0:0] i_acl_509_emscripten_dom_vk_to_string360_s;
    reg [63:0] i_acl_509_emscripten_dom_vk_to_string360_q;
    wire [0:0] i_acl_516_emscripten_dom_vk_to_string363_s;
    reg [63:0] i_acl_516_emscripten_dom_vk_to_string363_q;
    wire [0:0] i_acl_519_emscripten_dom_vk_to_string364_q;
    wire [0:0] i_acl_524_emscripten_dom_vk_to_string365_s;
    reg [63:0] i_acl_524_emscripten_dom_vk_to_string365_q;
    wire [0:0] i_acl_526_emscripten_dom_vk_to_string366_q;
    wire [0:0] i_acl_531_emscripten_dom_vk_to_string367_s;
    reg [63:0] i_acl_531_emscripten_dom_vk_to_string367_q;
    wire [0:0] i_acl_533_emscripten_dom_vk_to_string368_qi;
    reg [0:0] i_acl_533_emscripten_dom_vk_to_string368_q;
    wire [0:0] i_acl_538_emscripten_dom_vk_to_string369_s;
    reg [63:0] i_acl_538_emscripten_dom_vk_to_string369_q;
    wire [0:0] i_acl_539_emscripten_dom_vk_to_string370_q;
    wire [0:0] i_acl_546_emscripten_dom_vk_to_string371_s;
    reg [63:0] i_acl_546_emscripten_dom_vk_to_string371_q;
    wire [0:0] i_acl_551_emscripten_dom_vk_to_string372_qi;
    reg [0:0] i_acl_551_emscripten_dom_vk_to_string372_q;
    wire [0:0] i_acl_553_emscripten_dom_vk_to_string373_s;
    reg [63:0] i_acl_553_emscripten_dom_vk_to_string373_q;
    wire [0:0] i_acl_554_emscripten_dom_vk_to_string374_q;
    wire [0:0] i_acl_561_emscripten_dom_vk_to_string375_s;
    reg [63:0] i_acl_561_emscripten_dom_vk_to_string375_q;
    wire [0:0] i_acl_562_emscripten_dom_vk_to_string376_q;
    wire [0:0] i_acl_568_emscripten_dom_vk_to_string377_s;
    reg [63:0] i_acl_568_emscripten_dom_vk_to_string377_q;
    wire [0:0] i_acl_572_emscripten_dom_vk_to_string378_q;
    wire [0:0] i_acl_576_emscripten_dom_vk_to_string379_s;
    reg [63:0] i_acl_576_emscripten_dom_vk_to_string379_q;
    wire [0:0] i_acl_577_emscripten_dom_vk_to_string380_q;
    wire [0:0] i_acl_584_emscripten_dom_vk_to_string381_s;
    reg [63:0] i_acl_584_emscripten_dom_vk_to_string381_q;
    wire [0:0] i_acl_585_emscripten_dom_vk_to_string382_qi;
    reg [0:0] i_acl_585_emscripten_dom_vk_to_string382_q;
    wire [0:0] i_acl_592_emscripten_dom_vk_to_string383_s;
    reg [63:0] i_acl_592_emscripten_dom_vk_to_string383_q;
    wire [0:0] i_acl_597_emscripten_dom_vk_to_string384_q;
    wire [0:0] i_acl_599_emscripten_dom_vk_to_string385_s;
    reg [63:0] i_acl_599_emscripten_dom_vk_to_string385_q;
    wire [0:0] i_acl_603_emscripten_dom_vk_to_string386_q;
    wire [0:0] i_acl_607_emscripten_dom_vk_to_string387_s;
    reg [63:0] i_acl_607_emscripten_dom_vk_to_string387_q;
    wire [0:0] i_acl_609_emscripten_dom_vk_to_string388_qi;
    reg [0:0] i_acl_609_emscripten_dom_vk_to_string388_q;
    wire [0:0] i_acl_614_emscripten_dom_vk_to_string389_s;
    reg [63:0] i_acl_614_emscripten_dom_vk_to_string389_q;
    wire [0:0] i_acl_615_emscripten_dom_vk_to_string390_q;
    wire [0:0] i_acl_622_emscripten_dom_vk_to_string391_s;
    reg [63:0] i_acl_622_emscripten_dom_vk_to_string391_q;
    wire [0:0] i_acl_623_emscripten_dom_vk_to_string392_q;
    wire [0:0] i_acl_630_emscripten_dom_vk_to_string393_s;
    reg [63:0] i_acl_630_emscripten_dom_vk_to_string393_q;
    wire [0:0] i_acl_631_emscripten_dom_vk_to_string394_q;
    wire [0:0] i_acl_638_emscripten_dom_vk_to_string395_s;
    reg [63:0] i_acl_638_emscripten_dom_vk_to_string395_q;
    wire [0:0] i_acl_717_emscripten_dom_vk_to_string402_q;
    wire [0:0] i_acl_723_emscripten_dom_vk_to_string403_s;
    reg [63:0] i_acl_723_emscripten_dom_vk_to_string403_q;
    wire [0:0] i_acl_729_emscripten_dom_vk_to_string404_qi;
    reg [0:0] i_acl_729_emscripten_dom_vk_to_string404_q;
    wire [0:0] i_acl_731_emscripten_dom_vk_to_string405_s;
    reg [63:0] i_acl_731_emscripten_dom_vk_to_string405_q;
    wire [0:0] i_acl_733_emscripten_dom_vk_to_string406_q;
    wire [0:0] i_acl_739_emscripten_dom_vk_to_string407_s;
    reg [63:0] i_acl_739_emscripten_dom_vk_to_string407_q;
    wire [0:0] i_acl_740_emscripten_dom_vk_to_string408_qi;
    reg [0:0] i_acl_740_emscripten_dom_vk_to_string408_q;
    wire [0:0] i_acl_747_emscripten_dom_vk_to_string409_s;
    reg [63:0] i_acl_747_emscripten_dom_vk_to_string409_q;
    wire [0:0] i_acl_750_emscripten_dom_vk_to_string410_qi;
    reg [0:0] i_acl_750_emscripten_dom_vk_to_string410_q;
    wire [0:0] i_acl_754_emscripten_dom_vk_to_string411_s;
    reg [63:0] i_acl_754_emscripten_dom_vk_to_string411_q;
    wire [0:0] i_acl_756_emscripten_dom_vk_to_string412_q;
    wire [0:0] i_acl_762_emscripten_dom_vk_to_string413_s;
    reg [63:0] i_acl_762_emscripten_dom_vk_to_string413_q;
    wire [0:0] i_acl_794_emscripten_dom_vk_to_string415_qi;
    reg [0:0] i_acl_794_emscripten_dom_vk_to_string415_q;
    wire [0:0] i_acl_800_emscripten_dom_vk_to_string416_s;
    reg [63:0] i_acl_800_emscripten_dom_vk_to_string416_q;
    wire [0:0] i_acl_801_emscripten_dom_vk_to_string417_qi;
    reg [0:0] i_acl_801_emscripten_dom_vk_to_string417_q;
    wire [0:0] i_acl_807_emscripten_dom_vk_to_string418_s;
    reg [63:0] i_acl_807_emscripten_dom_vk_to_string418_q;
    wire [0:0] i_acl_808_emscripten_dom_vk_to_string419_q;
    wire [0:0] i_acl_815_emscripten_dom_vk_to_string420_s;
    reg [63:0] i_acl_815_emscripten_dom_vk_to_string420_q;
    wire [0:0] i_acl_816_emscripten_dom_vk_to_string421_qi;
    reg [0:0] i_acl_816_emscripten_dom_vk_to_string421_q;
    wire [0:0] i_acl_823_emscripten_dom_vk_to_string422_s;
    reg [63:0] i_acl_823_emscripten_dom_vk_to_string422_q;
    wire [0:0] i_acl_827_emscripten_dom_vk_to_string423_qi;
    reg [0:0] i_acl_827_emscripten_dom_vk_to_string423_q;
    wire [0:0] i_acl_831_emscripten_dom_vk_to_string424_s;
    reg [63:0] i_acl_831_emscripten_dom_vk_to_string424_q;
    wire [0:0] i_acl_834_emscripten_dom_vk_to_string425_qi;
    reg [0:0] i_acl_834_emscripten_dom_vk_to_string425_q;
    wire [0:0] i_acl_839_emscripten_dom_vk_to_string426_s;
    reg [63:0] i_acl_839_emscripten_dom_vk_to_string426_q;
    wire [0:0] i_acl_840_emscripten_dom_vk_to_string427_qi;
    reg [0:0] i_acl_840_emscripten_dom_vk_to_string427_q;
    wire [0:0] i_acl_846_emscripten_dom_vk_to_string428_s;
    reg [63:0] i_acl_846_emscripten_dom_vk_to_string428_q;
    wire [0:0] i_acl_852_emscripten_dom_vk_to_string429_q;
    wire [0:0] i_acl_853_emscripten_dom_vk_to_string430_s;
    reg [63:0] i_acl_853_emscripten_dom_vk_to_string430_q;
    wire [0:0] i_acl_854_emscripten_dom_vk_to_string431_qi;
    reg [0:0] i_acl_854_emscripten_dom_vk_to_string431_q;
    wire [0:0] i_acl_861_emscripten_dom_vk_to_string432_s;
    reg [63:0] i_acl_861_emscripten_dom_vk_to_string432_q;
    wire [0:0] i_acl_862_emscripten_dom_vk_to_string433_q;
    wire [0:0] i_acl_869_emscripten_dom_vk_to_string434_s;
    reg [63:0] i_acl_869_emscripten_dom_vk_to_string434_q;
    wire [0:0] i_acl_870_emscripten_dom_vk_to_string435_qi;
    reg [0:0] i_acl_870_emscripten_dom_vk_to_string435_q;
    wire [0:0] i_acl_876_emscripten_dom_vk_to_string436_s;
    reg [63:0] i_acl_876_emscripten_dom_vk_to_string436_q;
    wire [0:0] i_acl_877_emscripten_dom_vk_to_string437_q;
    wire [0:0] i_acl_883_emscripten_dom_vk_to_string438_s;
    reg [63:0] i_acl_883_emscripten_dom_vk_to_string438_q;
    wire [0:0] i_acl_884_emscripten_dom_vk_to_string439_q;
    wire [0:0] i_acl_890_emscripten_dom_vk_to_string440_s;
    reg [63:0] i_acl_890_emscripten_dom_vk_to_string440_q;
    wire [0:0] i_acl_891_emscripten_dom_vk_to_string441_qi;
    reg [0:0] i_acl_891_emscripten_dom_vk_to_string441_q;
    wire [0:0] i_acl_897_emscripten_dom_vk_to_string442_s;
    reg [63:0] i_acl_897_emscripten_dom_vk_to_string442_q;
    wire [0:0] i_acl_899_emscripten_dom_vk_to_string443_qi;
    reg [0:0] i_acl_899_emscripten_dom_vk_to_string443_q;
    wire [0:0] i_acl_904_emscripten_dom_vk_to_string444_s;
    reg [63:0] i_acl_904_emscripten_dom_vk_to_string444_q;
    wire [0:0] i_acl_905_emscripten_dom_vk_to_string445_q;
    wire [0:0] i_acl_911_emscripten_dom_vk_to_string446_s;
    reg [63:0] i_acl_911_emscripten_dom_vk_to_string446_q;
    wire [0:0] i_acl_912_emscripten_dom_vk_to_string447_qi;
    reg [0:0] i_acl_912_emscripten_dom_vk_to_string447_q;
    wire [0:0] i_acl_919_emscripten_dom_vk_to_string448_s;
    reg [63:0] i_acl_919_emscripten_dom_vk_to_string448_q;
    wire [0:0] i_acl_920_emscripten_dom_vk_to_string449_qi;
    reg [0:0] i_acl_920_emscripten_dom_vk_to_string449_q;
    wire [0:0] i_acl_927_emscripten_dom_vk_to_string450_s;
    reg [63:0] i_acl_927_emscripten_dom_vk_to_string450_q;
    wire [0:0] i_acl_928_emscripten_dom_vk_to_string451_q;
    wire [0:0] i_acl_935_emscripten_dom_vk_to_string452_s;
    reg [63:0] i_acl_935_emscripten_dom_vk_to_string452_q;
    wire [0:0] i_acl_937_emscripten_dom_vk_to_string453_q;
    wire [0:0] i_acl_942_emscripten_dom_vk_to_string454_s;
    reg [63:0] i_acl_942_emscripten_dom_vk_to_string454_q;
    wire [0:0] i_acl_943_emscripten_dom_vk_to_string455_q;
    wire [0:0] i_acl_950_emscripten_dom_vk_to_string456_s;
    reg [63:0] i_acl_950_emscripten_dom_vk_to_string456_q;
    wire [0:0] i_acl_951_emscripten_dom_vk_to_string457_q;
    wire [0:0] i_acl_957_emscripten_dom_vk_to_string458_s;
    reg [63:0] i_acl_957_emscripten_dom_vk_to_string458_q;
    wire [0:0] i_acl_958_emscripten_dom_vk_to_string459_q;
    wire [0:0] i_acl_964_emscripten_dom_vk_to_string460_s;
    reg [63:0] i_acl_964_emscripten_dom_vk_to_string460_q;
    wire [0:0] i_acl_967_emscripten_dom_vk_to_string461_q;
    wire [0:0] i_acl_972_emscripten_dom_vk_to_string462_s;
    reg [63:0] i_acl_972_emscripten_dom_vk_to_string462_q;
    wire [0:0] i_acl_973_emscripten_dom_vk_to_string463_qi;
    reg [0:0] i_acl_973_emscripten_dom_vk_to_string463_q;
    wire [0:0] i_acl_980_emscripten_dom_vk_to_string464_s;
    reg [63:0] i_acl_980_emscripten_dom_vk_to_string464_q;
    wire [0:0] i_acl_981_emscripten_dom_vk_to_string465_qi;
    reg [0:0] i_acl_981_emscripten_dom_vk_to_string465_q;
    wire [0:0] i_acl_988_emscripten_dom_vk_to_string466_s;
    reg [63:0] i_acl_988_emscripten_dom_vk_to_string466_q;
    wire [0:0] i_acl_989_emscripten_dom_vk_to_string467_q;
    wire [0:0] i_acl_996_emscripten_dom_vk_to_string468_s;
    reg [63:0] i_acl_996_emscripten_dom_vk_to_string468_q;
    wire [0:0] i_acl_999_emscripten_dom_vk_to_string469_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q;
    wire [33:0] i_pivot101_emscripten_dom_vk_to_string257_a;
    wire [33:0] i_pivot101_emscripten_dom_vk_to_string257_b;
    logic [33:0] i_pivot101_emscripten_dom_vk_to_string257_o;
    wire [0:0] i_pivot101_emscripten_dom_vk_to_string257_c;
    wire [33:0] i_pivot103_emscripten_dom_vk_to_string151_a;
    wire [33:0] i_pivot103_emscripten_dom_vk_to_string151_b;
    logic [33:0] i_pivot103_emscripten_dom_vk_to_string151_o;
    wire [0:0] i_pivot103_emscripten_dom_vk_to_string151_c;
    wire [33:0] i_pivot105_emscripten_dom_vk_to_string75_a;
    wire [33:0] i_pivot105_emscripten_dom_vk_to_string75_b;
    logic [33:0] i_pivot105_emscripten_dom_vk_to_string75_o;
    wire [0:0] i_pivot105_emscripten_dom_vk_to_string75_c;
    wire [33:0] i_pivot107_emscripten_dom_vk_to_string37_a;
    wire [33:0] i_pivot107_emscripten_dom_vk_to_string37_b;
    logic [33:0] i_pivot107_emscripten_dom_vk_to_string37_o;
    wire [0:0] i_pivot107_emscripten_dom_vk_to_string37_c;
    wire [33:0] i_pivot109_emscripten_dom_vk_to_string259_a;
    wire [33:0] i_pivot109_emscripten_dom_vk_to_string259_b;
    logic [33:0] i_pivot109_emscripten_dom_vk_to_string259_o;
    wire [0:0] i_pivot109_emscripten_dom_vk_to_string259_c;
    wire [33:0] i_pivot111_emscripten_dom_vk_to_string153_a;
    wire [33:0] i_pivot111_emscripten_dom_vk_to_string153_b;
    logic [33:0] i_pivot111_emscripten_dom_vk_to_string153_o;
    wire [0:0] i_pivot111_emscripten_dom_vk_to_string153_c;
    wire [33:0] i_pivot113_emscripten_dom_vk_to_string261_a;
    wire [33:0] i_pivot113_emscripten_dom_vk_to_string261_b;
    logic [33:0] i_pivot113_emscripten_dom_vk_to_string261_o;
    wire [0:0] i_pivot113_emscripten_dom_vk_to_string261_c;
    wire [33:0] i_pivot115_emscripten_dom_vk_to_string155_a;
    wire [33:0] i_pivot115_emscripten_dom_vk_to_string155_b;
    logic [33:0] i_pivot115_emscripten_dom_vk_to_string155_o;
    wire [0:0] i_pivot115_emscripten_dom_vk_to_string155_c;
    wire [33:0] i_pivot117_emscripten_dom_vk_to_string77_a;
    wire [33:0] i_pivot117_emscripten_dom_vk_to_string77_b;
    logic [33:0] i_pivot117_emscripten_dom_vk_to_string77_o;
    wire [0:0] i_pivot117_emscripten_dom_vk_to_string77_c;
    wire [33:0] i_pivot119_emscripten_dom_vk_to_string263_a;
    wire [33:0] i_pivot119_emscripten_dom_vk_to_string263_b;
    logic [33:0] i_pivot119_emscripten_dom_vk_to_string263_o;
    wire [0:0] i_pivot119_emscripten_dom_vk_to_string263_c;
    wire [33:0] i_pivot11_emscripten_dom_vk_to_string117_a;
    wire [33:0] i_pivot11_emscripten_dom_vk_to_string117_b;
    logic [33:0] i_pivot11_emscripten_dom_vk_to_string117_o;
    wire [0:0] i_pivot11_emscripten_dom_vk_to_string117_c;
    wire [33:0] i_pivot121_emscripten_dom_vk_to_string157_a;
    wire [33:0] i_pivot121_emscripten_dom_vk_to_string157_b;
    logic [33:0] i_pivot121_emscripten_dom_vk_to_string157_o;
    wire [0:0] i_pivot121_emscripten_dom_vk_to_string157_c;
    wire [33:0] i_pivot123_emscripten_dom_vk_to_string265_a;
    wire [33:0] i_pivot123_emscripten_dom_vk_to_string265_b;
    logic [33:0] i_pivot123_emscripten_dom_vk_to_string265_o;
    wire [0:0] i_pivot123_emscripten_dom_vk_to_string265_c;
    wire [33:0] i_pivot125_emscripten_dom_vk_to_string159_a;
    wire [33:0] i_pivot125_emscripten_dom_vk_to_string159_b;
    logic [33:0] i_pivot125_emscripten_dom_vk_to_string159_o;
    wire [0:0] i_pivot125_emscripten_dom_vk_to_string159_c;
    wire [33:0] i_pivot127_emscripten_dom_vk_to_string79_a;
    wire [33:0] i_pivot127_emscripten_dom_vk_to_string79_b;
    logic [33:0] i_pivot127_emscripten_dom_vk_to_string79_o;
    wire [0:0] i_pivot127_emscripten_dom_vk_to_string79_c;
    wire [33:0] i_pivot129_emscripten_dom_vk_to_string39_a;
    wire [33:0] i_pivot129_emscripten_dom_vk_to_string39_b;
    logic [33:0] i_pivot129_emscripten_dom_vk_to_string39_o;
    wire [0:0] i_pivot129_emscripten_dom_vk_to_string39_c;
    wire [33:0] i_pivot131_emscripten_dom_vk_to_string19_a;
    wire [33:0] i_pivot131_emscripten_dom_vk_to_string19_b;
    logic [33:0] i_pivot131_emscripten_dom_vk_to_string19_o;
    wire [0:0] i_pivot131_emscripten_dom_vk_to_string19_c;
    wire [33:0] i_pivot133_emscripten_dom_vk_to_string161_a;
    wire [33:0] i_pivot133_emscripten_dom_vk_to_string161_b;
    logic [33:0] i_pivot133_emscripten_dom_vk_to_string161_o;
    wire [0:0] i_pivot133_emscripten_dom_vk_to_string161_c;
    wire [33:0] i_pivot135_emscripten_dom_vk_to_string267_a;
    wire [33:0] i_pivot135_emscripten_dom_vk_to_string267_b;
    logic [33:0] i_pivot135_emscripten_dom_vk_to_string267_o;
    wire [0:0] i_pivot135_emscripten_dom_vk_to_string267_c;
    wire [33:0] i_pivot137_emscripten_dom_vk_to_string163_a;
    wire [33:0] i_pivot137_emscripten_dom_vk_to_string163_b;
    logic [33:0] i_pivot137_emscripten_dom_vk_to_string163_o;
    wire [0:0] i_pivot137_emscripten_dom_vk_to_string163_c;
    wire [33:0] i_pivot139_emscripten_dom_vk_to_string81_a;
    wire [33:0] i_pivot139_emscripten_dom_vk_to_string81_b;
    logic [33:0] i_pivot139_emscripten_dom_vk_to_string81_o;
    wire [0:0] i_pivot139_emscripten_dom_vk_to_string81_c;
    wire [33:0] i_pivot13_emscripten_dom_vk_to_string231_a;
    wire [33:0] i_pivot13_emscripten_dom_vk_to_string231_b;
    logic [33:0] i_pivot13_emscripten_dom_vk_to_string231_o;
    wire [0:0] i_pivot13_emscripten_dom_vk_to_string231_c;
    wire [33:0] i_pivot141_emscripten_dom_vk_to_string269_a;
    wire [33:0] i_pivot141_emscripten_dom_vk_to_string269_b;
    logic [33:0] i_pivot141_emscripten_dom_vk_to_string269_o;
    wire [0:0] i_pivot141_emscripten_dom_vk_to_string269_c;
    wire [33:0] i_pivot143_emscripten_dom_vk_to_string165_a;
    wire [33:0] i_pivot143_emscripten_dom_vk_to_string165_b;
    logic [33:0] i_pivot143_emscripten_dom_vk_to_string165_o;
    wire [0:0] i_pivot143_emscripten_dom_vk_to_string165_c;
    wire [33:0] i_pivot145_emscripten_dom_vk_to_string271_a;
    wire [33:0] i_pivot145_emscripten_dom_vk_to_string271_b;
    logic [33:0] i_pivot145_emscripten_dom_vk_to_string271_o;
    wire [0:0] i_pivot145_emscripten_dom_vk_to_string271_c;
    wire [33:0] i_pivot147_emscripten_dom_vk_to_string167_a;
    wire [33:0] i_pivot147_emscripten_dom_vk_to_string167_b;
    logic [33:0] i_pivot147_emscripten_dom_vk_to_string167_o;
    wire [0:0] i_pivot147_emscripten_dom_vk_to_string167_c;
    wire [33:0] i_pivot149_emscripten_dom_vk_to_string83_a;
    wire [33:0] i_pivot149_emscripten_dom_vk_to_string83_b;
    logic [33:0] i_pivot149_emscripten_dom_vk_to_string83_o;
    wire [0:0] i_pivot149_emscripten_dom_vk_to_string83_c;
    wire [33:0] i_pivot151_emscripten_dom_vk_to_string41_a;
    wire [33:0] i_pivot151_emscripten_dom_vk_to_string41_b;
    logic [33:0] i_pivot151_emscripten_dom_vk_to_string41_o;
    wire [0:0] i_pivot151_emscripten_dom_vk_to_string41_c;
    wire [33:0] i_pivot153_emscripten_dom_vk_to_string273_a;
    wire [33:0] i_pivot153_emscripten_dom_vk_to_string273_b;
    logic [33:0] i_pivot153_emscripten_dom_vk_to_string273_o;
    wire [0:0] i_pivot153_emscripten_dom_vk_to_string273_c;
    wire [33:0] i_pivot155_emscripten_dom_vk_to_string169_a;
    wire [33:0] i_pivot155_emscripten_dom_vk_to_string169_b;
    logic [33:0] i_pivot155_emscripten_dom_vk_to_string169_o;
    wire [0:0] i_pivot155_emscripten_dom_vk_to_string169_c;
    wire [33:0] i_pivot157_emscripten_dom_vk_to_string275_a;
    wire [33:0] i_pivot157_emscripten_dom_vk_to_string275_b;
    logic [33:0] i_pivot157_emscripten_dom_vk_to_string275_o;
    wire [0:0] i_pivot157_emscripten_dom_vk_to_string275_c;
    wire [33:0] i_pivot159_emscripten_dom_vk_to_string171_a;
    wire [33:0] i_pivot159_emscripten_dom_vk_to_string171_b;
    logic [33:0] i_pivot159_emscripten_dom_vk_to_string171_o;
    wire [0:0] i_pivot159_emscripten_dom_vk_to_string171_c;
    wire [33:0] i_pivot15_emscripten_dom_vk_to_string119_a;
    wire [33:0] i_pivot15_emscripten_dom_vk_to_string119_b;
    logic [33:0] i_pivot15_emscripten_dom_vk_to_string119_o;
    wire [0:0] i_pivot15_emscripten_dom_vk_to_string119_c;
    wire [33:0] i_pivot161_emscripten_dom_vk_to_string85_a;
    wire [33:0] i_pivot161_emscripten_dom_vk_to_string85_b;
    logic [33:0] i_pivot161_emscripten_dom_vk_to_string85_o;
    wire [0:0] i_pivot161_emscripten_dom_vk_to_string85_c;
    wire [33:0] i_pivot163_emscripten_dom_vk_to_string277_a;
    wire [33:0] i_pivot163_emscripten_dom_vk_to_string277_b;
    logic [33:0] i_pivot163_emscripten_dom_vk_to_string277_o;
    wire [0:0] i_pivot163_emscripten_dom_vk_to_string277_c;
    wire [33:0] i_pivot165_emscripten_dom_vk_to_string173_a;
    wire [33:0] i_pivot165_emscripten_dom_vk_to_string173_b;
    logic [33:0] i_pivot165_emscripten_dom_vk_to_string173_o;
    wire [0:0] i_pivot165_emscripten_dom_vk_to_string173_c;
    wire [33:0] i_pivot167_emscripten_dom_vk_to_string279_a;
    wire [33:0] i_pivot167_emscripten_dom_vk_to_string279_b;
    logic [33:0] i_pivot167_emscripten_dom_vk_to_string279_o;
    wire [0:0] i_pivot167_emscripten_dom_vk_to_string279_c;
    wire [33:0] i_pivot169_emscripten_dom_vk_to_string175_a;
    wire [33:0] i_pivot169_emscripten_dom_vk_to_string175_b;
    logic [33:0] i_pivot169_emscripten_dom_vk_to_string175_o;
    wire [0:0] i_pivot169_emscripten_dom_vk_to_string175_c;
    wire [33:0] i_pivot171_emscripten_dom_vk_to_string87_a;
    wire [33:0] i_pivot171_emscripten_dom_vk_to_string87_b;
    logic [33:0] i_pivot171_emscripten_dom_vk_to_string87_o;
    wire [0:0] i_pivot171_emscripten_dom_vk_to_string87_c;
    wire [33:0] i_pivot173_emscripten_dom_vk_to_string43_a;
    wire [33:0] i_pivot173_emscripten_dom_vk_to_string43_b;
    logic [33:0] i_pivot173_emscripten_dom_vk_to_string43_o;
    wire [0:0] i_pivot173_emscripten_dom_vk_to_string43_c;
    wire [33:0] i_pivot175_emscripten_dom_vk_to_string21_a;
    wire [33:0] i_pivot175_emscripten_dom_vk_to_string21_b;
    logic [33:0] i_pivot175_emscripten_dom_vk_to_string21_o;
    wire [0:0] i_pivot175_emscripten_dom_vk_to_string21_c;
    wire [33:0] i_pivot177_emscripten_dom_vk_to_string11_a;
    wire [33:0] i_pivot177_emscripten_dom_vk_to_string11_b;
    logic [33:0] i_pivot177_emscripten_dom_vk_to_string11_o;
    wire [0:0] i_pivot177_emscripten_dom_vk_to_string11_c;
    wire [33:0] i_pivot179_emscripten_dom_vk_to_string5_a;
    wire [33:0] i_pivot179_emscripten_dom_vk_to_string5_b;
    logic [33:0] i_pivot179_emscripten_dom_vk_to_string5_o;
    wire [0:0] i_pivot179_emscripten_dom_vk_to_string5_c;
    wire [33:0] i_pivot17_emscripten_dom_vk_to_string59_a;
    wire [33:0] i_pivot17_emscripten_dom_vk_to_string59_b;
    logic [33:0] i_pivot17_emscripten_dom_vk_to_string59_o;
    wire [0:0] i_pivot17_emscripten_dom_vk_to_string59_c;
    wire [33:0] i_pivot181_emscripten_dom_vk_to_string177_a;
    wire [33:0] i_pivot181_emscripten_dom_vk_to_string177_b;
    logic [33:0] i_pivot181_emscripten_dom_vk_to_string177_o;
    wire [0:0] i_pivot181_emscripten_dom_vk_to_string177_c;
    wire [33:0] i_pivot183_emscripten_dom_vk_to_string281_a;
    wire [33:0] i_pivot183_emscripten_dom_vk_to_string281_b;
    logic [33:0] i_pivot183_emscripten_dom_vk_to_string281_o;
    wire [0:0] i_pivot183_emscripten_dom_vk_to_string281_c;
    wire [33:0] i_pivot185_emscripten_dom_vk_to_string179_a;
    wire [33:0] i_pivot185_emscripten_dom_vk_to_string179_b;
    logic [33:0] i_pivot185_emscripten_dom_vk_to_string179_o;
    wire [0:0] i_pivot185_emscripten_dom_vk_to_string179_c;
    wire [33:0] i_pivot187_emscripten_dom_vk_to_string89_a;
    wire [33:0] i_pivot187_emscripten_dom_vk_to_string89_b;
    logic [33:0] i_pivot187_emscripten_dom_vk_to_string89_o;
    wire [0:0] i_pivot187_emscripten_dom_vk_to_string89_c;
    wire [33:0] i_pivot189_emscripten_dom_vk_to_string283_a;
    wire [33:0] i_pivot189_emscripten_dom_vk_to_string283_b;
    logic [33:0] i_pivot189_emscripten_dom_vk_to_string283_o;
    wire [0:0] i_pivot189_emscripten_dom_vk_to_string283_c;
    wire [33:0] i_pivot191_emscripten_dom_vk_to_string181_a;
    wire [33:0] i_pivot191_emscripten_dom_vk_to_string181_b;
    logic [33:0] i_pivot191_emscripten_dom_vk_to_string181_o;
    wire [0:0] i_pivot191_emscripten_dom_vk_to_string181_c;
    wire [33:0] i_pivot193_emscripten_dom_vk_to_string285_a;
    wire [33:0] i_pivot193_emscripten_dom_vk_to_string285_b;
    logic [33:0] i_pivot193_emscripten_dom_vk_to_string285_o;
    wire [0:0] i_pivot193_emscripten_dom_vk_to_string285_c;
    wire [33:0] i_pivot195_emscripten_dom_vk_to_string183_a;
    wire [33:0] i_pivot195_emscripten_dom_vk_to_string183_b;
    logic [33:0] i_pivot195_emscripten_dom_vk_to_string183_o;
    wire [0:0] i_pivot195_emscripten_dom_vk_to_string183_c;
    wire [33:0] i_pivot197_emscripten_dom_vk_to_string91_a;
    wire [33:0] i_pivot197_emscripten_dom_vk_to_string91_b;
    logic [33:0] i_pivot197_emscripten_dom_vk_to_string91_o;
    wire [0:0] i_pivot197_emscripten_dom_vk_to_string91_c;
    wire [33:0] i_pivot199_emscripten_dom_vk_to_string45_a;
    wire [33:0] i_pivot199_emscripten_dom_vk_to_string45_b;
    logic [33:0] i_pivot199_emscripten_dom_vk_to_string45_o;
    wire [0:0] i_pivot199_emscripten_dom_vk_to_string45_c;
    wire [33:0] i_pivot19_emscripten_dom_vk_to_string29_a;
    wire [33:0] i_pivot19_emscripten_dom_vk_to_string29_b;
    logic [33:0] i_pivot19_emscripten_dom_vk_to_string29_o;
    wire [0:0] i_pivot19_emscripten_dom_vk_to_string29_c;
    wire [33:0] i_pivot201_emscripten_dom_vk_to_string287_a;
    wire [33:0] i_pivot201_emscripten_dom_vk_to_string287_b;
    logic [33:0] i_pivot201_emscripten_dom_vk_to_string287_o;
    wire [0:0] i_pivot201_emscripten_dom_vk_to_string287_c;
    wire [33:0] i_pivot203_emscripten_dom_vk_to_string185_a;
    wire [33:0] i_pivot203_emscripten_dom_vk_to_string185_b;
    logic [33:0] i_pivot203_emscripten_dom_vk_to_string185_o;
    wire [0:0] i_pivot203_emscripten_dom_vk_to_string185_c;
    wire [33:0] i_pivot205_emscripten_dom_vk_to_string289_a;
    wire [33:0] i_pivot205_emscripten_dom_vk_to_string289_b;
    logic [33:0] i_pivot205_emscripten_dom_vk_to_string289_o;
    wire [0:0] i_pivot205_emscripten_dom_vk_to_string289_c;
    wire [33:0] i_pivot207_emscripten_dom_vk_to_string187_a;
    wire [33:0] i_pivot207_emscripten_dom_vk_to_string187_b;
    logic [33:0] i_pivot207_emscripten_dom_vk_to_string187_o;
    wire [0:0] i_pivot207_emscripten_dom_vk_to_string187_c;
    wire [33:0] i_pivot209_emscripten_dom_vk_to_string93_a;
    wire [33:0] i_pivot209_emscripten_dom_vk_to_string93_b;
    logic [33:0] i_pivot209_emscripten_dom_vk_to_string93_o;
    wire [0:0] i_pivot209_emscripten_dom_vk_to_string93_c;
    wire [33:0] i_pivot211_emscripten_dom_vk_to_string291_a;
    wire [33:0] i_pivot211_emscripten_dom_vk_to_string291_b;
    logic [33:0] i_pivot211_emscripten_dom_vk_to_string291_o;
    wire [0:0] i_pivot211_emscripten_dom_vk_to_string291_c;
    wire [33:0] i_pivot213_emscripten_dom_vk_to_string189_a;
    wire [33:0] i_pivot213_emscripten_dom_vk_to_string189_b;
    logic [33:0] i_pivot213_emscripten_dom_vk_to_string189_o;
    wire [0:0] i_pivot213_emscripten_dom_vk_to_string189_c;
    wire [33:0] i_pivot215_emscripten_dom_vk_to_string293_a;
    wire [33:0] i_pivot215_emscripten_dom_vk_to_string293_b;
    logic [33:0] i_pivot215_emscripten_dom_vk_to_string293_o;
    wire [0:0] i_pivot215_emscripten_dom_vk_to_string293_c;
    wire [33:0] i_pivot217_emscripten_dom_vk_to_string191_a;
    wire [33:0] i_pivot217_emscripten_dom_vk_to_string191_b;
    logic [33:0] i_pivot217_emscripten_dom_vk_to_string191_o;
    wire [0:0] i_pivot217_emscripten_dom_vk_to_string191_c;
    wire [33:0] i_pivot219_emscripten_dom_vk_to_string95_a;
    wire [33:0] i_pivot219_emscripten_dom_vk_to_string95_b;
    logic [33:0] i_pivot219_emscripten_dom_vk_to_string95_o;
    wire [0:0] i_pivot219_emscripten_dom_vk_to_string95_c;
    wire [33:0] i_pivot21_emscripten_dom_vk_to_string121_a;
    wire [33:0] i_pivot21_emscripten_dom_vk_to_string121_b;
    logic [33:0] i_pivot21_emscripten_dom_vk_to_string121_o;
    wire [0:0] i_pivot21_emscripten_dom_vk_to_string121_c;
    wire [33:0] i_pivot221_emscripten_dom_vk_to_string47_a;
    wire [33:0] i_pivot221_emscripten_dom_vk_to_string47_b;
    logic [33:0] i_pivot221_emscripten_dom_vk_to_string47_o;
    wire [0:0] i_pivot221_emscripten_dom_vk_to_string47_c;
    wire [33:0] i_pivot223_emscripten_dom_vk_to_string23_a;
    wire [33:0] i_pivot223_emscripten_dom_vk_to_string23_b;
    logic [33:0] i_pivot223_emscripten_dom_vk_to_string23_o;
    wire [0:0] i_pivot223_emscripten_dom_vk_to_string23_c;
    wire [33:0] i_pivot225_emscripten_dom_vk_to_string193_a;
    wire [33:0] i_pivot225_emscripten_dom_vk_to_string193_b;
    logic [33:0] i_pivot225_emscripten_dom_vk_to_string193_o;
    wire [0:0] i_pivot225_emscripten_dom_vk_to_string193_c;
    wire [33:0] i_pivot227_emscripten_dom_vk_to_string295_a;
    wire [33:0] i_pivot227_emscripten_dom_vk_to_string295_b;
    logic [33:0] i_pivot227_emscripten_dom_vk_to_string295_o;
    wire [0:0] i_pivot227_emscripten_dom_vk_to_string295_c;
    wire [33:0] i_pivot229_emscripten_dom_vk_to_string195_a;
    wire [33:0] i_pivot229_emscripten_dom_vk_to_string195_b;
    logic [33:0] i_pivot229_emscripten_dom_vk_to_string195_o;
    wire [0:0] i_pivot229_emscripten_dom_vk_to_string195_c;
    wire [33:0] i_pivot231_emscripten_dom_vk_to_string97_a;
    wire [33:0] i_pivot231_emscripten_dom_vk_to_string97_b;
    logic [33:0] i_pivot231_emscripten_dom_vk_to_string97_o;
    wire [0:0] i_pivot231_emscripten_dom_vk_to_string97_c;
    wire [33:0] i_pivot233_emscripten_dom_vk_to_string297_a;
    wire [33:0] i_pivot233_emscripten_dom_vk_to_string297_b;
    logic [33:0] i_pivot233_emscripten_dom_vk_to_string297_o;
    wire [0:0] i_pivot233_emscripten_dom_vk_to_string297_c;
    wire [33:0] i_pivot235_emscripten_dom_vk_to_string197_a;
    wire [33:0] i_pivot235_emscripten_dom_vk_to_string197_b;
    logic [33:0] i_pivot235_emscripten_dom_vk_to_string197_o;
    wire [0:0] i_pivot235_emscripten_dom_vk_to_string197_c;
    wire [33:0] i_pivot237_emscripten_dom_vk_to_string299_a;
    wire [33:0] i_pivot237_emscripten_dom_vk_to_string299_b;
    logic [33:0] i_pivot237_emscripten_dom_vk_to_string299_o;
    wire [0:0] i_pivot237_emscripten_dom_vk_to_string299_c;
    wire [33:0] i_pivot239_emscripten_dom_vk_to_string199_a;
    wire [33:0] i_pivot239_emscripten_dom_vk_to_string199_b;
    logic [33:0] i_pivot239_emscripten_dom_vk_to_string199_o;
    wire [0:0] i_pivot239_emscripten_dom_vk_to_string199_c;
    wire [33:0] i_pivot23_emscripten_dom_vk_to_string233_a;
    wire [33:0] i_pivot23_emscripten_dom_vk_to_string233_b;
    logic [33:0] i_pivot23_emscripten_dom_vk_to_string233_o;
    wire [0:0] i_pivot23_emscripten_dom_vk_to_string233_c;
    wire [33:0] i_pivot241_emscripten_dom_vk_to_string99_a;
    wire [33:0] i_pivot241_emscripten_dom_vk_to_string99_b;
    logic [33:0] i_pivot241_emscripten_dom_vk_to_string99_o;
    wire [0:0] i_pivot241_emscripten_dom_vk_to_string99_c;
    wire [33:0] i_pivot243_emscripten_dom_vk_to_string49_a;
    wire [33:0] i_pivot243_emscripten_dom_vk_to_string49_b;
    logic [33:0] i_pivot243_emscripten_dom_vk_to_string49_o;
    wire [0:0] i_pivot243_emscripten_dom_vk_to_string49_c;
    wire [33:0] i_pivot245_emscripten_dom_vk_to_string301_a;
    wire [33:0] i_pivot245_emscripten_dom_vk_to_string301_b;
    logic [33:0] i_pivot245_emscripten_dom_vk_to_string301_o;
    wire [0:0] i_pivot245_emscripten_dom_vk_to_string301_c;
    wire [33:0] i_pivot247_emscripten_dom_vk_to_string201_a;
    wire [33:0] i_pivot247_emscripten_dom_vk_to_string201_b;
    logic [33:0] i_pivot247_emscripten_dom_vk_to_string201_o;
    wire [0:0] i_pivot247_emscripten_dom_vk_to_string201_c;
    wire [33:0] i_pivot249_emscripten_dom_vk_to_string303_a;
    wire [33:0] i_pivot249_emscripten_dom_vk_to_string303_b;
    logic [33:0] i_pivot249_emscripten_dom_vk_to_string303_o;
    wire [0:0] i_pivot249_emscripten_dom_vk_to_string303_c;
    wire [33:0] i_pivot251_emscripten_dom_vk_to_string203_a;
    wire [33:0] i_pivot251_emscripten_dom_vk_to_string203_b;
    logic [33:0] i_pivot251_emscripten_dom_vk_to_string203_o;
    wire [0:0] i_pivot251_emscripten_dom_vk_to_string203_c;
    wire [33:0] i_pivot253_emscripten_dom_vk_to_string101_a;
    wire [33:0] i_pivot253_emscripten_dom_vk_to_string101_b;
    logic [33:0] i_pivot253_emscripten_dom_vk_to_string101_o;
    wire [0:0] i_pivot253_emscripten_dom_vk_to_string101_c;
    wire [33:0] i_pivot255_emscripten_dom_vk_to_string305_a;
    wire [33:0] i_pivot255_emscripten_dom_vk_to_string305_b;
    logic [33:0] i_pivot255_emscripten_dom_vk_to_string305_o;
    wire [0:0] i_pivot255_emscripten_dom_vk_to_string305_c;
    wire [33:0] i_pivot257_emscripten_dom_vk_to_string205_a;
    wire [33:0] i_pivot257_emscripten_dom_vk_to_string205_b;
    logic [33:0] i_pivot257_emscripten_dom_vk_to_string205_o;
    wire [0:0] i_pivot257_emscripten_dom_vk_to_string205_c;
    wire [33:0] i_pivot259_emscripten_dom_vk_to_string307_a;
    wire [33:0] i_pivot259_emscripten_dom_vk_to_string307_b;
    logic [33:0] i_pivot259_emscripten_dom_vk_to_string307_o;
    wire [0:0] i_pivot259_emscripten_dom_vk_to_string307_c;
    wire [33:0] i_pivot25_emscripten_dom_vk_to_string123_a;
    wire [33:0] i_pivot25_emscripten_dom_vk_to_string123_b;
    logic [33:0] i_pivot25_emscripten_dom_vk_to_string123_o;
    wire [0:0] i_pivot25_emscripten_dom_vk_to_string123_c;
    wire [33:0] i_pivot261_emscripten_dom_vk_to_string207_a;
    wire [33:0] i_pivot261_emscripten_dom_vk_to_string207_b;
    logic [33:0] i_pivot261_emscripten_dom_vk_to_string207_o;
    wire [0:0] i_pivot261_emscripten_dom_vk_to_string207_c;
    wire [33:0] i_pivot263_emscripten_dom_vk_to_string103_a;
    wire [33:0] i_pivot263_emscripten_dom_vk_to_string103_b;
    logic [33:0] i_pivot263_emscripten_dom_vk_to_string103_o;
    wire [0:0] i_pivot263_emscripten_dom_vk_to_string103_c;
    wire [33:0] i_pivot265_emscripten_dom_vk_to_string51_a;
    wire [33:0] i_pivot265_emscripten_dom_vk_to_string51_b;
    logic [33:0] i_pivot265_emscripten_dom_vk_to_string51_o;
    wire [0:0] i_pivot265_emscripten_dom_vk_to_string51_c;
    wire [33:0] i_pivot267_emscripten_dom_vk_to_string25_a;
    wire [33:0] i_pivot267_emscripten_dom_vk_to_string25_b;
    logic [33:0] i_pivot267_emscripten_dom_vk_to_string25_o;
    wire [0:0] i_pivot267_emscripten_dom_vk_to_string25_c;
    wire [33:0] i_pivot269_emscripten_dom_vk_to_string13_a;
    wire [33:0] i_pivot269_emscripten_dom_vk_to_string13_b;
    logic [33:0] i_pivot269_emscripten_dom_vk_to_string13_o;
    wire [0:0] i_pivot269_emscripten_dom_vk_to_string13_c;
    wire [33:0] i_pivot271_emscripten_dom_vk_to_string209_a;
    wire [33:0] i_pivot271_emscripten_dom_vk_to_string209_b;
    logic [33:0] i_pivot271_emscripten_dom_vk_to_string209_o;
    wire [0:0] i_pivot271_emscripten_dom_vk_to_string209_c;
    wire [33:0] i_pivot273_emscripten_dom_vk_to_string309_a;
    wire [33:0] i_pivot273_emscripten_dom_vk_to_string309_b;
    logic [33:0] i_pivot273_emscripten_dom_vk_to_string309_o;
    wire [0:0] i_pivot273_emscripten_dom_vk_to_string309_c;
    wire [33:0] i_pivot275_emscripten_dom_vk_to_string211_a;
    wire [33:0] i_pivot275_emscripten_dom_vk_to_string211_b;
    logic [33:0] i_pivot275_emscripten_dom_vk_to_string211_o;
    wire [0:0] i_pivot275_emscripten_dom_vk_to_string211_c;
    wire [33:0] i_pivot277_emscripten_dom_vk_to_string105_a;
    wire [33:0] i_pivot277_emscripten_dom_vk_to_string105_b;
    logic [33:0] i_pivot277_emscripten_dom_vk_to_string105_o;
    wire [0:0] i_pivot277_emscripten_dom_vk_to_string105_c;
    wire [33:0] i_pivot279_emscripten_dom_vk_to_string311_a;
    wire [33:0] i_pivot279_emscripten_dom_vk_to_string311_b;
    logic [33:0] i_pivot279_emscripten_dom_vk_to_string311_o;
    wire [0:0] i_pivot279_emscripten_dom_vk_to_string311_c;
    wire [33:0] i_pivot27_emscripten_dom_vk_to_string61_a;
    wire [33:0] i_pivot27_emscripten_dom_vk_to_string61_b;
    logic [33:0] i_pivot27_emscripten_dom_vk_to_string61_o;
    wire [0:0] i_pivot27_emscripten_dom_vk_to_string61_c;
    wire [33:0] i_pivot281_emscripten_dom_vk_to_string213_a;
    wire [33:0] i_pivot281_emscripten_dom_vk_to_string213_b;
    logic [33:0] i_pivot281_emscripten_dom_vk_to_string213_o;
    wire [0:0] i_pivot281_emscripten_dom_vk_to_string213_c;
    wire [33:0] i_pivot283_emscripten_dom_vk_to_string313_a;
    wire [33:0] i_pivot283_emscripten_dom_vk_to_string313_b;
    logic [33:0] i_pivot283_emscripten_dom_vk_to_string313_o;
    wire [0:0] i_pivot283_emscripten_dom_vk_to_string313_c;
    wire [33:0] i_pivot285_emscripten_dom_vk_to_string215_a;
    wire [33:0] i_pivot285_emscripten_dom_vk_to_string215_b;
    logic [33:0] i_pivot285_emscripten_dom_vk_to_string215_o;
    wire [0:0] i_pivot285_emscripten_dom_vk_to_string215_c;
    wire [33:0] i_pivot287_emscripten_dom_vk_to_string107_a;
    wire [33:0] i_pivot287_emscripten_dom_vk_to_string107_b;
    logic [33:0] i_pivot287_emscripten_dom_vk_to_string107_o;
    wire [0:0] i_pivot287_emscripten_dom_vk_to_string107_c;
    wire [33:0] i_pivot289_emscripten_dom_vk_to_string53_a;
    wire [33:0] i_pivot289_emscripten_dom_vk_to_string53_b;
    logic [33:0] i_pivot289_emscripten_dom_vk_to_string53_o;
    wire [0:0] i_pivot289_emscripten_dom_vk_to_string53_c;
    wire [33:0] i_pivot291_emscripten_dom_vk_to_string315_a;
    wire [33:0] i_pivot291_emscripten_dom_vk_to_string315_b;
    logic [33:0] i_pivot291_emscripten_dom_vk_to_string315_o;
    wire [0:0] i_pivot291_emscripten_dom_vk_to_string315_c;
    wire [33:0] i_pivot293_emscripten_dom_vk_to_string217_a;
    wire [33:0] i_pivot293_emscripten_dom_vk_to_string217_b;
    logic [33:0] i_pivot293_emscripten_dom_vk_to_string217_o;
    wire [0:0] i_pivot293_emscripten_dom_vk_to_string217_c;
    wire [33:0] i_pivot295_emscripten_dom_vk_to_string317_a;
    wire [33:0] i_pivot295_emscripten_dom_vk_to_string317_b;
    logic [33:0] i_pivot295_emscripten_dom_vk_to_string317_o;
    wire [0:0] i_pivot295_emscripten_dom_vk_to_string317_c;
    wire [33:0] i_pivot297_emscripten_dom_vk_to_string219_a;
    wire [33:0] i_pivot297_emscripten_dom_vk_to_string219_b;
    logic [33:0] i_pivot297_emscripten_dom_vk_to_string219_o;
    wire [0:0] i_pivot297_emscripten_dom_vk_to_string219_c;
    wire [33:0] i_pivot299_emscripten_dom_vk_to_string109_a;
    wire [33:0] i_pivot299_emscripten_dom_vk_to_string109_b;
    logic [33:0] i_pivot299_emscripten_dom_vk_to_string109_o;
    wire [0:0] i_pivot299_emscripten_dom_vk_to_string109_c;
    wire [33:0] i_pivot29_emscripten_dom_vk_to_string235_a;
    wire [33:0] i_pivot29_emscripten_dom_vk_to_string235_b;
    logic [33:0] i_pivot29_emscripten_dom_vk_to_string235_o;
    wire [0:0] i_pivot29_emscripten_dom_vk_to_string235_c;
    wire [33:0] i_pivot301_emscripten_dom_vk_to_string319_a;
    wire [33:0] i_pivot301_emscripten_dom_vk_to_string319_b;
    logic [33:0] i_pivot301_emscripten_dom_vk_to_string319_o;
    wire [0:0] i_pivot301_emscripten_dom_vk_to_string319_c;
    wire [33:0] i_pivot303_emscripten_dom_vk_to_string221_a;
    wire [33:0] i_pivot303_emscripten_dom_vk_to_string221_b;
    logic [33:0] i_pivot303_emscripten_dom_vk_to_string221_o;
    wire [0:0] i_pivot303_emscripten_dom_vk_to_string221_c;
    wire [33:0] i_pivot307_emscripten_dom_vk_to_string223_a;
    wire [33:0] i_pivot307_emscripten_dom_vk_to_string223_b;
    logic [33:0] i_pivot307_emscripten_dom_vk_to_string223_o;
    wire [0:0] i_pivot307_emscripten_dom_vk_to_string223_c;
    wire [33:0] i_pivot309_emscripten_dom_vk_to_string111_a;
    wire [33:0] i_pivot309_emscripten_dom_vk_to_string111_b;
    logic [33:0] i_pivot309_emscripten_dom_vk_to_string111_o;
    wire [0:0] i_pivot309_emscripten_dom_vk_to_string111_c;
    wire [33:0] i_pivot311_emscripten_dom_vk_to_string55_a;
    wire [33:0] i_pivot311_emscripten_dom_vk_to_string55_b;
    logic [33:0] i_pivot311_emscripten_dom_vk_to_string55_o;
    wire [0:0] i_pivot311_emscripten_dom_vk_to_string55_c;
    wire [33:0] i_pivot313_emscripten_dom_vk_to_string27_a;
    wire [33:0] i_pivot313_emscripten_dom_vk_to_string27_b;
    logic [33:0] i_pivot313_emscripten_dom_vk_to_string27_o;
    wire [0:0] i_pivot313_emscripten_dom_vk_to_string27_c;
    wire [33:0] i_pivot31_emscripten_dom_vk_to_string125_a;
    wire [33:0] i_pivot31_emscripten_dom_vk_to_string125_b;
    logic [33:0] i_pivot31_emscripten_dom_vk_to_string125_o;
    wire [0:0] i_pivot31_emscripten_dom_vk_to_string125_c;
    wire [33:0] i_pivot33_emscripten_dom_vk_to_string237_a;
    wire [33:0] i_pivot33_emscripten_dom_vk_to_string237_b;
    logic [33:0] i_pivot33_emscripten_dom_vk_to_string237_o;
    wire [0:0] i_pivot33_emscripten_dom_vk_to_string237_c;
    wire [33:0] i_pivot35_emscripten_dom_vk_to_string127_a;
    wire [33:0] i_pivot35_emscripten_dom_vk_to_string127_b;
    logic [33:0] i_pivot35_emscripten_dom_vk_to_string127_o;
    wire [0:0] i_pivot35_emscripten_dom_vk_to_string127_c;
    wire [33:0] i_pivot363_emscripten_dom_vk_to_string7_a;
    wire [33:0] i_pivot363_emscripten_dom_vk_to_string7_b;
    logic [33:0] i_pivot363_emscripten_dom_vk_to_string7_o;
    wire [0:0] i_pivot363_emscripten_dom_vk_to_string7_c;
    wire [33:0] i_pivot365_emscripten_dom_vk_to_string3_a;
    wire [33:0] i_pivot365_emscripten_dom_vk_to_string3_b;
    logic [33:0] i_pivot365_emscripten_dom_vk_to_string3_o;
    wire [0:0] i_pivot365_emscripten_dom_vk_to_string3_c;
    wire [33:0] i_pivot37_emscripten_dom_vk_to_string63_a;
    wire [33:0] i_pivot37_emscripten_dom_vk_to_string63_b;
    logic [33:0] i_pivot37_emscripten_dom_vk_to_string63_o;
    wire [0:0] i_pivot37_emscripten_dom_vk_to_string63_c;
    wire [33:0] i_pivot39_emscripten_dom_vk_to_string31_a;
    wire [33:0] i_pivot39_emscripten_dom_vk_to_string31_b;
    logic [33:0] i_pivot39_emscripten_dom_vk_to_string31_o;
    wire [0:0] i_pivot39_emscripten_dom_vk_to_string31_c;
    wire [33:0] i_pivot3_emscripten_dom_vk_to_string227_a;
    wire [33:0] i_pivot3_emscripten_dom_vk_to_string227_b;
    logic [33:0] i_pivot3_emscripten_dom_vk_to_string227_o;
    wire [0:0] i_pivot3_emscripten_dom_vk_to_string227_c;
    wire [33:0] i_pivot41_emscripten_dom_vk_to_string15_a;
    wire [33:0] i_pivot41_emscripten_dom_vk_to_string15_b;
    logic [33:0] i_pivot41_emscripten_dom_vk_to_string15_o;
    wire [0:0] i_pivot41_emscripten_dom_vk_to_string15_c;
    wire [33:0] i_pivot43_emscripten_dom_vk_to_string129_a;
    wire [33:0] i_pivot43_emscripten_dom_vk_to_string129_b;
    logic [33:0] i_pivot43_emscripten_dom_vk_to_string129_o;
    wire [0:0] i_pivot43_emscripten_dom_vk_to_string129_c;
    wire [33:0] i_pivot45_emscripten_dom_vk_to_string239_a;
    wire [33:0] i_pivot45_emscripten_dom_vk_to_string239_b;
    logic [33:0] i_pivot45_emscripten_dom_vk_to_string239_o;
    wire [0:0] i_pivot45_emscripten_dom_vk_to_string239_c;
    wire [33:0] i_pivot47_emscripten_dom_vk_to_string131_a;
    wire [33:0] i_pivot47_emscripten_dom_vk_to_string131_b;
    logic [33:0] i_pivot47_emscripten_dom_vk_to_string131_o;
    wire [0:0] i_pivot47_emscripten_dom_vk_to_string131_c;
    wire [33:0] i_pivot49_emscripten_dom_vk_to_string65_a;
    wire [33:0] i_pivot49_emscripten_dom_vk_to_string65_b;
    logic [33:0] i_pivot49_emscripten_dom_vk_to_string65_o;
    wire [0:0] i_pivot49_emscripten_dom_vk_to_string65_c;
    wire [33:0] i_pivot51_emscripten_dom_vk_to_string241_a;
    wire [33:0] i_pivot51_emscripten_dom_vk_to_string241_b;
    logic [33:0] i_pivot51_emscripten_dom_vk_to_string241_o;
    wire [0:0] i_pivot51_emscripten_dom_vk_to_string241_c;
    wire [33:0] i_pivot53_emscripten_dom_vk_to_string133_a;
    wire [33:0] i_pivot53_emscripten_dom_vk_to_string133_b;
    logic [33:0] i_pivot53_emscripten_dom_vk_to_string133_o;
    wire [0:0] i_pivot53_emscripten_dom_vk_to_string133_c;
    wire [33:0] i_pivot55_emscripten_dom_vk_to_string243_a;
    wire [33:0] i_pivot55_emscripten_dom_vk_to_string243_b;
    logic [33:0] i_pivot55_emscripten_dom_vk_to_string243_o;
    wire [0:0] i_pivot55_emscripten_dom_vk_to_string243_c;
    wire [33:0] i_pivot57_emscripten_dom_vk_to_string135_a;
    wire [33:0] i_pivot57_emscripten_dom_vk_to_string135_b;
    logic [33:0] i_pivot57_emscripten_dom_vk_to_string135_o;
    wire [0:0] i_pivot57_emscripten_dom_vk_to_string135_c;
    wire [33:0] i_pivot59_emscripten_dom_vk_to_string67_a;
    wire [33:0] i_pivot59_emscripten_dom_vk_to_string67_b;
    logic [33:0] i_pivot59_emscripten_dom_vk_to_string67_o;
    wire [0:0] i_pivot59_emscripten_dom_vk_to_string67_c;
    wire [33:0] i_pivot5_emscripten_dom_vk_to_string115_a;
    wire [33:0] i_pivot5_emscripten_dom_vk_to_string115_b;
    logic [33:0] i_pivot5_emscripten_dom_vk_to_string115_o;
    wire [0:0] i_pivot5_emscripten_dom_vk_to_string115_c;
    wire [33:0] i_pivot61_emscripten_dom_vk_to_string33_a;
    wire [33:0] i_pivot61_emscripten_dom_vk_to_string33_b;
    logic [33:0] i_pivot61_emscripten_dom_vk_to_string33_o;
    wire [0:0] i_pivot61_emscripten_dom_vk_to_string33_c;
    wire [33:0] i_pivot63_emscripten_dom_vk_to_string245_a;
    wire [33:0] i_pivot63_emscripten_dom_vk_to_string245_b;
    logic [33:0] i_pivot63_emscripten_dom_vk_to_string245_o;
    wire [0:0] i_pivot63_emscripten_dom_vk_to_string245_c;
    wire [33:0] i_pivot65_emscripten_dom_vk_to_string137_a;
    wire [33:0] i_pivot65_emscripten_dom_vk_to_string137_b;
    logic [33:0] i_pivot65_emscripten_dom_vk_to_string137_o;
    wire [0:0] i_pivot65_emscripten_dom_vk_to_string137_c;
    wire [33:0] i_pivot67_emscripten_dom_vk_to_string247_a;
    wire [33:0] i_pivot67_emscripten_dom_vk_to_string247_b;
    logic [33:0] i_pivot67_emscripten_dom_vk_to_string247_o;
    wire [0:0] i_pivot67_emscripten_dom_vk_to_string247_c;
    wire [33:0] i_pivot69_emscripten_dom_vk_to_string139_a;
    wire [33:0] i_pivot69_emscripten_dom_vk_to_string139_b;
    logic [33:0] i_pivot69_emscripten_dom_vk_to_string139_o;
    wire [0:0] i_pivot69_emscripten_dom_vk_to_string139_c;
    wire [33:0] i_pivot71_emscripten_dom_vk_to_string69_a;
    wire [33:0] i_pivot71_emscripten_dom_vk_to_string69_b;
    logic [33:0] i_pivot71_emscripten_dom_vk_to_string69_o;
    wire [0:0] i_pivot71_emscripten_dom_vk_to_string69_c;
    wire [33:0] i_pivot73_emscripten_dom_vk_to_string249_a;
    wire [33:0] i_pivot73_emscripten_dom_vk_to_string249_b;
    logic [33:0] i_pivot73_emscripten_dom_vk_to_string249_o;
    wire [0:0] i_pivot73_emscripten_dom_vk_to_string249_c;
    wire [33:0] i_pivot75_emscripten_dom_vk_to_string141_a;
    wire [33:0] i_pivot75_emscripten_dom_vk_to_string141_b;
    logic [33:0] i_pivot75_emscripten_dom_vk_to_string141_o;
    wire [0:0] i_pivot75_emscripten_dom_vk_to_string141_c;
    wire [33:0] i_pivot77_emscripten_dom_vk_to_string251_a;
    wire [33:0] i_pivot77_emscripten_dom_vk_to_string251_b;
    logic [33:0] i_pivot77_emscripten_dom_vk_to_string251_o;
    wire [0:0] i_pivot77_emscripten_dom_vk_to_string251_c;
    wire [33:0] i_pivot79_emscripten_dom_vk_to_string143_a;
    wire [33:0] i_pivot79_emscripten_dom_vk_to_string143_b;
    logic [33:0] i_pivot79_emscripten_dom_vk_to_string143_o;
    wire [0:0] i_pivot79_emscripten_dom_vk_to_string143_c;
    wire [33:0] i_pivot7_emscripten_dom_vk_to_string57_a;
    wire [33:0] i_pivot7_emscripten_dom_vk_to_string57_b;
    logic [33:0] i_pivot7_emscripten_dom_vk_to_string57_o;
    wire [0:0] i_pivot7_emscripten_dom_vk_to_string57_c;
    wire [33:0] i_pivot81_emscripten_dom_vk_to_string71_a;
    wire [33:0] i_pivot81_emscripten_dom_vk_to_string71_b;
    logic [33:0] i_pivot81_emscripten_dom_vk_to_string71_o;
    wire [0:0] i_pivot81_emscripten_dom_vk_to_string71_c;
    wire [33:0] i_pivot83_emscripten_dom_vk_to_string35_a;
    wire [33:0] i_pivot83_emscripten_dom_vk_to_string35_b;
    logic [33:0] i_pivot83_emscripten_dom_vk_to_string35_o;
    wire [0:0] i_pivot83_emscripten_dom_vk_to_string35_c;
    wire [33:0] i_pivot85_emscripten_dom_vk_to_string17_a;
    wire [33:0] i_pivot85_emscripten_dom_vk_to_string17_b;
    logic [33:0] i_pivot85_emscripten_dom_vk_to_string17_o;
    wire [0:0] i_pivot85_emscripten_dom_vk_to_string17_c;
    wire [33:0] i_pivot87_emscripten_dom_vk_to_string9_a;
    wire [33:0] i_pivot87_emscripten_dom_vk_to_string9_b;
    logic [33:0] i_pivot87_emscripten_dom_vk_to_string9_o;
    wire [0:0] i_pivot87_emscripten_dom_vk_to_string9_c;
    wire [33:0] i_pivot89_emscripten_dom_vk_to_string145_a;
    wire [33:0] i_pivot89_emscripten_dom_vk_to_string145_b;
    logic [33:0] i_pivot89_emscripten_dom_vk_to_string145_o;
    wire [0:0] i_pivot89_emscripten_dom_vk_to_string145_c;
    wire [33:0] i_pivot91_emscripten_dom_vk_to_string253_a;
    wire [33:0] i_pivot91_emscripten_dom_vk_to_string253_b;
    logic [33:0] i_pivot91_emscripten_dom_vk_to_string253_o;
    wire [0:0] i_pivot91_emscripten_dom_vk_to_string253_c;
    wire [33:0] i_pivot93_emscripten_dom_vk_to_string147_a;
    wire [33:0] i_pivot93_emscripten_dom_vk_to_string147_b;
    logic [33:0] i_pivot93_emscripten_dom_vk_to_string147_o;
    wire [0:0] i_pivot93_emscripten_dom_vk_to_string147_c;
    wire [33:0] i_pivot95_emscripten_dom_vk_to_string73_a;
    wire [33:0] i_pivot95_emscripten_dom_vk_to_string73_b;
    logic [33:0] i_pivot95_emscripten_dom_vk_to_string73_o;
    wire [0:0] i_pivot95_emscripten_dom_vk_to_string73_c;
    wire [33:0] i_pivot97_emscripten_dom_vk_to_string255_a;
    wire [33:0] i_pivot97_emscripten_dom_vk_to_string255_b;
    logic [33:0] i_pivot97_emscripten_dom_vk_to_string255_o;
    wire [0:0] i_pivot97_emscripten_dom_vk_to_string255_c;
    wire [33:0] i_pivot99_emscripten_dom_vk_to_string149_a;
    wire [33:0] i_pivot99_emscripten_dom_vk_to_string149_b;
    logic [33:0] i_pivot99_emscripten_dom_vk_to_string149_o;
    wire [0:0] i_pivot99_emscripten_dom_vk_to_string149_c;
    wire [33:0] i_pivot9_emscripten_dom_vk_to_string229_a;
    wire [33:0] i_pivot9_emscripten_dom_vk_to_string229_b;
    logic [33:0] i_pivot9_emscripten_dom_vk_to_string229_o;
    wire [0:0] i_pivot9_emscripten_dom_vk_to_string229_c;
    wire [33:0] i_pivot_emscripten_dom_vk_to_string113_a;
    wire [33:0] i_pivot_emscripten_dom_vk_to_string113_b;
    logic [33:0] i_pivot_emscripten_dom_vk_to_string113_o;
    wire [0:0] i_pivot_emscripten_dom_vk_to_string113_c;
    wire [31:0] i_sel_bits_emscripten_dom_vk_to_string396_q;
    wire [28:0] i_sel_bits_emscripten_dom_vk_to_string396_vt_const_31_q;
    wire [31:0] i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q;
    wire [2:0] i_sel_bits_emscripten_dom_vk_to_string396_vt_select_2_b;
    wire [2:0] i_sel_shr_emscripten_dom_vk_to_string399_vt_const_31_q;
    wire [31:0] i_sel_shr_emscripten_dom_vk_to_string399_vt_join_q;
    wire [28:0] i_sel_shr_emscripten_dom_vk_to_string399_vt_select_28_b;
    wire [0:0] i_switchleaf_emscripten_dom_vk_to_string225_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string323_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string323_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string338_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string338_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string361_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string489_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string572_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string572_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string581_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string581_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string608_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string608_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string613_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string613_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string622_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string622_q;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string657_qi;
    reg [0:0] i_unnamed_emscripten_dom_vk_to_string657_q;
    wire [33:0] i_unnamed_emscripten_dom_vk_to_string674_a;
    wire [33:0] i_unnamed_emscripten_dom_vk_to_string674_b;
    logic [33:0] i_unnamed_emscripten_dom_vk_to_string674_o;
    wire [0:0] i_unnamed_emscripten_dom_vk_to_string674_c;
    wire [31:0] c_i32_128791_recast_x_q;
    wire [31:0] c_i32_129735_recast_x_q;
    wire [31:0] c_i32_130707_recast_x_q;
    wire [31:0] c_i32_131736_recast_x_q;
    wire [31:0] c_i32_132792_recast_x_q;
    wire [31:0] c_i32_133693_recast_x_q;
    wire [31:0] c_i32_134737_recast_x_q;
    wire [31:0] c_i32_135793_recast_x_q;
    wire [31:0] c_i32_136708_recast_x_q;
    wire [31:0] c_i32_137738_recast_x_q;
    wire [31:0] c_i32_138794_recast_x_q;
    wire [31:0] c_i32_139686_recast_x_q;
    wire [31:0] c_i32_140739_recast_x_q;
    wire [31:0] c_i32_141709_recast_x_q;
    wire [31:0] c_i32_142740_recast_x_q;
    wire [31:0] c_i32_143795_recast_x_q;
    wire [31:0] c_i32_144694_recast_x_q;
    wire [31:0] c_i32_145741_recast_x_q;
    wire [31:0] c_i32_146796_recast_x_q;
    wire [31:0] c_i32_147710_recast_x_q;
    wire [31:0] c_i32_148742_recast_x_q;
    wire [31:0] c_i32_149797_recast_x_q;
    wire [31:0] c_i32_150683_recast_x_q;
    wire [31:0] c_i32_151743_recast_x_q;
    wire [31:0] c_i32_152711_recast_x_q;
    wire [31:0] c_i32_153744_recast_x_q;
    wire [31:0] c_i32_154798_recast_x_q;
    wire [31:0] c_i32_155695_recast_x_q;
    wire [31:0] c_i32_156745_recast_x_q;
    wire [31:0] c_i32_157799_recast_x_q;
    wire [31:0] c_i32_158712_recast_x_q;
    wire [31:0] c_i32_159746_recast_x_q;
    wire [31:0] c_i32_160800_recast_x_q;
    wire [31:0] c_i32_161687_recast_x_q;
    wire [31:0] c_i32_162747_recast_x_q;
    wire [31:0] c_i32_163801_recast_x_q;
    wire [31:0] c_i32_164713_recast_x_q;
    wire [31:0] c_i32_165748_recast_x_q;
    wire [31:0] c_i32_166802_recast_x_q;
    wire [31:0] c_i32_167696_recast_x_q;
    wire [31:0] c_i32_168749_recast_x_q;
    wire [31:0] c_i32_169803_recast_x_q;
    wire [31:0] c_i32_170714_recast_x_q;
    wire [31:0] c_i32_171750_recast_x_q;
    wire [31:0] c_i32_172804_recast_x_q;
    wire [31:0] c_i32_173681_recast_x_q;
    wire [31:0] c_i32_174751_recast_x_q;
    wire [31:0] c_i32_175715_recast_x_q;
    wire [31:0] c_i32_176752_recast_x_q;
    wire [31:0] c_i32_177805_recast_x_q;
    wire [31:0] c_i32_178697_recast_x_q;
    wire [31:0] c_i32_179753_recast_x_q;
    wire [31:0] c_i32_180806_recast_x_q;
    wire [31:0] c_i32_181716_recast_x_q;
    wire [31:0] c_i32_182754_recast_x_q;
    wire [31:0] c_i32_183807_recast_x_q;
    wire [31:0] c_i32_184688_recast_x_q;
    wire [31:0] c_i32_185755_recast_x_q;
    wire [31:0] c_i32_186808_recast_x_q;
    wire [31:0] c_i32_187717_recast_x_q;
    wire [31:0] c_i32_188756_recast_x_q;
    wire [31:0] c_i32_189809_recast_x_q;
    wire [31:0] c_i32_190698_recast_x_q;
    wire [31:0] c_i32_191757_recast_x_q;
    wire [31:0] c_i32_192810_recast_x_q;
    wire [31:0] c_i32_193718_recast_x_q;
    wire [31:0] c_i32_194758_recast_x_q;
    wire [31:0] c_i32_195811_recast_x_q;
    wire [31:0] c_i32_196684_recast_x_q;
    wire [31:0] c_i32_197759_recast_x_q;
    wire [31:0] c_i32_198719_recast_x_q;
    wire [31:0] c_i32_199760_recast_x_q;
    wire [31:0] c_i32_200812_recast_x_q;
    wire [31:0] c_i32_201699_recast_x_q;
    wire [31:0] c_i32_202761_recast_x_q;
    wire [31:0] c_i32_203813_recast_x_q;
    wire [31:0] c_i32_204720_recast_x_q;
    wire [31:0] c_i32_205762_recast_x_q;
    wire [31:0] c_i32_206814_recast_x_q;
    wire [31:0] c_i32_207689_recast_x_q;
    wire [31:0] c_i32_208763_recast_x_q;
    wire [31:0] c_i32_209815_recast_x_q;
    wire [31:0] c_i32_210721_recast_x_q;
    wire [31:0] c_i32_211764_recast_x_q;
    wire [31:0] c_i32_212816_recast_x_q;
    wire [31:0] c_i32_213700_recast_x_q;
    wire [31:0] c_i32_214765_recast_x_q;
    wire [31:0] c_i32_215817_recast_x_q;
    wire [31:0] c_i32_216722_recast_x_q;
    wire [31:0] c_i32_217766_recast_x_q;
    wire [31:0] c_i32_218818_recast_x_q;
    wire [31:0] c_i32_219680_recast_x_q;
    wire [31:0] c_i32_220767_recast_x_q;
    wire [31:0] c_i32_221723_recast_x_q;
    wire [31:0] c_i32_222768_recast_x_q;
    wire [31:0] c_i32_223819_recast_x_q;
    wire [31:0] c_i32_224701_recast_x_q;
    wire [31:0] c_i32_225769_recast_x_q;
    wire [31:0] c_i32_226820_recast_x_q;
    wire [31:0] c_i32_227724_recast_x_q;
    wire [31:0] c_i32_228770_recast_x_q;
    wire [31:0] c_i32_229821_recast_x_q;
    wire [31:0] c_i32_230690_recast_x_q;
    wire [31:0] c_i32_231771_recast_x_q;
    wire [31:0] c_i32_232822_recast_x_q;
    wire [31:0] c_i32_233725_recast_x_q;
    wire [31:0] c_i32_234772_recast_x_q;
    wire [31:0] c_i32_235823_recast_x_q;
    wire [31:0] c_i32_236702_recast_x_q;
    wire [31:0] c_i32_237773_recast_x_q;
    wire [31:0] c_i32_238824_recast_x_q;
    wire [31:0] c_i32_239726_recast_x_q;
    wire [31:0] c_i32_240774_recast_x_q;
    wire [31:0] c_i32_241825_recast_x_q;
    wire [31:0] c_i32_242685_recast_x_q;
    wire [31:0] c_i32_243775_recast_x_q;
    wire [31:0] c_i32_244727_recast_x_q;
    wire [31:0] c_i32_245776_recast_x_q;
    wire [31:0] c_i32_246826_recast_x_q;
    wire [31:0] c_i32_247703_recast_x_q;
    wire [31:0] c_i32_248777_recast_x_q;
    wire [31:0] c_i32_249827_recast_x_q;
    wire [31:0] c_i32_250728_recast_x_q;
    wire [31:0] c_i32_251778_recast_x_q;
    wire [31:0] c_i32_252828_recast_x_q;
    wire [31:0] c_i32_253691_recast_x_q;
    wire [31:0] c_i32_254779_recast_x_q;
    wire [31:0] c_i32_255829_recast_x_q;
    wire [31:0] c_i32_256729_recast_x_q;
    wire [31:0] c_i32_257780_recast_x_q;
    wire [31:0] c_i32_258830_recast_x_q;
    wire [31:0] c_i32_259704_recast_x_q;
    wire [31:0] c_i32_260781_recast_x_q;
    wire [31:0] c_i32_261831_recast_x_q;
    wire [31:0] c_i32_262730_recast_x_q;
    wire [31:0] c_i32_263782_recast_x_q;
    wire [31:0] c_i32_264832_recast_x_q;
    wire [31:0] c_i32_265682_recast_x_q;
    wire [31:0] c_i32_266783_recast_x_q;
    wire [31:0] c_i32_267731_recast_x_q;
    wire [31:0] c_i32_268784_recast_x_q;
    wire [31:0] c_i32_269833_recast_x_q;
    wire [31:0] c_i32_270705_recast_x_q;
    wire [31:0] c_i32_271785_recast_x_q;
    wire [31:0] c_i32_272834_recast_x_q;
    wire [31:0] c_i32_273732_recast_x_q;
    wire [31:0] c_i32_274786_recast_x_q;
    wire [31:0] c_i32_275835_recast_x_q;
    wire [31:0] c_i32_276692_recast_x_q;
    wire [31:0] c_i32_277787_recast_x_q;
    wire [31:0] c_i32_278836_recast_x_q;
    wire [31:0] c_i32_279733_recast_x_q;
    wire [31:0] c_i32_280788_recast_x_q;
    wire [31:0] c_i32_281837_recast_x_q;
    wire [31:0] c_i32_282706_recast_x_q;
    wire [31:0] c_i32_283789_recast_x_q;
    wire [31:0] c_i32_284838_recast_x_q;
    wire [31:0] c_i32_285734_recast_x_q;
    wire [31:0] c_i32_286790_recast_x_q;
    wire [31:0] c_i32_288841_recast_x_q;
    wire [31:0] c_i32_2891016_recast_x_q;
    wire [31:0] c_i32_2901013_recast_x_q;
    wire [31:0] c_i32_2921039_recast_x_q;
    wire [31:0] c_i32_294999_recast_x_q;
    wire [31:0] c_i32_295994_recast_x_q;
    wire [31:0] c_i32_2961021_recast_x_q;
    wire [31:0] c_i32_297849_recast_x_q;
    wire [31:0] c_i32_298952_recast_x_q;
    wire [31:0] c_i32_299861_recast_x_q;
    wire [31:0] c_i32_3101048_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_qi;
    reg [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_qi;
    reg [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_qi;
    reg [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_qi;
    reg [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_9_comparator_x_q;
    wire [0:0] dupName_10_comparator_x_q;
    wire [0:0] dupName_11_comparator_x_q;
    wire [0:0] dupName_12_comparator_x_q;
    wire [0:0] dupName_13_comparator_x_q;
    wire [0:0] dupName_14_comparator_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1075_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1077_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1080_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_b;
    wire [1:0] rightShiftStage1Idx1Pad2_uid1081_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid1082_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
    reg [31:0] redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [31:0] redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q;
    reg [31:0] redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q;
    reg [31:0] redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q;
    reg [31:0] redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q;
    reg [31:0] redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q;
    reg [31:0] redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q;
    reg [31:0] redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q;
    reg [31:0] redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q;
    reg [31:0] redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q;
    reg [31:0] redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q;
    reg [31:0] redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q;
    reg [31:0] redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q;
    reg [31:0] redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q;
    reg [31:0] redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q;
    reg [31:0] redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q;
    reg [0:0] redist16_sync_together1051_aunroll_x_in_i_valid_25_q;
    reg [0:0] redist17_i_unnamed_emscripten_dom_vk_to_string657_q_8_q;
    reg [0:0] redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_q;
    reg [0:0] redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_0;
    reg [0:0] redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_1;
    reg [0:0] redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_2;
    reg [0:0] redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_3;
    reg [0:0] redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_q;
    reg [0:0] redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_0;
    reg [0:0] redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_1;
    reg [0:0] redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_2;
    reg [0:0] redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_q;
    reg [0:0] redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_0;
    reg [0:0] redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_1;
    reg [0:0] redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_2;
    reg [0:0] redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_q;
    reg [0:0] redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_delay_0;
    reg [0:0] redist22_i_unnamed_emscripten_dom_vk_to_string572_q_2_q;
    reg [0:0] redist23_i_switchleaf_emscripten_dom_vk_to_string225_q_9_q;
    reg [0:0] redist24_i_pivot_emscripten_dom_vk_to_string113_c_6_q;
    reg [0:0] redist25_i_pivot97_emscripten_dom_vk_to_string255_c_2_q;
    reg [0:0] redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_q;
    reg [0:0] redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_0;
    reg [0:0] redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_1;
    reg [0:0] redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_2;
    reg [0:0] redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_3;
    reg [0:0] redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_q;
    reg [0:0] redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_0;
    reg [0:0] redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_1;
    reg [0:0] redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_q;
    reg [0:0] redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_0;
    reg [0:0] redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_1;
    reg [0:0] redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_2;
    reg [0:0] redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_q;
    reg [0:0] redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_0;
    reg [0:0] redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_1;
    reg [0:0] redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_2;
    reg [0:0] redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_3;
    reg [0:0] redist30_i_pivot81_emscripten_dom_vk_to_string71_c_9_q;
    reg [0:0] redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_q;
    reg [0:0] redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_0;
    reg [0:0] redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_1;
    reg [0:0] redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_2;
    reg [0:0] redist32_i_pivot75_emscripten_dom_vk_to_string141_c_7_q;
    reg [0:0] redist33_i_pivot71_emscripten_dom_vk_to_string69_c_9_q;
    reg [0:0] redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_q;
    reg [0:0] redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_delay_0;
    reg [0:0] redist35_i_pivot57_emscripten_dom_vk_to_string135_c_7_q;
    reg [0:0] redist36_i_pivot55_emscripten_dom_vk_to_string243_c_6_q;
    reg [0:0] redist37_i_pivot53_emscripten_dom_vk_to_string133_c_7_q;
    reg [0:0] redist38_i_pivot45_emscripten_dom_vk_to_string239_c_6_q;
    reg [0:0] redist39_i_pivot3_emscripten_dom_vk_to_string227_c_7_q;
    reg [0:0] redist40_i_pivot365_emscripten_dom_vk_to_string3_c_6_q;
    reg [0:0] redist41_i_pivot365_emscripten_dom_vk_to_string3_c_14_q;
    reg [0:0] redist42_i_pivot363_emscripten_dom_vk_to_string7_c_2_q;
    reg [0:0] redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_q;
    reg [0:0] redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_delay_0;
    reg [0:0] redist44_i_pivot303_emscripten_dom_vk_to_string221_c_16_q;
    reg [0:0] redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_q;
    reg [0:0] redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_0;
    reg [0:0] redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_1;
    reg [0:0] redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_2;
    reg [0:0] redist46_i_pivot297_emscripten_dom_vk_to_string219_c_11_q;
    reg [0:0] redist47_i_pivot293_emscripten_dom_vk_to_string217_c_9_q;
    reg [0:0] redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_q;
    reg [0:0] redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_0;
    reg [0:0] redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_1;
    reg [0:0] redist49_i_pivot281_emscripten_dom_vk_to_string213_c_7_q;
    reg [0:0] redist50_i_pivot279_emscripten_dom_vk_to_string311_c_1_q;
    reg [0:0] redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_q;
    reg [0:0] redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_delay_0;
    reg [0:0] redist52_i_pivot273_emscripten_dom_vk_to_string309_c_8_q;
    reg [0:0] redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_q;
    reg [0:0] redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_0;
    reg [0:0] redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_1;
    reg [0:0] redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_q;
    reg [0:0] redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_delay_0;
    reg [0:0] redist55_i_pivot255_emscripten_dom_vk_to_string305_c_2_q;
    reg [0:0] redist56_i_pivot253_emscripten_dom_vk_to_string101_c_2_q;
    reg [0:0] redist57_i_pivot251_emscripten_dom_vk_to_string203_c_6_q;
    reg [0:0] redist58_i_pivot247_emscripten_dom_vk_to_string201_c_1_q;
    reg [0:0] redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_q;
    reg [0:0] redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_delay_0;
    reg [0:0] redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_q;
    reg [0:0] redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_delay_0;
    reg [0:0] redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_q;
    reg [0:0] redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_delay_0;
    reg [0:0] redist62_i_pivot209_emscripten_dom_vk_to_string93_c_11_q;
    reg [0:0] redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_q;
    reg [0:0] redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_0;
    reg [0:0] redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_1;
    reg [0:0] redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_2;
    reg [0:0] redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_q;
    reg [0:0] redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_delay_0;
    reg [0:0] redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_q;
    reg [0:0] redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_0;
    reg [0:0] redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_1;
    reg [0:0] redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_2;
    reg [0:0] redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_q;
    reg [0:0] redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_0;
    reg [0:0] redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_1;
    reg [0:0] redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_q;
    reg [0:0] redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_0;
    reg [0:0] redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_1;
    reg [0:0] redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_2;
    reg [0:0] redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_q;
    reg [0:0] redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_0;
    reg [0:0] redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_1;
    reg [0:0] redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_q;
    reg [0:0] redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_delay_0;
    reg [0:0] redist70_i_pivot181_emscripten_dom_vk_to_string177_c_6_q;
    reg [0:0] redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_q;
    reg [0:0] redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_0;
    reg [0:0] redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_1;
    reg [0:0] redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_2;
    reg [0:0] redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_3;
    reg [0:0] redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_q;
    reg [0:0] redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_delay_0;
    reg [0:0] redist73_i_pivot169_emscripten_dom_vk_to_string175_c_1_q;
    reg [0:0] redist74_i_pivot167_emscripten_dom_vk_to_string279_c_1_q;
    reg [0:0] redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_q;
    reg [0:0] redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_delay_0;
    reg [0:0] redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_q;
    reg [0:0] redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_0;
    reg [0:0] redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_1;
    reg [0:0] redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_2;
    reg [0:0] redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_3;
    reg [0:0] redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_q;
    reg [0:0] redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_0;
    reg [0:0] redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_1;
    reg [0:0] redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_2;
    reg [0:0] redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_3;
    reg [0:0] redist78_i_pivot153_emscripten_dom_vk_to_string273_c_9_q;
    reg [0:0] redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_q;
    reg [0:0] redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_delay_0;
    reg [0:0] redist80_i_pivot133_emscripten_dom_vk_to_string161_c_8_q;
    reg [0:0] redist81_i_pivot131_emscripten_dom_vk_to_string19_c_12_q;
    reg [0:0] redist82_i_pivot129_emscripten_dom_vk_to_string39_c_2_q;
    reg [0:0] redist83_i_pivot125_emscripten_dom_vk_to_string159_c_8_q;
    reg [0:0] redist84_i_pivot121_emscripten_dom_vk_to_string157_c_1_q;
    reg [0:0] redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_q;
    reg [0:0] redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_0;
    reg [0:0] redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_1;
    reg [0:0] redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_2;
    reg [0:0] redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_3;
    reg [0:0] redist86_i_pivot113_emscripten_dom_vk_to_string261_c_15_q;
    reg [0:0] redist87_i_pivot107_emscripten_dom_vk_to_string37_c_8_q;
    reg [0:0] redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_q;
    reg [0:0] redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_delay_0;
    reg [0:0] redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_q;
    reg [0:0] redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_0;
    reg [0:0] redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_1;
    reg [0:0] redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_2;
    reg [0:0] redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_3;
    reg [0:0] redist90_i_acl_891_emscripten_dom_vk_to_string441_q_2_q;
    reg [0:0] redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_q;
    reg [0:0] redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_0;
    reg [0:0] redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_1;
    reg [0:0] redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_2;
    reg [0:0] redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_q;
    reg [0:0] redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_delay_0;
    reg [0:0] redist93_i_acl_827_emscripten_dom_vk_to_string423_q_2_q;
    reg [0:0] redist94_i_acl_816_emscripten_dom_vk_to_string421_q_2_q;
    reg [0:0] redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_q;
    reg [0:0] redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_delay_0;
    reg [0:0] redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_q;
    reg [0:0] redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_delay_0;
    reg [0:0] redist97_i_acl_551_emscripten_dom_vk_to_string372_q_2_q;
    reg [0:0] redist98_i_acl_1763_emscripten_dom_vk_to_string676_q_9_q;
    reg [0:0] redist99_i_acl_1743_emscripten_dom_vk_to_string671_q_9_q;
    reg [0:0] redist100_i_acl_1736_emscripten_dom_vk_to_string669_q_16_q;
    reg [0:0] redist101_i_acl_1719_emscripten_dom_vk_to_string666_q_9_q;
    reg [0:0] redist102_i_acl_1712_emscripten_dom_vk_to_string664_q_21_q;
    reg [0:0] redist103_i_acl_1706_emscripten_dom_vk_to_string662_q_17_q;
    reg [0:0] redist104_i_acl_1696_emscripten_dom_vk_to_string660_q_18_q;
    reg [0:0] redist105_i_acl_1680_emscripten_dom_vk_to_string655_q_8_q;
    reg [0:0] redist106_i_acl_1674_emscripten_dom_vk_to_string653_q_8_q;
    reg [0:0] redist107_i_acl_1669_emscripten_dom_vk_to_string651_q_8_q;
    reg [0:0] redist108_i_acl_1658_emscripten_dom_vk_to_string649_q_7_q;
    reg [0:0] redist109_i_acl_1651_emscripten_dom_vk_to_string647_q_7_q;
    reg [0:0] redist110_i_acl_1645_emscripten_dom_vk_to_string645_q_7_q;
    reg [0:0] redist111_i_acl_1634_emscripten_dom_vk_to_string643_q_7_q;
    reg [0:0] redist112_i_acl_1628_emscripten_dom_vk_to_string641_q_7_q;
    reg [0:0] redist113_i_acl_1618_emscripten_dom_vk_to_string639_q_7_q;
    reg [0:0] redist114_i_acl_1611_emscripten_dom_vk_to_string637_q_7_q;
    reg [0:0] redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_q;
    reg [0:0] redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_0;
    reg [0:0] redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_1;
    reg [0:0] redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_2;
    reg [0:0] redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_3;
    reg [0:0] redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_q;
    reg [0:0] redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_0;
    reg [0:0] redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_1;
    reg [0:0] redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_2;
    reg [0:0] redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_3;
    reg [0:0] redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_q;
    reg [0:0] redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_0;
    reg [0:0] redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_1;
    reg [0:0] redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_2;
    reg [0:0] redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_3;
    reg [0:0] redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_q;
    reg [0:0] redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_0;
    reg [0:0] redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_1;
    reg [0:0] redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_2;
    reg [0:0] redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_3;
    reg [0:0] redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_q;
    reg [0:0] redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_0;
    reg [0:0] redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_1;
    reg [0:0] redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_2;
    reg [0:0] redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_3;
    reg [0:0] redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_q;
    reg [0:0] redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_0;
    reg [0:0] redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_1;
    reg [0:0] redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_2;
    reg [0:0] redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_3;
    reg [0:0] redist121_i_acl_1553_emscripten_dom_vk_to_string620_q_13_q;
    reg [0:0] redist122_i_acl_1544_emscripten_dom_vk_to_string618_q_13_q;
    reg [0:0] redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_q;
    reg [0:0] redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_0;
    reg [0:0] redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_1;
    reg [0:0] redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_2;
    reg [0:0] redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_q;
    reg [0:0] redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_0;
    reg [0:0] redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_1;
    reg [0:0] redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_2;
    reg [0:0] redist125_i_acl_1509_emscripten_dom_vk_to_string606_q_11_q;
    reg [0:0] redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_q;
    reg [0:0] redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_0;
    reg [0:0] redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_1;
    reg [0:0] redist127_i_acl_1494_emscripten_dom_vk_to_string602_q_10_q;
    reg [0:0] redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_q;
    reg [0:0] redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_0;
    reg [0:0] redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_1;
    reg [0:0] redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_q;
    reg [0:0] redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_0;
    reg [0:0] redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_1;
    reg [0:0] redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_q;
    reg [0:0] redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_0;
    reg [0:0] redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_1;
    reg [0:0] redist131_i_acl_1463_emscripten_dom_vk_to_string594_q_11_q;
    reg [0:0] redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_q;
    reg [0:0] redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_0;
    reg [0:0] redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_1;
    reg [0:0] redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_q;
    reg [0:0] redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_delay_0;
    reg [0:0] redist134_i_acl_1440_emscripten_dom_vk_to_string588_q_12_q;
    reg [0:0] redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_q;
    reg [0:0] redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_delay_0;
    reg [0:0] redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_q;
    reg [0:0] redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_delay_0;
    reg [0:0] redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_q;
    reg [0:0] redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_delay_0;
    reg [0:0] redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_q;
    reg [0:0] redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_delay_0;
    reg [0:0] redist139_i_acl_1395_emscripten_dom_vk_to_string575_q_9_q;
    reg [0:0] redist140_i_acl_1377_emscripten_dom_vk_to_string570_q_2_q;
    reg [0:0] redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_q;
    reg [0:0] redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_0;
    reg [0:0] redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_1;
    reg [0:0] redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_2;
    reg [0:0] redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_3;
    reg [0:0] redist142_i_acl_1362_emscripten_dom_vk_to_string566_q_16_q;
    reg [0:0] redist143_i_acl_1354_emscripten_dom_vk_to_string564_q_14_q;
    reg [0:0] redist144_i_acl_1347_emscripten_dom_vk_to_string562_q_17_q;
    reg [0:0] redist145_i_acl_1302_emscripten_dom_vk_to_string550_q_8_q;
    reg [0:0] redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_q;
    reg [0:0] redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_0;
    reg [0:0] redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_1;
    reg [0:0] redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_2;
    reg [0:0] redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_3;
    reg [0:0] redist147_i_acl_1099_emscripten_dom_vk_to_string496_q_7_q;
    reg [0:0] redist148_i_acl_1092_emscripten_dom_vk_to_string494_q_10_q;
    reg [0:0] redist149_i_acl_1082_emscripten_dom_vk_to_string492_q_8_q;
    reg [0:0] redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_q;
    reg [0:0] redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_0;
    reg [0:0] redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_1;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together1051_aunroll_x_in_i_valid_25(DELAY,1101)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together1051_aunroll_x_in_i_valid_25 ( .xin(in_i_valid), .xout(redist16_sync_together1051_aunroll_x_in_i_valid_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46648847890257018881049(CONSTANT,198)
    assign c_i64_46648847890257018881049_q = $unsigned(64'b0100000010111101000000000000000000000000000000000000000000000000);

    // c_i64_46646033140489912321047(CONSTANT,197)
    assign c_i64_46646033140489912321047_q = $unsigned(64'b0100000010111100000000000000000000000000000000000000000000000000);

    // c_i64_46643218390722805761046(CONSTANT,196)
    assign c_i64_46643218390722805761046_q = $unsigned(64'b0100000010111011000000000000000000000000000000000000000000000000);

    // c_i64_46640403640955699201045(CONSTANT,195)
    assign c_i64_46640403640955699201045_q = $unsigned(64'b0100000010111010000000000000000000000000000000000000000000000000);

    // c_i64_46637588891188592641044(CONSTANT,194)
    assign c_i64_46637588891188592641044_q = $unsigned(64'b0100000010111001000000000000000000000000000000000000000000000000);

    // c_i64_46634774141421486081043(CONSTANT,193)
    assign c_i64_46634774141421486081043_q = $unsigned(64'b0100000010111000000000000000000000000000000000000000000000000000);

    // c_i64_46631959391654379521042(CONSTANT,192)
    assign c_i64_46631959391654379521042_q = $unsigned(64'b0100000010110111000000000000000000000000000000000000000000000000);

    // c_i64_46629144641887272961041(CONSTANT,191)
    assign c_i64_46629144641887272961041_q = $unsigned(64'b0100000010110110000000000000000000000000000000000000000000000000);

    // c_i64_46626329892120166401040(CONSTANT,190)
    assign c_i64_46626329892120166401040_q = $unsigned(64'b0100000010110101000000000000000000000000000000000000000000000000);

    // c_i64_46623515142353059841038(CONSTANT,189)
    assign c_i64_46623515142353059841038_q = $unsigned(64'b0100000010110100000000000000000000000000000000000000000000000000);

    // c_i64_46620700392585953281037(CONSTANT,188)
    assign c_i64_46620700392585953281037_q = $unsigned(64'b0100000010110011000000000000000000000000000000000000000000000000);

    // c_i64_46617885642818846721036(CONSTANT,187)
    assign c_i64_46617885642818846721036_q = $unsigned(64'b0100000010110010000000000000000000000000000000000000000000000000);

    // c_i64_46615070893051740161035(CONSTANT,186)
    assign c_i64_46615070893051740161035_q = $unsigned(64'b0100000010110001000000000000000000000000000000000000000000000000);

    // c_i64_46612256143284633601034(CONSTANT,185)
    assign c_i64_46612256143284633601034_q = $unsigned(64'b0100000010110000000000000000000000000000000000000000000000000000);

    // c_i64_46609441393517527041033(CONSTANT,184)
    assign c_i64_46609441393517527041033_q = $unsigned(64'b0100000010101111000000000000000000000000000000000000000000000000);

    // c_i64_46606626643750420481032(CONSTANT,183)
    assign c_i64_46606626643750420481032_q = $unsigned(64'b0100000010101110000000000000000000000000000000000000000000000000);

    // c_i64_46603811893983313921031(CONSTANT,182)
    assign c_i64_46603811893983313921031_q = $unsigned(64'b0100000010101101000000000000000000000000000000000000000000000000);

    // c_i64_46600997144216207361030(CONSTANT,181)
    assign c_i64_46600997144216207361030_q = $unsigned(64'b0100000010101100000000000000000000000000000000000000000000000000);

    // c_i64_46598182394449100801029(CONSTANT,180)
    assign c_i64_46598182394449100801029_q = $unsigned(64'b0100000010101011000000000000000000000000000000000000000000000000);

    // c_i64_46595367644681994241028(CONSTANT,179)
    assign c_i64_46595367644681994241028_q = $unsigned(64'b0100000010101010000000000000000000000000000000000000000000000000);

    // c_i64_46592552894914887681027(CONSTANT,178)
    assign c_i64_46592552894914887681027_q = $unsigned(64'b0100000010101001000000000000000000000000000000000000000000000000);

    // c_i64_46589738145147781121026(CONSTANT,177)
    assign c_i64_46589738145147781121026_q = $unsigned(64'b0100000010101000000000000000000000000000000000000000000000000000);

    // c_i64_46586923395380674561025(CONSTANT,176)
    assign c_i64_46586923395380674561025_q = $unsigned(64'b0100000010100111000000000000000000000000000000000000000000000000);

    // c_i64_46584108645613568001024(CONSTANT,175)
    assign c_i64_46584108645613568001024_q = $unsigned(64'b0100000010100110000000000000000000000000000000000000000000000000);

    // c_i64_46581293895846461441023(CONSTANT,174)
    assign c_i64_46581293895846461441023_q = $unsigned(64'b0100000010100101000000000000000000000000000000000000000000000000);

    // c_i64_46578479146079354881022(CONSTANT,173)
    assign c_i64_46578479146079354881022_q = $unsigned(64'b0100000010100100000000000000000000000000000000000000000000000000);

    // c_i64_46575664396312248321020(CONSTANT,172)
    assign c_i64_46575664396312248321020_q = $unsigned(64'b0100000010100011000000000000000000000000000000000000000000000000);

    // c_i64_46572849646545141761019(CONSTANT,171)
    assign c_i64_46572849646545141761019_q = $unsigned(64'b0100000010100010000000000000000000000000000000000000000000000000);

    // c_i64_46570034896778035201018(CONSTANT,170)
    assign c_i64_46570034896778035201018_q = $unsigned(64'b0100000010100001000000000000000000000000000000000000000000000000);

    // c_i64_46567220147010928641017(CONSTANT,169)
    assign c_i64_46567220147010928641017_q = $unsigned(64'b0100000010100000000000000000000000000000000000000000000000000000);

    // c_i64_46564405397243822081015(CONSTANT,168)
    assign c_i64_46564405397243822081015_q = $unsigned(64'b0100000010011111000000000000000000000000000000000000000000000000);

    // c_i64_46561590647476715521014(CONSTANT,167)
    assign c_i64_46561590647476715521014_q = $unsigned(64'b0100000010011110000000000000000000000000000000000000000000000000);

    // c_i64_46558775897709608961012(CONSTANT,166)
    assign c_i64_46558775897709608961012_q = $unsigned(64'b0100000010011101000000000000000000000000000000000000000000000000);

    // c_i64_46555961147942502401011(CONSTANT,165)
    assign c_i64_46555961147942502401011_q = $unsigned(64'b0100000010011100000000000000000000000000000000000000000000000000);

    // c_i64_46553146398175395841010(CONSTANT,164)
    assign c_i64_46553146398175395841010_q = $unsigned(64'b0100000010011011000000000000000000000000000000000000000000000000);

    // c_i64_46550331648408289281009(CONSTANT,163)
    assign c_i64_46550331648408289281009_q = $unsigned(64'b0100000010011010000000000000000000000000000000000000000000000000);

    // c_i64_46547516898641182721008(CONSTANT,162)
    assign c_i64_46547516898641182721008_q = $unsigned(64'b0100000010011001000000000000000000000000000000000000000000000000);

    // c_i64_46544702148874076161007(CONSTANT,161)
    assign c_i64_46544702148874076161007_q = $unsigned(64'b0100000010011000000000000000000000000000000000000000000000000000);

    // c_i64_46541887399106969601006(CONSTANT,160)
    assign c_i64_46541887399106969601006_q = $unsigned(64'b0100000010010111000000000000000000000000000000000000000000000000);

    // c_i64_46539072649339863041005(CONSTANT,159)
    assign c_i64_46539072649339863041005_q = $unsigned(64'b0100000010010110000000000000000000000000000000000000000000000000);

    // c_i64_46536257899572756481004(CONSTANT,158)
    assign c_i64_46536257899572756481004_q = $unsigned(64'b0100000010010101000000000000000000000000000000000000000000000000);

    // c_i64_46533443149805649921003(CONSTANT,157)
    assign c_i64_46533443149805649921003_q = $unsigned(64'b0100000010010100000000000000000000000000000000000000000000000000);

    // c_i64_46530628400038543361002(CONSTANT,156)
    assign c_i64_46530628400038543361002_q = $unsigned(64'b0100000010010011000000000000000000000000000000000000000000000000);

    // c_i64_46527813650271436801001(CONSTANT,155)
    assign c_i64_46527813650271436801001_q = $unsigned(64'b0100000010010010000000000000000000000000000000000000000000000000);

    // c_i64_46524998900504330241000(CONSTANT,154)
    assign c_i64_46524998900504330241000_q = $unsigned(64'b0100000010010001000000000000000000000000000000000000000000000000);

    // c_i64_4652218415073722368998(CONSTANT,153)
    assign c_i64_4652218415073722368998_q = $unsigned(64'b0100000010010000000000000000000000000000000000000000000000000000);

    // c_i64_4651936940097011712997(CONSTANT,152)
    assign c_i64_4651936940097011712997_q = $unsigned(64'b0100000010001111000000000000000000000000000000000000000000000000);

    // c_i64_4651655465120301056996(CONSTANT,151)
    assign c_i64_4651655465120301056996_q = $unsigned(64'b0100000010001110000000000000000000000000000000000000000000000000);

    // c_i64_4651373990143590400995(CONSTANT,150)
    assign c_i64_4651373990143590400995_q = $unsigned(64'b0100000010001101000000000000000000000000000000000000000000000000);

    // c_i64_4651092515166879744993(CONSTANT,149)
    assign c_i64_4651092515166879744993_q = $unsigned(64'b0100000010001100000000000000000000000000000000000000000000000000);

    // c_i64_4650811040190169088992(CONSTANT,148)
    assign c_i64_4650811040190169088992_q = $unsigned(64'b0100000010001011000000000000000000000000000000000000000000000000);

    // c_i64_4650529565213458432991(CONSTANT,147)
    assign c_i64_4650529565213458432991_q = $unsigned(64'b0100000010001010000000000000000000000000000000000000000000000000);

    // c_i64_4650248090236747776990(CONSTANT,146)
    assign c_i64_4650248090236747776990_q = $unsigned(64'b0100000010001001000000000000000000000000000000000000000000000000);

    // c_i64_4649966615260037120989(CONSTANT,145)
    assign c_i64_4649966615260037120989_q = $unsigned(64'b0100000010001000000000000000000000000000000000000000000000000000);

    // c_i64_4649685140283326464988(CONSTANT,144)
    assign c_i64_4649685140283326464988_q = $unsigned(64'b0100000010000111000000000000000000000000000000000000000000000000);

    // c_i64_4649403665306615808987(CONSTANT,143)
    assign c_i64_4649403665306615808987_q = $unsigned(64'b0100000010000110000000000000000000000000000000000000000000000000);

    // c_i64_4649122190329905152986(CONSTANT,142)
    assign c_i64_4649122190329905152986_q = $unsigned(64'b0100000010000101000000000000000000000000000000000000000000000000);

    // c_i64_4648840715353194496985(CONSTANT,141)
    assign c_i64_4648840715353194496985_q = $unsigned(64'b0100000010000100000000000000000000000000000000000000000000000000);

    // c_i64_4648559240376483840984(CONSTANT,140)
    assign c_i64_4648559240376483840984_q = $unsigned(64'b0100000010000011000000000000000000000000000000000000000000000000);

    // c_i64_4648277765399773184983(CONSTANT,139)
    assign c_i64_4648277765399773184983_q = $unsigned(64'b0100000010000010000000000000000000000000000000000000000000000000);

    // c_i64_4647996290423062528982(CONSTANT,138)
    assign c_i64_4647996290423062528982_q = $unsigned(64'b0100000010000001000000000000000000000000000000000000000000000000);

    // c_i64_4647714815446351872981(CONSTANT,137)
    assign c_i64_4647714815446351872981_q = $unsigned(64'b0100000010000000000000000000000000000000000000000000000000000000);

    // c_i64_4647433340469641216980(CONSTANT,136)
    assign c_i64_4647433340469641216980_q = $unsigned(64'b0100000001111111000000000000000000000000000000000000000000000000);

    // c_i64_4647151865492930560979(CONSTANT,135)
    assign c_i64_4647151865492930560979_q = $unsigned(64'b0100000001111110000000000000000000000000000000000000000000000000);

    // c_i64_4646870390516219904978(CONSTANT,134)
    assign c_i64_4646870390516219904978_q = $unsigned(64'b0100000001111101000000000000000000000000000000000000000000000000);

    // c_i64_4646588915539509248977(CONSTANT,133)
    assign c_i64_4646588915539509248977_q = $unsigned(64'b0100000001111100000000000000000000000000000000000000000000000000);

    // c_i64_4646307440562798592976(CONSTANT,132)
    assign c_i64_4646307440562798592976_q = $unsigned(64'b0100000001111011000000000000000000000000000000000000000000000000);

    // c_i64_4646025965586087936975(CONSTANT,131)
    assign c_i64_4646025965586087936975_q = $unsigned(64'b0100000001111010000000000000000000000000000000000000000000000000);

    // c_i64_4645744490609377280974(CONSTANT,130)
    assign c_i64_4645744490609377280974_q = $unsigned(64'b0100000001111001000000000000000000000000000000000000000000000000);

    // c_i64_4645463015632666624973(CONSTANT,129)
    assign c_i64_4645463015632666624973_q = $unsigned(64'b0100000001111000000000000000000000000000000000000000000000000000);

    // c_i64_4645181540655955968972(CONSTANT,128)
    assign c_i64_4645181540655955968972_q = $unsigned(64'b0100000001110111000000000000000000000000000000000000000000000000);

    // c_i64_4644900065679245312971(CONSTANT,127)
    assign c_i64_4644900065679245312971_q = $unsigned(64'b0100000001110110000000000000000000000000000000000000000000000000);

    // c_i64_4644618590702534656970(CONSTANT,126)
    assign c_i64_4644618590702534656970_q = $unsigned(64'b0100000001110101000000000000000000000000000000000000000000000000);

    // c_i64_4644337115725824000969(CONSTANT,125)
    assign c_i64_4644337115725824000969_q = $unsigned(64'b0100000001110100000000000000000000000000000000000000000000000000);

    // c_i64_4644055640749113344968(CONSTANT,124)
    assign c_i64_4644055640749113344968_q = $unsigned(64'b0100000001110011000000000000000000000000000000000000000000000000);

    // c_i64_4643774165772402688967(CONSTANT,123)
    assign c_i64_4643774165772402688967_q = $unsigned(64'b0100000001110010000000000000000000000000000000000000000000000000);

    // c_i64_4643492690795692032966(CONSTANT,122)
    assign c_i64_4643492690795692032966_q = $unsigned(64'b0100000001110001000000000000000000000000000000000000000000000000);

    // c_i64_4643211215818981376965(CONSTANT,121)
    assign c_i64_4643211215818981376965_q = $unsigned(64'b0100000001110000000000000000000000000000000000000000000000000000);

    // c_i64_4642929740842270720964(CONSTANT,120)
    assign c_i64_4642929740842270720964_q = $unsigned(64'b0100000001101111000000000000000000000000000000000000000000000000);

    // c_i64_4642648265865560064963(CONSTANT,119)
    assign c_i64_4642648265865560064963_q = $unsigned(64'b0100000001101110000000000000000000000000000000000000000000000000);

    // c_i64_4642366790888849408962(CONSTANT,118)
    assign c_i64_4642366790888849408962_q = $unsigned(64'b0100000001101101000000000000000000000000000000000000000000000000);

    // c_i64_4642085315912138752961(CONSTANT,117)
    assign c_i64_4642085315912138752961_q = $unsigned(64'b0100000001101100000000000000000000000000000000000000000000000000);

    // c_i64_4641803840935428096960(CONSTANT,116)
    assign c_i64_4641803840935428096960_q = $unsigned(64'b0100000001101011000000000000000000000000000000000000000000000000);

    // c_i64_4641522365958717440959(CONSTANT,115)
    assign c_i64_4641522365958717440959_q = $unsigned(64'b0100000001101010000000000000000000000000000000000000000000000000);

    // c_i64_4641240890982006784958(CONSTANT,114)
    assign c_i64_4641240890982006784958_q = $unsigned(64'b0100000001101001000000000000000000000000000000000000000000000000);

    // c_i64_4640959416005296128957(CONSTANT,113)
    assign c_i64_4640959416005296128957_q = $unsigned(64'b0100000001101000000000000000000000000000000000000000000000000000);

    // c_i64_4640677941028585472956(CONSTANT,112)
    assign c_i64_4640677941028585472956_q = $unsigned(64'b0100000001100111000000000000000000000000000000000000000000000000);

    // c_i64_4640396466051874816955(CONSTANT,111)
    assign c_i64_4640396466051874816955_q = $unsigned(64'b0100000001100110000000000000000000000000000000000000000000000000);

    // c_i64_4640114991075164160954(CONSTANT,110)
    assign c_i64_4640114991075164160954_q = $unsigned(64'b0100000001100101000000000000000000000000000000000000000000000000);

    // c_i64_4639833516098453504953(CONSTANT,109)
    assign c_i64_4639833516098453504953_q = $unsigned(64'b0100000001100100000000000000000000000000000000000000000000000000);

    // c_i64_4639552041121742848951(CONSTANT,108)
    assign c_i64_4639552041121742848951_q = $unsigned(64'b0100000001100011000000000000000000000000000000000000000000000000);

    // c_i64_4639270566145032192950(CONSTANT,107)
    assign c_i64_4639270566145032192950_q = $unsigned(64'b0100000001100010000000000000000000000000000000000000000000000000);

    // c_i64_4638989091168321536949(CONSTANT,106)
    assign c_i64_4638989091168321536949_q = $unsigned(64'b0100000001100001000000000000000000000000000000000000000000000000);

    // c_i64_4638707616191610880948(CONSTANT,105)
    assign c_i64_4638707616191610880948_q = $unsigned(64'b0100000001100000000000000000000000000000000000000000000000000000);

    // c_i64_4638426141214900224947(CONSTANT,104)
    assign c_i64_4638426141214900224947_q = $unsigned(64'b0100000001011111000000000000000000000000000000000000000000000000);

    // c_i64_4638144666238189568946(CONSTANT,103)
    assign c_i64_4638144666238189568946_q = $unsigned(64'b0100000001011110000000000000000000000000000000000000000000000000);

    // c_i64_4637863191261478912945(CONSTANT,102)
    assign c_i64_4637863191261478912945_q = $unsigned(64'b0100000001011101000000000000000000000000000000000000000000000000);

    // c_i64_4637581716284768256944(CONSTANT,101)
    assign c_i64_4637581716284768256944_q = $unsigned(64'b0100000001011100000000000000000000000000000000000000000000000000);

    // c_i64_4637300241308057600943(CONSTANT,100)
    assign c_i64_4637300241308057600943_q = $unsigned(64'b0100000001011011000000000000000000000000000000000000000000000000);

    // c_i64_4637018766331346944942(CONSTANT,99)
    assign c_i64_4637018766331346944942_q = $unsigned(64'b0100000001011010000000000000000000000000000000000000000000000000);

    // c_i64_4636737291354636288941(CONSTANT,98)
    assign c_i64_4636737291354636288941_q = $unsigned(64'b0100000001011001000000000000000000000000000000000000000000000000);

    // c_i64_4636455816377925632940(CONSTANT,97)
    assign c_i64_4636455816377925632940_q = $unsigned(64'b0100000001011000000000000000000000000000000000000000000000000000);

    // c_i64_4636174341401214976939(CONSTANT,96)
    assign c_i64_4636174341401214976939_q = $unsigned(64'b0100000001010111000000000000000000000000000000000000000000000000);

    // c_i64_4635892866424504320938(CONSTANT,95)
    assign c_i64_4635892866424504320938_q = $unsigned(64'b0100000001010110000000000000000000000000000000000000000000000000);

    // c_i64_4635611391447793664937(CONSTANT,94)
    assign c_i64_4635611391447793664937_q = $unsigned(64'b0100000001010101000000000000000000000000000000000000000000000000);

    // c_i64_4635329916471083008936(CONSTANT,93)
    assign c_i64_4635329916471083008936_q = $unsigned(64'b0100000001010100000000000000000000000000000000000000000000000000);

    // c_i64_4635048441494372352935(CONSTANT,92)
    assign c_i64_4635048441494372352935_q = $unsigned(64'b0100000001010011000000000000000000000000000000000000000000000000);

    // c_i64_4634766966517661696934(CONSTANT,91)
    assign c_i64_4634766966517661696934_q = $unsigned(64'b0100000001010010000000000000000000000000000000000000000000000000);

    // c_i64_4634485491540951040933(CONSTANT,90)
    assign c_i64_4634485491540951040933_q = $unsigned(64'b0100000001010001000000000000000000000000000000000000000000000000);

    // c_i64_4634204016564240384932(CONSTANT,89)
    assign c_i64_4634204016564240384932_q = $unsigned(64'b0100000001010000000000000000000000000000000000000000000000000000);

    // c_i64_4633922541587529728931(CONSTANT,88)
    assign c_i64_4633922541587529728931_q = $unsigned(64'b0100000001001111000000000000000000000000000000000000000000000000);

    // c_i64_4633641066610819072930(CONSTANT,87)
    assign c_i64_4633641066610819072930_q = $unsigned(64'b0100000001001110000000000000000000000000000000000000000000000000);

    // c_i64_4633359591634108416929(CONSTANT,86)
    assign c_i64_4633359591634108416929_q = $unsigned(64'b0100000001001101000000000000000000000000000000000000000000000000);

    // c_i64_4633078116657397760928(CONSTANT,85)
    assign c_i64_4633078116657397760928_q = $unsigned(64'b0100000001001100000000000000000000000000000000000000000000000000);

    // c_i64_4632796641680687104927(CONSTANT,84)
    assign c_i64_4632796641680687104927_q = $unsigned(64'b0100000001001011000000000000000000000000000000000000000000000000);

    // c_i64_4632515166703976448926(CONSTANT,83)
    assign c_i64_4632515166703976448926_q = $unsigned(64'b0100000001001010000000000000000000000000000000000000000000000000);

    // c_i64_4632233691727265792925(CONSTANT,82)
    assign c_i64_4632233691727265792925_q = $unsigned(64'b0100000001001001000000000000000000000000000000000000000000000000);

    // c_i64_4631952216750555136924(CONSTANT,81)
    assign c_i64_4631952216750555136924_q = $unsigned(64'b0100000001001000000000000000000000000000000000000000000000000000);

    // c_i64_4631670741773844480923(CONSTANT,80)
    assign c_i64_4631670741773844480923_q = $unsigned(64'b0100000001000111000000000000000000000000000000000000000000000000);

    // c_i64_4631389266797133824922(CONSTANT,79)
    assign c_i64_4631389266797133824922_q = $unsigned(64'b0100000001000110000000000000000000000000000000000000000000000000);

    // c_i64_4631107791820423168921(CONSTANT,78)
    assign c_i64_4631107791820423168921_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // c_i64_4630826316843712512920(CONSTANT,77)
    assign c_i64_4630826316843712512920_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // c_i64_4630544841867001856919(CONSTANT,76)
    assign c_i64_4630544841867001856919_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // c_i64_4630263366890291200918(CONSTANT,75)
    assign c_i64_4630263366890291200918_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // c_i64_4629981891913580544917(CONSTANT,74)
    assign c_i64_4629981891913580544917_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // c_i64_4629700416936869888916(CONSTANT,73)
    assign c_i64_4629700416936869888916_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // c_i64_4629418941960159232915(CONSTANT,72)
    assign c_i64_4629418941960159232915_q = $unsigned(64'b0100000000111111000000000000000000000000000000000000000000000000);

    // c_i64_4628011567076605952905(CONSTANT,67)
    assign c_i64_4628011567076605952905_q = $unsigned(64'b0100000000111010000000000000000000000000000000000000000000000000);

    // c_i64_4627730092099895296904(CONSTANT,66)
    assign c_i64_4627730092099895296904_q = $unsigned(64'b0100000000111001000000000000000000000000000000000000000000000000);

    // c_i64_4627448617123184640903(CONSTANT,65)
    assign c_i64_4627448617123184640903_q = $unsigned(64'b0100000000111000000000000000000000000000000000000000000000000000);

    // c_i64_4627167142146473984902(CONSTANT,64)
    assign c_i64_4627167142146473984902_q = $unsigned(64'b0100000000110111000000000000000000000000000000000000000000000000);

    // c_i64_4626885667169763328901(CONSTANT,63)
    assign c_i64_4626885667169763328901_q = $unsigned(64'b0100000000110110000000000000000000000000000000000000000000000000);

    // c_i64_4626604192193052672900(CONSTANT,62)
    assign c_i64_4626604192193052672900_q = $unsigned(64'b0100000000110101000000000000000000000000000000000000000000000000);

    // c_i64_4623507967449235456878(CONSTANT,51)
    assign c_i64_4623507967449235456878_q = $unsigned(64'b0100000000101010000000000000000000000000000000000000000000000000);

    // c_i64_4623226492472524800877(CONSTANT,50)
    assign c_i64_4623226492472524800877_q = $unsigned(64'b0100000000101001000000000000000000000000000000000000000000000000);

    // c_i64_4622945017495814144876(CONSTANT,49)
    assign c_i64_4622945017495814144876_q = $unsigned(64'b0100000000101000000000000000000000000000000000000000000000000000);

    // c_i64_4622663542519103488875(CONSTANT,48)
    assign c_i64_4622663542519103488875_q = $unsigned(64'b0100000000100111000000000000000000000000000000000000000000000000);

    // c_i64_4622382067542392832874(CONSTANT,47)
    assign c_i64_4622382067542392832874_q = $unsigned(64'b0100000000100110000000000000000000000000000000000000000000000000);

    // c_i64_4622100592565682176873(CONSTANT,46)
    assign c_i64_4622100592565682176873_q = $unsigned(64'b0100000000100101000000000000000000000000000000000000000000000000);

    // c_i64_4621819117588971520872(CONSTANT,45)
    assign c_i64_4621819117588971520872_q = $unsigned(64'b0100000000100100000000000000000000000000000000000000000000000000);

    // c_i64_4621537642612260864871(CONSTANT,44)
    assign c_i64_4621537642612260864871_q = $unsigned(64'b0100000000100011000000000000000000000000000000000000000000000000);

    // c_i64_4621256167635550208870(CONSTANT,43)
    assign c_i64_4621256167635550208870_q = $unsigned(64'b0100000000100010000000000000000000000000000000000000000000000000);

    // c_i64_4620974692658839552869(CONSTANT,42)
    assign c_i64_4620974692658839552869_q = $unsigned(64'b0100000000100001000000000000000000000000000000000000000000000000);

    // c_i64_4620693217682128896868(CONSTANT,41)
    assign c_i64_4620693217682128896868_q = $unsigned(64'b0100000000100000000000000000000000000000000000000000000000000000);

    // c_i64_4620411742705418240867(CONSTANT,40)
    assign c_i64_4620411742705418240867_q = $unsigned(64'b0100000000011111000000000000000000000000000000000000000000000000);

    // c_i64_4620130267728707584866(CONSTANT,39)
    assign c_i64_4620130267728707584866_q = $unsigned(64'b0100000000011110000000000000000000000000000000000000000000000000);

    // c_i64_4619848792751996928865(CONSTANT,38)
    assign c_i64_4619848792751996928865_q = $unsigned(64'b0100000000011101000000000000000000000000000000000000000000000000);

    // c_i64_4619567317775286272864(CONSTANT,37)
    assign c_i64_4619567317775286272864_q = $unsigned(64'b0100000000011100000000000000000000000000000000000000000000000000);

    // c_i64_4619285842798575616863(CONSTANT,36)
    assign c_i64_4619285842798575616863_q = $unsigned(64'b0100000000011011000000000000000000000000000000000000000000000000);

    // c_i64_4619004367821864960862(CONSTANT,35)
    assign c_i64_4619004367821864960862_q = $unsigned(64'b0100000000011010000000000000000000000000000000000000000000000000);

    // c_i64_4618722892845154304860(CONSTANT,34)
    assign c_i64_4618722892845154304860_q = $unsigned(64'b0100000000011001000000000000000000000000000000000000000000000000);

    // c_i64_4618441417868443648859(CONSTANT,33)
    assign c_i64_4618441417868443648859_q = $unsigned(64'b0100000000011000000000000000000000000000000000000000000000000000);

    // c_i64_4618159942891732992858(CONSTANT,32)
    assign c_i64_4618159942891732992858_q = $unsigned(64'b0100000000010111000000000000000000000000000000000000000000000000);

    // c_i64_4617878467915022336857(CONSTANT,31)
    assign c_i64_4617878467915022336857_q = $unsigned(64'b0100000000010110000000000000000000000000000000000000000000000000);

    // c_i64_4617596992938311680856(CONSTANT,30)
    assign c_i64_4617596992938311680856_q = $unsigned(64'b0100000000010101000000000000000000000000000000000000000000000000);

    // c_i64_4617315517961601024855(CONSTANT,29)
    assign c_i64_4617315517961601024855_q = $unsigned(64'b0100000000010100000000000000000000000000000000000000000000000000);

    // c_i64_4617034042984890368854(CONSTANT,28)
    assign c_i64_4617034042984890368854_q = $unsigned(64'b0100000000010011000000000000000000000000000000000000000000000000);

    // c_i64_4616752568008179712853(CONSTANT,27)
    assign c_i64_4616752568008179712853_q = $unsigned(64'b0100000000010010000000000000000000000000000000000000000000000000);

    // c_i64_4616471093031469056852(CONSTANT,26)
    assign c_i64_4616471093031469056852_q = $unsigned(64'b0100000000010001000000000000000000000000000000000000000000000000);

    // c_i64_4616189618054758400851(CONSTANT,25)
    assign c_i64_4616189618054758400851_q = $unsigned(64'b0100000000010000000000000000000000000000000000000000000000000000);

    // c_i64_4615908143078047744850(CONSTANT,24)
    assign c_i64_4615908143078047744850_q = $unsigned(64'b0100000000001111000000000000000000000000000000000000000000000000);

    // c_i64_4615626668101337088848(CONSTANT,23)
    assign c_i64_4615626668101337088848_q = $unsigned(64'b0100000000001110000000000000000000000000000000000000000000000000);

    // c_i64_4615345193124626432847(CONSTANT,22)
    assign c_i64_4615345193124626432847_q = $unsigned(64'b0100000000001101000000000000000000000000000000000000000000000000);

    // c_i64_4615063718147915776846(CONSTANT,21)
    assign c_i64_4615063718147915776846_q = $unsigned(64'b0100000000001100000000000000000000000000000000000000000000000000);

    // c_i64_4614782243171205120845(CONSTANT,20)
    assign c_i64_4614782243171205120845_q = $unsigned(64'b0100000000001011000000000000000000000000000000000000000000000000);

    // c_i64_4614500768194494464844(CONSTANT,19)
    assign c_i64_4614500768194494464844_q = $unsigned(64'b0100000000001010000000000000000000000000000000000000000000000000);

    // c_i64_4614219293217783808843(CONSTANT,18)
    assign c_i64_4614219293217783808843_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // c_i64_4613937818241073152842(CONSTANT,17)
    assign c_i64_4613937818241073152842_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // c_i64_4613656343264362496840(CONSTANT,16)
    assign c_i64_4613656343264362496840_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // c_i64_4613374868287651840839(CONSTANT,15)
    assign c_i64_4613374868287651840839_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // c_i32_227724_recast_x(CONSTANT,979)
    assign c_i32_227724_recast_x_q = $unsigned(32'b00000000000000000000000011100011);

    // i_pivot197_emscripten_dom_vk_to_string91(COMPARE,584)@1
    assign i_pivot197_emscripten_dom_vk_to_string91_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot197_emscripten_dom_vk_to_string91_b = $unsigned({{2{c_i32_227724_recast_x_q[31]}}, c_i32_227724_recast_x_q});
    assign i_pivot197_emscripten_dom_vk_to_string91_o = $unsigned($signed(i_pivot197_emscripten_dom_vk_to_string91_a) - $signed(i_pivot197_emscripten_dom_vk_to_string91_b));
    assign i_pivot197_emscripten_dom_vk_to_string91_c[0] = i_pivot197_emscripten_dom_vk_to_string91_o[33];

    // c_i32_226820_recast_x(CONSTANT,978)
    assign c_i32_226820_recast_x_q = $unsigned(32'b00000000000000000000000011100010);

    // i_pivot189_emscripten_dom_vk_to_string283(COMPARE,580)@1
    assign i_pivot189_emscripten_dom_vk_to_string283_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot189_emscripten_dom_vk_to_string283_b = $unsigned({{2{c_i32_226820_recast_x_q[31]}}, c_i32_226820_recast_x_q});
    assign i_pivot189_emscripten_dom_vk_to_string283_o = $unsigned($signed(i_pivot189_emscripten_dom_vk_to_string283_a) - $signed(i_pivot189_emscripten_dom_vk_to_string283_b));
    assign i_pivot189_emscripten_dom_vk_to_string283_c[0] = i_pivot189_emscripten_dom_vk_to_string283_o[33];

    // i_acl_366_emscripten_dom_vk_to_string321(LOGICAL,392)@1 + 1
    assign i_acl_366_emscripten_dom_vk_to_string321_qi = i_pivot189_emscripten_dom_vk_to_string283_c ^ i_pivot197_emscripten_dom_vk_to_string91_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_366_emscripten_dom_vk_to_string321_delay ( .xin(i_acl_366_emscripten_dom_vk_to_string321_qi), .xout(i_acl_366_emscripten_dom_vk_to_string321_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_372_emscripten_dom_vk_to_string322(MUX,393)@2
    assign i_acl_372_emscripten_dom_vk_to_string322_s = i_acl_366_emscripten_dom_vk_to_string321_q;
    always @(i_acl_372_emscripten_dom_vk_to_string322_s or c_i64_4613374868287651840839_q or c_i64_4613656343264362496840_q)
    begin
        unique case (i_acl_372_emscripten_dom_vk_to_string322_s)
            1'b0 : i_acl_372_emscripten_dom_vk_to_string322_q = c_i64_4613374868287651840839_q;
            1'b1 : i_acl_372_emscripten_dom_vk_to_string322_q = c_i64_4613656343264362496840_q;
            default : i_acl_372_emscripten_dom_vk_to_string322_q = 64'b0;
        endcase
    end

    // c_i32_288841_recast_x(CONSTANT,1039)
    assign c_i32_288841_recast_x_q = $unsigned(32'b00000000000000000000000100100000);

    // i_unnamed_emscripten_dom_vk_to_string323(LOGICAL,698)@1 + 1
    assign i_unnamed_emscripten_dom_vk_to_string323_qi = $unsigned(in_c1_eni1_1_tpl == c_i32_288841_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string323_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string323_qi), .xout(i_unnamed_emscripten_dom_vk_to_string323_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_379_emscripten_dom_vk_to_string325(MUX,394)@2
    assign i_acl_379_emscripten_dom_vk_to_string325_s = i_unnamed_emscripten_dom_vk_to_string323_q;
    always @(i_acl_379_emscripten_dom_vk_to_string325_s or i_acl_372_emscripten_dom_vk_to_string322_q or c_i64_4613937818241073152842_q)
    begin
        unique case (i_acl_379_emscripten_dom_vk_to_string325_s)
            1'b0 : i_acl_379_emscripten_dom_vk_to_string325_q = i_acl_372_emscripten_dom_vk_to_string322_q;
            1'b1 : i_acl_379_emscripten_dom_vk_to_string325_q = c_i64_4613937818241073152842_q;
            default : i_acl_379_emscripten_dom_vk_to_string325_q = 64'b0;
        endcase
    end

    // c_i32_165748_recast_x(CONSTANT,917)
    assign c_i32_165748_recast_x_q = $unsigned(32'b00000000000000000000000010100101);

    // i_pivot69_emscripten_dom_vk_to_string139(COMPARE,671)@1 + 1
    assign i_pivot69_emscripten_dom_vk_to_string139_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot69_emscripten_dom_vk_to_string139_b = $unsigned({{2{c_i32_165748_recast_x_q[31]}}, c_i32_165748_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot69_emscripten_dom_vk_to_string139_o <= 34'b0;
        end
        else
        begin
            i_pivot69_emscripten_dom_vk_to_string139_o <= $unsigned($signed(i_pivot69_emscripten_dom_vk_to_string139_a) - $signed(i_pivot69_emscripten_dom_vk_to_string139_b));
        end
    end
    assign i_pivot69_emscripten_dom_vk_to_string139_c[0] = i_pivot69_emscripten_dom_vk_to_string139_o[33];

    // c_i32_164713_recast_x(CONSTANT,916)
    assign c_i32_164713_recast_x_q = $unsigned(32'b00000000000000000000000010100100);

    // i_pivot71_emscripten_dom_vk_to_string69(COMPARE,672)@1 + 1
    assign i_pivot71_emscripten_dom_vk_to_string69_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot71_emscripten_dom_vk_to_string69_b = $unsigned({{2{c_i32_164713_recast_x_q[31]}}, c_i32_164713_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot71_emscripten_dom_vk_to_string69_o <= 34'b0;
        end
        else
        begin
            i_pivot71_emscripten_dom_vk_to_string69_o <= $unsigned($signed(i_pivot71_emscripten_dom_vk_to_string69_a) - $signed(i_pivot71_emscripten_dom_vk_to_string69_b));
        end
    end
    assign i_pivot71_emscripten_dom_vk_to_string69_c[0] = i_pivot71_emscripten_dom_vk_to_string69_o[33];

    // i_acl_380_emscripten_dom_vk_to_string326(LOGICAL,395)@2
    assign i_acl_380_emscripten_dom_vk_to_string326_q = i_pivot71_emscripten_dom_vk_to_string69_c ^ i_pivot69_emscripten_dom_vk_to_string139_c;

    // i_acl_386_emscripten_dom_vk_to_string327(MUX,396)@2
    assign i_acl_386_emscripten_dom_vk_to_string327_s = i_acl_380_emscripten_dom_vk_to_string326_q;
    always @(i_acl_386_emscripten_dom_vk_to_string327_s or i_acl_379_emscripten_dom_vk_to_string325_q or c_i64_4614219293217783808843_q)
    begin
        unique case (i_acl_386_emscripten_dom_vk_to_string327_s)
            1'b0 : i_acl_386_emscripten_dom_vk_to_string327_q = i_acl_379_emscripten_dom_vk_to_string325_q;
            1'b1 : i_acl_386_emscripten_dom_vk_to_string327_q = c_i64_4614219293217783808843_q;
            default : i_acl_386_emscripten_dom_vk_to_string327_q = 64'b0;
        endcase
    end

    // c_i32_284838_recast_x(CONSTANT,1036)
    assign c_i32_284838_recast_x_q = $unsigned(32'b00000000000000000000000100011100);

    // i_pivot301_emscripten_dom_vk_to_string319(COMPARE,642)@1 + 1
    assign i_pivot301_emscripten_dom_vk_to_string319_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot301_emscripten_dom_vk_to_string319_b = $unsigned({{2{c_i32_284838_recast_x_q[31]}}, c_i32_284838_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot301_emscripten_dom_vk_to_string319_o <= 34'b0;
        end
        else
        begin
            i_pivot301_emscripten_dom_vk_to_string319_o <= $unsigned($signed(i_pivot301_emscripten_dom_vk_to_string319_a) - $signed(i_pivot301_emscripten_dom_vk_to_string319_b));
        end
    end
    assign i_pivot301_emscripten_dom_vk_to_string319_c[0] = i_pivot301_emscripten_dom_vk_to_string319_o[33];

    // c_i32_283789_recast_x(CONSTANT,1035)
    assign c_i32_283789_recast_x_q = $unsigned(32'b00000000000000000000000100011011);

    // i_pivot303_emscripten_dom_vk_to_string221(COMPARE,643)@1 + 1
    assign i_pivot303_emscripten_dom_vk_to_string221_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot303_emscripten_dom_vk_to_string221_b = $unsigned({{2{c_i32_283789_recast_x_q[31]}}, c_i32_283789_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot303_emscripten_dom_vk_to_string221_o <= 34'b0;
        end
        else
        begin
            i_pivot303_emscripten_dom_vk_to_string221_o <= $unsigned($signed(i_pivot303_emscripten_dom_vk_to_string221_a) - $signed(i_pivot303_emscripten_dom_vk_to_string221_b));
        end
    end
    assign i_pivot303_emscripten_dom_vk_to_string221_c[0] = i_pivot303_emscripten_dom_vk_to_string221_o[33];

    // i_acl_387_emscripten_dom_vk_to_string328(LOGICAL,397)@2
    assign i_acl_387_emscripten_dom_vk_to_string328_q = i_pivot303_emscripten_dom_vk_to_string221_c ^ i_pivot301_emscripten_dom_vk_to_string319_c;

    // i_acl_394_emscripten_dom_vk_to_string329(MUX,398)@2
    assign i_acl_394_emscripten_dom_vk_to_string329_s = i_acl_387_emscripten_dom_vk_to_string328_q;
    always @(i_acl_394_emscripten_dom_vk_to_string329_s or i_acl_386_emscripten_dom_vk_to_string327_q or c_i64_4614500768194494464844_q)
    begin
        unique case (i_acl_394_emscripten_dom_vk_to_string329_s)
            1'b0 : i_acl_394_emscripten_dom_vk_to_string329_q = i_acl_386_emscripten_dom_vk_to_string327_q;
            1'b1 : i_acl_394_emscripten_dom_vk_to_string329_q = c_i64_4614500768194494464844_q;
            default : i_acl_394_emscripten_dom_vk_to_string329_q = 64'b0;
        endcase
    end

    // c_i32_178697_recast_x(CONSTANT,930)
    assign c_i32_178697_recast_x_q = $unsigned(32'b00000000000000000000000010110010);

    // i_pivot107_emscripten_dom_vk_to_string37(COMPARE,535)@1 + 1
    assign i_pivot107_emscripten_dom_vk_to_string37_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot107_emscripten_dom_vk_to_string37_b = $unsigned({{2{c_i32_178697_recast_x_q[31]}}, c_i32_178697_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot107_emscripten_dom_vk_to_string37_o <= 34'b0;
        end
        else
        begin
            i_pivot107_emscripten_dom_vk_to_string37_o <= $unsigned($signed(i_pivot107_emscripten_dom_vk_to_string37_a) - $signed(i_pivot107_emscripten_dom_vk_to_string37_b));
        end
    end
    assign i_pivot107_emscripten_dom_vk_to_string37_c[0] = i_pivot107_emscripten_dom_vk_to_string37_o[33];

    // c_i32_177805_recast_x(CONSTANT,929)
    assign c_i32_177805_recast_x_q = $unsigned(32'b00000000000000000000000010110001);

    // i_pivot91_emscripten_dom_vk_to_string253(COMPARE,683)@1 + 1
    assign i_pivot91_emscripten_dom_vk_to_string253_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot91_emscripten_dom_vk_to_string253_b = $unsigned({{2{c_i32_177805_recast_x_q[31]}}, c_i32_177805_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot91_emscripten_dom_vk_to_string253_o <= 34'b0;
        end
        else
        begin
            i_pivot91_emscripten_dom_vk_to_string253_o <= $unsigned($signed(i_pivot91_emscripten_dom_vk_to_string253_a) - $signed(i_pivot91_emscripten_dom_vk_to_string253_b));
        end
    end
    assign i_pivot91_emscripten_dom_vk_to_string253_c[0] = i_pivot91_emscripten_dom_vk_to_string253_o[33];

    // i_acl_397_emscripten_dom_vk_to_string330(LOGICAL,399)@2
    assign i_acl_397_emscripten_dom_vk_to_string330_q = i_pivot91_emscripten_dom_vk_to_string253_c ^ i_pivot107_emscripten_dom_vk_to_string37_c;

    // i_acl_402_emscripten_dom_vk_to_string331(MUX,400)@2
    assign i_acl_402_emscripten_dom_vk_to_string331_s = i_acl_397_emscripten_dom_vk_to_string330_q;
    always @(i_acl_402_emscripten_dom_vk_to_string331_s or i_acl_394_emscripten_dom_vk_to_string329_q or c_i64_4614782243171205120845_q)
    begin
        unique case (i_acl_402_emscripten_dom_vk_to_string331_s)
            1'b0 : i_acl_402_emscripten_dom_vk_to_string331_q = i_acl_394_emscripten_dom_vk_to_string329_q;
            1'b1 : i_acl_402_emscripten_dom_vk_to_string331_q = c_i64_4614782243171205120845_q;
            default : i_acl_402_emscripten_dom_vk_to_string331_q = 64'b0;
        endcase
    end

    // c_i32_265682_recast_x(CONSTANT,1017)
    assign c_i32_265682_recast_x_q = $unsigned(32'b00000000000000000000000100001001);

    // i_pivot363_emscripten_dom_vk_to_string7(COMPARE,651)@1 + 1
    assign i_pivot363_emscripten_dom_vk_to_string7_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot363_emscripten_dom_vk_to_string7_b = $unsigned({{2{c_i32_265682_recast_x_q[31]}}, c_i32_265682_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot363_emscripten_dom_vk_to_string7_o <= 34'b0;
        end
        else
        begin
            i_pivot363_emscripten_dom_vk_to_string7_o <= $unsigned($signed(i_pivot363_emscripten_dom_vk_to_string7_a) - $signed(i_pivot363_emscripten_dom_vk_to_string7_b));
        end
    end
    assign i_pivot363_emscripten_dom_vk_to_string7_c[0] = i_pivot363_emscripten_dom_vk_to_string7_o[33];

    // c_i32_264832_recast_x(CONSTANT,1016)
    assign c_i32_264832_recast_x_q = $unsigned(32'b00000000000000000000000100001000);

    // i_pivot259_emscripten_dom_vk_to_string307(COMPARE,618)@1 + 1
    assign i_pivot259_emscripten_dom_vk_to_string307_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot259_emscripten_dom_vk_to_string307_b = $unsigned({{2{c_i32_264832_recast_x_q[31]}}, c_i32_264832_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot259_emscripten_dom_vk_to_string307_o <= 34'b0;
        end
        else
        begin
            i_pivot259_emscripten_dom_vk_to_string307_o <= $unsigned($signed(i_pivot259_emscripten_dom_vk_to_string307_a) - $signed(i_pivot259_emscripten_dom_vk_to_string307_b));
        end
    end
    assign i_pivot259_emscripten_dom_vk_to_string307_c[0] = i_pivot259_emscripten_dom_vk_to_string307_o[33];

    // i_acl_408_emscripten_dom_vk_to_string332(LOGICAL,401)@2
    assign i_acl_408_emscripten_dom_vk_to_string332_q = i_pivot259_emscripten_dom_vk_to_string307_c ^ i_pivot363_emscripten_dom_vk_to_string7_c;

    // i_acl_410_emscripten_dom_vk_to_string333(MUX,402)@2
    assign i_acl_410_emscripten_dom_vk_to_string333_s = i_acl_408_emscripten_dom_vk_to_string332_q;
    always @(i_acl_410_emscripten_dom_vk_to_string333_s or i_acl_402_emscripten_dom_vk_to_string331_q or c_i64_4615063718147915776846_q)
    begin
        unique case (i_acl_410_emscripten_dom_vk_to_string333_s)
            1'b0 : i_acl_410_emscripten_dom_vk_to_string333_q = i_acl_402_emscripten_dom_vk_to_string331_q;
            1'b1 : i_acl_410_emscripten_dom_vk_to_string333_q = c_i64_4615063718147915776846_q;
            default : i_acl_410_emscripten_dom_vk_to_string333_q = 64'b0;
        endcase
    end

    // c_i32_171750_recast_x(CONSTANT,923)
    assign c_i32_171750_recast_x_q = $unsigned(32'b00000000000000000000000010101011);

    // redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,1085)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_pivot79_emscripten_dom_vk_to_string143(COMPARE,676)@2
    assign i_pivot79_emscripten_dom_vk_to_string143_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot79_emscripten_dom_vk_to_string143_b = $unsigned({{2{c_i32_171750_recast_x_q[31]}}, c_i32_171750_recast_x_q});
    assign i_pivot79_emscripten_dom_vk_to_string143_o = $unsigned($signed(i_pivot79_emscripten_dom_vk_to_string143_a) - $signed(i_pivot79_emscripten_dom_vk_to_string143_b));
    assign i_pivot79_emscripten_dom_vk_to_string143_c[0] = i_pivot79_emscripten_dom_vk_to_string143_o[33];

    // c_i32_170714_recast_x(CONSTANT,922)
    assign c_i32_170714_recast_x_q = $unsigned(32'b00000000000000000000000010101010);

    // i_pivot81_emscripten_dom_vk_to_string71(COMPARE,678)@2
    assign i_pivot81_emscripten_dom_vk_to_string71_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot81_emscripten_dom_vk_to_string71_b = $unsigned({{2{c_i32_170714_recast_x_q[31]}}, c_i32_170714_recast_x_q});
    assign i_pivot81_emscripten_dom_vk_to_string71_o = $unsigned($signed(i_pivot81_emscripten_dom_vk_to_string71_a) - $signed(i_pivot81_emscripten_dom_vk_to_string71_b));
    assign i_pivot81_emscripten_dom_vk_to_string71_c[0] = i_pivot81_emscripten_dom_vk_to_string71_o[33];

    // i_acl_411_emscripten_dom_vk_to_string334(LOGICAL,403)@2
    assign i_acl_411_emscripten_dom_vk_to_string334_q = i_pivot81_emscripten_dom_vk_to_string71_c ^ i_pivot79_emscripten_dom_vk_to_string143_c;

    // i_acl_417_emscripten_dom_vk_to_string335(MUX,404)@2
    assign i_acl_417_emscripten_dom_vk_to_string335_s = i_acl_411_emscripten_dom_vk_to_string334_q;
    always @(i_acl_417_emscripten_dom_vk_to_string335_s or i_acl_410_emscripten_dom_vk_to_string333_q or c_i64_4615345193124626432847_q)
    begin
        unique case (i_acl_417_emscripten_dom_vk_to_string335_s)
            1'b0 : i_acl_417_emscripten_dom_vk_to_string335_q = i_acl_410_emscripten_dom_vk_to_string333_q;
            1'b1 : i_acl_417_emscripten_dom_vk_to_string335_q = c_i64_4615345193124626432847_q;
            default : i_acl_417_emscripten_dom_vk_to_string335_q = 64'b0;
        endcase
    end

    // c_i32_277787_recast_x(CONSTANT,1029)
    assign c_i32_277787_recast_x_q = $unsigned(32'b00000000000000000000000100010101);

    // i_pivot293_emscripten_dom_vk_to_string217(COMPARE,637)@2
    assign i_pivot293_emscripten_dom_vk_to_string217_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot293_emscripten_dom_vk_to_string217_b = $unsigned({{2{c_i32_277787_recast_x_q[31]}}, c_i32_277787_recast_x_q});
    assign i_pivot293_emscripten_dom_vk_to_string217_o = $unsigned($signed(i_pivot293_emscripten_dom_vk_to_string217_a) - $signed(i_pivot293_emscripten_dom_vk_to_string217_b));
    assign i_pivot293_emscripten_dom_vk_to_string217_c[0] = i_pivot293_emscripten_dom_vk_to_string217_o[33];

    // c_i32_276692_recast_x(CONSTANT,1028)
    assign c_i32_276692_recast_x_q = $unsigned(32'b00000000000000000000000100010100);

    // i_pivot313_emscripten_dom_vk_to_string27(COMPARE,647)@2
    assign i_pivot313_emscripten_dom_vk_to_string27_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot313_emscripten_dom_vk_to_string27_b = $unsigned({{2{c_i32_276692_recast_x_q[31]}}, c_i32_276692_recast_x_q});
    assign i_pivot313_emscripten_dom_vk_to_string27_o = $unsigned($signed(i_pivot313_emscripten_dom_vk_to_string27_a) - $signed(i_pivot313_emscripten_dom_vk_to_string27_b));
    assign i_pivot313_emscripten_dom_vk_to_string27_c[0] = i_pivot313_emscripten_dom_vk_to_string27_o[33];

    // i_acl_420_emscripten_dom_vk_to_string336(LOGICAL,405)@2
    assign i_acl_420_emscripten_dom_vk_to_string336_q = i_pivot313_emscripten_dom_vk_to_string27_c ^ i_pivot293_emscripten_dom_vk_to_string217_c;

    // i_acl_424_emscripten_dom_vk_to_string337(MUX,406)@2 + 1
    assign i_acl_424_emscripten_dom_vk_to_string337_s = i_acl_420_emscripten_dom_vk_to_string336_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_424_emscripten_dom_vk_to_string337_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_424_emscripten_dom_vk_to_string337_s)
                1'b0 : i_acl_424_emscripten_dom_vk_to_string337_q <= i_acl_417_emscripten_dom_vk_to_string335_q;
                1'b1 : i_acl_424_emscripten_dom_vk_to_string337_q <= c_i64_4615626668101337088848_q;
                default : i_acl_424_emscripten_dom_vk_to_string337_q <= 64'b0;
            endcase
        end
    end

    // c_i32_297849_recast_x(CONSTANT,1046)
    assign c_i32_297849_recast_x_q = $unsigned(32'b00000000000000000000000100101001);

    // i_unnamed_emscripten_dom_vk_to_string338(LOGICAL,699)@2 + 1
    assign i_unnamed_emscripten_dom_vk_to_string338_qi = $unsigned(redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q == c_i32_297849_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string338_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string338_qi), .xout(i_unnamed_emscripten_dom_vk_to_string338_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_432_emscripten_dom_vk_to_string340(MUX,407)@3
    assign i_acl_432_emscripten_dom_vk_to_string340_s = i_unnamed_emscripten_dom_vk_to_string338_q;
    always @(i_acl_432_emscripten_dom_vk_to_string340_s or i_acl_424_emscripten_dom_vk_to_string337_q or c_i64_4615908143078047744850_q)
    begin
        unique case (i_acl_432_emscripten_dom_vk_to_string340_s)
            1'b0 : i_acl_432_emscripten_dom_vk_to_string340_q = i_acl_424_emscripten_dom_vk_to_string337_q;
            1'b1 : i_acl_432_emscripten_dom_vk_to_string340_q = c_i64_4615908143078047744850_q;
            default : i_acl_432_emscripten_dom_vk_to_string340_q = 64'b0;
        endcase
    end

    // c_i32_190698_recast_x(CONSTANT,942)
    assign c_i32_190698_recast_x_q = $unsigned(32'b00000000000000000000000010111110);

    // i_pivot129_emscripten_dom_vk_to_string39(COMPARE,547)@2 + 1
    assign i_pivot129_emscripten_dom_vk_to_string39_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot129_emscripten_dom_vk_to_string39_b = $unsigned({{2{c_i32_190698_recast_x_q[31]}}, c_i32_190698_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot129_emscripten_dom_vk_to_string39_o <= 34'b0;
        end
        else
        begin
            i_pivot129_emscripten_dom_vk_to_string39_o <= $unsigned($signed(i_pivot129_emscripten_dom_vk_to_string39_a) - $signed(i_pivot129_emscripten_dom_vk_to_string39_b));
        end
    end
    assign i_pivot129_emscripten_dom_vk_to_string39_c[0] = i_pivot129_emscripten_dom_vk_to_string39_o[33];

    // c_i32_189809_recast_x(CONSTANT,941)
    assign c_i32_189809_recast_x_q = $unsigned(32'b00000000000000000000000010111101);

    // i_pivot113_emscripten_dom_vk_to_string261(COMPARE,538)@2 + 1
    assign i_pivot113_emscripten_dom_vk_to_string261_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot113_emscripten_dom_vk_to_string261_b = $unsigned({{2{c_i32_189809_recast_x_q[31]}}, c_i32_189809_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot113_emscripten_dom_vk_to_string261_o <= 34'b0;
        end
        else
        begin
            i_pivot113_emscripten_dom_vk_to_string261_o <= $unsigned($signed(i_pivot113_emscripten_dom_vk_to_string261_a) - $signed(i_pivot113_emscripten_dom_vk_to_string261_b));
        end
    end
    assign i_pivot113_emscripten_dom_vk_to_string261_c[0] = i_pivot113_emscripten_dom_vk_to_string261_o[33];

    // i_acl_435_emscripten_dom_vk_to_string341(LOGICAL,408)@3
    assign i_acl_435_emscripten_dom_vk_to_string341_q = i_pivot113_emscripten_dom_vk_to_string261_c ^ i_pivot129_emscripten_dom_vk_to_string39_c;

    // i_acl_440_emscripten_dom_vk_to_string342(MUX,409)@3
    assign i_acl_440_emscripten_dom_vk_to_string342_s = i_acl_435_emscripten_dom_vk_to_string341_q;
    always @(i_acl_440_emscripten_dom_vk_to_string342_s or i_acl_432_emscripten_dom_vk_to_string340_q or c_i64_4616189618054758400851_q)
    begin
        unique case (i_acl_440_emscripten_dom_vk_to_string342_s)
            1'b0 : i_acl_440_emscripten_dom_vk_to_string342_q = i_acl_432_emscripten_dom_vk_to_string340_q;
            1'b1 : i_acl_440_emscripten_dom_vk_to_string342_q = c_i64_4616189618054758400851_q;
            default : i_acl_440_emscripten_dom_vk_to_string342_q = 64'b0;
        endcase
    end

    // c_i32_286790_recast_x(CONSTANT,1038)
    assign c_i32_286790_recast_x_q = $unsigned(32'b00000000000000000000000100011110);

    // i_pivot307_emscripten_dom_vk_to_string223(COMPARE,644)@2
    assign i_pivot307_emscripten_dom_vk_to_string223_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot307_emscripten_dom_vk_to_string223_b = $unsigned({{2{c_i32_286790_recast_x_q[31]}}, c_i32_286790_recast_x_q});
    assign i_pivot307_emscripten_dom_vk_to_string223_o = $unsigned($signed(i_pivot307_emscripten_dom_vk_to_string223_a) - $signed(i_pivot307_emscripten_dom_vk_to_string223_b));
    assign i_pivot307_emscripten_dom_vk_to_string223_c[0] = i_pivot307_emscripten_dom_vk_to_string223_o[33];

    // c_i32_285734_recast_x(CONSTANT,1037)
    assign c_i32_285734_recast_x_q = $unsigned(32'b00000000000000000000000100011101);

    // i_pivot309_emscripten_dom_vk_to_string111(COMPARE,645)@2
    assign i_pivot309_emscripten_dom_vk_to_string111_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot309_emscripten_dom_vk_to_string111_b = $unsigned({{2{c_i32_285734_recast_x_q[31]}}, c_i32_285734_recast_x_q});
    assign i_pivot309_emscripten_dom_vk_to_string111_o = $unsigned($signed(i_pivot309_emscripten_dom_vk_to_string111_a) - $signed(i_pivot309_emscripten_dom_vk_to_string111_b));
    assign i_pivot309_emscripten_dom_vk_to_string111_c[0] = i_pivot309_emscripten_dom_vk_to_string111_o[33];

    // i_acl_441_emscripten_dom_vk_to_string343(LOGICAL,410)@2 + 1
    assign i_acl_441_emscripten_dom_vk_to_string343_qi = i_pivot309_emscripten_dom_vk_to_string111_c ^ i_pivot307_emscripten_dom_vk_to_string223_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_441_emscripten_dom_vk_to_string343_delay ( .xin(i_acl_441_emscripten_dom_vk_to_string343_qi), .xout(i_acl_441_emscripten_dom_vk_to_string343_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_447_emscripten_dom_vk_to_string344(MUX,411)@3
    assign i_acl_447_emscripten_dom_vk_to_string344_s = i_acl_441_emscripten_dom_vk_to_string343_q;
    always @(i_acl_447_emscripten_dom_vk_to_string344_s or i_acl_440_emscripten_dom_vk_to_string342_q or c_i64_4616471093031469056852_q)
    begin
        unique case (i_acl_447_emscripten_dom_vk_to_string344_s)
            1'b0 : i_acl_447_emscripten_dom_vk_to_string344_q = i_acl_440_emscripten_dom_vk_to_string342_q;
            1'b1 : i_acl_447_emscripten_dom_vk_to_string344_q = c_i64_4616471093031469056852_q;
            default : i_acl_447_emscripten_dom_vk_to_string344_q = 64'b0;
        endcase
    end

    // c_i32_229821_recast_x(CONSTANT,981)
    assign c_i32_229821_recast_x_q = $unsigned(32'b00000000000000000000000011100101);

    // i_pivot193_emscripten_dom_vk_to_string285(COMPARE,582)@2 + 1
    assign i_pivot193_emscripten_dom_vk_to_string285_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot193_emscripten_dom_vk_to_string285_b = $unsigned({{2{c_i32_229821_recast_x_q[31]}}, c_i32_229821_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot193_emscripten_dom_vk_to_string285_o <= 34'b0;
        end
        else
        begin
            i_pivot193_emscripten_dom_vk_to_string285_o <= $unsigned($signed(i_pivot193_emscripten_dom_vk_to_string285_a) - $signed(i_pivot193_emscripten_dom_vk_to_string285_b));
        end
    end
    assign i_pivot193_emscripten_dom_vk_to_string285_c[0] = i_pivot193_emscripten_dom_vk_to_string285_o[33];

    // c_i32_228770_recast_x(CONSTANT,980)
    assign c_i32_228770_recast_x_q = $unsigned(32'b00000000000000000000000011100100);

    // i_pivot195_emscripten_dom_vk_to_string183(COMPARE,583)@2 + 1
    assign i_pivot195_emscripten_dom_vk_to_string183_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot195_emscripten_dom_vk_to_string183_b = $unsigned({{2{c_i32_228770_recast_x_q[31]}}, c_i32_228770_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot195_emscripten_dom_vk_to_string183_o <= 34'b0;
        end
        else
        begin
            i_pivot195_emscripten_dom_vk_to_string183_o <= $unsigned($signed(i_pivot195_emscripten_dom_vk_to_string183_a) - $signed(i_pivot195_emscripten_dom_vk_to_string183_b));
        end
    end
    assign i_pivot195_emscripten_dom_vk_to_string183_c[0] = i_pivot195_emscripten_dom_vk_to_string183_o[33];

    // i_acl_448_emscripten_dom_vk_to_string345(LOGICAL,412)@3
    assign i_acl_448_emscripten_dom_vk_to_string345_q = i_pivot195_emscripten_dom_vk_to_string183_c ^ i_pivot193_emscripten_dom_vk_to_string285_c;

    // i_acl_455_emscripten_dom_vk_to_string346(MUX,413)@3
    assign i_acl_455_emscripten_dom_vk_to_string346_s = i_acl_448_emscripten_dom_vk_to_string345_q;
    always @(i_acl_455_emscripten_dom_vk_to_string346_s or i_acl_447_emscripten_dom_vk_to_string344_q or c_i64_4616752568008179712853_q)
    begin
        unique case (i_acl_455_emscripten_dom_vk_to_string346_s)
            1'b0 : i_acl_455_emscripten_dom_vk_to_string346_q = i_acl_447_emscripten_dom_vk_to_string344_q;
            1'b1 : i_acl_455_emscripten_dom_vk_to_string346_q = c_i64_4616752568008179712853_q;
            default : i_acl_455_emscripten_dom_vk_to_string346_q = 64'b0;
        endcase
    end

    // c_i32_267731_recast_x(CONSTANT,1019)
    assign c_i32_267731_recast_x_q = $unsigned(32'b00000000000000000000000100001011);

    // i_pivot277_emscripten_dom_vk_to_string105(COMPARE,628)@2 + 1
    assign i_pivot277_emscripten_dom_vk_to_string105_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot277_emscripten_dom_vk_to_string105_b = $unsigned({{2{c_i32_267731_recast_x_q[31]}}, c_i32_267731_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot277_emscripten_dom_vk_to_string105_o <= 34'b0;
        end
        else
        begin
            i_pivot277_emscripten_dom_vk_to_string105_o <= $unsigned($signed(i_pivot277_emscripten_dom_vk_to_string105_a) - $signed(i_pivot277_emscripten_dom_vk_to_string105_b));
        end
    end
    assign i_pivot277_emscripten_dom_vk_to_string105_c[0] = i_pivot277_emscripten_dom_vk_to_string105_o[33];

    // c_i32_266783_recast_x(CONSTANT,1018)
    assign c_i32_266783_recast_x_q = $unsigned(32'b00000000000000000000000100001010);

    // i_pivot271_emscripten_dom_vk_to_string209(COMPARE,625)@2 + 1
    assign i_pivot271_emscripten_dom_vk_to_string209_a = $unsigned({{2{redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot271_emscripten_dom_vk_to_string209_b = $unsigned({{2{c_i32_266783_recast_x_q[31]}}, c_i32_266783_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot271_emscripten_dom_vk_to_string209_o <= 34'b0;
        end
        else
        begin
            i_pivot271_emscripten_dom_vk_to_string209_o <= $unsigned($signed(i_pivot271_emscripten_dom_vk_to_string209_a) - $signed(i_pivot271_emscripten_dom_vk_to_string209_b));
        end
    end
    assign i_pivot271_emscripten_dom_vk_to_string209_c[0] = i_pivot271_emscripten_dom_vk_to_string209_o[33];

    // i_acl_456_emscripten_dom_vk_to_string347(LOGICAL,414)@3
    assign i_acl_456_emscripten_dom_vk_to_string347_q = i_pivot271_emscripten_dom_vk_to_string209_c ^ i_pivot277_emscripten_dom_vk_to_string105_c;

    // i_acl_462_emscripten_dom_vk_to_string348(MUX,415)@3
    assign i_acl_462_emscripten_dom_vk_to_string348_s = i_acl_456_emscripten_dom_vk_to_string347_q;
    always @(i_acl_462_emscripten_dom_vk_to_string348_s or i_acl_455_emscripten_dom_vk_to_string346_q or c_i64_4617034042984890368854_q)
    begin
        unique case (i_acl_462_emscripten_dom_vk_to_string348_s)
            1'b0 : i_acl_462_emscripten_dom_vk_to_string348_q = i_acl_455_emscripten_dom_vk_to_string346_q;
            1'b1 : i_acl_462_emscripten_dom_vk_to_string348_q = c_i64_4617034042984890368854_q;
            default : i_acl_462_emscripten_dom_vk_to_string348_q = 64'b0;
        endcase
    end

    // c_i32_221723_recast_x(CONSTANT,973)
    assign c_i32_221723_recast_x_q = $unsigned(32'b00000000000000000000000011011101);

    // redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2(DELAY,1086)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_1_q);
        end
    end

    // i_pivot187_emscripten_dom_vk_to_string89(COMPARE,579)@3
    assign i_pivot187_emscripten_dom_vk_to_string89_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot187_emscripten_dom_vk_to_string89_b = $unsigned({{2{c_i32_221723_recast_x_q[31]}}, c_i32_221723_recast_x_q});
    assign i_pivot187_emscripten_dom_vk_to_string89_o = $unsigned($signed(i_pivot187_emscripten_dom_vk_to_string89_a) - $signed(i_pivot187_emscripten_dom_vk_to_string89_b));
    assign i_pivot187_emscripten_dom_vk_to_string89_c[0] = i_pivot187_emscripten_dom_vk_to_string89_o[33];

    // c_i32_220767_recast_x(CONSTANT,972)
    assign c_i32_220767_recast_x_q = $unsigned(32'b00000000000000000000000011011100);

    // i_pivot181_emscripten_dom_vk_to_string177(COMPARE,576)@3
    assign i_pivot181_emscripten_dom_vk_to_string177_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot181_emscripten_dom_vk_to_string177_b = $unsigned({{2{c_i32_220767_recast_x_q[31]}}, c_i32_220767_recast_x_q});
    assign i_pivot181_emscripten_dom_vk_to_string177_o = $unsigned($signed(i_pivot181_emscripten_dom_vk_to_string177_a) - $signed(i_pivot181_emscripten_dom_vk_to_string177_b));
    assign i_pivot181_emscripten_dom_vk_to_string177_c[0] = i_pivot181_emscripten_dom_vk_to_string177_o[33];

    // i_acl_463_emscripten_dom_vk_to_string349(LOGICAL,416)@3
    assign i_acl_463_emscripten_dom_vk_to_string349_q = i_pivot181_emscripten_dom_vk_to_string177_c ^ i_pivot187_emscripten_dom_vk_to_string89_c;

    // i_acl_469_emscripten_dom_vk_to_string350(MUX,417)@3
    assign i_acl_469_emscripten_dom_vk_to_string350_s = i_acl_463_emscripten_dom_vk_to_string349_q;
    always @(i_acl_469_emscripten_dom_vk_to_string350_s or i_acl_462_emscripten_dom_vk_to_string348_q or c_i64_4617315517961601024855_q)
    begin
        unique case (i_acl_469_emscripten_dom_vk_to_string350_s)
            1'b0 : i_acl_469_emscripten_dom_vk_to_string350_q = i_acl_462_emscripten_dom_vk_to_string348_q;
            1'b1 : i_acl_469_emscripten_dom_vk_to_string350_q = c_i64_4617315517961601024855_q;
            default : i_acl_469_emscripten_dom_vk_to_string350_q = 64'b0;
        endcase
    end

    // c_i32_233725_recast_x(CONSTANT,985)
    assign c_i32_233725_recast_x_q = $unsigned(32'b00000000000000000000000011101001);

    // i_pivot209_emscripten_dom_vk_to_string93(COMPARE,591)@3
    assign i_pivot209_emscripten_dom_vk_to_string93_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot209_emscripten_dom_vk_to_string93_b = $unsigned({{2{c_i32_233725_recast_x_q[31]}}, c_i32_233725_recast_x_q});
    assign i_pivot209_emscripten_dom_vk_to_string93_o = $unsigned($signed(i_pivot209_emscripten_dom_vk_to_string93_a) - $signed(i_pivot209_emscripten_dom_vk_to_string93_b));
    assign i_pivot209_emscripten_dom_vk_to_string93_c[0] = i_pivot209_emscripten_dom_vk_to_string93_o[33];

    // c_i32_232822_recast_x(CONSTANT,984)
    assign c_i32_232822_recast_x_q = $unsigned(32'b00000000000000000000000011101000);

    // i_pivot201_emscripten_dom_vk_to_string287(COMPARE,587)@3
    assign i_pivot201_emscripten_dom_vk_to_string287_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot201_emscripten_dom_vk_to_string287_b = $unsigned({{2{c_i32_232822_recast_x_q[31]}}, c_i32_232822_recast_x_q});
    assign i_pivot201_emscripten_dom_vk_to_string287_o = $unsigned($signed(i_pivot201_emscripten_dom_vk_to_string287_a) - $signed(i_pivot201_emscripten_dom_vk_to_string287_b));
    assign i_pivot201_emscripten_dom_vk_to_string287_c[0] = i_pivot201_emscripten_dom_vk_to_string287_o[33];

    // i_acl_471_emscripten_dom_vk_to_string351(LOGICAL,418)@3
    assign i_acl_471_emscripten_dom_vk_to_string351_q = i_pivot201_emscripten_dom_vk_to_string287_c ^ i_pivot209_emscripten_dom_vk_to_string93_c;

    // i_acl_477_emscripten_dom_vk_to_string352(MUX,419)@3 + 1
    assign i_acl_477_emscripten_dom_vk_to_string352_s = i_acl_471_emscripten_dom_vk_to_string351_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_477_emscripten_dom_vk_to_string352_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_477_emscripten_dom_vk_to_string352_s)
                1'b0 : i_acl_477_emscripten_dom_vk_to_string352_q <= i_acl_469_emscripten_dom_vk_to_string350_q;
                1'b1 : i_acl_477_emscripten_dom_vk_to_string352_q <= c_i64_4617596992938311680856_q;
                default : i_acl_477_emscripten_dom_vk_to_string352_q <= 64'b0;
            endcase
        end
    end

    // c_i32_219680_recast_x(CONSTANT,971)
    assign c_i32_219680_recast_x_q = $unsigned(32'b00000000000000000000000011011011);

    // i_pivot365_emscripten_dom_vk_to_string3(COMPARE,652)@3
    assign i_pivot365_emscripten_dom_vk_to_string3_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot365_emscripten_dom_vk_to_string3_b = $unsigned({{2{c_i32_219680_recast_x_q[31]}}, c_i32_219680_recast_x_q});
    assign i_pivot365_emscripten_dom_vk_to_string3_o = $unsigned($signed(i_pivot365_emscripten_dom_vk_to_string3_a) - $signed(i_pivot365_emscripten_dom_vk_to_string3_b));
    assign i_pivot365_emscripten_dom_vk_to_string3_c[0] = i_pivot365_emscripten_dom_vk_to_string3_o[33];

    // c_i32_218818_recast_x(CONSTANT,970)
    assign c_i32_218818_recast_x_q = $unsigned(32'b00000000000000000000000011011010);

    // i_pivot167_emscripten_dom_vk_to_string279(COMPARE,568)@3
    assign i_pivot167_emscripten_dom_vk_to_string279_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot167_emscripten_dom_vk_to_string279_b = $unsigned({{2{c_i32_218818_recast_x_q[31]}}, c_i32_218818_recast_x_q});
    assign i_pivot167_emscripten_dom_vk_to_string279_o = $unsigned($signed(i_pivot167_emscripten_dom_vk_to_string279_a) - $signed(i_pivot167_emscripten_dom_vk_to_string279_b));
    assign i_pivot167_emscripten_dom_vk_to_string279_c[0] = i_pivot167_emscripten_dom_vk_to_string279_o[33];

    // i_acl_484_emscripten_dom_vk_to_string353(LOGICAL,420)@3 + 1
    assign i_acl_484_emscripten_dom_vk_to_string353_qi = i_pivot167_emscripten_dom_vk_to_string279_c ^ i_pivot365_emscripten_dom_vk_to_string3_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_484_emscripten_dom_vk_to_string353_delay ( .xin(i_acl_484_emscripten_dom_vk_to_string353_qi), .xout(i_acl_484_emscripten_dom_vk_to_string353_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_485_emscripten_dom_vk_to_string354(MUX,421)@4
    assign i_acl_485_emscripten_dom_vk_to_string354_s = i_acl_484_emscripten_dom_vk_to_string353_q;
    always @(i_acl_485_emscripten_dom_vk_to_string354_s or i_acl_477_emscripten_dom_vk_to_string352_q or c_i64_4617878467915022336857_q)
    begin
        unique case (i_acl_485_emscripten_dom_vk_to_string354_s)
            1'b0 : i_acl_485_emscripten_dom_vk_to_string354_q = i_acl_477_emscripten_dom_vk_to_string352_q;
            1'b1 : i_acl_485_emscripten_dom_vk_to_string354_q = c_i64_4617878467915022336857_q;
            default : i_acl_485_emscripten_dom_vk_to_string354_q = 64'b0;
        endcase
    end

    // c_i32_262730_recast_x(CONSTANT,1014)
    assign c_i32_262730_recast_x_q = $unsigned(32'b00000000000000000000000100000110);

    // i_pivot263_emscripten_dom_vk_to_string103(COMPARE,621)@3 + 1
    assign i_pivot263_emscripten_dom_vk_to_string103_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot263_emscripten_dom_vk_to_string103_b = $unsigned({{2{c_i32_262730_recast_x_q[31]}}, c_i32_262730_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot263_emscripten_dom_vk_to_string103_o <= 34'b0;
        end
        else
        begin
            i_pivot263_emscripten_dom_vk_to_string103_o <= $unsigned($signed(i_pivot263_emscripten_dom_vk_to_string103_a) - $signed(i_pivot263_emscripten_dom_vk_to_string103_b));
        end
    end
    assign i_pivot263_emscripten_dom_vk_to_string103_c[0] = i_pivot263_emscripten_dom_vk_to_string103_o[33];

    // c_i32_261831_recast_x(CONSTANT,1013)
    assign c_i32_261831_recast_x_q = $unsigned(32'b00000000000000000000000100000101);

    // i_pivot255_emscripten_dom_vk_to_string305(COMPARE,616)@3 + 1
    assign i_pivot255_emscripten_dom_vk_to_string305_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot255_emscripten_dom_vk_to_string305_b = $unsigned({{2{c_i32_261831_recast_x_q[31]}}, c_i32_261831_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot255_emscripten_dom_vk_to_string305_o <= 34'b0;
        end
        else
        begin
            i_pivot255_emscripten_dom_vk_to_string305_o <= $unsigned($signed(i_pivot255_emscripten_dom_vk_to_string305_a) - $signed(i_pivot255_emscripten_dom_vk_to_string305_b));
        end
    end
    assign i_pivot255_emscripten_dom_vk_to_string305_c[0] = i_pivot255_emscripten_dom_vk_to_string305_o[33];

    // i_acl_487_emscripten_dom_vk_to_string355(LOGICAL,422)@4
    assign i_acl_487_emscripten_dom_vk_to_string355_q = i_pivot255_emscripten_dom_vk_to_string305_c ^ i_pivot263_emscripten_dom_vk_to_string103_c;

    // i_acl_493_emscripten_dom_vk_to_string356(MUX,423)@4
    assign i_acl_493_emscripten_dom_vk_to_string356_s = i_acl_487_emscripten_dom_vk_to_string355_q;
    always @(i_acl_493_emscripten_dom_vk_to_string356_s or i_acl_485_emscripten_dom_vk_to_string354_q or c_i64_4618159942891732992858_q)
    begin
        unique case (i_acl_493_emscripten_dom_vk_to_string356_s)
            1'b0 : i_acl_493_emscripten_dom_vk_to_string356_q = i_acl_485_emscripten_dom_vk_to_string354_q;
            1'b1 : i_acl_493_emscripten_dom_vk_to_string356_q = c_i64_4618159942891732992858_q;
            default : i_acl_493_emscripten_dom_vk_to_string356_q = 64'b0;
        endcase
    end

    // redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2(DELAY,1128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_delay_0 <= '0;
            redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_q <= '0;
        end
        else
        begin
            redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_delay_0 <= $unsigned(i_pivot313_emscripten_dom_vk_to_string27_c);
            redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_q <= redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_delay_0;
        end
    end

    // c_i32_275835_recast_x(CONSTANT,1027)
    assign c_i32_275835_recast_x_q = $unsigned(32'b00000000000000000000000100010011);

    // i_pivot283_emscripten_dom_vk_to_string313(COMPARE,632)@3 + 1
    assign i_pivot283_emscripten_dom_vk_to_string313_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot283_emscripten_dom_vk_to_string313_b = $unsigned({{2{c_i32_275835_recast_x_q[31]}}, c_i32_275835_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot283_emscripten_dom_vk_to_string313_o <= 34'b0;
        end
        else
        begin
            i_pivot283_emscripten_dom_vk_to_string313_o <= $unsigned($signed(i_pivot283_emscripten_dom_vk_to_string313_a) - $signed(i_pivot283_emscripten_dom_vk_to_string313_b));
        end
    end
    assign i_pivot283_emscripten_dom_vk_to_string313_c[0] = i_pivot283_emscripten_dom_vk_to_string313_o[33];

    // i_acl_497_emscripten_dom_vk_to_string357(LOGICAL,424)@4
    assign i_acl_497_emscripten_dom_vk_to_string357_q = i_pivot283_emscripten_dom_vk_to_string313_c ^ redist43_i_pivot313_emscripten_dom_vk_to_string27_c_2_q;

    // i_acl_501_emscripten_dom_vk_to_string358(MUX,425)@4
    assign i_acl_501_emscripten_dom_vk_to_string358_s = i_acl_497_emscripten_dom_vk_to_string357_q;
    always @(i_acl_501_emscripten_dom_vk_to_string358_s or i_acl_493_emscripten_dom_vk_to_string356_q or c_i64_4618441417868443648859_q)
    begin
        unique case (i_acl_501_emscripten_dom_vk_to_string358_s)
            1'b0 : i_acl_501_emscripten_dom_vk_to_string358_q = i_acl_493_emscripten_dom_vk_to_string356_q;
            1'b1 : i_acl_501_emscripten_dom_vk_to_string358_q = c_i64_4618441417868443648859_q;
            default : i_acl_501_emscripten_dom_vk_to_string358_q = 64'b0;
        endcase
    end

    // c_i32_210721_recast_x(CONSTANT,962)
    assign c_i32_210721_recast_x_q = $unsigned(32'b00000000000000000000000011010010);

    // i_pivot161_emscripten_dom_vk_to_string85(COMPARE,565)@3 + 1
    assign i_pivot161_emscripten_dom_vk_to_string85_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot161_emscripten_dom_vk_to_string85_b = $unsigned({{2{c_i32_210721_recast_x_q[31]}}, c_i32_210721_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot161_emscripten_dom_vk_to_string85_o <= 34'b0;
        end
        else
        begin
            i_pivot161_emscripten_dom_vk_to_string85_o <= $unsigned($signed(i_pivot161_emscripten_dom_vk_to_string85_a) - $signed(i_pivot161_emscripten_dom_vk_to_string85_b));
        end
    end
    assign i_pivot161_emscripten_dom_vk_to_string85_c[0] = i_pivot161_emscripten_dom_vk_to_string85_o[33];

    // c_i32_209815_recast_x(CONSTANT,961)
    assign c_i32_209815_recast_x_q = $unsigned(32'b00000000000000000000000011010001);

    // i_pivot153_emscripten_dom_vk_to_string273(COMPARE,560)@3 + 1
    assign i_pivot153_emscripten_dom_vk_to_string273_a = $unsigned({{2{redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot153_emscripten_dom_vk_to_string273_b = $unsigned({{2{c_i32_209815_recast_x_q[31]}}, c_i32_209815_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot153_emscripten_dom_vk_to_string273_o <= 34'b0;
        end
        else
        begin
            i_pivot153_emscripten_dom_vk_to_string273_o <= $unsigned($signed(i_pivot153_emscripten_dom_vk_to_string273_a) - $signed(i_pivot153_emscripten_dom_vk_to_string273_b));
        end
    end
    assign i_pivot153_emscripten_dom_vk_to_string273_c[0] = i_pivot153_emscripten_dom_vk_to_string273_o[33];

    // i_acl_503_emscripten_dom_vk_to_string359(LOGICAL,426)@4
    assign i_acl_503_emscripten_dom_vk_to_string359_q = i_pivot153_emscripten_dom_vk_to_string273_c ^ i_pivot161_emscripten_dom_vk_to_string85_c;

    // i_acl_509_emscripten_dom_vk_to_string360(MUX,427)@4
    assign i_acl_509_emscripten_dom_vk_to_string360_s = i_acl_503_emscripten_dom_vk_to_string359_q;
    always @(i_acl_509_emscripten_dom_vk_to_string360_s or i_acl_501_emscripten_dom_vk_to_string358_q or c_i64_4618722892845154304860_q)
    begin
        unique case (i_acl_509_emscripten_dom_vk_to_string360_s)
            1'b0 : i_acl_509_emscripten_dom_vk_to_string360_q = i_acl_501_emscripten_dom_vk_to_string358_q;
            1'b1 : i_acl_509_emscripten_dom_vk_to_string360_q = c_i64_4618722892845154304860_q;
            default : i_acl_509_emscripten_dom_vk_to_string360_q = 64'b0;
        endcase
    end

    // c_i32_299861_recast_x(CONSTANT,1048)
    assign c_i32_299861_recast_x_q = $unsigned(32'b00000000000000000000000100101011);

    // redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3(DELAY,1087)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q <= $unsigned(redist1_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_2_q);
        end
    end

    // i_unnamed_emscripten_dom_vk_to_string361(LOGICAL,700)@4
    assign i_unnamed_emscripten_dom_vk_to_string361_q = $unsigned(redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q == c_i32_299861_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_516_emscripten_dom_vk_to_string363(MUX,428)@4
    assign i_acl_516_emscripten_dom_vk_to_string363_s = i_unnamed_emscripten_dom_vk_to_string361_q;
    always @(i_acl_516_emscripten_dom_vk_to_string363_s or i_acl_509_emscripten_dom_vk_to_string360_q or c_i64_4619004367821864960862_q)
    begin
        unique case (i_acl_516_emscripten_dom_vk_to_string363_s)
            1'b0 : i_acl_516_emscripten_dom_vk_to_string363_q = i_acl_509_emscripten_dom_vk_to_string360_q;
            1'b1 : i_acl_516_emscripten_dom_vk_to_string363_q = c_i64_4619004367821864960862_q;
            default : i_acl_516_emscripten_dom_vk_to_string363_q = 64'b0;
        endcase
    end

    // c_i32_213700_recast_x(CONSTANT,965)
    assign c_i32_213700_recast_x_q = $unsigned(32'b00000000000000000000000011010101);

    // i_pivot173_emscripten_dom_vk_to_string43(COMPARE,571)@4
    assign i_pivot173_emscripten_dom_vk_to_string43_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot173_emscripten_dom_vk_to_string43_b = $unsigned({{2{c_i32_213700_recast_x_q[31]}}, c_i32_213700_recast_x_q});
    assign i_pivot173_emscripten_dom_vk_to_string43_o = $unsigned($signed(i_pivot173_emscripten_dom_vk_to_string43_a) - $signed(i_pivot173_emscripten_dom_vk_to_string43_b));
    assign i_pivot173_emscripten_dom_vk_to_string43_c[0] = i_pivot173_emscripten_dom_vk_to_string43_o[33];

    // c_i32_212816_recast_x(CONSTANT,964)
    assign c_i32_212816_recast_x_q = $unsigned(32'b00000000000000000000000011010100);

    // i_pivot157_emscripten_dom_vk_to_string275(COMPARE,562)@4
    assign i_pivot157_emscripten_dom_vk_to_string275_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot157_emscripten_dom_vk_to_string275_b = $unsigned({{2{c_i32_212816_recast_x_q[31]}}, c_i32_212816_recast_x_q});
    assign i_pivot157_emscripten_dom_vk_to_string275_o = $unsigned($signed(i_pivot157_emscripten_dom_vk_to_string275_a) - $signed(i_pivot157_emscripten_dom_vk_to_string275_b));
    assign i_pivot157_emscripten_dom_vk_to_string275_c[0] = i_pivot157_emscripten_dom_vk_to_string275_o[33];

    // i_acl_519_emscripten_dom_vk_to_string364(LOGICAL,429)@4
    assign i_acl_519_emscripten_dom_vk_to_string364_q = i_pivot157_emscripten_dom_vk_to_string275_c ^ i_pivot173_emscripten_dom_vk_to_string43_c;

    // i_acl_524_emscripten_dom_vk_to_string365(MUX,430)@4
    assign i_acl_524_emscripten_dom_vk_to_string365_s = i_acl_519_emscripten_dom_vk_to_string364_q;
    always @(i_acl_524_emscripten_dom_vk_to_string365_s or i_acl_516_emscripten_dom_vk_to_string363_q or c_i64_4619285842798575616863_q)
    begin
        unique case (i_acl_524_emscripten_dom_vk_to_string365_s)
            1'b0 : i_acl_524_emscripten_dom_vk_to_string365_q = i_acl_516_emscripten_dom_vk_to_string363_q;
            1'b1 : i_acl_524_emscripten_dom_vk_to_string365_q = c_i64_4619285842798575616863_q;
            default : i_acl_524_emscripten_dom_vk_to_string365_q = 64'b0;
        endcase
    end

    // c_i32_168749_recast_x(CONSTANT,920)
    assign c_i32_168749_recast_x_q = $unsigned(32'b00000000000000000000000010101000);

    // i_pivot75_emscripten_dom_vk_to_string141(COMPARE,674)@4
    assign i_pivot75_emscripten_dom_vk_to_string141_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot75_emscripten_dom_vk_to_string141_b = $unsigned({{2{c_i32_168749_recast_x_q[31]}}, c_i32_168749_recast_x_q});
    assign i_pivot75_emscripten_dom_vk_to_string141_o = $unsigned($signed(i_pivot75_emscripten_dom_vk_to_string141_a) - $signed(i_pivot75_emscripten_dom_vk_to_string141_b));
    assign i_pivot75_emscripten_dom_vk_to_string141_c[0] = i_pivot75_emscripten_dom_vk_to_string141_o[33];

    // c_i32_167696_recast_x(CONSTANT,919)
    assign c_i32_167696_recast_x_q = $unsigned(32'b00000000000000000000000010100111);

    // i_pivot83_emscripten_dom_vk_to_string35(COMPARE,679)@4
    assign i_pivot83_emscripten_dom_vk_to_string35_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot83_emscripten_dom_vk_to_string35_b = $unsigned({{2{c_i32_167696_recast_x_q[31]}}, c_i32_167696_recast_x_q});
    assign i_pivot83_emscripten_dom_vk_to_string35_o = $unsigned($signed(i_pivot83_emscripten_dom_vk_to_string35_a) - $signed(i_pivot83_emscripten_dom_vk_to_string35_b));
    assign i_pivot83_emscripten_dom_vk_to_string35_c[0] = i_pivot83_emscripten_dom_vk_to_string35_o[33];

    // i_acl_526_emscripten_dom_vk_to_string366(LOGICAL,431)@4
    assign i_acl_526_emscripten_dom_vk_to_string366_q = i_pivot83_emscripten_dom_vk_to_string35_c ^ i_pivot75_emscripten_dom_vk_to_string141_c;

    // i_acl_531_emscripten_dom_vk_to_string367(MUX,432)@4 + 1
    assign i_acl_531_emscripten_dom_vk_to_string367_s = i_acl_526_emscripten_dom_vk_to_string366_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_531_emscripten_dom_vk_to_string367_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_531_emscripten_dom_vk_to_string367_s)
                1'b0 : i_acl_531_emscripten_dom_vk_to_string367_q <= i_acl_524_emscripten_dom_vk_to_string365_q;
                1'b1 : i_acl_531_emscripten_dom_vk_to_string367_q <= c_i64_4619567317775286272864_q;
                default : i_acl_531_emscripten_dom_vk_to_string367_q <= 64'b0;
            endcase
        end
    end

    // c_i32_191757_recast_x(CONSTANT,943)
    assign c_i32_191757_recast_x_q = $unsigned(32'b00000000000000000000000010111111);

    // i_pivot121_emscripten_dom_vk_to_string157(COMPARE,543)@4
    assign i_pivot121_emscripten_dom_vk_to_string157_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot121_emscripten_dom_vk_to_string157_b = $unsigned({{2{c_i32_191757_recast_x_q[31]}}, c_i32_191757_recast_x_q});
    assign i_pivot121_emscripten_dom_vk_to_string157_o = $unsigned($signed(i_pivot121_emscripten_dom_vk_to_string157_a) - $signed(i_pivot121_emscripten_dom_vk_to_string157_b));
    assign i_pivot121_emscripten_dom_vk_to_string157_c[0] = i_pivot121_emscripten_dom_vk_to_string157_o[33];

    // redist82_i_pivot129_emscripten_dom_vk_to_string39_c_2(DELAY,1167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_pivot129_emscripten_dom_vk_to_string39_c_2_q <= '0;
        end
        else
        begin
            redist82_i_pivot129_emscripten_dom_vk_to_string39_c_2_q <= $unsigned(i_pivot129_emscripten_dom_vk_to_string39_c);
        end
    end

    // i_acl_533_emscripten_dom_vk_to_string368(LOGICAL,433)@4 + 1
    assign i_acl_533_emscripten_dom_vk_to_string368_qi = redist82_i_pivot129_emscripten_dom_vk_to_string39_c_2_q ^ i_pivot121_emscripten_dom_vk_to_string157_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_533_emscripten_dom_vk_to_string368_delay ( .xin(i_acl_533_emscripten_dom_vk_to_string368_qi), .xout(i_acl_533_emscripten_dom_vk_to_string368_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_538_emscripten_dom_vk_to_string369(MUX,434)@5
    assign i_acl_538_emscripten_dom_vk_to_string369_s = i_acl_533_emscripten_dom_vk_to_string368_q;
    always @(i_acl_538_emscripten_dom_vk_to_string369_s or i_acl_531_emscripten_dom_vk_to_string367_q or c_i64_4619848792751996928865_q)
    begin
        unique case (i_acl_538_emscripten_dom_vk_to_string369_s)
            1'b0 : i_acl_538_emscripten_dom_vk_to_string369_q = i_acl_531_emscripten_dom_vk_to_string367_q;
            1'b1 : i_acl_538_emscripten_dom_vk_to_string369_q = c_i64_4619848792751996928865_q;
            default : i_acl_538_emscripten_dom_vk_to_string369_q = 64'b0;
        endcase
    end

    // c_i32_192810_recast_x(CONSTANT,944)
    assign c_i32_192810_recast_x_q = $unsigned(32'b00000000000000000000000011000000);

    // i_pivot119_emscripten_dom_vk_to_string263(COMPARE,541)@4 + 1
    assign i_pivot119_emscripten_dom_vk_to_string263_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot119_emscripten_dom_vk_to_string263_b = $unsigned({{2{c_i32_192810_recast_x_q[31]}}, c_i32_192810_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot119_emscripten_dom_vk_to_string263_o <= 34'b0;
        end
        else
        begin
            i_pivot119_emscripten_dom_vk_to_string263_o <= $unsigned($signed(i_pivot119_emscripten_dom_vk_to_string263_a) - $signed(i_pivot119_emscripten_dom_vk_to_string263_b));
        end
    end
    assign i_pivot119_emscripten_dom_vk_to_string263_c[0] = i_pivot119_emscripten_dom_vk_to_string263_o[33];

    // redist84_i_pivot121_emscripten_dom_vk_to_string157_c_1(DELAY,1169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_pivot121_emscripten_dom_vk_to_string157_c_1_q <= '0;
        end
        else
        begin
            redist84_i_pivot121_emscripten_dom_vk_to_string157_c_1_q <= $unsigned(i_pivot121_emscripten_dom_vk_to_string157_c);
        end
    end

    // i_acl_539_emscripten_dom_vk_to_string370(LOGICAL,435)@5
    assign i_acl_539_emscripten_dom_vk_to_string370_q = redist84_i_pivot121_emscripten_dom_vk_to_string157_c_1_q ^ i_pivot119_emscripten_dom_vk_to_string263_c;

    // i_acl_546_emscripten_dom_vk_to_string371(MUX,436)@5
    assign i_acl_546_emscripten_dom_vk_to_string371_s = i_acl_539_emscripten_dom_vk_to_string370_q;
    always @(i_acl_546_emscripten_dom_vk_to_string371_s or i_acl_538_emscripten_dom_vk_to_string369_q or c_i64_4620130267728707584866_q)
    begin
        unique case (i_acl_546_emscripten_dom_vk_to_string371_s)
            1'b0 : i_acl_546_emscripten_dom_vk_to_string371_q = i_acl_538_emscripten_dom_vk_to_string369_q;
            1'b1 : i_acl_546_emscripten_dom_vk_to_string371_q = c_i64_4620130267728707584866_q;
            default : i_acl_546_emscripten_dom_vk_to_string371_q = 64'b0;
        endcase
    end

    // redist42_i_pivot363_emscripten_dom_vk_to_string7_c_2(DELAY,1127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_pivot363_emscripten_dom_vk_to_string7_c_2_q <= '0;
        end
        else
        begin
            redist42_i_pivot363_emscripten_dom_vk_to_string7_c_2_q <= $unsigned(i_pivot363_emscripten_dom_vk_to_string7_c);
        end
    end

    // i_acl_551_emscripten_dom_vk_to_string372(LOGICAL,437)@3 + 1
    assign i_acl_551_emscripten_dom_vk_to_string372_qi = redist42_i_pivot363_emscripten_dom_vk_to_string7_c_2_q ^ i_pivot271_emscripten_dom_vk_to_string209_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_551_emscripten_dom_vk_to_string372_delay ( .xin(i_acl_551_emscripten_dom_vk_to_string372_qi), .xout(i_acl_551_emscripten_dom_vk_to_string372_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist97_i_acl_551_emscripten_dom_vk_to_string372_q_2(DELAY,1182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_acl_551_emscripten_dom_vk_to_string372_q_2_q <= '0;
        end
        else
        begin
            redist97_i_acl_551_emscripten_dom_vk_to_string372_q_2_q <= $unsigned(i_acl_551_emscripten_dom_vk_to_string372_q);
        end
    end

    // i_acl_553_emscripten_dom_vk_to_string373(MUX,438)@5
    assign i_acl_553_emscripten_dom_vk_to_string373_s = redist97_i_acl_551_emscripten_dom_vk_to_string372_q_2_q;
    always @(i_acl_553_emscripten_dom_vk_to_string373_s or i_acl_546_emscripten_dom_vk_to_string371_q or c_i64_4620411742705418240867_q)
    begin
        unique case (i_acl_553_emscripten_dom_vk_to_string373_s)
            1'b0 : i_acl_553_emscripten_dom_vk_to_string373_q = i_acl_546_emscripten_dom_vk_to_string371_q;
            1'b1 : i_acl_553_emscripten_dom_vk_to_string373_q = c_i64_4620411742705418240867_q;
            default : i_acl_553_emscripten_dom_vk_to_string373_q = 64'b0;
        endcase
    end

    // redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4(DELAY,1152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_0 <= '0;
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_1 <= '0;
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_2 <= '0;
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_q <= '0;
        end
        else
        begin
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_0 <= $unsigned(i_pivot189_emscripten_dom_vk_to_string283_c);
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_1 <= redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_0;
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_2 <= redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_1;
            redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_q <= redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_delay_2;
        end
    end

    // c_i32_225769_recast_x(CONSTANT,977)
    assign c_i32_225769_recast_x_q = $unsigned(32'b00000000000000000000000011100001);

    // i_pivot191_emscripten_dom_vk_to_string181(COMPARE,581)@4 + 1
    assign i_pivot191_emscripten_dom_vk_to_string181_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot191_emscripten_dom_vk_to_string181_b = $unsigned({{2{c_i32_225769_recast_x_q[31]}}, c_i32_225769_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot191_emscripten_dom_vk_to_string181_o <= 34'b0;
        end
        else
        begin
            i_pivot191_emscripten_dom_vk_to_string181_o <= $unsigned($signed(i_pivot191_emscripten_dom_vk_to_string181_a) - $signed(i_pivot191_emscripten_dom_vk_to_string181_b));
        end
    end
    assign i_pivot191_emscripten_dom_vk_to_string181_c[0] = i_pivot191_emscripten_dom_vk_to_string181_o[33];

    // i_acl_554_emscripten_dom_vk_to_string374(LOGICAL,439)@5
    assign i_acl_554_emscripten_dom_vk_to_string374_q = i_pivot191_emscripten_dom_vk_to_string181_c ^ redist67_i_pivot189_emscripten_dom_vk_to_string283_c_4_q;

    // i_acl_561_emscripten_dom_vk_to_string375(MUX,440)@5
    assign i_acl_561_emscripten_dom_vk_to_string375_s = i_acl_554_emscripten_dom_vk_to_string374_q;
    always @(i_acl_561_emscripten_dom_vk_to_string375_s or i_acl_553_emscripten_dom_vk_to_string373_q or c_i64_4620693217682128896868_q)
    begin
        unique case (i_acl_561_emscripten_dom_vk_to_string375_s)
            1'b0 : i_acl_561_emscripten_dom_vk_to_string375_q = i_acl_553_emscripten_dom_vk_to_string373_q;
            1'b1 : i_acl_561_emscripten_dom_vk_to_string375_q = c_i64_4620693217682128896868_q;
            default : i_acl_561_emscripten_dom_vk_to_string375_q = 64'b0;
        endcase
    end

    // c_i32_217766_recast_x(CONSTANT,969)
    assign c_i32_217766_recast_x_q = $unsigned(32'b00000000000000000000000011011001);

    // i_pivot169_emscripten_dom_vk_to_string175(COMPARE,569)@4
    assign i_pivot169_emscripten_dom_vk_to_string175_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot169_emscripten_dom_vk_to_string175_b = $unsigned({{2{c_i32_217766_recast_x_q[31]}}, c_i32_217766_recast_x_q});
    assign i_pivot169_emscripten_dom_vk_to_string175_o = $unsigned($signed(i_pivot169_emscripten_dom_vk_to_string175_a) - $signed(i_pivot169_emscripten_dom_vk_to_string175_b));
    assign i_pivot169_emscripten_dom_vk_to_string175_c[0] = i_pivot169_emscripten_dom_vk_to_string175_o[33];

    // redist73_i_pivot169_emscripten_dom_vk_to_string175_c_1(DELAY,1158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_pivot169_emscripten_dom_vk_to_string175_c_1_q <= '0;
        end
        else
        begin
            redist73_i_pivot169_emscripten_dom_vk_to_string175_c_1_q <= $unsigned(i_pivot169_emscripten_dom_vk_to_string175_c);
        end
    end

    // c_i32_216722_recast_x(CONSTANT,968)
    assign c_i32_216722_recast_x_q = $unsigned(32'b00000000000000000000000011011000);

    // i_pivot171_emscripten_dom_vk_to_string87(COMPARE,570)@4 + 1
    assign i_pivot171_emscripten_dom_vk_to_string87_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot171_emscripten_dom_vk_to_string87_b = $unsigned({{2{c_i32_216722_recast_x_q[31]}}, c_i32_216722_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot171_emscripten_dom_vk_to_string87_o <= 34'b0;
        end
        else
        begin
            i_pivot171_emscripten_dom_vk_to_string87_o <= $unsigned($signed(i_pivot171_emscripten_dom_vk_to_string87_a) - $signed(i_pivot171_emscripten_dom_vk_to_string87_b));
        end
    end
    assign i_pivot171_emscripten_dom_vk_to_string87_c[0] = i_pivot171_emscripten_dom_vk_to_string87_o[33];

    // i_acl_562_emscripten_dom_vk_to_string376(LOGICAL,441)@5
    assign i_acl_562_emscripten_dom_vk_to_string376_q = i_pivot171_emscripten_dom_vk_to_string87_c ^ redist73_i_pivot169_emscripten_dom_vk_to_string175_c_1_q;

    // i_acl_568_emscripten_dom_vk_to_string377(MUX,442)@5
    assign i_acl_568_emscripten_dom_vk_to_string377_s = i_acl_562_emscripten_dom_vk_to_string376_q;
    always @(i_acl_568_emscripten_dom_vk_to_string377_s or i_acl_561_emscripten_dom_vk_to_string375_q or c_i64_4620974692658839552869_q)
    begin
        unique case (i_acl_568_emscripten_dom_vk_to_string377_s)
            1'b0 : i_acl_568_emscripten_dom_vk_to_string377_q = i_acl_561_emscripten_dom_vk_to_string375_q;
            1'b1 : i_acl_568_emscripten_dom_vk_to_string377_q = c_i64_4620974692658839552869_q;
            default : i_acl_568_emscripten_dom_vk_to_string377_q = 64'b0;
        endcase
    end

    // c_i32_161687_recast_x(CONSTANT,913)
    assign c_i32_161687_recast_x_q = $unsigned(32'b00000000000000000000000010100001);

    // redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4(DELAY,1088)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q <= '0;
        end
        else
        begin
            redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q <= $unsigned(redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q);
        end
    end

    // i_pivot85_emscripten_dom_vk_to_string17(COMPARE,680)@5
    assign i_pivot85_emscripten_dom_vk_to_string17_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot85_emscripten_dom_vk_to_string17_b = $unsigned({{2{c_i32_161687_recast_x_q[31]}}, c_i32_161687_recast_x_q});
    assign i_pivot85_emscripten_dom_vk_to_string17_o = $unsigned($signed(i_pivot85_emscripten_dom_vk_to_string17_a) - $signed(i_pivot85_emscripten_dom_vk_to_string17_b));
    assign i_pivot85_emscripten_dom_vk_to_string17_c[0] = i_pivot85_emscripten_dom_vk_to_string17_o[33];

    // c_i32_160800_recast_x(CONSTANT,912)
    assign c_i32_160800_recast_x_q = $unsigned(32'b00000000000000000000000010100000);

    // i_pivot55_emscripten_dom_vk_to_string243(COMPARE,663)@5
    assign i_pivot55_emscripten_dom_vk_to_string243_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot55_emscripten_dom_vk_to_string243_b = $unsigned({{2{c_i32_160800_recast_x_q[31]}}, c_i32_160800_recast_x_q});
    assign i_pivot55_emscripten_dom_vk_to_string243_o = $unsigned($signed(i_pivot55_emscripten_dom_vk_to_string243_a) - $signed(i_pivot55_emscripten_dom_vk_to_string243_b));
    assign i_pivot55_emscripten_dom_vk_to_string243_c[0] = i_pivot55_emscripten_dom_vk_to_string243_o[33];

    // i_acl_572_emscripten_dom_vk_to_string378(LOGICAL,443)@5
    assign i_acl_572_emscripten_dom_vk_to_string378_q = i_pivot55_emscripten_dom_vk_to_string243_c ^ i_pivot85_emscripten_dom_vk_to_string17_c;

    // i_acl_576_emscripten_dom_vk_to_string379(MUX,444)@5
    assign i_acl_576_emscripten_dom_vk_to_string379_s = i_acl_572_emscripten_dom_vk_to_string378_q;
    always @(i_acl_576_emscripten_dom_vk_to_string379_s or i_acl_568_emscripten_dom_vk_to_string377_q or c_i64_4621256167635550208870_q)
    begin
        unique case (i_acl_576_emscripten_dom_vk_to_string379_s)
            1'b0 : i_acl_576_emscripten_dom_vk_to_string379_q = i_acl_568_emscripten_dom_vk_to_string377_q;
            1'b1 : i_acl_576_emscripten_dom_vk_to_string379_q = c_i64_4621256167635550208870_q;
            default : i_acl_576_emscripten_dom_vk_to_string379_q = 64'b0;
        endcase
    end

    // redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4(DELAY,1112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_0 <= '0;
            redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_1 <= '0;
            redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_q <= '0;
        end
        else
        begin
            redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_0 <= $unsigned(i_pivot91_emscripten_dom_vk_to_string253_c);
            redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_1 <= redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_0;
            redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_q <= redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_delay_1;
        end
    end

    // c_i32_176752_recast_x(CONSTANT,928)
    assign c_i32_176752_recast_x_q = $unsigned(32'b00000000000000000000000010110000);

    // i_pivot93_emscripten_dom_vk_to_string147(COMPARE,684)@5
    assign i_pivot93_emscripten_dom_vk_to_string147_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot93_emscripten_dom_vk_to_string147_b = $unsigned({{2{c_i32_176752_recast_x_q[31]}}, c_i32_176752_recast_x_q});
    assign i_pivot93_emscripten_dom_vk_to_string147_o = $unsigned($signed(i_pivot93_emscripten_dom_vk_to_string147_a) - $signed(i_pivot93_emscripten_dom_vk_to_string147_b));
    assign i_pivot93_emscripten_dom_vk_to_string147_c[0] = i_pivot93_emscripten_dom_vk_to_string147_o[33];

    // i_acl_577_emscripten_dom_vk_to_string380(LOGICAL,445)@5
    assign i_acl_577_emscripten_dom_vk_to_string380_q = i_pivot93_emscripten_dom_vk_to_string147_c ^ redist27_i_pivot91_emscripten_dom_vk_to_string253_c_4_q;

    // i_acl_584_emscripten_dom_vk_to_string381(MUX,446)@5 + 1
    assign i_acl_584_emscripten_dom_vk_to_string381_s = i_acl_577_emscripten_dom_vk_to_string380_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_584_emscripten_dom_vk_to_string381_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_584_emscripten_dom_vk_to_string381_s)
                1'b0 : i_acl_584_emscripten_dom_vk_to_string381_q <= i_acl_576_emscripten_dom_vk_to_string379_q;
                1'b1 : i_acl_584_emscripten_dom_vk_to_string381_q <= c_i64_4621537642612260864871_q;
                default : i_acl_584_emscripten_dom_vk_to_string381_q <= 64'b0;
            endcase
        end
    end

    // c_i32_269833_recast_x(CONSTANT,1021)
    assign c_i32_269833_recast_x_q = $unsigned(32'b00000000000000000000000100001101);

    // i_pivot273_emscripten_dom_vk_to_string309(COMPARE,626)@5
    assign i_pivot273_emscripten_dom_vk_to_string309_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot273_emscripten_dom_vk_to_string309_b = $unsigned({{2{c_i32_269833_recast_x_q[31]}}, c_i32_269833_recast_x_q});
    assign i_pivot273_emscripten_dom_vk_to_string309_o = $unsigned($signed(i_pivot273_emscripten_dom_vk_to_string309_a) - $signed(i_pivot273_emscripten_dom_vk_to_string309_b));
    assign i_pivot273_emscripten_dom_vk_to_string309_c[0] = i_pivot273_emscripten_dom_vk_to_string309_o[33];

    // c_i32_268784_recast_x(CONSTANT,1020)
    assign c_i32_268784_recast_x_q = $unsigned(32'b00000000000000000000000100001100);

    // i_pivot275_emscripten_dom_vk_to_string211(COMPARE,627)@5
    assign i_pivot275_emscripten_dom_vk_to_string211_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot275_emscripten_dom_vk_to_string211_b = $unsigned({{2{c_i32_268784_recast_x_q[31]}}, c_i32_268784_recast_x_q});
    assign i_pivot275_emscripten_dom_vk_to_string211_o = $unsigned($signed(i_pivot275_emscripten_dom_vk_to_string211_a) - $signed(i_pivot275_emscripten_dom_vk_to_string211_b));
    assign i_pivot275_emscripten_dom_vk_to_string211_c[0] = i_pivot275_emscripten_dom_vk_to_string211_o[33];

    // i_acl_585_emscripten_dom_vk_to_string382(LOGICAL,447)@5 + 1
    assign i_acl_585_emscripten_dom_vk_to_string382_qi = i_pivot275_emscripten_dom_vk_to_string211_c ^ i_pivot273_emscripten_dom_vk_to_string309_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_585_emscripten_dom_vk_to_string382_delay ( .xin(i_acl_585_emscripten_dom_vk_to_string382_qi), .xout(i_acl_585_emscripten_dom_vk_to_string382_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_592_emscripten_dom_vk_to_string383(MUX,448)@6
    assign i_acl_592_emscripten_dom_vk_to_string383_s = i_acl_585_emscripten_dom_vk_to_string382_q;
    always @(i_acl_592_emscripten_dom_vk_to_string383_s or i_acl_584_emscripten_dom_vk_to_string381_q or c_i64_4621819117588971520872_q)
    begin
        unique case (i_acl_592_emscripten_dom_vk_to_string383_s)
            1'b0 : i_acl_592_emscripten_dom_vk_to_string383_q = i_acl_584_emscripten_dom_vk_to_string381_q;
            1'b1 : i_acl_592_emscripten_dom_vk_to_string383_q = c_i64_4621819117588971520872_q;
            default : i_acl_592_emscripten_dom_vk_to_string383_q = 64'b0;
        endcase
    end

    // c_i32_174751_recast_x(CONSTANT,926)
    assign c_i32_174751_recast_x_q = $unsigned(32'b00000000000000000000000010101110);

    // i_pivot89_emscripten_dom_vk_to_string145(COMPARE,682)@5 + 1
    assign i_pivot89_emscripten_dom_vk_to_string145_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot89_emscripten_dom_vk_to_string145_b = $unsigned({{2{c_i32_174751_recast_x_q[31]}}, c_i32_174751_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot89_emscripten_dom_vk_to_string145_o <= 34'b0;
        end
        else
        begin
            i_pivot89_emscripten_dom_vk_to_string145_o <= $unsigned($signed(i_pivot89_emscripten_dom_vk_to_string145_a) - $signed(i_pivot89_emscripten_dom_vk_to_string145_b));
        end
    end
    assign i_pivot89_emscripten_dom_vk_to_string145_c[0] = i_pivot89_emscripten_dom_vk_to_string145_o[33];

    // c_i32_173681_recast_x(CONSTANT,925)
    assign c_i32_173681_recast_x_q = $unsigned(32'b00000000000000000000000010101101);

    // i_pivot179_emscripten_dom_vk_to_string5(COMPARE,574)@5 + 1
    assign i_pivot179_emscripten_dom_vk_to_string5_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot179_emscripten_dom_vk_to_string5_b = $unsigned({{2{c_i32_173681_recast_x_q[31]}}, c_i32_173681_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot179_emscripten_dom_vk_to_string5_o <= 34'b0;
        end
        else
        begin
            i_pivot179_emscripten_dom_vk_to_string5_o <= $unsigned($signed(i_pivot179_emscripten_dom_vk_to_string5_a) - $signed(i_pivot179_emscripten_dom_vk_to_string5_b));
        end
    end
    assign i_pivot179_emscripten_dom_vk_to_string5_c[0] = i_pivot179_emscripten_dom_vk_to_string5_o[33];

    // i_acl_597_emscripten_dom_vk_to_string384(LOGICAL,449)@6
    assign i_acl_597_emscripten_dom_vk_to_string384_q = i_pivot179_emscripten_dom_vk_to_string5_c ^ i_pivot89_emscripten_dom_vk_to_string145_c;

    // i_acl_599_emscripten_dom_vk_to_string385(MUX,450)@6
    assign i_acl_599_emscripten_dom_vk_to_string385_s = i_acl_597_emscripten_dom_vk_to_string384_q;
    always @(i_acl_599_emscripten_dom_vk_to_string385_s or i_acl_592_emscripten_dom_vk_to_string383_q or c_i64_4622100592565682176873_q)
    begin
        unique case (i_acl_599_emscripten_dom_vk_to_string385_s)
            1'b0 : i_acl_599_emscripten_dom_vk_to_string385_q = i_acl_592_emscripten_dom_vk_to_string383_q;
            1'b1 : i_acl_599_emscripten_dom_vk_to_string385_q = c_i64_4622100592565682176873_q;
            default : i_acl_599_emscripten_dom_vk_to_string385_q = 64'b0;
        endcase
    end

    // c_i32_184688_recast_x(CONSTANT,936)
    assign c_i32_184688_recast_x_q = $unsigned(32'b00000000000000000000000010111000);

    // i_pivot131_emscripten_dom_vk_to_string19(COMPARE,548)@5 + 1
    assign i_pivot131_emscripten_dom_vk_to_string19_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot131_emscripten_dom_vk_to_string19_b = $unsigned({{2{c_i32_184688_recast_x_q[31]}}, c_i32_184688_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot131_emscripten_dom_vk_to_string19_o <= 34'b0;
        end
        else
        begin
            i_pivot131_emscripten_dom_vk_to_string19_o <= $unsigned($signed(i_pivot131_emscripten_dom_vk_to_string19_a) - $signed(i_pivot131_emscripten_dom_vk_to_string19_b));
        end
    end
    assign i_pivot131_emscripten_dom_vk_to_string19_c[0] = i_pivot131_emscripten_dom_vk_to_string19_o[33];

    // c_i32_183807_recast_x(CONSTANT,935)
    assign c_i32_183807_recast_x_q = $unsigned(32'b00000000000000000000000010110111);

    // i_pivot101_emscripten_dom_vk_to_string257(COMPARE,532)@5 + 1
    assign i_pivot101_emscripten_dom_vk_to_string257_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot101_emscripten_dom_vk_to_string257_b = $unsigned({{2{c_i32_183807_recast_x_q[31]}}, c_i32_183807_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot101_emscripten_dom_vk_to_string257_o <= 34'b0;
        end
        else
        begin
            i_pivot101_emscripten_dom_vk_to_string257_o <= $unsigned($signed(i_pivot101_emscripten_dom_vk_to_string257_a) - $signed(i_pivot101_emscripten_dom_vk_to_string257_b));
        end
    end
    assign i_pivot101_emscripten_dom_vk_to_string257_c[0] = i_pivot101_emscripten_dom_vk_to_string257_o[33];

    // i_acl_603_emscripten_dom_vk_to_string386(LOGICAL,451)@6
    assign i_acl_603_emscripten_dom_vk_to_string386_q = i_pivot101_emscripten_dom_vk_to_string257_c ^ i_pivot131_emscripten_dom_vk_to_string19_c;

    // i_acl_607_emscripten_dom_vk_to_string387(MUX,452)@6
    assign i_acl_607_emscripten_dom_vk_to_string387_s = i_acl_603_emscripten_dom_vk_to_string386_q;
    always @(i_acl_607_emscripten_dom_vk_to_string387_s or i_acl_599_emscripten_dom_vk_to_string385_q or c_i64_4622382067542392832874_q)
    begin
        unique case (i_acl_607_emscripten_dom_vk_to_string387_s)
            1'b0 : i_acl_607_emscripten_dom_vk_to_string387_q = i_acl_599_emscripten_dom_vk_to_string385_q;
            1'b1 : i_acl_607_emscripten_dom_vk_to_string387_q = c_i64_4622382067542392832874_q;
            default : i_acl_607_emscripten_dom_vk_to_string387_q = 64'b0;
        endcase
    end

    // c_i32_260781_recast_x(CONSTANT,1012)
    assign c_i32_260781_recast_x_q = $unsigned(32'b00000000000000000000000100000100);

    // i_pivot257_emscripten_dom_vk_to_string205(COMPARE,617)@5
    assign i_pivot257_emscripten_dom_vk_to_string205_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot257_emscripten_dom_vk_to_string205_b = $unsigned({{2{c_i32_260781_recast_x_q[31]}}, c_i32_260781_recast_x_q});
    assign i_pivot257_emscripten_dom_vk_to_string205_o = $unsigned($signed(i_pivot257_emscripten_dom_vk_to_string205_a) - $signed(i_pivot257_emscripten_dom_vk_to_string205_b));
    assign i_pivot257_emscripten_dom_vk_to_string205_c[0] = i_pivot257_emscripten_dom_vk_to_string205_o[33];

    // c_i32_259704_recast_x(CONSTANT,1011)
    assign c_i32_259704_recast_x_q = $unsigned(32'b00000000000000000000000100000011);

    // i_pivot265_emscripten_dom_vk_to_string51(COMPARE,622)@5
    assign i_pivot265_emscripten_dom_vk_to_string51_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot265_emscripten_dom_vk_to_string51_b = $unsigned({{2{c_i32_259704_recast_x_q[31]}}, c_i32_259704_recast_x_q});
    assign i_pivot265_emscripten_dom_vk_to_string51_o = $unsigned($signed(i_pivot265_emscripten_dom_vk_to_string51_a) - $signed(i_pivot265_emscripten_dom_vk_to_string51_b));
    assign i_pivot265_emscripten_dom_vk_to_string51_c[0] = i_pivot265_emscripten_dom_vk_to_string51_o[33];

    // i_acl_609_emscripten_dom_vk_to_string388(LOGICAL,453)@5 + 1
    assign i_acl_609_emscripten_dom_vk_to_string388_qi = i_pivot265_emscripten_dom_vk_to_string51_c ^ i_pivot257_emscripten_dom_vk_to_string205_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_609_emscripten_dom_vk_to_string388_delay ( .xin(i_acl_609_emscripten_dom_vk_to_string388_qi), .xout(i_acl_609_emscripten_dom_vk_to_string388_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_614_emscripten_dom_vk_to_string389(MUX,454)@6
    assign i_acl_614_emscripten_dom_vk_to_string389_s = i_acl_609_emscripten_dom_vk_to_string388_q;
    always @(i_acl_614_emscripten_dom_vk_to_string389_s or i_acl_607_emscripten_dom_vk_to_string387_q or c_i64_4622663542519103488875_q)
    begin
        unique case (i_acl_614_emscripten_dom_vk_to_string389_s)
            1'b0 : i_acl_614_emscripten_dom_vk_to_string389_q = i_acl_607_emscripten_dom_vk_to_string387_q;
            1'b1 : i_acl_614_emscripten_dom_vk_to_string389_q = c_i64_4622663542519103488875_q;
            default : i_acl_614_emscripten_dom_vk_to_string389_q = 64'b0;
        endcase
    end

    // c_i32_182754_recast_x(CONSTANT,934)
    assign c_i32_182754_recast_x_q = $unsigned(32'b00000000000000000000000010110110);

    // i_pivot103_emscripten_dom_vk_to_string151(COMPARE,533)@5 + 1
    assign i_pivot103_emscripten_dom_vk_to_string151_a = $unsigned({{2{redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot103_emscripten_dom_vk_to_string151_b = $unsigned({{2{c_i32_182754_recast_x_q[31]}}, c_i32_182754_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot103_emscripten_dom_vk_to_string151_o <= 34'b0;
        end
        else
        begin
            i_pivot103_emscripten_dom_vk_to_string151_o <= $unsigned($signed(i_pivot103_emscripten_dom_vk_to_string151_a) - $signed(i_pivot103_emscripten_dom_vk_to_string151_b));
        end
    end
    assign i_pivot103_emscripten_dom_vk_to_string151_c[0] = i_pivot103_emscripten_dom_vk_to_string151_o[33];

    // i_acl_615_emscripten_dom_vk_to_string390(LOGICAL,455)@6
    assign i_acl_615_emscripten_dom_vk_to_string390_q = i_pivot103_emscripten_dom_vk_to_string151_c ^ i_pivot101_emscripten_dom_vk_to_string257_c;

    // i_acl_622_emscripten_dom_vk_to_string391(MUX,456)@6
    assign i_acl_622_emscripten_dom_vk_to_string391_s = i_acl_615_emscripten_dom_vk_to_string390_q;
    always @(i_acl_622_emscripten_dom_vk_to_string391_s or i_acl_614_emscripten_dom_vk_to_string389_q or c_i64_4622945017495814144876_q)
    begin
        unique case (i_acl_622_emscripten_dom_vk_to_string391_s)
            1'b0 : i_acl_622_emscripten_dom_vk_to_string391_q = i_acl_614_emscripten_dom_vk_to_string389_q;
            1'b1 : i_acl_622_emscripten_dom_vk_to_string391_q = c_i64_4622945017495814144876_q;
            default : i_acl_622_emscripten_dom_vk_to_string391_q = 64'b0;
        endcase
    end

    // c_i32_223819_recast_x(CONSTANT,975)
    assign c_i32_223819_recast_x_q = $unsigned(32'b00000000000000000000000011011111);

    // redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5(DELAY,1089)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q <= $unsigned(redist3_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_4_q);
        end
    end

    // i_pivot183_emscripten_dom_vk_to_string281(COMPARE,577)@6
    assign i_pivot183_emscripten_dom_vk_to_string281_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot183_emscripten_dom_vk_to_string281_b = $unsigned({{2{c_i32_223819_recast_x_q[31]}}, c_i32_223819_recast_x_q});
    assign i_pivot183_emscripten_dom_vk_to_string281_o = $unsigned($signed(i_pivot183_emscripten_dom_vk_to_string281_a) - $signed(i_pivot183_emscripten_dom_vk_to_string281_b));
    assign i_pivot183_emscripten_dom_vk_to_string281_c[0] = i_pivot183_emscripten_dom_vk_to_string281_o[33];

    // c_i32_222768_recast_x(CONSTANT,974)
    assign c_i32_222768_recast_x_q = $unsigned(32'b00000000000000000000000011011110);

    // i_pivot185_emscripten_dom_vk_to_string179(COMPARE,578)@6
    assign i_pivot185_emscripten_dom_vk_to_string179_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot185_emscripten_dom_vk_to_string179_b = $unsigned({{2{c_i32_222768_recast_x_q[31]}}, c_i32_222768_recast_x_q});
    assign i_pivot185_emscripten_dom_vk_to_string179_o = $unsigned($signed(i_pivot185_emscripten_dom_vk_to_string179_a) - $signed(i_pivot185_emscripten_dom_vk_to_string179_b));
    assign i_pivot185_emscripten_dom_vk_to_string179_c[0] = i_pivot185_emscripten_dom_vk_to_string179_o[33];

    // i_acl_623_emscripten_dom_vk_to_string392(LOGICAL,457)@6
    assign i_acl_623_emscripten_dom_vk_to_string392_q = i_pivot185_emscripten_dom_vk_to_string179_c ^ i_pivot183_emscripten_dom_vk_to_string281_c;

    // i_acl_630_emscripten_dom_vk_to_string393(MUX,458)@6
    assign i_acl_630_emscripten_dom_vk_to_string393_s = i_acl_623_emscripten_dom_vk_to_string392_q;
    always @(i_acl_630_emscripten_dom_vk_to_string393_s or i_acl_622_emscripten_dom_vk_to_string391_q or c_i64_4623226492472524800877_q)
    begin
        unique case (i_acl_630_emscripten_dom_vk_to_string393_s)
            1'b0 : i_acl_630_emscripten_dom_vk_to_string393_q = i_acl_622_emscripten_dom_vk_to_string391_q;
            1'b1 : i_acl_630_emscripten_dom_vk_to_string393_q = c_i64_4623226492472524800877_q;
            default : i_acl_630_emscripten_dom_vk_to_string393_q = 64'b0;
        endcase
    end

    // c_i32_272834_recast_x(CONSTANT,1024)
    assign c_i32_272834_recast_x_q = $unsigned(32'b00000000000000000000000100010000);

    // i_pivot279_emscripten_dom_vk_to_string311(COMPARE,629)@6
    assign i_pivot279_emscripten_dom_vk_to_string311_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot279_emscripten_dom_vk_to_string311_b = $unsigned({{2{c_i32_272834_recast_x_q[31]}}, c_i32_272834_recast_x_q});
    assign i_pivot279_emscripten_dom_vk_to_string311_o = $unsigned($signed(i_pivot279_emscripten_dom_vk_to_string311_a) - $signed(i_pivot279_emscripten_dom_vk_to_string311_b));
    assign i_pivot279_emscripten_dom_vk_to_string311_c[0] = i_pivot279_emscripten_dom_vk_to_string311_o[33];

    // c_i32_271785_recast_x(CONSTANT,1023)
    assign c_i32_271785_recast_x_q = $unsigned(32'b00000000000000000000000100001111);

    // i_pivot281_emscripten_dom_vk_to_string213(COMPARE,631)@6
    assign i_pivot281_emscripten_dom_vk_to_string213_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot281_emscripten_dom_vk_to_string213_b = $unsigned({{2{c_i32_271785_recast_x_q[31]}}, c_i32_271785_recast_x_q});
    assign i_pivot281_emscripten_dom_vk_to_string213_o = $unsigned($signed(i_pivot281_emscripten_dom_vk_to_string213_a) - $signed(i_pivot281_emscripten_dom_vk_to_string213_b));
    assign i_pivot281_emscripten_dom_vk_to_string213_c[0] = i_pivot281_emscripten_dom_vk_to_string213_o[33];

    // i_acl_631_emscripten_dom_vk_to_string394(LOGICAL,459)@6
    assign i_acl_631_emscripten_dom_vk_to_string394_q = i_pivot281_emscripten_dom_vk_to_string213_c ^ i_pivot279_emscripten_dom_vk_to_string311_c;

    // i_acl_638_emscripten_dom_vk_to_string395(MUX,460)@6 + 1
    assign i_acl_638_emscripten_dom_vk_to_string395_s = i_acl_631_emscripten_dom_vk_to_string394_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_638_emscripten_dom_vk_to_string395_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_638_emscripten_dom_vk_to_string395_s)
                1'b0 : i_acl_638_emscripten_dom_vk_to_string395_q <= i_acl_630_emscripten_dom_vk_to_string393_q;
                1'b1 : i_acl_638_emscripten_dom_vk_to_string395_q <= c_i64_4623507967449235456878_q;
                default : i_acl_638_emscripten_dom_vk_to_string395_q <= 64'b0;
            endcase
        end
    end

    // c_i64_4623789442425946112893(CONSTANT,52)
    assign c_i64_4623789442425946112893_q = $unsigned(64'b0100000000101011000000000000000000000000000000000000000000000000);

    // c_i32_6885(CONSTANT,13)
    assign c_i32_6885_q = $unsigned(32'b00000000000000000000000000000110);

    // i_sel_bits_emscripten_dom_vk_to_string396_vt_const_31(CONSTANT,691)
    assign i_sel_bits_emscripten_dom_vk_to_string396_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // c_i32_7879(CONSTANT,14)
    assign c_i32_7879_q = $unsigned(32'b00000000000000000000000000000111);

    // i_sel_bits_emscripten_dom_vk_to_string396(LOGICAL,690)@6
    assign i_sel_bits_emscripten_dom_vk_to_string396_q = redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q & c_i32_7879_q;

    // i_sel_bits_emscripten_dom_vk_to_string396_vt_select_2(BITSELECT,693)@6
    assign i_sel_bits_emscripten_dom_vk_to_string396_vt_select_2_b = i_sel_bits_emscripten_dom_vk_to_string396_q[2:0];

    // i_sel_bits_emscripten_dom_vk_to_string396_vt_join(BITJOIN,692)@6
    assign i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q = {i_sel_bits_emscripten_dom_vk_to_string396_vt_const_31_q, i_sel_bits_emscripten_dom_vk_to_string396_vt_select_2_b};

    // dupName_0_comparator_x(LOGICAL,1050)@6 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_6885_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4624070917402656768892(CONSTANT,53)
    assign c_i64_4624070917402656768892_q = $unsigned(64'b0100000000101100000000000000000000000000000000000000000000000000);

    // c_i32_5884(CONSTANT,12)
    assign c_i32_5884_q = $unsigned(32'b00000000000000000000000000000101);

    // comparator(LOGICAL,199)@6 + 1
    assign comparator_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_5884_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4624352392379367424891(CONSTANT,54)
    assign c_i64_4624352392379367424891_q = $unsigned(64'b0100000000101101000000000000000000000000000000000000000000000000);

    // c_i32_4898(CONSTANT,11)
    assign c_i32_4898_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_6_comparator_x(LOGICAL,1056)@6 + 1
    assign dupName_6_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_4898_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_6_comparator_x_delay ( .xin(dupName_6_comparator_x_qi), .xout(dupName_6_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4624633867356078080890(CONSTANT,55)
    assign c_i64_4624633867356078080890_q = $unsigned(64'b0100000000101110000000000000000000000000000000000000000000000000);

    // c_i32_3897(CONSTANT,10)
    assign c_i32_3897_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_5_comparator_x(LOGICAL,1055)@6 + 1
    assign dupName_5_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_3897_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_5_comparator_x_delay ( .xin(dupName_5_comparator_x_qi), .xout(dupName_5_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4624915342332788736889(CONSTANT,56)
    assign c_i64_4624915342332788736889_q = $unsigned(64'b0100000000101111000000000000000000000000000000000000000000000000);

    // c_i32_2896(CONSTANT,6)
    assign c_i32_2896_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_4_comparator_x(LOGICAL,1054)@6 + 1
    assign dupName_4_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_2896_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_4_comparator_x_delay ( .xin(dupName_4_comparator_x_qi), .xout(dupName_4_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4625196817309499392888(CONSTANT,57)
    assign c_i64_4625196817309499392888_q = $unsigned(64'b0100000000110000000000000000000000000000000000000000000000000000);

    // c_i32_1895(CONSTANT,4)
    assign c_i32_1895_q = $unsigned(32'b00000000000000000000000000000001);

    // dupName_3_comparator_x(LOGICAL,1053)@6 + 1
    assign dupName_3_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_1895_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_3_comparator_x_delay ( .xin(dupName_3_comparator_x_qi), .xout(dupName_3_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4625478292286210048887(CONSTANT,58)
    assign c_i64_4625478292286210048887_q = $unsigned(64'b0100000000110001000000000000000000000000000000000000000000000000);

    // c_i32_0894(CONSTANT,3)
    assign c_i32_0894_q = $unsigned(32'b00000000000000000000000000000000);

    // dupName_2_comparator_x(LOGICAL,1052)@6 + 1
    assign dupName_2_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_0894_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398(SELECTOR,531)@7
    always @(dupName_2_comparator_x_q or c_i64_4625478292286210048887_q or dupName_3_comparator_x_q or c_i64_4625196817309499392888_q or dupName_4_comparator_x_q or c_i64_4624915342332788736889_q or dupName_5_comparator_x_q or c_i64_4624633867356078080890_q or dupName_6_comparator_x_q or c_i64_4624352392379367424891_q or comparator_q or c_i64_4624070917402656768892_q or dupName_0_comparator_x_q or c_i64_4623789442425946112893_q or i_acl_638_emscripten_dom_vk_to_string395_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = i_acl_638_emscripten_dom_vk_to_string395_q;
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4623789442425946112893_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4624070917402656768892_q;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4624352392379367424891_q;
        end
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4624633867356078080890_q;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4624915342332788736889_q;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4625196817309499392888_q;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q = c_i64_4625478292286210048887_q;
        end
    end

    // i_sel_shr_emscripten_dom_vk_to_string399_vt_const_31(CONSTANT,694)
    assign i_sel_shr_emscripten_dom_vk_to_string399_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage1Idx1Pad2_uid1081_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(CONSTANT,1080)
    assign rightShiftStage1Idx1Pad2_uid1081_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid1080_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(BITSELECT,1079)@7
    assign rightShiftStage1Idx1Rng2_uid1080_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_b = rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1082_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(BITJOIN,1081)@7
    assign rightShiftStage1Idx1_uid1082_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = {rightShiftStage1Idx1Pad2_uid1081_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q, rightShiftStage1Idx1Rng2_uid1080_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1075_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(BITSELECT,1074)@7
    assign rightShiftStage0Idx1Rng1_uid1075_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_b = redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31:1];

    // rightShiftStage0Idx1_uid1077_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(BITJOIN,1076)@7
    assign rightShiftStage0Idx1_uid1077_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1075_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_b};

    // redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6(DELAY,1090)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q <= '0;
        end
        else
        begin
            redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q <= $unsigned(redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q);
        end
    end

    // rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(MUX,1078)@7
    assign rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s or redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q or rightShiftStage0Idx1_uid1077_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s)
            1'b0 : rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q;
            1'b1 : rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = rightShiftStage0Idx1_uid1077_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
            default : rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x(MUX,1083)@7
    assign rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s or rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q or rightShiftStage1Idx1_uid1082_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_s)
            1'b0 : rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = rightShiftStage0_uid1079_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
            1'b1 : rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = rightShiftStage1Idx1_uid1082_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q;
            default : rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr_emscripten_dom_vk_to_string399_vt_select_28(BITSELECT,696)@7
    assign i_sel_shr_emscripten_dom_vk_to_string399_vt_select_28_b = rightShiftStage1_uid1084_i_sel_shr_emscripten_dom_vk_to_string0_shift_x_q[28:0];

    // i_sel_shr_emscripten_dom_vk_to_string399_vt_join(BITJOIN,695)@7
    assign i_sel_shr_emscripten_dom_vk_to_string399_vt_join_q = {i_sel_shr_emscripten_dom_vk_to_string399_vt_const_31_q, i_sel_shr_emscripten_dom_vk_to_string399_vt_select_28_b};

    // dupName_10_comparator_x(LOGICAL,1060)@7
    assign dupName_10_comparator_x_q = $unsigned(i_sel_shr_emscripten_dom_vk_to_string399_vt_join_q == c_i32_6885_q ? 1'b1 : 1'b0);

    // c_i64_4625759767262920704883(CONSTANT,59)
    assign c_i64_4625759767262920704883_q = $unsigned(64'b0100000000110010000000000000000000000000000000000000000000000000);

    // dupName_1_comparator_x(LOGICAL,1051)@6 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_sel_bits_emscripten_dom_vk_to_string396_vt_join_q == c_i32_7879_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4626041242239631360882(CONSTANT,60)
    assign c_i64_4626041242239631360882_q = $unsigned(64'b0100000000110011000000000000000000000000000000000000000000000000);

    // c_i64_4626322717216342016881(CONSTANT,61)
    assign c_i64_4626322717216342016881_q = $unsigned(64'b0100000000110100000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397(SELECTOR,529)@7
    always @(comparator_q or c_i64_4626322717216342016881_q or dupName_0_comparator_x_q or c_i64_4626041242239631360882_q or dupName_1_comparator_x_q or c_i64_4625759767262920704883_q or i_acl_638_emscripten_dom_vk_to_string395_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q = i_acl_638_emscripten_dom_vk_to_string395_q;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q = c_i64_4625759767262920704883_q;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q = c_i64_4626041242239631360882_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q = c_i64_4626322717216342016881_q;
        end
    end

    // dupName_9_comparator_x(LOGICAL,1059)@7
    assign dupName_9_comparator_x_q = $unsigned(i_sel_shr_emscripten_dom_vk_to_string399_vt_join_q == c_i32_5884_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401(SELECTOR,528)@7
    always @(dupName_9_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q or dupName_10_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q or i_acl_638_emscripten_dom_vk_to_string395_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401_q = i_acl_638_emscripten_dom_vk_to_string395_q;
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401_q = i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_1s_case_stmt1775_emscripten_dom_vk_to_string398_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_0s_case_stmt_emscripten_dom_vk_to_string397_q;
        end
    end

    // c_i32_280788_recast_x(CONSTANT,1032)
    assign c_i32_280788_recast_x_q = $unsigned(32'b00000000000000000000000100011000);

    // i_pivot297_emscripten_dom_vk_to_string219(COMPARE,639)@6 + 1
    assign i_pivot297_emscripten_dom_vk_to_string219_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot297_emscripten_dom_vk_to_string219_b = $unsigned({{2{c_i32_280788_recast_x_q[31]}}, c_i32_280788_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot297_emscripten_dom_vk_to_string219_o <= 34'b0;
        end
        else
        begin
            i_pivot297_emscripten_dom_vk_to_string219_o <= $unsigned($signed(i_pivot297_emscripten_dom_vk_to_string219_a) - $signed(i_pivot297_emscripten_dom_vk_to_string219_b));
        end
    end
    assign i_pivot297_emscripten_dom_vk_to_string219_c[0] = i_pivot297_emscripten_dom_vk_to_string219_o[33];

    // c_i32_279733_recast_x(CONSTANT,1031)
    assign c_i32_279733_recast_x_q = $unsigned(32'b00000000000000000000000100010111);

    // i_pivot299_emscripten_dom_vk_to_string109(COMPARE,640)@6 + 1
    assign i_pivot299_emscripten_dom_vk_to_string109_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot299_emscripten_dom_vk_to_string109_b = $unsigned({{2{c_i32_279733_recast_x_q[31]}}, c_i32_279733_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot299_emscripten_dom_vk_to_string109_o <= 34'b0;
        end
        else
        begin
            i_pivot299_emscripten_dom_vk_to_string109_o <= $unsigned($signed(i_pivot299_emscripten_dom_vk_to_string109_a) - $signed(i_pivot299_emscripten_dom_vk_to_string109_b));
        end
    end
    assign i_pivot299_emscripten_dom_vk_to_string109_c[0] = i_pivot299_emscripten_dom_vk_to_string109_o[33];

    // i_acl_717_emscripten_dom_vk_to_string402(LOGICAL,461)@7
    assign i_acl_717_emscripten_dom_vk_to_string402_q = i_pivot299_emscripten_dom_vk_to_string109_c ^ i_pivot297_emscripten_dom_vk_to_string219_c;

    // i_acl_723_emscripten_dom_vk_to_string403(MUX,462)@7
    assign i_acl_723_emscripten_dom_vk_to_string403_s = i_acl_717_emscripten_dom_vk_to_string402_q;
    always @(i_acl_723_emscripten_dom_vk_to_string403_s or i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401_q or c_i64_4626604192193052672900_q)
    begin
        unique case (i_acl_723_emscripten_dom_vk_to_string403_s)
            1'b0 : i_acl_723_emscripten_dom_vk_to_string403_q = i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_2s_case_stmt1779_emscripten_dom_vk_to_string401_q;
            1'b1 : i_acl_723_emscripten_dom_vk_to_string403_q = c_i64_4626604192193052672900_q;
            default : i_acl_723_emscripten_dom_vk_to_string403_q = 64'b0;
        endcase
    end

    // c_i32_172804_recast_x(CONSTANT,924)
    assign c_i32_172804_recast_x_q = $unsigned(32'b00000000000000000000000010101100);

    // i_pivot77_emscripten_dom_vk_to_string251(COMPARE,675)@6
    assign i_pivot77_emscripten_dom_vk_to_string251_a = $unsigned({{2{redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot77_emscripten_dom_vk_to_string251_b = $unsigned({{2{c_i32_172804_recast_x_q[31]}}, c_i32_172804_recast_x_q});
    assign i_pivot77_emscripten_dom_vk_to_string251_o = $unsigned($signed(i_pivot77_emscripten_dom_vk_to_string251_a) - $signed(i_pivot77_emscripten_dom_vk_to_string251_b));
    assign i_pivot77_emscripten_dom_vk_to_string251_c[0] = i_pivot77_emscripten_dom_vk_to_string251_o[33];

    // i_acl_729_emscripten_dom_vk_to_string404(LOGICAL,463)@6 + 1
    assign i_acl_729_emscripten_dom_vk_to_string404_qi = i_pivot77_emscripten_dom_vk_to_string251_c ^ i_pivot179_emscripten_dom_vk_to_string5_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_729_emscripten_dom_vk_to_string404_delay ( .xin(i_acl_729_emscripten_dom_vk_to_string404_qi), .xout(i_acl_729_emscripten_dom_vk_to_string404_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_731_emscripten_dom_vk_to_string405(MUX,464)@7
    assign i_acl_731_emscripten_dom_vk_to_string405_s = i_acl_729_emscripten_dom_vk_to_string404_q;
    always @(i_acl_731_emscripten_dom_vk_to_string405_s or i_acl_723_emscripten_dom_vk_to_string403_q or c_i64_4626885667169763328901_q)
    begin
        unique case (i_acl_731_emscripten_dom_vk_to_string405_s)
            1'b0 : i_acl_731_emscripten_dom_vk_to_string405_q = i_acl_723_emscripten_dom_vk_to_string403_q;
            1'b1 : i_acl_731_emscripten_dom_vk_to_string405_q = c_i64_4626885667169763328901_q;
            default : i_acl_731_emscripten_dom_vk_to_string405_q = 64'b0;
        endcase
    end

    // redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3(DELAY,1157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_delay_0 <= '0;
            redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_q <= '0;
        end
        else
        begin
            redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_delay_0 <= $unsigned(i_pivot171_emscripten_dom_vk_to_string87_c);
            redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_q <= redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_delay_0;
        end
    end

    // c_i32_215817_recast_x(CONSTANT,967)
    assign c_i32_215817_recast_x_q = $unsigned(32'b00000000000000000000000011010111);

    // i_pivot163_emscripten_dom_vk_to_string277(COMPARE,566)@7
    assign i_pivot163_emscripten_dom_vk_to_string277_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot163_emscripten_dom_vk_to_string277_b = $unsigned({{2{c_i32_215817_recast_x_q[31]}}, c_i32_215817_recast_x_q});
    assign i_pivot163_emscripten_dom_vk_to_string277_o = $unsigned($signed(i_pivot163_emscripten_dom_vk_to_string277_a) - $signed(i_pivot163_emscripten_dom_vk_to_string277_b));
    assign i_pivot163_emscripten_dom_vk_to_string277_c[0] = i_pivot163_emscripten_dom_vk_to_string277_o[33];

    // i_acl_733_emscripten_dom_vk_to_string406(LOGICAL,465)@7
    assign i_acl_733_emscripten_dom_vk_to_string406_q = i_pivot163_emscripten_dom_vk_to_string277_c ^ redist72_i_pivot171_emscripten_dom_vk_to_string87_c_3_q;

    // i_acl_739_emscripten_dom_vk_to_string407(MUX,466)@7
    assign i_acl_739_emscripten_dom_vk_to_string407_s = i_acl_733_emscripten_dom_vk_to_string406_q;
    always @(i_acl_739_emscripten_dom_vk_to_string407_s or i_acl_731_emscripten_dom_vk_to_string405_q or c_i64_4627167142146473984902_q)
    begin
        unique case (i_acl_739_emscripten_dom_vk_to_string407_s)
            1'b0 : i_acl_739_emscripten_dom_vk_to_string407_q = i_acl_731_emscripten_dom_vk_to_string405_q;
            1'b1 : i_acl_739_emscripten_dom_vk_to_string407_q = c_i64_4627167142146473984902_q;
            default : i_acl_739_emscripten_dom_vk_to_string407_q = 64'b0;
        endcase
    end

    // redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3(DELAY,1139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_delay_0 <= '0;
            redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_q <= '0;
        end
        else
        begin
            redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_delay_0 <= $unsigned(i_pivot259_emscripten_dom_vk_to_string307_c);
            redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_q <= redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_delay_0;
        end
    end

    // c_i32_263782_recast_x(CONSTANT,1015)
    assign c_i32_263782_recast_x_q = $unsigned(32'b00000000000000000000000100000111);

    // i_pivot261_emscripten_dom_vk_to_string207(COMPARE,620)@4
    assign i_pivot261_emscripten_dom_vk_to_string207_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot261_emscripten_dom_vk_to_string207_b = $unsigned({{2{c_i32_263782_recast_x_q[31]}}, c_i32_263782_recast_x_q});
    assign i_pivot261_emscripten_dom_vk_to_string207_o = $unsigned($signed(i_pivot261_emscripten_dom_vk_to_string207_a) - $signed(i_pivot261_emscripten_dom_vk_to_string207_b));
    assign i_pivot261_emscripten_dom_vk_to_string207_c[0] = i_pivot261_emscripten_dom_vk_to_string207_o[33];

    // i_acl_740_emscripten_dom_vk_to_string408(LOGICAL,467)@4 + 1
    assign i_acl_740_emscripten_dom_vk_to_string408_qi = i_pivot261_emscripten_dom_vk_to_string207_c ^ redist54_i_pivot259_emscripten_dom_vk_to_string307_c_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_740_emscripten_dom_vk_to_string408_delay ( .xin(i_acl_740_emscripten_dom_vk_to_string408_qi), .xout(i_acl_740_emscripten_dom_vk_to_string408_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3(DELAY,1181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_delay_0 <= '0;
            redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_q <= '0;
        end
        else
        begin
            redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_delay_0 <= $unsigned(i_acl_740_emscripten_dom_vk_to_string408_q);
            redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_q <= redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_delay_0;
        end
    end

    // i_acl_747_emscripten_dom_vk_to_string409(MUX,468)@7 + 1
    assign i_acl_747_emscripten_dom_vk_to_string409_s = redist96_i_acl_740_emscripten_dom_vk_to_string408_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_747_emscripten_dom_vk_to_string409_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_747_emscripten_dom_vk_to_string409_s)
                1'b0 : i_acl_747_emscripten_dom_vk_to_string409_q <= i_acl_739_emscripten_dom_vk_to_string407_q;
                1'b1 : i_acl_747_emscripten_dom_vk_to_string409_q <= c_i64_4627448617123184640903_q;
                default : i_acl_747_emscripten_dom_vk_to_string409_q <= 64'b0;
            endcase
        end
    end

    // c_i32_231771_recast_x(CONSTANT,983)
    assign c_i32_231771_recast_x_q = $unsigned(32'b00000000000000000000000011100111);

    // i_pivot203_emscripten_dom_vk_to_string185(COMPARE,588)@7
    assign i_pivot203_emscripten_dom_vk_to_string185_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot203_emscripten_dom_vk_to_string185_b = $unsigned({{2{c_i32_231771_recast_x_q[31]}}, c_i32_231771_recast_x_q});
    assign i_pivot203_emscripten_dom_vk_to_string185_o = $unsigned($signed(i_pivot203_emscripten_dom_vk_to_string185_a) - $signed(i_pivot203_emscripten_dom_vk_to_string185_b));
    assign i_pivot203_emscripten_dom_vk_to_string185_c[0] = i_pivot203_emscripten_dom_vk_to_string185_o[33];

    // c_i32_230690_recast_x(CONSTANT,982)
    assign c_i32_230690_recast_x_q = $unsigned(32'b00000000000000000000000011100110);

    // i_pivot223_emscripten_dom_vk_to_string23(COMPARE,599)@7
    assign i_pivot223_emscripten_dom_vk_to_string23_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot223_emscripten_dom_vk_to_string23_b = $unsigned({{2{c_i32_230690_recast_x_q[31]}}, c_i32_230690_recast_x_q});
    assign i_pivot223_emscripten_dom_vk_to_string23_o = $unsigned($signed(i_pivot223_emscripten_dom_vk_to_string23_a) - $signed(i_pivot223_emscripten_dom_vk_to_string23_b));
    assign i_pivot223_emscripten_dom_vk_to_string23_c[0] = i_pivot223_emscripten_dom_vk_to_string23_o[33];

    // i_acl_750_emscripten_dom_vk_to_string410(LOGICAL,469)@7 + 1
    assign i_acl_750_emscripten_dom_vk_to_string410_qi = i_pivot223_emscripten_dom_vk_to_string23_c ^ i_pivot203_emscripten_dom_vk_to_string185_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_750_emscripten_dom_vk_to_string410_delay ( .xin(i_acl_750_emscripten_dom_vk_to_string410_qi), .xout(i_acl_750_emscripten_dom_vk_to_string410_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_754_emscripten_dom_vk_to_string411(MUX,470)@8
    assign i_acl_754_emscripten_dom_vk_to_string411_s = i_acl_750_emscripten_dom_vk_to_string410_q;
    always @(i_acl_754_emscripten_dom_vk_to_string411_s or i_acl_747_emscripten_dom_vk_to_string409_q or c_i64_4627730092099895296904_q)
    begin
        unique case (i_acl_754_emscripten_dom_vk_to_string411_s)
            1'b0 : i_acl_754_emscripten_dom_vk_to_string411_q = i_acl_747_emscripten_dom_vk_to_string409_q;
            1'b1 : i_acl_754_emscripten_dom_vk_to_string411_q = c_i64_4627730092099895296904_q;
            default : i_acl_754_emscripten_dom_vk_to_string411_q = 64'b0;
        endcase
    end

    // c_i32_181716_recast_x(CONSTANT,933)
    assign c_i32_181716_recast_x_q = $unsigned(32'b00000000000000000000000010110101);

    // i_pivot105_emscripten_dom_vk_to_string75(COMPARE,534)@7 + 1
    assign i_pivot105_emscripten_dom_vk_to_string75_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot105_emscripten_dom_vk_to_string75_b = $unsigned({{2{c_i32_181716_recast_x_q[31]}}, c_i32_181716_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot105_emscripten_dom_vk_to_string75_o <= 34'b0;
        end
        else
        begin
            i_pivot105_emscripten_dom_vk_to_string75_o <= $unsigned($signed(i_pivot105_emscripten_dom_vk_to_string75_a) - $signed(i_pivot105_emscripten_dom_vk_to_string75_b));
        end
    end
    assign i_pivot105_emscripten_dom_vk_to_string75_c[0] = i_pivot105_emscripten_dom_vk_to_string75_o[33];

    // c_i32_180806_recast_x(CONSTANT,932)
    assign c_i32_180806_recast_x_q = $unsigned(32'b00000000000000000000000010110100);

    // i_pivot97_emscripten_dom_vk_to_string255(COMPARE,686)@7 + 1
    assign i_pivot97_emscripten_dom_vk_to_string255_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot97_emscripten_dom_vk_to_string255_b = $unsigned({{2{c_i32_180806_recast_x_q[31]}}, c_i32_180806_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot97_emscripten_dom_vk_to_string255_o <= 34'b0;
        end
        else
        begin
            i_pivot97_emscripten_dom_vk_to_string255_o <= $unsigned($signed(i_pivot97_emscripten_dom_vk_to_string255_a) - $signed(i_pivot97_emscripten_dom_vk_to_string255_b));
        end
    end
    assign i_pivot97_emscripten_dom_vk_to_string255_c[0] = i_pivot97_emscripten_dom_vk_to_string255_o[33];

    // i_acl_756_emscripten_dom_vk_to_string412(LOGICAL,471)@8
    assign i_acl_756_emscripten_dom_vk_to_string412_q = i_pivot97_emscripten_dom_vk_to_string255_c ^ i_pivot105_emscripten_dom_vk_to_string75_c;

    // i_acl_762_emscripten_dom_vk_to_string413(MUX,472)@8
    assign i_acl_762_emscripten_dom_vk_to_string413_s = i_acl_756_emscripten_dom_vk_to_string412_q;
    always @(i_acl_762_emscripten_dom_vk_to_string413_s or i_acl_754_emscripten_dom_vk_to_string411_q or c_i64_4628011567076605952905_q)
    begin
        unique case (i_acl_762_emscripten_dom_vk_to_string413_s)
            1'b0 : i_acl_762_emscripten_dom_vk_to_string413_q = i_acl_754_emscripten_dom_vk_to_string411_q;
            1'b1 : i_acl_762_emscripten_dom_vk_to_string413_q = c_i64_4628011567076605952905_q;
            default : i_acl_762_emscripten_dom_vk_to_string413_q = 64'b0;
        endcase
    end

    // c_i64_4628574517030027264910(CONSTANT,69)
    assign c_i64_4628574517030027264910_q = $unsigned(64'b0100000000111100000000000000000000000000000000000000000000000000);

    // c_i32_300914(CONSTANT,9)
    assign c_i32_300914_q = $unsigned(32'b00000000000000000000000100101100);

    // redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7(DELAY,1091)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q <= '0;
        end
        else
        begin
            redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q <= $unsigned(redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q);
        end
    end

    // dupName_14_comparator_x(LOGICAL,1064)@8
    assign dupName_14_comparator_x_q = $unsigned(redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q == c_i32_300914_q ? 1'b1 : 1'b0);

    // c_i64_4628293042053316608909(CONSTANT,68)
    assign c_i64_4628293042053316608909_q = $unsigned(64'b0100000000111011000000000000000000000000000000000000000000000000);

    // c_i32_293913(CONSTANT,8)
    assign c_i32_293913_q = $unsigned(32'b00000000000000000000000100100101);

    // dupName_13_comparator_x(LOGICAL,1063)@8
    assign dupName_13_comparator_x_q = $unsigned(redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q == c_i32_293913_q ? 1'b1 : 1'b0);

    // c_i64_4628855992006737920908(CONSTANT,70)
    assign c_i64_4628855992006737920908_q = $unsigned(64'b0100000000111101000000000000000000000000000000000000000000000000);

    // c_i32_291912(CONSTANT,7)
    assign c_i32_291912_q = $unsigned(32'b00000000000000000000000100100011);

    // dupName_12_comparator_x(LOGICAL,1062)@8
    assign dupName_12_comparator_x_q = $unsigned(redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q == c_i32_291912_q ? 1'b1 : 1'b0);

    // c_i64_4629137466983448576907(CONSTANT,71)
    assign c_i64_4629137466983448576907_q = $unsigned(64'b0100000000111110000000000000000000000000000000000000000000000000);

    // c_i32_287911(CONSTANT,5)
    assign c_i32_287911_q = $unsigned(32'b00000000000000000000000100011111);

    // dupName_11_comparator_x(LOGICAL,1061)@8
    assign dupName_11_comparator_x_q = $unsigned(redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q == c_i32_287911_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414(SELECTOR,530)@8
    always @(dupName_11_comparator_x_q or c_i64_4629137466983448576907_q or dupName_12_comparator_x_q or c_i64_4628855992006737920908_q or dupName_13_comparator_x_q or c_i64_4628293042053316608909_q or dupName_14_comparator_x_q or c_i64_4628574517030027264910_q or i_acl_762_emscripten_dom_vk_to_string413_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q = i_acl_762_emscripten_dom_vk_to_string413_q;
        if (dupName_14_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q = c_i64_4628574517030027264910_q;
        end
        if (dupName_13_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q = c_i64_4628293042053316608909_q;
        end
        if (dupName_12_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q = c_i64_4628855992006737920908_q;
        end
        if (dupName_11_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q = c_i64_4629137466983448576907_q;
        end
    end

    // c_i32_274786_recast_x(CONSTANT,1026)
    assign c_i32_274786_recast_x_q = $unsigned(32'b00000000000000000000000100010010);

    // i_pivot285_emscripten_dom_vk_to_string215(COMPARE,633)@7
    assign i_pivot285_emscripten_dom_vk_to_string215_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot285_emscripten_dom_vk_to_string215_b = $unsigned({{2{c_i32_274786_recast_x_q[31]}}, c_i32_274786_recast_x_q});
    assign i_pivot285_emscripten_dom_vk_to_string215_o = $unsigned($signed(i_pivot285_emscripten_dom_vk_to_string215_a) - $signed(i_pivot285_emscripten_dom_vk_to_string215_b));
    assign i_pivot285_emscripten_dom_vk_to_string215_c[0] = i_pivot285_emscripten_dom_vk_to_string215_o[33];

    // c_i32_273732_recast_x(CONSTANT,1025)
    assign c_i32_273732_recast_x_q = $unsigned(32'b00000000000000000000000100010001);

    // i_pivot287_emscripten_dom_vk_to_string107(COMPARE,634)@7
    assign i_pivot287_emscripten_dom_vk_to_string107_a = $unsigned({{2{redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot287_emscripten_dom_vk_to_string107_b = $unsigned({{2{c_i32_273732_recast_x_q[31]}}, c_i32_273732_recast_x_q});
    assign i_pivot287_emscripten_dom_vk_to_string107_o = $unsigned($signed(i_pivot287_emscripten_dom_vk_to_string107_a) - $signed(i_pivot287_emscripten_dom_vk_to_string107_b));
    assign i_pivot287_emscripten_dom_vk_to_string107_c[0] = i_pivot287_emscripten_dom_vk_to_string107_o[33];

    // i_acl_794_emscripten_dom_vk_to_string415(LOGICAL,473)@7 + 1
    assign i_acl_794_emscripten_dom_vk_to_string415_qi = i_pivot287_emscripten_dom_vk_to_string107_c ^ i_pivot285_emscripten_dom_vk_to_string215_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_794_emscripten_dom_vk_to_string415_delay ( .xin(i_acl_794_emscripten_dom_vk_to_string415_qi), .xout(i_acl_794_emscripten_dom_vk_to_string415_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_800_emscripten_dom_vk_to_string416(MUX,474)@8
    assign i_acl_800_emscripten_dom_vk_to_string416_s = i_acl_794_emscripten_dom_vk_to_string415_q;
    always @(i_acl_800_emscripten_dom_vk_to_string416_s or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q or c_i64_4629418941960159232915_q)
    begin
        unique case (i_acl_800_emscripten_dom_vk_to_string416_s)
            1'b0 : i_acl_800_emscripten_dom_vk_to_string416_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_emscripten_dom_vk_to_string_fpgaunique_3s_case_stmt1785_emscripten_dom_vk_to_string414_q;
            1'b1 : i_acl_800_emscripten_dom_vk_to_string416_q = c_i64_4629418941960159232915_q;
            default : i_acl_800_emscripten_dom_vk_to_string416_q = 64'b0;
        endcase
    end

    // redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3(DELAY,1136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_delay_0 <= '0;
            redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_q <= '0;
        end
        else
        begin
            redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_delay_0 <= $unsigned(i_pivot277_emscripten_dom_vk_to_string105_c);
            redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_q <= redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_delay_0;
        end
    end

    // i_acl_801_emscripten_dom_vk_to_string417(LOGICAL,475)@5 + 1
    assign i_acl_801_emscripten_dom_vk_to_string417_qi = redist51_i_pivot277_emscripten_dom_vk_to_string105_c_3_q ^ i_pivot275_emscripten_dom_vk_to_string211_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_801_emscripten_dom_vk_to_string417_delay ( .xin(i_acl_801_emscripten_dom_vk_to_string417_qi), .xout(i_acl_801_emscripten_dom_vk_to_string417_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3(DELAY,1180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_delay_0 <= '0;
            redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_q <= '0;
        end
        else
        begin
            redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_delay_0 <= $unsigned(i_acl_801_emscripten_dom_vk_to_string417_q);
            redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_q <= redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_delay_0;
        end
    end

    // i_acl_807_emscripten_dom_vk_to_string418(MUX,476)@8
    assign i_acl_807_emscripten_dom_vk_to_string418_s = redist95_i_acl_801_emscripten_dom_vk_to_string417_q_3_q;
    always @(i_acl_807_emscripten_dom_vk_to_string418_s or i_acl_800_emscripten_dom_vk_to_string416_q or c_i64_4629700416936869888916_q)
    begin
        unique case (i_acl_807_emscripten_dom_vk_to_string418_s)
            1'b0 : i_acl_807_emscripten_dom_vk_to_string418_q = i_acl_800_emscripten_dom_vk_to_string416_q;
            1'b1 : i_acl_807_emscripten_dom_vk_to_string418_q = c_i64_4629700416936869888916_q;
            default : i_acl_807_emscripten_dom_vk_to_string418_q = 64'b0;
        endcase
    end

    // c_i32_258830_recast_x(CONSTANT,1010)
    assign c_i32_258830_recast_x_q = $unsigned(32'b00000000000000000000000100000010);

    // i_pivot249_emscripten_dom_vk_to_string303(COMPARE,613)@8
    assign i_pivot249_emscripten_dom_vk_to_string303_a = $unsigned({{2{redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot249_emscripten_dom_vk_to_string303_b = $unsigned({{2{c_i32_258830_recast_x_q[31]}}, c_i32_258830_recast_x_q});
    assign i_pivot249_emscripten_dom_vk_to_string303_o = $unsigned($signed(i_pivot249_emscripten_dom_vk_to_string303_a) - $signed(i_pivot249_emscripten_dom_vk_to_string303_b));
    assign i_pivot249_emscripten_dom_vk_to_string303_c[0] = i_pivot249_emscripten_dom_vk_to_string303_o[33];

    // c_i32_257780_recast_x(CONSTANT,1009)
    assign c_i32_257780_recast_x_q = $unsigned(32'b00000000000000000000000100000001);

    // i_pivot251_emscripten_dom_vk_to_string203(COMPARE,614)@8
    assign i_pivot251_emscripten_dom_vk_to_string203_a = $unsigned({{2{redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot251_emscripten_dom_vk_to_string203_b = $unsigned({{2{c_i32_257780_recast_x_q[31]}}, c_i32_257780_recast_x_q});
    assign i_pivot251_emscripten_dom_vk_to_string203_o = $unsigned($signed(i_pivot251_emscripten_dom_vk_to_string203_a) - $signed(i_pivot251_emscripten_dom_vk_to_string203_b));
    assign i_pivot251_emscripten_dom_vk_to_string203_c[0] = i_pivot251_emscripten_dom_vk_to_string203_o[33];

    // i_acl_808_emscripten_dom_vk_to_string419(LOGICAL,477)@8
    assign i_acl_808_emscripten_dom_vk_to_string419_q = i_pivot251_emscripten_dom_vk_to_string203_c ^ i_pivot249_emscripten_dom_vk_to_string303_c;

    // i_acl_815_emscripten_dom_vk_to_string420(MUX,478)@8 + 1
    assign i_acl_815_emscripten_dom_vk_to_string420_s = i_acl_808_emscripten_dom_vk_to_string419_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_815_emscripten_dom_vk_to_string420_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_815_emscripten_dom_vk_to_string420_s)
                1'b0 : i_acl_815_emscripten_dom_vk_to_string420_q <= i_acl_807_emscripten_dom_vk_to_string418_q;
                1'b1 : i_acl_815_emscripten_dom_vk_to_string420_q <= c_i64_4629981891913580544917_q;
                default : i_acl_815_emscripten_dom_vk_to_string420_q <= 64'b0;
            endcase
        end
    end

    // redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4(DELAY,1148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_0 <= '0;
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_1 <= '0;
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_2 <= '0;
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_q <= '0;
        end
        else
        begin
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_0 <= $unsigned(i_pivot201_emscripten_dom_vk_to_string287_c);
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_1 <= redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_0;
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_2 <= redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_1;
            redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_q <= redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_delay_2;
        end
    end

    // i_acl_816_emscripten_dom_vk_to_string421(LOGICAL,479)@7 + 1
    assign i_acl_816_emscripten_dom_vk_to_string421_qi = i_pivot203_emscripten_dom_vk_to_string185_c ^ redist63_i_pivot201_emscripten_dom_vk_to_string287_c_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_816_emscripten_dom_vk_to_string421_delay ( .xin(i_acl_816_emscripten_dom_vk_to_string421_qi), .xout(i_acl_816_emscripten_dom_vk_to_string421_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist94_i_acl_816_emscripten_dom_vk_to_string421_q_2(DELAY,1179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_acl_816_emscripten_dom_vk_to_string421_q_2_q <= '0;
        end
        else
        begin
            redist94_i_acl_816_emscripten_dom_vk_to_string421_q_2_q <= $unsigned(i_acl_816_emscripten_dom_vk_to_string421_q);
        end
    end

    // i_acl_823_emscripten_dom_vk_to_string422(MUX,480)@9
    assign i_acl_823_emscripten_dom_vk_to_string422_s = redist94_i_acl_816_emscripten_dom_vk_to_string421_q_2_q;
    always @(i_acl_823_emscripten_dom_vk_to_string422_s or i_acl_815_emscripten_dom_vk_to_string420_q or c_i64_4630263366890291200918_q)
    begin
        unique case (i_acl_823_emscripten_dom_vk_to_string422_s)
            1'b0 : i_acl_823_emscripten_dom_vk_to_string422_q = i_acl_815_emscripten_dom_vk_to_string420_q;
            1'b1 : i_acl_823_emscripten_dom_vk_to_string422_q = c_i64_4630263366890291200918_q;
            default : i_acl_823_emscripten_dom_vk_to_string422_q = 64'b0;
        endcase
    end

    // redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5(DELAY,1150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_0 <= '0;
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_1 <= '0;
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_2 <= '0;
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_q <= '0;
        end
        else
        begin
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_0 <= $unsigned(i_pivot193_emscripten_dom_vk_to_string285_c);
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_1 <= redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_0;
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_2 <= redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_1;
            redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_q <= redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_delay_2;
        end
    end

    // i_acl_827_emscripten_dom_vk_to_string423(LOGICAL,481)@7 + 1
    assign i_acl_827_emscripten_dom_vk_to_string423_qi = redist65_i_pivot193_emscripten_dom_vk_to_string285_c_5_q ^ i_pivot223_emscripten_dom_vk_to_string23_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_827_emscripten_dom_vk_to_string423_delay ( .xin(i_acl_827_emscripten_dom_vk_to_string423_qi), .xout(i_acl_827_emscripten_dom_vk_to_string423_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist93_i_acl_827_emscripten_dom_vk_to_string423_q_2(DELAY,1178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_acl_827_emscripten_dom_vk_to_string423_q_2_q <= '0;
        end
        else
        begin
            redist93_i_acl_827_emscripten_dom_vk_to_string423_q_2_q <= $unsigned(i_acl_827_emscripten_dom_vk_to_string423_q);
        end
    end

    // i_acl_831_emscripten_dom_vk_to_string424(MUX,482)@9
    assign i_acl_831_emscripten_dom_vk_to_string424_s = redist93_i_acl_827_emscripten_dom_vk_to_string423_q_2_q;
    always @(i_acl_831_emscripten_dom_vk_to_string424_s or i_acl_823_emscripten_dom_vk_to_string422_q or c_i64_4630544841867001856919_q)
    begin
        unique case (i_acl_831_emscripten_dom_vk_to_string424_s)
            1'b0 : i_acl_831_emscripten_dom_vk_to_string424_q = i_acl_823_emscripten_dom_vk_to_string422_q;
            1'b1 : i_acl_831_emscripten_dom_vk_to_string424_q = c_i64_4630544841867001856919_q;
            default : i_acl_831_emscripten_dom_vk_to_string424_q = 64'b0;
        endcase
    end

    // c_i32_224701_recast_x(CONSTANT,976)
    assign c_i32_224701_recast_x_q = $unsigned(32'b00000000000000000000000011100000);

    // i_pivot199_emscripten_dom_vk_to_string45(COMPARE,585)@8
    assign i_pivot199_emscripten_dom_vk_to_string45_a = $unsigned({{2{redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot199_emscripten_dom_vk_to_string45_b = $unsigned({{2{c_i32_224701_recast_x_q[31]}}, c_i32_224701_recast_x_q});
    assign i_pivot199_emscripten_dom_vk_to_string45_o = $unsigned($signed(i_pivot199_emscripten_dom_vk_to_string45_a) - $signed(i_pivot199_emscripten_dom_vk_to_string45_b));
    assign i_pivot199_emscripten_dom_vk_to_string45_c[0] = i_pivot199_emscripten_dom_vk_to_string45_o[33];

    // redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2(DELAY,1154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_delay_0 <= '0;
            redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_q <= '0;
        end
        else
        begin
            redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_delay_0 <= $unsigned(i_pivot183_emscripten_dom_vk_to_string281_c);
            redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_q <= redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_delay_0;
        end
    end

    // i_acl_834_emscripten_dom_vk_to_string425(LOGICAL,483)@8 + 1
    assign i_acl_834_emscripten_dom_vk_to_string425_qi = redist69_i_pivot183_emscripten_dom_vk_to_string281_c_2_q ^ i_pivot199_emscripten_dom_vk_to_string45_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_834_emscripten_dom_vk_to_string425_delay ( .xin(i_acl_834_emscripten_dom_vk_to_string425_qi), .xout(i_acl_834_emscripten_dom_vk_to_string425_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_839_emscripten_dom_vk_to_string426(MUX,484)@9
    assign i_acl_839_emscripten_dom_vk_to_string426_s = i_acl_834_emscripten_dom_vk_to_string425_q;
    always @(i_acl_839_emscripten_dom_vk_to_string426_s or i_acl_831_emscripten_dom_vk_to_string424_q or c_i64_4630826316843712512920_q)
    begin
        unique case (i_acl_839_emscripten_dom_vk_to_string426_s)
            1'b0 : i_acl_839_emscripten_dom_vk_to_string426_q = i_acl_831_emscripten_dom_vk_to_string424_q;
            1'b1 : i_acl_839_emscripten_dom_vk_to_string426_q = c_i64_4630826316843712512920_q;
            default : i_acl_839_emscripten_dom_vk_to_string426_q = 64'b0;
        endcase
    end

    // redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3(DELAY,1153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_0 <= '0;
            redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_1 <= '0;
            redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_q <= '0;
        end
        else
        begin
            redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_0 <= $unsigned(i_pivot187_emscripten_dom_vk_to_string89_c);
            redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_1 <= redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_0;
            redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_q <= redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_delay_1;
        end
    end

    // i_acl_840_emscripten_dom_vk_to_string427(LOGICAL,485)@6 + 1
    assign i_acl_840_emscripten_dom_vk_to_string427_qi = redist68_i_pivot187_emscripten_dom_vk_to_string89_c_3_q ^ i_pivot185_emscripten_dom_vk_to_string179_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_840_emscripten_dom_vk_to_string427_delay ( .xin(i_acl_840_emscripten_dom_vk_to_string427_qi), .xout(i_acl_840_emscripten_dom_vk_to_string427_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3(DELAY,1177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_delay_0 <= '0;
            redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_q <= '0;
        end
        else
        begin
            redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_delay_0 <= $unsigned(i_acl_840_emscripten_dom_vk_to_string427_q);
            redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_q <= redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_delay_0;
        end
    end

    // i_acl_846_emscripten_dom_vk_to_string428(MUX,486)@9
    assign i_acl_846_emscripten_dom_vk_to_string428_s = redist92_i_acl_840_emscripten_dom_vk_to_string427_q_3_q;
    always @(i_acl_846_emscripten_dom_vk_to_string428_s or i_acl_839_emscripten_dom_vk_to_string426_q or c_i64_4631107791820423168921_q)
    begin
        unique case (i_acl_846_emscripten_dom_vk_to_string428_s)
            1'b0 : i_acl_846_emscripten_dom_vk_to_string428_q = i_acl_839_emscripten_dom_vk_to_string426_q;
            1'b1 : i_acl_846_emscripten_dom_vk_to_string428_q = c_i64_4631107791820423168921_q;
            default : i_acl_846_emscripten_dom_vk_to_string428_q = 64'b0;
        endcase
    end

    // redist70_i_pivot181_emscripten_dom_vk_to_string177_c_6(DELAY,1155)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist70_i_pivot181_emscripten_dom_vk_to_string177_c_6 ( .xin(i_pivot181_emscripten_dom_vk_to_string177_c), .xout(redist70_i_pivot181_emscripten_dom_vk_to_string177_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_i_pivot365_emscripten_dom_vk_to_string3_c_6(DELAY,1125)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_i_pivot365_emscripten_dom_vk_to_string3_c_6 ( .xin(i_pivot365_emscripten_dom_vk_to_string3_c), .xout(redist40_i_pivot365_emscripten_dom_vk_to_string3_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_852_emscripten_dom_vk_to_string429(LOGICAL,487)@9
    assign i_acl_852_emscripten_dom_vk_to_string429_q = redist40_i_pivot365_emscripten_dom_vk_to_string3_c_6_q ^ redist70_i_pivot181_emscripten_dom_vk_to_string177_c_6_q;

    // i_acl_853_emscripten_dom_vk_to_string430(MUX,488)@9
    assign i_acl_853_emscripten_dom_vk_to_string430_s = i_acl_852_emscripten_dom_vk_to_string429_q;
    always @(i_acl_853_emscripten_dom_vk_to_string430_s or i_acl_846_emscripten_dom_vk_to_string428_q or c_i64_4631389266797133824922_q)
    begin
        unique case (i_acl_853_emscripten_dom_vk_to_string430_s)
            1'b0 : i_acl_853_emscripten_dom_vk_to_string430_q = i_acl_846_emscripten_dom_vk_to_string428_q;
            1'b1 : i_acl_853_emscripten_dom_vk_to_string430_q = c_i64_4631389266797133824922_q;
            default : i_acl_853_emscripten_dom_vk_to_string430_q = 64'b0;
        endcase
    end

    // redist74_i_pivot167_emscripten_dom_vk_to_string279_c_1(DELAY,1159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_pivot167_emscripten_dom_vk_to_string279_c_1_q <= '0;
        end
        else
        begin
            redist74_i_pivot167_emscripten_dom_vk_to_string279_c_1_q <= $unsigned(i_pivot167_emscripten_dom_vk_to_string279_c);
        end
    end

    // i_acl_854_emscripten_dom_vk_to_string431(LOGICAL,489)@4 + 1
    assign i_acl_854_emscripten_dom_vk_to_string431_qi = i_pivot169_emscripten_dom_vk_to_string175_c ^ redist74_i_pivot167_emscripten_dom_vk_to_string279_c_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_854_emscripten_dom_vk_to_string431_delay ( .xin(i_acl_854_emscripten_dom_vk_to_string431_qi), .xout(i_acl_854_emscripten_dom_vk_to_string431_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5(DELAY,1176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_0 <= '0;
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_1 <= '0;
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_2 <= '0;
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_q <= '0;
        end
        else
        begin
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_0 <= $unsigned(i_acl_854_emscripten_dom_vk_to_string431_q);
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_1 <= redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_0;
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_2 <= redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_1;
            redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_q <= redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_delay_2;
        end
    end

    // i_acl_861_emscripten_dom_vk_to_string432(MUX,490)@9
    assign i_acl_861_emscripten_dom_vk_to_string432_s = redist91_i_acl_854_emscripten_dom_vk_to_string431_q_5_q;
    always @(i_acl_861_emscripten_dom_vk_to_string432_s or i_acl_853_emscripten_dom_vk_to_string430_q or c_i64_4631670741773844480923_q)
    begin
        unique case (i_acl_861_emscripten_dom_vk_to_string432_s)
            1'b0 : i_acl_861_emscripten_dom_vk_to_string432_q = i_acl_853_emscripten_dom_vk_to_string430_q;
            1'b1 : i_acl_861_emscripten_dom_vk_to_string432_q = c_i64_4631670741773844480923_q;
            default : i_acl_861_emscripten_dom_vk_to_string432_q = 64'b0;
        endcase
    end

    // redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2(DELAY,1160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_delay_0 <= '0;
            redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_q <= '0;
        end
        else
        begin
            redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_delay_0 <= $unsigned(i_pivot163_emscripten_dom_vk_to_string277_c);
            redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_q <= redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_delay_0;
        end
    end

    // c_i32_214765_recast_x(CONSTANT,966)
    assign c_i32_214765_recast_x_q = $unsigned(32'b00000000000000000000000011010110);

    // redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8(DELAY,1092)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q <= '0;
        end
        else
        begin
            redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q <= $unsigned(redist6_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_7_q);
        end
    end

    // i_pivot165_emscripten_dom_vk_to_string173(COMPARE,567)@9
    assign i_pivot165_emscripten_dom_vk_to_string173_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot165_emscripten_dom_vk_to_string173_b = $unsigned({{2{c_i32_214765_recast_x_q[31]}}, c_i32_214765_recast_x_q});
    assign i_pivot165_emscripten_dom_vk_to_string173_o = $unsigned($signed(i_pivot165_emscripten_dom_vk_to_string173_a) - $signed(i_pivot165_emscripten_dom_vk_to_string173_b));
    assign i_pivot165_emscripten_dom_vk_to_string173_c[0] = i_pivot165_emscripten_dom_vk_to_string173_o[33];

    // i_acl_862_emscripten_dom_vk_to_string433(LOGICAL,491)@9
    assign i_acl_862_emscripten_dom_vk_to_string433_q = i_pivot165_emscripten_dom_vk_to_string173_c ^ redist75_i_pivot163_emscripten_dom_vk_to_string277_c_2_q;

    // i_acl_869_emscripten_dom_vk_to_string434(MUX,492)@9 + 1
    assign i_acl_869_emscripten_dom_vk_to_string434_s = i_acl_862_emscripten_dom_vk_to_string433_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_869_emscripten_dom_vk_to_string434_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_869_emscripten_dom_vk_to_string434_s)
                1'b0 : i_acl_869_emscripten_dom_vk_to_string434_q <= i_acl_861_emscripten_dom_vk_to_string432_q;
                1'b1 : i_acl_869_emscripten_dom_vk_to_string434_q <= c_i64_4631952216750555136924_q;
                default : i_acl_869_emscripten_dom_vk_to_string434_q <= 64'b0;
            endcase
        end
    end

    // c_i32_211764_recast_x(CONSTANT,963)
    assign c_i32_211764_recast_x_q = $unsigned(32'b00000000000000000000000011010011);

    // i_pivot159_emscripten_dom_vk_to_string171(COMPARE,563)@9
    assign i_pivot159_emscripten_dom_vk_to_string171_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot159_emscripten_dom_vk_to_string171_b = $unsigned({{2{c_i32_211764_recast_x_q[31]}}, c_i32_211764_recast_x_q});
    assign i_pivot159_emscripten_dom_vk_to_string171_o = $unsigned($signed(i_pivot159_emscripten_dom_vk_to_string171_a) - $signed(i_pivot159_emscripten_dom_vk_to_string171_b));
    assign i_pivot159_emscripten_dom_vk_to_string171_c[0] = i_pivot159_emscripten_dom_vk_to_string171_o[33];

    // redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6(DELAY,1161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_0 <= '0;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_1 <= '0;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_2 <= '0;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_3 <= '0;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_q <= '0;
        end
        else
        begin
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_0 <= $unsigned(i_pivot161_emscripten_dom_vk_to_string85_c);
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_1 <= redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_0;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_2 <= redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_1;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_3 <= redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_2;
            redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_q <= redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_delay_3;
        end
    end

    // i_acl_870_emscripten_dom_vk_to_string435(LOGICAL,493)@9 + 1
    assign i_acl_870_emscripten_dom_vk_to_string435_qi = redist76_i_pivot161_emscripten_dom_vk_to_string85_c_6_q ^ i_pivot159_emscripten_dom_vk_to_string171_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_870_emscripten_dom_vk_to_string435_delay ( .xin(i_acl_870_emscripten_dom_vk_to_string435_qi), .xout(i_acl_870_emscripten_dom_vk_to_string435_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_876_emscripten_dom_vk_to_string436(MUX,494)@10
    assign i_acl_876_emscripten_dom_vk_to_string436_s = i_acl_870_emscripten_dom_vk_to_string435_q;
    always @(i_acl_876_emscripten_dom_vk_to_string436_s or i_acl_869_emscripten_dom_vk_to_string434_q or c_i64_4632233691727265792925_q)
    begin
        unique case (i_acl_876_emscripten_dom_vk_to_string436_s)
            1'b0 : i_acl_876_emscripten_dom_vk_to_string436_q = i_acl_869_emscripten_dom_vk_to_string434_q;
            1'b1 : i_acl_876_emscripten_dom_vk_to_string436_q = c_i64_4632233691727265792925_q;
            default : i_acl_876_emscripten_dom_vk_to_string436_q = 64'b0;
        endcase
    end

    // c_i32_198719_recast_x(CONSTANT,950)
    assign c_i32_198719_recast_x_q = $unsigned(32'b00000000000000000000000011000110);

    // i_pivot139_emscripten_dom_vk_to_string81(COMPARE,552)@9 + 1
    assign i_pivot139_emscripten_dom_vk_to_string81_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot139_emscripten_dom_vk_to_string81_b = $unsigned({{2{c_i32_198719_recast_x_q[31]}}, c_i32_198719_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot139_emscripten_dom_vk_to_string81_o <= 34'b0;
        end
        else
        begin
            i_pivot139_emscripten_dom_vk_to_string81_o <= $unsigned($signed(i_pivot139_emscripten_dom_vk_to_string81_a) - $signed(i_pivot139_emscripten_dom_vk_to_string81_b));
        end
    end
    assign i_pivot139_emscripten_dom_vk_to_string81_c[0] = i_pivot139_emscripten_dom_vk_to_string81_o[33];

    // c_i32_197759_recast_x(CONSTANT,949)
    assign c_i32_197759_recast_x_q = $unsigned(32'b00000000000000000000000011000101);

    // i_pivot133_emscripten_dom_vk_to_string161(COMPARE,549)@9 + 1
    assign i_pivot133_emscripten_dom_vk_to_string161_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot133_emscripten_dom_vk_to_string161_b = $unsigned({{2{c_i32_197759_recast_x_q[31]}}, c_i32_197759_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot133_emscripten_dom_vk_to_string161_o <= 34'b0;
        end
        else
        begin
            i_pivot133_emscripten_dom_vk_to_string161_o <= $unsigned($signed(i_pivot133_emscripten_dom_vk_to_string161_a) - $signed(i_pivot133_emscripten_dom_vk_to_string161_b));
        end
    end
    assign i_pivot133_emscripten_dom_vk_to_string161_c[0] = i_pivot133_emscripten_dom_vk_to_string161_o[33];

    // i_acl_877_emscripten_dom_vk_to_string437(LOGICAL,495)@10
    assign i_acl_877_emscripten_dom_vk_to_string437_q = i_pivot133_emscripten_dom_vk_to_string161_c ^ i_pivot139_emscripten_dom_vk_to_string81_c;

    // i_acl_883_emscripten_dom_vk_to_string438(MUX,496)@10
    assign i_acl_883_emscripten_dom_vk_to_string438_s = i_acl_877_emscripten_dom_vk_to_string437_q;
    always @(i_acl_883_emscripten_dom_vk_to_string438_s or i_acl_876_emscripten_dom_vk_to_string436_q or c_i64_4632515166703976448926_q)
    begin
        unique case (i_acl_883_emscripten_dom_vk_to_string438_s)
            1'b0 : i_acl_883_emscripten_dom_vk_to_string438_q = i_acl_876_emscripten_dom_vk_to_string436_q;
            1'b1 : i_acl_883_emscripten_dom_vk_to_string438_q = c_i64_4632515166703976448926_q;
            default : i_acl_883_emscripten_dom_vk_to_string438_q = 64'b0;
        endcase
    end

    // c_i32_194758_recast_x(CONSTANT,946)
    assign c_i32_194758_recast_x_q = $unsigned(32'b00000000000000000000000011000010);

    // i_pivot125_emscripten_dom_vk_to_string159(COMPARE,545)@9 + 1
    assign i_pivot125_emscripten_dom_vk_to_string159_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot125_emscripten_dom_vk_to_string159_b = $unsigned({{2{c_i32_194758_recast_x_q[31]}}, c_i32_194758_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot125_emscripten_dom_vk_to_string159_o <= 34'b0;
        end
        else
        begin
            i_pivot125_emscripten_dom_vk_to_string159_o <= $unsigned($signed(i_pivot125_emscripten_dom_vk_to_string159_a) - $signed(i_pivot125_emscripten_dom_vk_to_string159_b));
        end
    end
    assign i_pivot125_emscripten_dom_vk_to_string159_c[0] = i_pivot125_emscripten_dom_vk_to_string159_o[33];

    // c_i32_193718_recast_x(CONSTANT,945)
    assign c_i32_193718_recast_x_q = $unsigned(32'b00000000000000000000000011000001);

    // i_pivot127_emscripten_dom_vk_to_string79(COMPARE,546)@9 + 1
    assign i_pivot127_emscripten_dom_vk_to_string79_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot127_emscripten_dom_vk_to_string79_b = $unsigned({{2{c_i32_193718_recast_x_q[31]}}, c_i32_193718_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot127_emscripten_dom_vk_to_string79_o <= 34'b0;
        end
        else
        begin
            i_pivot127_emscripten_dom_vk_to_string79_o <= $unsigned($signed(i_pivot127_emscripten_dom_vk_to_string79_a) - $signed(i_pivot127_emscripten_dom_vk_to_string79_b));
        end
    end
    assign i_pivot127_emscripten_dom_vk_to_string79_c[0] = i_pivot127_emscripten_dom_vk_to_string79_o[33];

    // i_acl_884_emscripten_dom_vk_to_string439(LOGICAL,497)@10
    assign i_acl_884_emscripten_dom_vk_to_string439_q = i_pivot127_emscripten_dom_vk_to_string79_c ^ i_pivot125_emscripten_dom_vk_to_string159_c;

    // i_acl_890_emscripten_dom_vk_to_string440(MUX,498)@10
    assign i_acl_890_emscripten_dom_vk_to_string440_s = i_acl_884_emscripten_dom_vk_to_string439_q;
    always @(i_acl_890_emscripten_dom_vk_to_string440_s or i_acl_883_emscripten_dom_vk_to_string438_q or c_i64_4632796641680687104927_q)
    begin
        unique case (i_acl_890_emscripten_dom_vk_to_string440_s)
            1'b0 : i_acl_890_emscripten_dom_vk_to_string440_q = i_acl_883_emscripten_dom_vk_to_string438_q;
            1'b1 : i_acl_890_emscripten_dom_vk_to_string440_q = c_i64_4632796641680687104927_q;
            default : i_acl_890_emscripten_dom_vk_to_string440_q = 64'b0;
        endcase
    end

    // redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3(DELAY,1173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_delay_0 <= '0;
            redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_q <= '0;
        end
        else
        begin
            redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_delay_0 <= $unsigned(i_pivot103_emscripten_dom_vk_to_string151_c);
            redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_q <= redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_delay_0;
        end
    end

    // i_acl_891_emscripten_dom_vk_to_string441(LOGICAL,499)@8 + 1
    assign i_acl_891_emscripten_dom_vk_to_string441_qi = i_pivot105_emscripten_dom_vk_to_string75_c ^ redist88_i_pivot103_emscripten_dom_vk_to_string151_c_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_891_emscripten_dom_vk_to_string441_delay ( .xin(i_acl_891_emscripten_dom_vk_to_string441_qi), .xout(i_acl_891_emscripten_dom_vk_to_string441_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist90_i_acl_891_emscripten_dom_vk_to_string441_q_2(DELAY,1175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_acl_891_emscripten_dom_vk_to_string441_q_2_q <= '0;
        end
        else
        begin
            redist90_i_acl_891_emscripten_dom_vk_to_string441_q_2_q <= $unsigned(i_acl_891_emscripten_dom_vk_to_string441_q);
        end
    end

    // i_acl_897_emscripten_dom_vk_to_string442(MUX,500)@10
    assign i_acl_897_emscripten_dom_vk_to_string442_s = redist90_i_acl_891_emscripten_dom_vk_to_string441_q_2_q;
    always @(i_acl_897_emscripten_dom_vk_to_string442_s or i_acl_890_emscripten_dom_vk_to_string440_q or c_i64_4633078116657397760928_q)
    begin
        unique case (i_acl_897_emscripten_dom_vk_to_string442_s)
            1'b0 : i_acl_897_emscripten_dom_vk_to_string442_q = i_acl_890_emscripten_dom_vk_to_string440_q;
            1'b1 : i_acl_897_emscripten_dom_vk_to_string442_q = c_i64_4633078116657397760928_q;
            default : i_acl_897_emscripten_dom_vk_to_string442_q = 64'b0;
        endcase
    end

    // c_i32_179753_recast_x(CONSTANT,931)
    assign c_i32_179753_recast_x_q = $unsigned(32'b00000000000000000000000010110011);

    // i_pivot99_emscripten_dom_vk_to_string149(COMPARE,687)@9
    assign i_pivot99_emscripten_dom_vk_to_string149_a = $unsigned({{2{redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot99_emscripten_dom_vk_to_string149_b = $unsigned({{2{c_i32_179753_recast_x_q[31]}}, c_i32_179753_recast_x_q});
    assign i_pivot99_emscripten_dom_vk_to_string149_o = $unsigned($signed(i_pivot99_emscripten_dom_vk_to_string149_a) - $signed(i_pivot99_emscripten_dom_vk_to_string149_b));
    assign i_pivot99_emscripten_dom_vk_to_string149_c[0] = i_pivot99_emscripten_dom_vk_to_string149_o[33];

    // redist87_i_pivot107_emscripten_dom_vk_to_string37_c_8(DELAY,1172)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist87_i_pivot107_emscripten_dom_vk_to_string37_c_8 ( .xin(i_pivot107_emscripten_dom_vk_to_string37_c), .xout(redist87_i_pivot107_emscripten_dom_vk_to_string37_c_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_899_emscripten_dom_vk_to_string443(LOGICAL,501)@9 + 1
    assign i_acl_899_emscripten_dom_vk_to_string443_qi = redist87_i_pivot107_emscripten_dom_vk_to_string37_c_8_q ^ i_pivot99_emscripten_dom_vk_to_string149_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_899_emscripten_dom_vk_to_string443_delay ( .xin(i_acl_899_emscripten_dom_vk_to_string443_qi), .xout(i_acl_899_emscripten_dom_vk_to_string443_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_904_emscripten_dom_vk_to_string444(MUX,502)@10
    assign i_acl_904_emscripten_dom_vk_to_string444_s = i_acl_899_emscripten_dom_vk_to_string443_q;
    always @(i_acl_904_emscripten_dom_vk_to_string444_s or i_acl_897_emscripten_dom_vk_to_string442_q or c_i64_4633359591634108416929_q)
    begin
        unique case (i_acl_904_emscripten_dom_vk_to_string444_s)
            1'b0 : i_acl_904_emscripten_dom_vk_to_string444_q = i_acl_897_emscripten_dom_vk_to_string442_q;
            1'b1 : i_acl_904_emscripten_dom_vk_to_string444_q = c_i64_4633359591634108416929_q;
            default : i_acl_904_emscripten_dom_vk_to_string444_q = 64'b0;
        endcase
    end

    // redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5(DELAY,1111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_0 <= '0;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_1 <= '0;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_2 <= '0;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_3 <= '0;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_q <= '0;
        end
        else
        begin
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_0 <= $unsigned(i_pivot93_emscripten_dom_vk_to_string147_c);
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_1 <= redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_0;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_2 <= redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_1;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_3 <= redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_2;
            redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_q <= redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_delay_3;
        end
    end

    // c_i32_175715_recast_x(CONSTANT,927)
    assign c_i32_175715_recast_x_q = $unsigned(32'b00000000000000000000000010101111);

    // redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9(DELAY,1093)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q <= '0;
        end
        else
        begin
            redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q <= $unsigned(redist7_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_8_q);
        end
    end

    // i_pivot95_emscripten_dom_vk_to_string73(COMPARE,685)@10
    assign i_pivot95_emscripten_dom_vk_to_string73_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot95_emscripten_dom_vk_to_string73_b = $unsigned({{2{c_i32_175715_recast_x_q[31]}}, c_i32_175715_recast_x_q});
    assign i_pivot95_emscripten_dom_vk_to_string73_o = $unsigned($signed(i_pivot95_emscripten_dom_vk_to_string73_a) - $signed(i_pivot95_emscripten_dom_vk_to_string73_b));
    assign i_pivot95_emscripten_dom_vk_to_string73_c[0] = i_pivot95_emscripten_dom_vk_to_string73_o[33];

    // i_acl_905_emscripten_dom_vk_to_string445(LOGICAL,503)@10
    assign i_acl_905_emscripten_dom_vk_to_string445_q = i_pivot95_emscripten_dom_vk_to_string73_c ^ redist26_i_pivot93_emscripten_dom_vk_to_string147_c_5_q;

    // i_acl_911_emscripten_dom_vk_to_string446(MUX,504)@10
    assign i_acl_911_emscripten_dom_vk_to_string446_s = i_acl_905_emscripten_dom_vk_to_string445_q;
    always @(i_acl_911_emscripten_dom_vk_to_string446_s or i_acl_904_emscripten_dom_vk_to_string444_q or c_i64_4633641066610819072930_q)
    begin
        unique case (i_acl_911_emscripten_dom_vk_to_string446_s)
            1'b0 : i_acl_911_emscripten_dom_vk_to_string446_q = i_acl_904_emscripten_dom_vk_to_string444_q;
            1'b1 : i_acl_911_emscripten_dom_vk_to_string446_q = c_i64_4633641066610819072930_q;
            default : i_acl_911_emscripten_dom_vk_to_string446_q = 64'b0;
        endcase
    end

    // c_i32_166802_recast_x(CONSTANT,918)
    assign c_i32_166802_recast_x_q = $unsigned(32'b00000000000000000000000010100110);

    // i_pivot67_emscripten_dom_vk_to_string247(COMPARE,670)@4
    assign i_pivot67_emscripten_dom_vk_to_string247_a = $unsigned({{2{redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot67_emscripten_dom_vk_to_string247_b = $unsigned({{2{c_i32_166802_recast_x_q[31]}}, c_i32_166802_recast_x_q});
    assign i_pivot67_emscripten_dom_vk_to_string247_o = $unsigned($signed(i_pivot67_emscripten_dom_vk_to_string247_a) - $signed(i_pivot67_emscripten_dom_vk_to_string247_b));
    assign i_pivot67_emscripten_dom_vk_to_string247_c[0] = i_pivot67_emscripten_dom_vk_to_string247_o[33];

    // redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3(DELAY,1119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_delay_0 <= '0;
            redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_q <= '0;
        end
        else
        begin
            redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_delay_0 <= $unsigned(i_pivot69_emscripten_dom_vk_to_string139_c);
            redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_q <= redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_delay_0;
        end
    end

    // i_acl_912_emscripten_dom_vk_to_string447(LOGICAL,505)@4 + 1
    assign i_acl_912_emscripten_dom_vk_to_string447_qi = redist34_i_pivot69_emscripten_dom_vk_to_string139_c_3_q ^ i_pivot67_emscripten_dom_vk_to_string247_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_912_emscripten_dom_vk_to_string447_delay ( .xin(i_acl_912_emscripten_dom_vk_to_string447_qi), .xout(i_acl_912_emscripten_dom_vk_to_string447_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6(DELAY,1174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_0 <= '0;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_1 <= '0;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_2 <= '0;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_3 <= '0;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_q <= '0;
        end
        else
        begin
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_0 <= $unsigned(i_acl_912_emscripten_dom_vk_to_string447_q);
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_1 <= redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_0;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_2 <= redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_1;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_3 <= redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_2;
            redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_q <= redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_delay_3;
        end
    end

    // i_acl_919_emscripten_dom_vk_to_string448(MUX,506)@10 + 1
    assign i_acl_919_emscripten_dom_vk_to_string448_s = redist89_i_acl_912_emscripten_dom_vk_to_string447_q_6_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_919_emscripten_dom_vk_to_string448_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_919_emscripten_dom_vk_to_string448_s)
                1'b0 : i_acl_919_emscripten_dom_vk_to_string448_q <= i_acl_911_emscripten_dom_vk_to_string446_q;
                1'b1 : i_acl_919_emscripten_dom_vk_to_string448_q <= c_i64_4633922541587529728931_q;
                default : i_acl_919_emscripten_dom_vk_to_string448_q <= 64'b0;
            endcase
        end
    end

    // c_i32_163801_recast_x(CONSTANT,915)
    assign c_i32_163801_recast_x_q = $unsigned(32'b00000000000000000000000010100011);

    // i_pivot63_emscripten_dom_vk_to_string245(COMPARE,668)@10
    assign i_pivot63_emscripten_dom_vk_to_string245_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot63_emscripten_dom_vk_to_string245_b = $unsigned({{2{c_i32_163801_recast_x_q[31]}}, c_i32_163801_recast_x_q});
    assign i_pivot63_emscripten_dom_vk_to_string245_o = $unsigned($signed(i_pivot63_emscripten_dom_vk_to_string245_a) - $signed(i_pivot63_emscripten_dom_vk_to_string245_b));
    assign i_pivot63_emscripten_dom_vk_to_string245_c[0] = i_pivot63_emscripten_dom_vk_to_string245_o[33];

    // c_i32_162747_recast_x(CONSTANT,914)
    assign c_i32_162747_recast_x_q = $unsigned(32'b00000000000000000000000010100010);

    // i_pivot65_emscripten_dom_vk_to_string137(COMPARE,669)@10
    assign i_pivot65_emscripten_dom_vk_to_string137_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot65_emscripten_dom_vk_to_string137_b = $unsigned({{2{c_i32_162747_recast_x_q[31]}}, c_i32_162747_recast_x_q});
    assign i_pivot65_emscripten_dom_vk_to_string137_o = $unsigned($signed(i_pivot65_emscripten_dom_vk_to_string137_a) - $signed(i_pivot65_emscripten_dom_vk_to_string137_b));
    assign i_pivot65_emscripten_dom_vk_to_string137_c[0] = i_pivot65_emscripten_dom_vk_to_string137_o[33];

    // i_acl_920_emscripten_dom_vk_to_string449(LOGICAL,507)@10 + 1
    assign i_acl_920_emscripten_dom_vk_to_string449_qi = i_pivot65_emscripten_dom_vk_to_string137_c ^ i_pivot63_emscripten_dom_vk_to_string245_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_920_emscripten_dom_vk_to_string449_delay ( .xin(i_acl_920_emscripten_dom_vk_to_string449_qi), .xout(i_acl_920_emscripten_dom_vk_to_string449_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_927_emscripten_dom_vk_to_string450(MUX,508)@11
    assign i_acl_927_emscripten_dom_vk_to_string450_s = i_acl_920_emscripten_dom_vk_to_string449_q;
    always @(i_acl_927_emscripten_dom_vk_to_string450_s or i_acl_919_emscripten_dom_vk_to_string448_q or c_i64_4634204016564240384932_q)
    begin
        unique case (i_acl_927_emscripten_dom_vk_to_string450_s)
            1'b0 : i_acl_927_emscripten_dom_vk_to_string450_q = i_acl_919_emscripten_dom_vk_to_string448_q;
            1'b1 : i_acl_927_emscripten_dom_vk_to_string450_q = c_i64_4634204016564240384932_q;
            default : i_acl_927_emscripten_dom_vk_to_string450_q = 64'b0;
        endcase
    end

    // redist36_i_pivot55_emscripten_dom_vk_to_string243_c_6(DELAY,1121)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_i_pivot55_emscripten_dom_vk_to_string243_c_6 ( .xin(i_pivot55_emscripten_dom_vk_to_string243_c), .xout(redist36_i_pivot55_emscripten_dom_vk_to_string243_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_159746_recast_x(CONSTANT,911)
    assign c_i32_159746_recast_x_q = $unsigned(32'b00000000000000000000000010011111);

    // i_pivot57_emscripten_dom_vk_to_string135(COMPARE,664)@10 + 1
    assign i_pivot57_emscripten_dom_vk_to_string135_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot57_emscripten_dom_vk_to_string135_b = $unsigned({{2{c_i32_159746_recast_x_q[31]}}, c_i32_159746_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot57_emscripten_dom_vk_to_string135_o <= 34'b0;
        end
        else
        begin
            i_pivot57_emscripten_dom_vk_to_string135_o <= $unsigned($signed(i_pivot57_emscripten_dom_vk_to_string135_a) - $signed(i_pivot57_emscripten_dom_vk_to_string135_b));
        end
    end
    assign i_pivot57_emscripten_dom_vk_to_string135_c[0] = i_pivot57_emscripten_dom_vk_to_string135_o[33];

    // i_acl_928_emscripten_dom_vk_to_string451(LOGICAL,509)@11
    assign i_acl_928_emscripten_dom_vk_to_string451_q = i_pivot57_emscripten_dom_vk_to_string135_c ^ redist36_i_pivot55_emscripten_dom_vk_to_string243_c_6_q;

    // i_acl_935_emscripten_dom_vk_to_string452(MUX,510)@11
    assign i_acl_935_emscripten_dom_vk_to_string452_s = i_acl_928_emscripten_dom_vk_to_string451_q;
    always @(i_acl_935_emscripten_dom_vk_to_string452_s or i_acl_927_emscripten_dom_vk_to_string450_q or c_i64_4634485491540951040933_q)
    begin
        unique case (i_acl_935_emscripten_dom_vk_to_string452_s)
            1'b0 : i_acl_935_emscripten_dom_vk_to_string452_q = i_acl_927_emscripten_dom_vk_to_string450_q;
            1'b1 : i_acl_935_emscripten_dom_vk_to_string452_q = c_i64_4634485491540951040933_q;
            default : i_acl_935_emscripten_dom_vk_to_string452_q = 64'b0;
        endcase
    end

    // c_i32_156745_recast_x(CONSTANT,908)
    assign c_i32_156745_recast_x_q = $unsigned(32'b00000000000000000000000010011100);

    // i_pivot53_emscripten_dom_vk_to_string133(COMPARE,662)@10 + 1
    assign i_pivot53_emscripten_dom_vk_to_string133_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot53_emscripten_dom_vk_to_string133_b = $unsigned({{2{c_i32_156745_recast_x_q[31]}}, c_i32_156745_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot53_emscripten_dom_vk_to_string133_o <= 34'b0;
        end
        else
        begin
            i_pivot53_emscripten_dom_vk_to_string133_o <= $unsigned($signed(i_pivot53_emscripten_dom_vk_to_string133_a) - $signed(i_pivot53_emscripten_dom_vk_to_string133_b));
        end
    end
    assign i_pivot53_emscripten_dom_vk_to_string133_c[0] = i_pivot53_emscripten_dom_vk_to_string133_o[33];

    // c_i32_155695_recast_x(CONSTANT,907)
    assign c_i32_155695_recast_x_q = $unsigned(32'b00000000000000000000000010011011);

    // i_pivot61_emscripten_dom_vk_to_string33(COMPARE,667)@10 + 1
    assign i_pivot61_emscripten_dom_vk_to_string33_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot61_emscripten_dom_vk_to_string33_b = $unsigned({{2{c_i32_155695_recast_x_q[31]}}, c_i32_155695_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot61_emscripten_dom_vk_to_string33_o <= 34'b0;
        end
        else
        begin
            i_pivot61_emscripten_dom_vk_to_string33_o <= $unsigned($signed(i_pivot61_emscripten_dom_vk_to_string33_a) - $signed(i_pivot61_emscripten_dom_vk_to_string33_b));
        end
    end
    assign i_pivot61_emscripten_dom_vk_to_string33_c[0] = i_pivot61_emscripten_dom_vk_to_string33_o[33];

    // i_acl_937_emscripten_dom_vk_to_string453(LOGICAL,511)@11
    assign i_acl_937_emscripten_dom_vk_to_string453_q = i_pivot61_emscripten_dom_vk_to_string33_c ^ i_pivot53_emscripten_dom_vk_to_string133_c;

    // i_acl_942_emscripten_dom_vk_to_string454(MUX,512)@11
    assign i_acl_942_emscripten_dom_vk_to_string454_s = i_acl_937_emscripten_dom_vk_to_string453_q;
    always @(i_acl_942_emscripten_dom_vk_to_string454_s or i_acl_935_emscripten_dom_vk_to_string452_q or c_i64_4634766966517661696934_q)
    begin
        unique case (i_acl_942_emscripten_dom_vk_to_string454_s)
            1'b0 : i_acl_942_emscripten_dom_vk_to_string454_q = i_acl_935_emscripten_dom_vk_to_string452_q;
            1'b1 : i_acl_942_emscripten_dom_vk_to_string454_q = c_i64_4634766966517661696934_q;
            default : i_acl_942_emscripten_dom_vk_to_string454_q = 64'b0;
        endcase
    end

    // c_i32_132792_recast_x(CONSTANT,884)
    assign c_i32_132792_recast_x_q = $unsigned(32'b00000000000000000000000010000100);

    // i_pivot3_emscripten_dom_vk_to_string227(COMPARE,655)@10 + 1
    assign i_pivot3_emscripten_dom_vk_to_string227_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot3_emscripten_dom_vk_to_string227_b = $unsigned({{2{c_i32_132792_recast_x_q[31]}}, c_i32_132792_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot3_emscripten_dom_vk_to_string227_o <= 34'b0;
        end
        else
        begin
            i_pivot3_emscripten_dom_vk_to_string227_o <= $unsigned($signed(i_pivot3_emscripten_dom_vk_to_string227_a) - $signed(i_pivot3_emscripten_dom_vk_to_string227_b));
        end
    end
    assign i_pivot3_emscripten_dom_vk_to_string227_c[0] = i_pivot3_emscripten_dom_vk_to_string227_o[33];

    // c_i32_131736_recast_x(CONSTANT,883)
    assign c_i32_131736_recast_x_q = $unsigned(32'b00000000000000000000000010000011);

    // i_pivot5_emscripten_dom_vk_to_string115(COMPARE,666)@10 + 1
    assign i_pivot5_emscripten_dom_vk_to_string115_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot5_emscripten_dom_vk_to_string115_b = $unsigned({{2{c_i32_131736_recast_x_q[31]}}, c_i32_131736_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot5_emscripten_dom_vk_to_string115_o <= 34'b0;
        end
        else
        begin
            i_pivot5_emscripten_dom_vk_to_string115_o <= $unsigned($signed(i_pivot5_emscripten_dom_vk_to_string115_a) - $signed(i_pivot5_emscripten_dom_vk_to_string115_b));
        end
    end
    assign i_pivot5_emscripten_dom_vk_to_string115_c[0] = i_pivot5_emscripten_dom_vk_to_string115_o[33];

    // i_acl_943_emscripten_dom_vk_to_string455(LOGICAL,513)@11
    assign i_acl_943_emscripten_dom_vk_to_string455_q = i_pivot5_emscripten_dom_vk_to_string115_c ^ i_pivot3_emscripten_dom_vk_to_string227_c;

    // i_acl_950_emscripten_dom_vk_to_string456(MUX,514)@11
    assign i_acl_950_emscripten_dom_vk_to_string456_s = i_acl_943_emscripten_dom_vk_to_string455_q;
    always @(i_acl_950_emscripten_dom_vk_to_string456_s or i_acl_942_emscripten_dom_vk_to_string454_q or c_i64_4635048441494372352935_q)
    begin
        unique case (i_acl_950_emscripten_dom_vk_to_string456_s)
            1'b0 : i_acl_950_emscripten_dom_vk_to_string456_q = i_acl_942_emscripten_dom_vk_to_string454_q;
            1'b1 : i_acl_950_emscripten_dom_vk_to_string456_q = c_i64_4635048441494372352935_q;
            default : i_acl_950_emscripten_dom_vk_to_string456_q = 64'b0;
        endcase
    end

    // c_i32_130707_recast_x(CONSTANT,882)
    assign c_i32_130707_recast_x_q = $unsigned(32'b00000000000000000000000010000010);

    // i_pivot7_emscripten_dom_vk_to_string57(COMPARE,677)@10 + 1
    assign i_pivot7_emscripten_dom_vk_to_string57_a = $unsigned({{2{redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot7_emscripten_dom_vk_to_string57_b = $unsigned({{2{c_i32_130707_recast_x_q[31]}}, c_i32_130707_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot7_emscripten_dom_vk_to_string57_o <= 34'b0;
        end
        else
        begin
            i_pivot7_emscripten_dom_vk_to_string57_o <= $unsigned($signed(i_pivot7_emscripten_dom_vk_to_string57_a) - $signed(i_pivot7_emscripten_dom_vk_to_string57_b));
        end
    end
    assign i_pivot7_emscripten_dom_vk_to_string57_c[0] = i_pivot7_emscripten_dom_vk_to_string57_o[33];

    // i_acl_951_emscripten_dom_vk_to_string457(LOGICAL,515)@11
    assign i_acl_951_emscripten_dom_vk_to_string457_q = i_pivot7_emscripten_dom_vk_to_string57_c ^ i_pivot5_emscripten_dom_vk_to_string115_c;

    // i_acl_957_emscripten_dom_vk_to_string458(MUX,516)@11
    assign i_acl_957_emscripten_dom_vk_to_string458_s = i_acl_951_emscripten_dom_vk_to_string457_q;
    always @(i_acl_957_emscripten_dom_vk_to_string458_s or i_acl_950_emscripten_dom_vk_to_string456_q or c_i64_4635329916471083008936_q)
    begin
        unique case (i_acl_957_emscripten_dom_vk_to_string458_s)
            1'b0 : i_acl_957_emscripten_dom_vk_to_string458_q = i_acl_950_emscripten_dom_vk_to_string456_q;
            1'b1 : i_acl_957_emscripten_dom_vk_to_string458_q = c_i64_4635329916471083008936_q;
            default : i_acl_957_emscripten_dom_vk_to_string458_q = 64'b0;
        endcase
    end

    // c_i32_129735_recast_x(CONSTANT,881)
    assign c_i32_129735_recast_x_q = $unsigned(32'b00000000000000000000000010000001);

    // redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10(DELAY,1094)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q <= '0;
        end
        else
        begin
            redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q <= $unsigned(redist8_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_9_q);
        end
    end

    // i_pivot_emscripten_dom_vk_to_string113(COMPARE,689)@11
    assign i_pivot_emscripten_dom_vk_to_string113_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot_emscripten_dom_vk_to_string113_b = $unsigned({{2{c_i32_129735_recast_x_q[31]}}, c_i32_129735_recast_x_q});
    assign i_pivot_emscripten_dom_vk_to_string113_o = $unsigned($signed(i_pivot_emscripten_dom_vk_to_string113_a) - $signed(i_pivot_emscripten_dom_vk_to_string113_b));
    assign i_pivot_emscripten_dom_vk_to_string113_c[0] = i_pivot_emscripten_dom_vk_to_string113_o[33];

    // i_acl_958_emscripten_dom_vk_to_string459(LOGICAL,517)@11
    assign i_acl_958_emscripten_dom_vk_to_string459_q = i_pivot_emscripten_dom_vk_to_string113_c ^ i_pivot7_emscripten_dom_vk_to_string57_c;

    // i_acl_964_emscripten_dom_vk_to_string460(MUX,518)@11
    assign i_acl_964_emscripten_dom_vk_to_string460_s = i_acl_958_emscripten_dom_vk_to_string459_q;
    always @(i_acl_964_emscripten_dom_vk_to_string460_s or i_acl_957_emscripten_dom_vk_to_string458_q or c_i64_4635611391447793664937_q)
    begin
        unique case (i_acl_964_emscripten_dom_vk_to_string460_s)
            1'b0 : i_acl_964_emscripten_dom_vk_to_string460_q = i_acl_957_emscripten_dom_vk_to_string458_q;
            1'b1 : i_acl_964_emscripten_dom_vk_to_string460_q = c_i64_4635611391447793664937_q;
            default : i_acl_964_emscripten_dom_vk_to_string460_q = 64'b0;
        endcase
    end

    // c_i32_154798_recast_x(CONSTANT,906)
    assign c_i32_154798_recast_x_q = $unsigned(32'b00000000000000000000000010011010);

    // i_pivot45_emscripten_dom_vk_to_string239(COMPARE,658)@11
    assign i_pivot45_emscripten_dom_vk_to_string239_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot45_emscripten_dom_vk_to_string239_b = $unsigned({{2{c_i32_154798_recast_x_q[31]}}, c_i32_154798_recast_x_q});
    assign i_pivot45_emscripten_dom_vk_to_string239_o = $unsigned($signed(i_pivot45_emscripten_dom_vk_to_string239_a) - $signed(i_pivot45_emscripten_dom_vk_to_string239_b));
    assign i_pivot45_emscripten_dom_vk_to_string239_c[0] = i_pivot45_emscripten_dom_vk_to_string239_o[33];

    // i_acl_967_emscripten_dom_vk_to_string461(LOGICAL,519)@11
    assign i_acl_967_emscripten_dom_vk_to_string461_q = i_pivot45_emscripten_dom_vk_to_string239_c ^ i_pivot61_emscripten_dom_vk_to_string33_c;

    // i_acl_972_emscripten_dom_vk_to_string462(MUX,520)@11 + 1
    assign i_acl_972_emscripten_dom_vk_to_string462_s = i_acl_967_emscripten_dom_vk_to_string461_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_972_emscripten_dom_vk_to_string462_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_972_emscripten_dom_vk_to_string462_s)
                1'b0 : i_acl_972_emscripten_dom_vk_to_string462_q <= i_acl_964_emscripten_dom_vk_to_string460_q;
                1'b1 : i_acl_972_emscripten_dom_vk_to_string462_q <= c_i64_4635892866424504320938_q;
                default : i_acl_972_emscripten_dom_vk_to_string462_q <= 64'b0;
            endcase
        end
    end

    // c_i32_278836_recast_x(CONSTANT,1030)
    assign c_i32_278836_recast_x_q = $unsigned(32'b00000000000000000000000100010110);

    // i_pivot291_emscripten_dom_vk_to_string315(COMPARE,636)@11
    assign i_pivot291_emscripten_dom_vk_to_string315_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot291_emscripten_dom_vk_to_string315_b = $unsigned({{2{c_i32_278836_recast_x_q[31]}}, c_i32_278836_recast_x_q});
    assign i_pivot291_emscripten_dom_vk_to_string315_o = $unsigned($signed(i_pivot291_emscripten_dom_vk_to_string315_a) - $signed(i_pivot291_emscripten_dom_vk_to_string315_b));
    assign i_pivot291_emscripten_dom_vk_to_string315_c[0] = i_pivot291_emscripten_dom_vk_to_string315_o[33];

    // redist47_i_pivot293_emscripten_dom_vk_to_string217_c_9(DELAY,1132)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist47_i_pivot293_emscripten_dom_vk_to_string217_c_9 ( .xin(i_pivot293_emscripten_dom_vk_to_string217_c), .xout(redist47_i_pivot293_emscripten_dom_vk_to_string217_c_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_973_emscripten_dom_vk_to_string463(LOGICAL,521)@11 + 1
    assign i_acl_973_emscripten_dom_vk_to_string463_qi = redist47_i_pivot293_emscripten_dom_vk_to_string217_c_9_q ^ i_pivot291_emscripten_dom_vk_to_string315_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_973_emscripten_dom_vk_to_string463_delay ( .xin(i_acl_973_emscripten_dom_vk_to_string463_qi), .xout(i_acl_973_emscripten_dom_vk_to_string463_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_980_emscripten_dom_vk_to_string464(MUX,522)@12
    assign i_acl_980_emscripten_dom_vk_to_string464_s = i_acl_973_emscripten_dom_vk_to_string463_q;
    always @(i_acl_980_emscripten_dom_vk_to_string464_s or i_acl_972_emscripten_dom_vk_to_string462_q or c_i64_4636174341401214976939_q)
    begin
        unique case (i_acl_980_emscripten_dom_vk_to_string464_s)
            1'b0 : i_acl_980_emscripten_dom_vk_to_string464_q = i_acl_972_emscripten_dom_vk_to_string462_q;
            1'b1 : i_acl_980_emscripten_dom_vk_to_string464_q = c_i64_4636174341401214976939_q;
            default : i_acl_980_emscripten_dom_vk_to_string464_q = 64'b0;
        endcase
    end

    // c_i32_169803_recast_x(CONSTANT,921)
    assign c_i32_169803_recast_x_q = $unsigned(32'b00000000000000000000000010101001);

    // i_pivot73_emscripten_dom_vk_to_string249(COMPARE,673)@11
    assign i_pivot73_emscripten_dom_vk_to_string249_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot73_emscripten_dom_vk_to_string249_b = $unsigned({{2{c_i32_169803_recast_x_q[31]}}, c_i32_169803_recast_x_q});
    assign i_pivot73_emscripten_dom_vk_to_string249_o = $unsigned($signed(i_pivot73_emscripten_dom_vk_to_string249_a) - $signed(i_pivot73_emscripten_dom_vk_to_string249_b));
    assign i_pivot73_emscripten_dom_vk_to_string249_c[0] = i_pivot73_emscripten_dom_vk_to_string249_o[33];

    // redist32_i_pivot75_emscripten_dom_vk_to_string141_c_7(DELAY,1117)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_pivot75_emscripten_dom_vk_to_string141_c_7 ( .xin(i_pivot75_emscripten_dom_vk_to_string141_c), .xout(redist32_i_pivot75_emscripten_dom_vk_to_string141_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_981_emscripten_dom_vk_to_string465(LOGICAL,523)@11 + 1
    assign i_acl_981_emscripten_dom_vk_to_string465_qi = redist32_i_pivot75_emscripten_dom_vk_to_string141_c_7_q ^ i_pivot73_emscripten_dom_vk_to_string249_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_981_emscripten_dom_vk_to_string465_delay ( .xin(i_acl_981_emscripten_dom_vk_to_string465_qi), .xout(i_acl_981_emscripten_dom_vk_to_string465_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_988_emscripten_dom_vk_to_string466(MUX,524)@12
    assign i_acl_988_emscripten_dom_vk_to_string466_s = i_acl_981_emscripten_dom_vk_to_string465_q;
    always @(i_acl_988_emscripten_dom_vk_to_string466_s or i_acl_980_emscripten_dom_vk_to_string464_q or c_i64_4636455816377925632940_q)
    begin
        unique case (i_acl_988_emscripten_dom_vk_to_string466_s)
            1'b0 : i_acl_988_emscripten_dom_vk_to_string466_q = i_acl_980_emscripten_dom_vk_to_string464_q;
            1'b1 : i_acl_988_emscripten_dom_vk_to_string466_q = c_i64_4636455816377925632940_q;
            default : i_acl_988_emscripten_dom_vk_to_string466_q = 64'b0;
        endcase
    end

    // redist78_i_pivot153_emscripten_dom_vk_to_string273_c_9(DELAY,1163)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist78_i_pivot153_emscripten_dom_vk_to_string273_c_9 ( .xin(i_pivot153_emscripten_dom_vk_to_string273_c), .xout(redist78_i_pivot153_emscripten_dom_vk_to_string273_c_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_208763_recast_x(CONSTANT,960)
    assign c_i32_208763_recast_x_q = $unsigned(32'b00000000000000000000000011010000);

    // i_pivot155_emscripten_dom_vk_to_string169(COMPARE,561)@11 + 1
    assign i_pivot155_emscripten_dom_vk_to_string169_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot155_emscripten_dom_vk_to_string169_b = $unsigned({{2{c_i32_208763_recast_x_q[31]}}, c_i32_208763_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot155_emscripten_dom_vk_to_string169_o <= 34'b0;
        end
        else
        begin
            i_pivot155_emscripten_dom_vk_to_string169_o <= $unsigned($signed(i_pivot155_emscripten_dom_vk_to_string169_a) - $signed(i_pivot155_emscripten_dom_vk_to_string169_b));
        end
    end
    assign i_pivot155_emscripten_dom_vk_to_string169_c[0] = i_pivot155_emscripten_dom_vk_to_string169_o[33];

    // i_acl_989_emscripten_dom_vk_to_string467(LOGICAL,525)@12
    assign i_acl_989_emscripten_dom_vk_to_string467_q = i_pivot155_emscripten_dom_vk_to_string169_c ^ redist78_i_pivot153_emscripten_dom_vk_to_string273_c_9_q;

    // i_acl_996_emscripten_dom_vk_to_string468(MUX,526)@12
    assign i_acl_996_emscripten_dom_vk_to_string468_s = i_acl_989_emscripten_dom_vk_to_string467_q;
    always @(i_acl_996_emscripten_dom_vk_to_string468_s or i_acl_988_emscripten_dom_vk_to_string466_q or c_i64_4636737291354636288941_q)
    begin
        unique case (i_acl_996_emscripten_dom_vk_to_string468_s)
            1'b0 : i_acl_996_emscripten_dom_vk_to_string468_q = i_acl_988_emscripten_dom_vk_to_string466_q;
            1'b1 : i_acl_996_emscripten_dom_vk_to_string468_q = c_i64_4636737291354636288941_q;
            default : i_acl_996_emscripten_dom_vk_to_string468_q = 64'b0;
        endcase
    end

    // c_i32_207689_recast_x(CONSTANT,959)
    assign c_i32_207689_recast_x_q = $unsigned(32'b00000000000000000000000011001111);

    // i_pivot175_emscripten_dom_vk_to_string21(COMPARE,572)@11 + 1
    assign i_pivot175_emscripten_dom_vk_to_string21_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot175_emscripten_dom_vk_to_string21_b = $unsigned({{2{c_i32_207689_recast_x_q[31]}}, c_i32_207689_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot175_emscripten_dom_vk_to_string21_o <= 34'b0;
        end
        else
        begin
            i_pivot175_emscripten_dom_vk_to_string21_o <= $unsigned($signed(i_pivot175_emscripten_dom_vk_to_string21_a) - $signed(i_pivot175_emscripten_dom_vk_to_string21_b));
        end
    end
    assign i_pivot175_emscripten_dom_vk_to_string21_c[0] = i_pivot175_emscripten_dom_vk_to_string21_o[33];

    // i_acl_999_emscripten_dom_vk_to_string469(LOGICAL,527)@12
    assign i_acl_999_emscripten_dom_vk_to_string469_q = i_pivot175_emscripten_dom_vk_to_string21_c ^ i_pivot155_emscripten_dom_vk_to_string169_c;

    // i_acl_1003_emscripten_dom_vk_to_string470(MUX,200)@12
    assign i_acl_1003_emscripten_dom_vk_to_string470_s = i_acl_999_emscripten_dom_vk_to_string469_q;
    always @(i_acl_1003_emscripten_dom_vk_to_string470_s or i_acl_996_emscripten_dom_vk_to_string468_q or c_i64_4637018766331346944942_q)
    begin
        unique case (i_acl_1003_emscripten_dom_vk_to_string470_s)
            1'b0 : i_acl_1003_emscripten_dom_vk_to_string470_q = i_acl_996_emscripten_dom_vk_to_string468_q;
            1'b1 : i_acl_1003_emscripten_dom_vk_to_string470_q = c_i64_4637018766331346944942_q;
            default : i_acl_1003_emscripten_dom_vk_to_string470_q = 64'b0;
        endcase
    end

    // c_i32_206814_recast_x(CONSTANT,958)
    assign c_i32_206814_recast_x_q = $unsigned(32'b00000000000000000000000011001110);

    // i_pivot145_emscripten_dom_vk_to_string271(COMPARE,556)@11 + 1
    assign i_pivot145_emscripten_dom_vk_to_string271_a = $unsigned({{2{redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot145_emscripten_dom_vk_to_string271_b = $unsigned({{2{c_i32_206814_recast_x_q[31]}}, c_i32_206814_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot145_emscripten_dom_vk_to_string271_o <= 34'b0;
        end
        else
        begin
            i_pivot145_emscripten_dom_vk_to_string271_o <= $unsigned($signed(i_pivot145_emscripten_dom_vk_to_string271_a) - $signed(i_pivot145_emscripten_dom_vk_to_string271_b));
        end
    end
    assign i_pivot145_emscripten_dom_vk_to_string271_c[0] = i_pivot145_emscripten_dom_vk_to_string271_o[33];

    // i_acl_1007_emscripten_dom_vk_to_string471(LOGICAL,201)@12
    assign i_acl_1007_emscripten_dom_vk_to_string471_q = i_pivot145_emscripten_dom_vk_to_string271_c ^ i_pivot175_emscripten_dom_vk_to_string21_c;

    // i_acl_1011_emscripten_dom_vk_to_string472(MUX,202)@12
    assign i_acl_1011_emscripten_dom_vk_to_string472_s = i_acl_1007_emscripten_dom_vk_to_string471_q;
    always @(i_acl_1011_emscripten_dom_vk_to_string472_s or i_acl_1003_emscripten_dom_vk_to_string470_q or c_i64_4637300241308057600943_q)
    begin
        unique case (i_acl_1011_emscripten_dom_vk_to_string472_s)
            1'b0 : i_acl_1011_emscripten_dom_vk_to_string472_q = i_acl_1003_emscripten_dom_vk_to_string470_q;
            1'b1 : i_acl_1011_emscripten_dom_vk_to_string472_q = c_i64_4637300241308057600943_q;
            default : i_acl_1011_emscripten_dom_vk_to_string472_q = 64'b0;
        endcase
    end

    // c_i32_205762_recast_x(CONSTANT,957)
    assign c_i32_205762_recast_x_q = $unsigned(32'b00000000000000000000000011001101);

    // redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11(DELAY,1095)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q <= '0;
        end
        else
        begin
            redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q <= $unsigned(redist9_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_10_q);
        end
    end

    // i_pivot147_emscripten_dom_vk_to_string167(COMPARE,557)@12
    assign i_pivot147_emscripten_dom_vk_to_string167_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot147_emscripten_dom_vk_to_string167_b = $unsigned({{2{c_i32_205762_recast_x_q[31]}}, c_i32_205762_recast_x_q});
    assign i_pivot147_emscripten_dom_vk_to_string167_o = $unsigned($signed(i_pivot147_emscripten_dom_vk_to_string167_a) - $signed(i_pivot147_emscripten_dom_vk_to_string167_b));
    assign i_pivot147_emscripten_dom_vk_to_string167_c[0] = i_pivot147_emscripten_dom_vk_to_string167_o[33];

    // i_acl_1012_emscripten_dom_vk_to_string473(LOGICAL,203)@12
    assign i_acl_1012_emscripten_dom_vk_to_string473_q = i_pivot147_emscripten_dom_vk_to_string167_c ^ i_pivot145_emscripten_dom_vk_to_string271_c;

    // i_acl_1019_emscripten_dom_vk_to_string474(MUX,204)@12
    assign i_acl_1019_emscripten_dom_vk_to_string474_s = i_acl_1012_emscripten_dom_vk_to_string473_q;
    always @(i_acl_1019_emscripten_dom_vk_to_string474_s or i_acl_1011_emscripten_dom_vk_to_string472_q or c_i64_4637581716284768256944_q)
    begin
        unique case (i_acl_1019_emscripten_dom_vk_to_string474_s)
            1'b0 : i_acl_1019_emscripten_dom_vk_to_string474_q = i_acl_1011_emscripten_dom_vk_to_string472_q;
            1'b1 : i_acl_1019_emscripten_dom_vk_to_string474_q = c_i64_4637581716284768256944_q;
            default : i_acl_1019_emscripten_dom_vk_to_string474_q = 64'b0;
        endcase
    end

    // c_i32_204720_recast_x(CONSTANT,956)
    assign c_i32_204720_recast_x_q = $unsigned(32'b00000000000000000000000011001100);

    // i_pivot149_emscripten_dom_vk_to_string83(COMPARE,558)@12
    assign i_pivot149_emscripten_dom_vk_to_string83_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot149_emscripten_dom_vk_to_string83_b = $unsigned({{2{c_i32_204720_recast_x_q[31]}}, c_i32_204720_recast_x_q});
    assign i_pivot149_emscripten_dom_vk_to_string83_o = $unsigned($signed(i_pivot149_emscripten_dom_vk_to_string83_a) - $signed(i_pivot149_emscripten_dom_vk_to_string83_b));
    assign i_pivot149_emscripten_dom_vk_to_string83_c[0] = i_pivot149_emscripten_dom_vk_to_string83_o[33];

    // i_acl_1020_emscripten_dom_vk_to_string475(LOGICAL,205)@12
    assign i_acl_1020_emscripten_dom_vk_to_string475_q = i_pivot149_emscripten_dom_vk_to_string83_c ^ i_pivot147_emscripten_dom_vk_to_string167_c;

    // i_acl_1026_emscripten_dom_vk_to_string476(MUX,206)@12 + 1
    assign i_acl_1026_emscripten_dom_vk_to_string476_s = i_acl_1020_emscripten_dom_vk_to_string475_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1026_emscripten_dom_vk_to_string476_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1026_emscripten_dom_vk_to_string476_s)
                1'b0 : i_acl_1026_emscripten_dom_vk_to_string476_q <= i_acl_1019_emscripten_dom_vk_to_string474_q;
                1'b1 : i_acl_1026_emscripten_dom_vk_to_string476_q <= c_i64_4637863191261478912945_q;
                default : i_acl_1026_emscripten_dom_vk_to_string476_q <= 64'b0;
            endcase
        end
    end

    // c_i32_203813_recast_x(CONSTANT,955)
    assign c_i32_203813_recast_x_q = $unsigned(32'b00000000000000000000000011001011);

    // i_pivot141_emscripten_dom_vk_to_string269(COMPARE,554)@12
    assign i_pivot141_emscripten_dom_vk_to_string269_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot141_emscripten_dom_vk_to_string269_b = $unsigned({{2{c_i32_203813_recast_x_q[31]}}, c_i32_203813_recast_x_q});
    assign i_pivot141_emscripten_dom_vk_to_string269_o = $unsigned($signed(i_pivot141_emscripten_dom_vk_to_string269_a) - $signed(i_pivot141_emscripten_dom_vk_to_string269_b));
    assign i_pivot141_emscripten_dom_vk_to_string269_c[0] = i_pivot141_emscripten_dom_vk_to_string269_o[33];

    // i_acl_1028_emscripten_dom_vk_to_string477(LOGICAL,207)@12 + 1
    assign i_acl_1028_emscripten_dom_vk_to_string477_qi = i_pivot141_emscripten_dom_vk_to_string269_c ^ i_pivot149_emscripten_dom_vk_to_string83_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1028_emscripten_dom_vk_to_string477_delay ( .xin(i_acl_1028_emscripten_dom_vk_to_string477_qi), .xout(i_acl_1028_emscripten_dom_vk_to_string477_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1034_emscripten_dom_vk_to_string478(MUX,208)@13
    assign i_acl_1034_emscripten_dom_vk_to_string478_s = i_acl_1028_emscripten_dom_vk_to_string477_q;
    always @(i_acl_1034_emscripten_dom_vk_to_string478_s or i_acl_1026_emscripten_dom_vk_to_string476_q or c_i64_4638144666238189568946_q)
    begin
        unique case (i_acl_1034_emscripten_dom_vk_to_string478_s)
            1'b0 : i_acl_1034_emscripten_dom_vk_to_string478_q = i_acl_1026_emscripten_dom_vk_to_string476_q;
            1'b1 : i_acl_1034_emscripten_dom_vk_to_string478_q = c_i64_4638144666238189568946_q;
            default : i_acl_1034_emscripten_dom_vk_to_string478_q = 64'b0;
        endcase
    end

    // c_i32_202761_recast_x(CONSTANT,954)
    assign c_i32_202761_recast_x_q = $unsigned(32'b00000000000000000000000011001010);

    // i_pivot143_emscripten_dom_vk_to_string165(COMPARE,555)@12
    assign i_pivot143_emscripten_dom_vk_to_string165_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot143_emscripten_dom_vk_to_string165_b = $unsigned({{2{c_i32_202761_recast_x_q[31]}}, c_i32_202761_recast_x_q});
    assign i_pivot143_emscripten_dom_vk_to_string165_o = $unsigned($signed(i_pivot143_emscripten_dom_vk_to_string165_a) - $signed(i_pivot143_emscripten_dom_vk_to_string165_b));
    assign i_pivot143_emscripten_dom_vk_to_string165_c[0] = i_pivot143_emscripten_dom_vk_to_string165_o[33];

    // i_acl_1035_emscripten_dom_vk_to_string479(LOGICAL,209)@12 + 1
    assign i_acl_1035_emscripten_dom_vk_to_string479_qi = i_pivot143_emscripten_dom_vk_to_string165_c ^ i_pivot141_emscripten_dom_vk_to_string269_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1035_emscripten_dom_vk_to_string479_delay ( .xin(i_acl_1035_emscripten_dom_vk_to_string479_qi), .xout(i_acl_1035_emscripten_dom_vk_to_string479_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1042_emscripten_dom_vk_to_string480(MUX,210)@13
    assign i_acl_1042_emscripten_dom_vk_to_string480_s = i_acl_1035_emscripten_dom_vk_to_string479_q;
    always @(i_acl_1042_emscripten_dom_vk_to_string480_s or i_acl_1034_emscripten_dom_vk_to_string478_q or c_i64_4638426141214900224947_q)
    begin
        unique case (i_acl_1042_emscripten_dom_vk_to_string480_s)
            1'b0 : i_acl_1042_emscripten_dom_vk_to_string480_q = i_acl_1034_emscripten_dom_vk_to_string478_q;
            1'b1 : i_acl_1042_emscripten_dom_vk_to_string480_q = c_i64_4638426141214900224947_q;
            default : i_acl_1042_emscripten_dom_vk_to_string480_q = 64'b0;
        endcase
    end

    // c_i32_201699_recast_x(CONSTANT,953)
    assign c_i32_201699_recast_x_q = $unsigned(32'b00000000000000000000000011001001);

    // i_pivot151_emscripten_dom_vk_to_string41(COMPARE,559)@12
    assign i_pivot151_emscripten_dom_vk_to_string41_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot151_emscripten_dom_vk_to_string41_b = $unsigned({{2{c_i32_201699_recast_x_q[31]}}, c_i32_201699_recast_x_q});
    assign i_pivot151_emscripten_dom_vk_to_string41_o = $unsigned($signed(i_pivot151_emscripten_dom_vk_to_string41_a) - $signed(i_pivot151_emscripten_dom_vk_to_string41_b));
    assign i_pivot151_emscripten_dom_vk_to_string41_c[0] = i_pivot151_emscripten_dom_vk_to_string41_o[33];

    // i_acl_1044_emscripten_dom_vk_to_string481(LOGICAL,211)@12 + 1
    assign i_acl_1044_emscripten_dom_vk_to_string481_qi = i_pivot151_emscripten_dom_vk_to_string41_c ^ i_pivot143_emscripten_dom_vk_to_string165_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1044_emscripten_dom_vk_to_string481_delay ( .xin(i_acl_1044_emscripten_dom_vk_to_string481_qi), .xout(i_acl_1044_emscripten_dom_vk_to_string481_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1049_emscripten_dom_vk_to_string482(MUX,212)@13
    assign i_acl_1049_emscripten_dom_vk_to_string482_s = i_acl_1044_emscripten_dom_vk_to_string481_q;
    always @(i_acl_1049_emscripten_dom_vk_to_string482_s or i_acl_1042_emscripten_dom_vk_to_string480_q or c_i64_4638707616191610880948_q)
    begin
        unique case (i_acl_1049_emscripten_dom_vk_to_string482_s)
            1'b0 : i_acl_1049_emscripten_dom_vk_to_string482_q = i_acl_1042_emscripten_dom_vk_to_string480_q;
            1'b1 : i_acl_1049_emscripten_dom_vk_to_string482_q = c_i64_4638707616191610880948_q;
            default : i_acl_1049_emscripten_dom_vk_to_string482_q = 64'b0;
        endcase
    end

    // c_i32_200812_recast_x(CONSTANT,952)
    assign c_i32_200812_recast_x_q = $unsigned(32'b00000000000000000000000011001000);

    // i_pivot135_emscripten_dom_vk_to_string267(COMPARE,550)@12
    assign i_pivot135_emscripten_dom_vk_to_string267_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot135_emscripten_dom_vk_to_string267_b = $unsigned({{2{c_i32_200812_recast_x_q[31]}}, c_i32_200812_recast_x_q});
    assign i_pivot135_emscripten_dom_vk_to_string267_o = $unsigned($signed(i_pivot135_emscripten_dom_vk_to_string267_a) - $signed(i_pivot135_emscripten_dom_vk_to_string267_b));
    assign i_pivot135_emscripten_dom_vk_to_string267_c[0] = i_pivot135_emscripten_dom_vk_to_string267_o[33];

    // i_acl_1052_emscripten_dom_vk_to_string483(LOGICAL,213)@12 + 1
    assign i_acl_1052_emscripten_dom_vk_to_string483_qi = i_pivot135_emscripten_dom_vk_to_string267_c ^ i_pivot151_emscripten_dom_vk_to_string41_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1052_emscripten_dom_vk_to_string483_delay ( .xin(i_acl_1052_emscripten_dom_vk_to_string483_qi), .xout(i_acl_1052_emscripten_dom_vk_to_string483_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1057_emscripten_dom_vk_to_string484(MUX,214)@13
    assign i_acl_1057_emscripten_dom_vk_to_string484_s = i_acl_1052_emscripten_dom_vk_to_string483_q;
    always @(i_acl_1057_emscripten_dom_vk_to_string484_s or i_acl_1049_emscripten_dom_vk_to_string482_q or c_i64_4638989091168321536949_q)
    begin
        unique case (i_acl_1057_emscripten_dom_vk_to_string484_s)
            1'b0 : i_acl_1057_emscripten_dom_vk_to_string484_q = i_acl_1049_emscripten_dom_vk_to_string482_q;
            1'b1 : i_acl_1057_emscripten_dom_vk_to_string484_q = c_i64_4638989091168321536949_q;
            default : i_acl_1057_emscripten_dom_vk_to_string484_q = 64'b0;
        endcase
    end

    // c_i32_199760_recast_x(CONSTANT,951)
    assign c_i32_199760_recast_x_q = $unsigned(32'b00000000000000000000000011000111);

    // i_pivot137_emscripten_dom_vk_to_string163(COMPARE,551)@12
    assign i_pivot137_emscripten_dom_vk_to_string163_a = $unsigned({{2{redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot137_emscripten_dom_vk_to_string163_b = $unsigned({{2{c_i32_199760_recast_x_q[31]}}, c_i32_199760_recast_x_q});
    assign i_pivot137_emscripten_dom_vk_to_string163_o = $unsigned($signed(i_pivot137_emscripten_dom_vk_to_string163_a) - $signed(i_pivot137_emscripten_dom_vk_to_string163_b));
    assign i_pivot137_emscripten_dom_vk_to_string163_c[0] = i_pivot137_emscripten_dom_vk_to_string163_o[33];

    // i_acl_1058_emscripten_dom_vk_to_string485(LOGICAL,215)@12 + 1
    assign i_acl_1058_emscripten_dom_vk_to_string485_qi = i_pivot137_emscripten_dom_vk_to_string163_c ^ i_pivot135_emscripten_dom_vk_to_string267_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1058_emscripten_dom_vk_to_string485_delay ( .xin(i_acl_1058_emscripten_dom_vk_to_string485_qi), .xout(i_acl_1058_emscripten_dom_vk_to_string485_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1065_emscripten_dom_vk_to_string486(MUX,216)@13
    assign i_acl_1065_emscripten_dom_vk_to_string486_s = i_acl_1058_emscripten_dom_vk_to_string485_q;
    always @(i_acl_1065_emscripten_dom_vk_to_string486_s or i_acl_1057_emscripten_dom_vk_to_string484_q or c_i64_4639270566145032192950_q)
    begin
        unique case (i_acl_1065_emscripten_dom_vk_to_string486_s)
            1'b0 : i_acl_1065_emscripten_dom_vk_to_string486_q = i_acl_1057_emscripten_dom_vk_to_string484_q;
            1'b1 : i_acl_1065_emscripten_dom_vk_to_string486_q = c_i64_4639270566145032192950_q;
            default : i_acl_1065_emscripten_dom_vk_to_string486_q = 64'b0;
        endcase
    end

    // redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5(DELAY,1162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_0 <= '0;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_1 <= '0;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_2 <= '0;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_3 <= '0;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_q <= '0;
        end
        else
        begin
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_0 <= $unsigned(i_pivot157_emscripten_dom_vk_to_string275_c);
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_1 <= redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_0;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_2 <= redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_1;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_3 <= redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_2;
            redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_q <= redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_delay_3;
        end
    end

    // i_acl_1066_emscripten_dom_vk_to_string487(LOGICAL,217)@9 + 1
    assign i_acl_1066_emscripten_dom_vk_to_string487_qi = i_pivot159_emscripten_dom_vk_to_string171_c ^ redist77_i_pivot157_emscripten_dom_vk_to_string275_c_5_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1066_emscripten_dom_vk_to_string487_delay ( .xin(i_acl_1066_emscripten_dom_vk_to_string487_qi), .xout(i_acl_1066_emscripten_dom_vk_to_string487_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4(DELAY,1235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_0 <= '0;
            redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_1 <= '0;
            redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_q <= '0;
        end
        else
        begin
            redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_0 <= $unsigned(i_acl_1066_emscripten_dom_vk_to_string487_q);
            redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_1 <= redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_0;
            redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_q <= redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_delay_1;
        end
    end

    // i_acl_1073_emscripten_dom_vk_to_string488(MUX,218)@13
    assign i_acl_1073_emscripten_dom_vk_to_string488_s = redist150_i_acl_1066_emscripten_dom_vk_to_string487_q_4_q;
    always @(i_acl_1073_emscripten_dom_vk_to_string488_s or i_acl_1065_emscripten_dom_vk_to_string486_q or c_i64_4639552041121742848951_q)
    begin
        unique case (i_acl_1073_emscripten_dom_vk_to_string488_s)
            1'b0 : i_acl_1073_emscripten_dom_vk_to_string488_q = i_acl_1065_emscripten_dom_vk_to_string486_q;
            1'b1 : i_acl_1073_emscripten_dom_vk_to_string488_q = c_i64_4639552041121742848951_q;
            default : i_acl_1073_emscripten_dom_vk_to_string488_q = 64'b0;
        endcase
    end

    // c_i32_298952_recast_x(CONSTANT,1047)
    assign c_i32_298952_recast_x_q = $unsigned(32'b00000000000000000000000100101010);

    // redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12(DELAY,1096)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q <= '0;
        end
        else
        begin
            redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q <= $unsigned(redist10_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_11_q);
        end
    end

    // i_unnamed_emscripten_dom_vk_to_string489(LOGICAL,701)@13
    assign i_unnamed_emscripten_dom_vk_to_string489_q = $unsigned(redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q == c_i32_298952_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1081_emscripten_dom_vk_to_string491(MUX,219)@13 + 1
    assign i_acl_1081_emscripten_dom_vk_to_string491_s = i_unnamed_emscripten_dom_vk_to_string489_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1081_emscripten_dom_vk_to_string491_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1081_emscripten_dom_vk_to_string491_s)
                1'b0 : i_acl_1081_emscripten_dom_vk_to_string491_q <= i_acl_1073_emscripten_dom_vk_to_string488_q;
                1'b1 : i_acl_1081_emscripten_dom_vk_to_string491_q <= c_i64_4639833516098453504953_q;
                default : i_acl_1081_emscripten_dom_vk_to_string491_q <= 64'b0;
            endcase
        end
    end

    // redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4(DELAY,1116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_0 <= '0;
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_1 <= '0;
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_2 <= '0;
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_q <= '0;
        end
        else
        begin
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_0 <= $unsigned(i_pivot79_emscripten_dom_vk_to_string143_c);
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_1 <= redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_0;
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_2 <= redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_1;
            redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_q <= redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_delay_2;
        end
    end

    // i_acl_1082_emscripten_dom_vk_to_string492(LOGICAL,220)@6 + 1
    assign i_acl_1082_emscripten_dom_vk_to_string492_qi = redist31_i_pivot79_emscripten_dom_vk_to_string143_c_4_q ^ i_pivot77_emscripten_dom_vk_to_string251_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1082_emscripten_dom_vk_to_string492_delay ( .xin(i_acl_1082_emscripten_dom_vk_to_string492_qi), .xout(i_acl_1082_emscripten_dom_vk_to_string492_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist149_i_acl_1082_emscripten_dom_vk_to_string492_q_8(DELAY,1234)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist149_i_acl_1082_emscripten_dom_vk_to_string492_q_8 ( .xin(i_acl_1082_emscripten_dom_vk_to_string492_q), .xout(redist149_i_acl_1082_emscripten_dom_vk_to_string492_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1089_emscripten_dom_vk_to_string493(MUX,221)@14
    assign i_acl_1089_emscripten_dom_vk_to_string493_s = redist149_i_acl_1082_emscripten_dom_vk_to_string492_q_8_q;
    always @(i_acl_1089_emscripten_dom_vk_to_string493_s or i_acl_1081_emscripten_dom_vk_to_string491_q or c_i64_4640114991075164160954_q)
    begin
        unique case (i_acl_1089_emscripten_dom_vk_to_string493_s)
            1'b0 : i_acl_1089_emscripten_dom_vk_to_string493_q = i_acl_1081_emscripten_dom_vk_to_string491_q;
            1'b1 : i_acl_1089_emscripten_dom_vk_to_string493_q = c_i64_4640114991075164160954_q;
            default : i_acl_1089_emscripten_dom_vk_to_string493_q = 64'b0;
        endcase
    end

    // i_acl_1092_emscripten_dom_vk_to_string494(LOGICAL,222)@4 + 1
    assign i_acl_1092_emscripten_dom_vk_to_string494_qi = i_pivot67_emscripten_dom_vk_to_string247_c ^ i_pivot83_emscripten_dom_vk_to_string35_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1092_emscripten_dom_vk_to_string494_delay ( .xin(i_acl_1092_emscripten_dom_vk_to_string494_qi), .xout(i_acl_1092_emscripten_dom_vk_to_string494_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist148_i_acl_1092_emscripten_dom_vk_to_string494_q_10(DELAY,1233)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist148_i_acl_1092_emscripten_dom_vk_to_string494_q_10 ( .xin(i_acl_1092_emscripten_dom_vk_to_string494_q), .xout(redist148_i_acl_1092_emscripten_dom_vk_to_string494_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1097_emscripten_dom_vk_to_string495(MUX,223)@14
    assign i_acl_1097_emscripten_dom_vk_to_string495_s = redist148_i_acl_1092_emscripten_dom_vk_to_string494_q_10_q;
    always @(i_acl_1097_emscripten_dom_vk_to_string495_s or i_acl_1089_emscripten_dom_vk_to_string493_q or c_i64_4640396466051874816955_q)
    begin
        unique case (i_acl_1097_emscripten_dom_vk_to_string495_s)
            1'b0 : i_acl_1097_emscripten_dom_vk_to_string495_q = i_acl_1089_emscripten_dom_vk_to_string493_q;
            1'b1 : i_acl_1097_emscripten_dom_vk_to_string495_q = c_i64_4640396466051874816955_q;
            default : i_acl_1097_emscripten_dom_vk_to_string495_q = 64'b0;
        endcase
    end

    // redist50_i_pivot279_emscripten_dom_vk_to_string311_c_1(DELAY,1135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_pivot279_emscripten_dom_vk_to_string311_c_1_q <= '0;
        end
        else
        begin
            redist50_i_pivot279_emscripten_dom_vk_to_string311_c_1_q <= $unsigned(i_pivot279_emscripten_dom_vk_to_string311_c);
        end
    end

    // i_acl_1099_emscripten_dom_vk_to_string496(LOGICAL,224)@7 + 1
    assign i_acl_1099_emscripten_dom_vk_to_string496_qi = redist50_i_pivot279_emscripten_dom_vk_to_string311_c_1_q ^ i_pivot287_emscripten_dom_vk_to_string107_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1099_emscripten_dom_vk_to_string496_delay ( .xin(i_acl_1099_emscripten_dom_vk_to_string496_qi), .xout(i_acl_1099_emscripten_dom_vk_to_string496_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist147_i_acl_1099_emscripten_dom_vk_to_string496_q_7(DELAY,1232)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist147_i_acl_1099_emscripten_dom_vk_to_string496_q_7 ( .xin(i_acl_1099_emscripten_dom_vk_to_string496_q), .xout(redist147_i_acl_1099_emscripten_dom_vk_to_string496_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1105_emscripten_dom_vk_to_string497(MUX,225)@14
    assign i_acl_1105_emscripten_dom_vk_to_string497_s = redist147_i_acl_1099_emscripten_dom_vk_to_string496_q_7_q;
    always @(i_acl_1105_emscripten_dom_vk_to_string497_s or i_acl_1097_emscripten_dom_vk_to_string495_q or c_i64_4640677941028585472956_q)
    begin
        unique case (i_acl_1105_emscripten_dom_vk_to_string497_s)
            1'b0 : i_acl_1105_emscripten_dom_vk_to_string497_q = i_acl_1097_emscripten_dom_vk_to_string495_q;
            1'b1 : i_acl_1105_emscripten_dom_vk_to_string497_q = c_i64_4640677941028585472956_q;
            default : i_acl_1105_emscripten_dom_vk_to_string497_q = 64'b0;
        endcase
    end

    // redist49_i_pivot281_emscripten_dom_vk_to_string213_c_7(DELAY,1134)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist49_i_pivot281_emscripten_dom_vk_to_string213_c_7 ( .xin(i_pivot281_emscripten_dom_vk_to_string213_c), .xout(redist49_i_pivot281_emscripten_dom_vk_to_string213_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_270705_recast_x(CONSTANT,1022)
    assign c_i32_270705_recast_x_q = $unsigned(32'b00000000000000000000000100001110);

    // i_pivot289_emscripten_dom_vk_to_string53(COMPARE,635)@13
    assign i_pivot289_emscripten_dom_vk_to_string53_a = $unsigned({{2{redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot289_emscripten_dom_vk_to_string53_b = $unsigned({{2{c_i32_270705_recast_x_q[31]}}, c_i32_270705_recast_x_q});
    assign i_pivot289_emscripten_dom_vk_to_string53_o = $unsigned($signed(i_pivot289_emscripten_dom_vk_to_string53_a) - $signed(i_pivot289_emscripten_dom_vk_to_string53_b));
    assign i_pivot289_emscripten_dom_vk_to_string53_c[0] = i_pivot289_emscripten_dom_vk_to_string53_o[33];

    // i_acl_1107_emscripten_dom_vk_to_string498(LOGICAL,226)@13 + 1
    assign i_acl_1107_emscripten_dom_vk_to_string498_qi = i_pivot289_emscripten_dom_vk_to_string53_c ^ redist49_i_pivot281_emscripten_dom_vk_to_string213_c_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1107_emscripten_dom_vk_to_string498_delay ( .xin(i_acl_1107_emscripten_dom_vk_to_string498_qi), .xout(i_acl_1107_emscripten_dom_vk_to_string498_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1112_emscripten_dom_vk_to_string499(MUX,227)@14
    assign i_acl_1112_emscripten_dom_vk_to_string499_s = i_acl_1107_emscripten_dom_vk_to_string498_q;
    always @(i_acl_1112_emscripten_dom_vk_to_string499_s or i_acl_1105_emscripten_dom_vk_to_string497_q or c_i64_4640959416005296128957_q)
    begin
        unique case (i_acl_1112_emscripten_dom_vk_to_string499_s)
            1'b0 : i_acl_1112_emscripten_dom_vk_to_string499_q = i_acl_1105_emscripten_dom_vk_to_string497_q;
            1'b1 : i_acl_1112_emscripten_dom_vk_to_string499_q = c_i64_4640959416005296128957_q;
            default : i_acl_1112_emscripten_dom_vk_to_string499_q = 64'b0;
        endcase
    end

    // redist57_i_pivot251_emscripten_dom_vk_to_string203_c_6(DELAY,1142)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist57_i_pivot251_emscripten_dom_vk_to_string203_c_6 ( .xin(i_pivot251_emscripten_dom_vk_to_string203_c), .xout(redist57_i_pivot251_emscripten_dom_vk_to_string203_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_256729_recast_x(CONSTANT,1008)
    assign c_i32_256729_recast_x_q = $unsigned(32'b00000000000000000000000100000000);

    // i_pivot253_emscripten_dom_vk_to_string101(COMPARE,615)@13 + 1
    assign i_pivot253_emscripten_dom_vk_to_string101_a = $unsigned({{2{redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot253_emscripten_dom_vk_to_string101_b = $unsigned({{2{c_i32_256729_recast_x_q[31]}}, c_i32_256729_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot253_emscripten_dom_vk_to_string101_o <= 34'b0;
        end
        else
        begin
            i_pivot253_emscripten_dom_vk_to_string101_o <= $unsigned($signed(i_pivot253_emscripten_dom_vk_to_string101_a) - $signed(i_pivot253_emscripten_dom_vk_to_string101_b));
        end
    end
    assign i_pivot253_emscripten_dom_vk_to_string101_c[0] = i_pivot253_emscripten_dom_vk_to_string101_o[33];

    // i_acl_1113_emscripten_dom_vk_to_string500(LOGICAL,228)@14
    assign i_acl_1113_emscripten_dom_vk_to_string500_q = i_pivot253_emscripten_dom_vk_to_string101_c ^ redist57_i_pivot251_emscripten_dom_vk_to_string203_c_6_q;

    // i_acl_1119_emscripten_dom_vk_to_string501(MUX,229)@14
    assign i_acl_1119_emscripten_dom_vk_to_string501_s = i_acl_1113_emscripten_dom_vk_to_string500_q;
    always @(i_acl_1119_emscripten_dom_vk_to_string501_s or i_acl_1112_emscripten_dom_vk_to_string499_q or c_i64_4641240890982006784958_q)
    begin
        unique case (i_acl_1119_emscripten_dom_vk_to_string501_s)
            1'b0 : i_acl_1119_emscripten_dom_vk_to_string501_q = i_acl_1112_emscripten_dom_vk_to_string499_q;
            1'b1 : i_acl_1119_emscripten_dom_vk_to_string501_q = c_i64_4641240890982006784958_q;
            default : i_acl_1119_emscripten_dom_vk_to_string501_q = 64'b0;
        endcase
    end

    // c_i32_246826_recast_x(CONSTANT,998)
    assign c_i32_246826_recast_x_q = $unsigned(32'b00000000000000000000000011110110);

    // redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13(DELAY,1097)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q <= '0;
        end
        else
        begin
            redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q <= $unsigned(redist11_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_12_q);
        end
    end

    // i_pivot227_emscripten_dom_vk_to_string295(COMPARE,601)@14
    assign i_pivot227_emscripten_dom_vk_to_string295_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot227_emscripten_dom_vk_to_string295_b = $unsigned({{2{c_i32_246826_recast_x_q[31]}}, c_i32_246826_recast_x_q});
    assign i_pivot227_emscripten_dom_vk_to_string295_o = $unsigned($signed(i_pivot227_emscripten_dom_vk_to_string295_a) - $signed(i_pivot227_emscripten_dom_vk_to_string295_b));
    assign i_pivot227_emscripten_dom_vk_to_string295_c[0] = i_pivot227_emscripten_dom_vk_to_string295_o[33];

    // c_i32_245776_recast_x(CONSTANT,997)
    assign c_i32_245776_recast_x_q = $unsigned(32'b00000000000000000000000011110101);

    // i_pivot229_emscripten_dom_vk_to_string195(COMPARE,602)@14
    assign i_pivot229_emscripten_dom_vk_to_string195_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot229_emscripten_dom_vk_to_string195_b = $unsigned({{2{c_i32_245776_recast_x_q[31]}}, c_i32_245776_recast_x_q});
    assign i_pivot229_emscripten_dom_vk_to_string195_o = $unsigned($signed(i_pivot229_emscripten_dom_vk_to_string195_a) - $signed(i_pivot229_emscripten_dom_vk_to_string195_b));
    assign i_pivot229_emscripten_dom_vk_to_string195_c[0] = i_pivot229_emscripten_dom_vk_to_string195_o[33];

    // i_acl_1120_emscripten_dom_vk_to_string502(LOGICAL,230)@14
    assign i_acl_1120_emscripten_dom_vk_to_string502_q = i_pivot229_emscripten_dom_vk_to_string195_c ^ i_pivot227_emscripten_dom_vk_to_string295_c;

    // i_acl_1127_emscripten_dom_vk_to_string503(MUX,231)@14
    assign i_acl_1127_emscripten_dom_vk_to_string503_s = i_acl_1120_emscripten_dom_vk_to_string502_q;
    always @(i_acl_1127_emscripten_dom_vk_to_string503_s or i_acl_1119_emscripten_dom_vk_to_string501_q or c_i64_4641522365958717440959_q)
    begin
        unique case (i_acl_1127_emscripten_dom_vk_to_string503_s)
            1'b0 : i_acl_1127_emscripten_dom_vk_to_string503_q = i_acl_1119_emscripten_dom_vk_to_string501_q;
            1'b1 : i_acl_1127_emscripten_dom_vk_to_string503_q = c_i64_4641522365958717440959_q;
            default : i_acl_1127_emscripten_dom_vk_to_string503_q = 64'b0;
        endcase
    end

    // c_i32_240774_recast_x(CONSTANT,992)
    assign c_i32_240774_recast_x_q = $unsigned(32'b00000000000000000000000011110000);

    // i_pivot217_emscripten_dom_vk_to_string191(COMPARE,595)@14
    assign i_pivot217_emscripten_dom_vk_to_string191_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot217_emscripten_dom_vk_to_string191_b = $unsigned({{2{c_i32_240774_recast_x_q[31]}}, c_i32_240774_recast_x_q});
    assign i_pivot217_emscripten_dom_vk_to_string191_o = $unsigned($signed(i_pivot217_emscripten_dom_vk_to_string191_a) - $signed(i_pivot217_emscripten_dom_vk_to_string191_b));
    assign i_pivot217_emscripten_dom_vk_to_string191_c[0] = i_pivot217_emscripten_dom_vk_to_string191_o[33];

    // c_i32_239726_recast_x(CONSTANT,991)
    assign c_i32_239726_recast_x_q = $unsigned(32'b00000000000000000000000011101111);

    // i_pivot219_emscripten_dom_vk_to_string95(COMPARE,596)@14
    assign i_pivot219_emscripten_dom_vk_to_string95_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot219_emscripten_dom_vk_to_string95_b = $unsigned({{2{c_i32_239726_recast_x_q[31]}}, c_i32_239726_recast_x_q});
    assign i_pivot219_emscripten_dom_vk_to_string95_o = $unsigned($signed(i_pivot219_emscripten_dom_vk_to_string95_a) - $signed(i_pivot219_emscripten_dom_vk_to_string95_b));
    assign i_pivot219_emscripten_dom_vk_to_string95_c[0] = i_pivot219_emscripten_dom_vk_to_string95_o[33];

    // i_acl_1128_emscripten_dom_vk_to_string504(LOGICAL,232)@14
    assign i_acl_1128_emscripten_dom_vk_to_string504_q = i_pivot219_emscripten_dom_vk_to_string95_c ^ i_pivot217_emscripten_dom_vk_to_string191_c;

    // i_acl_1134_emscripten_dom_vk_to_string505(MUX,233)@14 + 1
    assign i_acl_1134_emscripten_dom_vk_to_string505_s = i_acl_1128_emscripten_dom_vk_to_string504_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1134_emscripten_dom_vk_to_string505_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1134_emscripten_dom_vk_to_string505_s)
                1'b0 : i_acl_1134_emscripten_dom_vk_to_string505_q <= i_acl_1127_emscripten_dom_vk_to_string503_q;
                1'b1 : i_acl_1134_emscripten_dom_vk_to_string505_q <= c_i64_4641803840935428096960_q;
                default : i_acl_1134_emscripten_dom_vk_to_string505_q <= 64'b0;
            endcase
        end
    end

    // c_i32_238824_recast_x(CONSTANT,990)
    assign c_i32_238824_recast_x_q = $unsigned(32'b00000000000000000000000011101110);

    // i_pivot211_emscripten_dom_vk_to_string291(COMPARE,592)@14
    assign i_pivot211_emscripten_dom_vk_to_string291_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot211_emscripten_dom_vk_to_string291_b = $unsigned({{2{c_i32_238824_recast_x_q[31]}}, c_i32_238824_recast_x_q});
    assign i_pivot211_emscripten_dom_vk_to_string291_o = $unsigned($signed(i_pivot211_emscripten_dom_vk_to_string291_a) - $signed(i_pivot211_emscripten_dom_vk_to_string291_b));
    assign i_pivot211_emscripten_dom_vk_to_string291_c[0] = i_pivot211_emscripten_dom_vk_to_string291_o[33];

    // i_acl_1136_emscripten_dom_vk_to_string506(LOGICAL,234)@14 + 1
    assign i_acl_1136_emscripten_dom_vk_to_string506_qi = i_pivot211_emscripten_dom_vk_to_string291_c ^ i_pivot219_emscripten_dom_vk_to_string95_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1136_emscripten_dom_vk_to_string506_delay ( .xin(i_acl_1136_emscripten_dom_vk_to_string506_qi), .xout(i_acl_1136_emscripten_dom_vk_to_string506_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1142_emscripten_dom_vk_to_string507(MUX,235)@15
    assign i_acl_1142_emscripten_dom_vk_to_string507_s = i_acl_1136_emscripten_dom_vk_to_string506_q;
    always @(i_acl_1142_emscripten_dom_vk_to_string507_s or i_acl_1134_emscripten_dom_vk_to_string505_q or c_i64_4642085315912138752961_q)
    begin
        unique case (i_acl_1142_emscripten_dom_vk_to_string507_s)
            1'b0 : i_acl_1142_emscripten_dom_vk_to_string507_q = i_acl_1134_emscripten_dom_vk_to_string505_q;
            1'b1 : i_acl_1142_emscripten_dom_vk_to_string507_q = c_i64_4642085315912138752961_q;
            default : i_acl_1142_emscripten_dom_vk_to_string507_q = 64'b0;
        endcase
    end

    // c_i32_237773_recast_x(CONSTANT,989)
    assign c_i32_237773_recast_x_q = $unsigned(32'b00000000000000000000000011101101);

    // i_pivot213_emscripten_dom_vk_to_string189(COMPARE,593)@14
    assign i_pivot213_emscripten_dom_vk_to_string189_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot213_emscripten_dom_vk_to_string189_b = $unsigned({{2{c_i32_237773_recast_x_q[31]}}, c_i32_237773_recast_x_q});
    assign i_pivot213_emscripten_dom_vk_to_string189_o = $unsigned($signed(i_pivot213_emscripten_dom_vk_to_string189_a) - $signed(i_pivot213_emscripten_dom_vk_to_string189_b));
    assign i_pivot213_emscripten_dom_vk_to_string189_c[0] = i_pivot213_emscripten_dom_vk_to_string189_o[33];

    // i_acl_1143_emscripten_dom_vk_to_string508(LOGICAL,236)@14 + 1
    assign i_acl_1143_emscripten_dom_vk_to_string508_qi = i_pivot213_emscripten_dom_vk_to_string189_c ^ i_pivot211_emscripten_dom_vk_to_string291_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1143_emscripten_dom_vk_to_string508_delay ( .xin(i_acl_1143_emscripten_dom_vk_to_string508_qi), .xout(i_acl_1143_emscripten_dom_vk_to_string508_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1150_emscripten_dom_vk_to_string509(MUX,237)@15
    assign i_acl_1150_emscripten_dom_vk_to_string509_s = i_acl_1143_emscripten_dom_vk_to_string508_q;
    always @(i_acl_1150_emscripten_dom_vk_to_string509_s or i_acl_1142_emscripten_dom_vk_to_string507_q or c_i64_4642366790888849408962_q)
    begin
        unique case (i_acl_1150_emscripten_dom_vk_to_string509_s)
            1'b0 : i_acl_1150_emscripten_dom_vk_to_string509_q = i_acl_1142_emscripten_dom_vk_to_string507_q;
            1'b1 : i_acl_1150_emscripten_dom_vk_to_string509_q = c_i64_4642366790888849408962_q;
            default : i_acl_1150_emscripten_dom_vk_to_string509_q = 64'b0;
        endcase
    end

    // c_i32_236702_recast_x(CONSTANT,988)
    assign c_i32_236702_recast_x_q = $unsigned(32'b00000000000000000000000011101100);

    // i_pivot221_emscripten_dom_vk_to_string47(COMPARE,598)@14
    assign i_pivot221_emscripten_dom_vk_to_string47_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot221_emscripten_dom_vk_to_string47_b = $unsigned({{2{c_i32_236702_recast_x_q[31]}}, c_i32_236702_recast_x_q});
    assign i_pivot221_emscripten_dom_vk_to_string47_o = $unsigned($signed(i_pivot221_emscripten_dom_vk_to_string47_a) - $signed(i_pivot221_emscripten_dom_vk_to_string47_b));
    assign i_pivot221_emscripten_dom_vk_to_string47_c[0] = i_pivot221_emscripten_dom_vk_to_string47_o[33];

    // i_acl_1152_emscripten_dom_vk_to_string510(LOGICAL,238)@14 + 1
    assign i_acl_1152_emscripten_dom_vk_to_string510_qi = i_pivot221_emscripten_dom_vk_to_string47_c ^ i_pivot213_emscripten_dom_vk_to_string189_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1152_emscripten_dom_vk_to_string510_delay ( .xin(i_acl_1152_emscripten_dom_vk_to_string510_qi), .xout(i_acl_1152_emscripten_dom_vk_to_string510_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1157_emscripten_dom_vk_to_string511(MUX,239)@15
    assign i_acl_1157_emscripten_dom_vk_to_string511_s = i_acl_1152_emscripten_dom_vk_to_string510_q;
    always @(i_acl_1157_emscripten_dom_vk_to_string511_s or i_acl_1150_emscripten_dom_vk_to_string509_q or c_i64_4642648265865560064963_q)
    begin
        unique case (i_acl_1157_emscripten_dom_vk_to_string511_s)
            1'b0 : i_acl_1157_emscripten_dom_vk_to_string511_q = i_acl_1150_emscripten_dom_vk_to_string509_q;
            1'b1 : i_acl_1157_emscripten_dom_vk_to_string511_q = c_i64_4642648265865560064963_q;
            default : i_acl_1157_emscripten_dom_vk_to_string511_q = 64'b0;
        endcase
    end

    // c_i32_235823_recast_x(CONSTANT,987)
    assign c_i32_235823_recast_x_q = $unsigned(32'b00000000000000000000000011101011);

    // i_pivot205_emscripten_dom_vk_to_string289(COMPARE,589)@14
    assign i_pivot205_emscripten_dom_vk_to_string289_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot205_emscripten_dom_vk_to_string289_b = $unsigned({{2{c_i32_235823_recast_x_q[31]}}, c_i32_235823_recast_x_q});
    assign i_pivot205_emscripten_dom_vk_to_string289_o = $unsigned($signed(i_pivot205_emscripten_dom_vk_to_string289_a) - $signed(i_pivot205_emscripten_dom_vk_to_string289_b));
    assign i_pivot205_emscripten_dom_vk_to_string289_c[0] = i_pivot205_emscripten_dom_vk_to_string289_o[33];

    // i_acl_1160_emscripten_dom_vk_to_string512(LOGICAL,240)@14 + 1
    assign i_acl_1160_emscripten_dom_vk_to_string512_qi = i_pivot205_emscripten_dom_vk_to_string289_c ^ i_pivot221_emscripten_dom_vk_to_string47_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1160_emscripten_dom_vk_to_string512_delay ( .xin(i_acl_1160_emscripten_dom_vk_to_string512_qi), .xout(i_acl_1160_emscripten_dom_vk_to_string512_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1165_emscripten_dom_vk_to_string513(MUX,241)@15
    assign i_acl_1165_emscripten_dom_vk_to_string513_s = i_acl_1160_emscripten_dom_vk_to_string512_q;
    always @(i_acl_1165_emscripten_dom_vk_to_string513_s or i_acl_1157_emscripten_dom_vk_to_string511_q or c_i64_4642929740842270720964_q)
    begin
        unique case (i_acl_1165_emscripten_dom_vk_to_string513_s)
            1'b0 : i_acl_1165_emscripten_dom_vk_to_string513_q = i_acl_1157_emscripten_dom_vk_to_string511_q;
            1'b1 : i_acl_1165_emscripten_dom_vk_to_string513_q = c_i64_4642929740842270720964_q;
            default : i_acl_1165_emscripten_dom_vk_to_string513_q = 64'b0;
        endcase
    end

    // c_i32_234772_recast_x(CONSTANT,986)
    assign c_i32_234772_recast_x_q = $unsigned(32'b00000000000000000000000011101010);

    // i_pivot207_emscripten_dom_vk_to_string187(COMPARE,590)@14
    assign i_pivot207_emscripten_dom_vk_to_string187_a = $unsigned({{2{redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot207_emscripten_dom_vk_to_string187_b = $unsigned({{2{c_i32_234772_recast_x_q[31]}}, c_i32_234772_recast_x_q});
    assign i_pivot207_emscripten_dom_vk_to_string187_o = $unsigned($signed(i_pivot207_emscripten_dom_vk_to_string187_a) - $signed(i_pivot207_emscripten_dom_vk_to_string187_b));
    assign i_pivot207_emscripten_dom_vk_to_string187_c[0] = i_pivot207_emscripten_dom_vk_to_string187_o[33];

    // i_acl_1166_emscripten_dom_vk_to_string514(LOGICAL,242)@14 + 1
    assign i_acl_1166_emscripten_dom_vk_to_string514_qi = i_pivot207_emscripten_dom_vk_to_string187_c ^ i_pivot205_emscripten_dom_vk_to_string289_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1166_emscripten_dom_vk_to_string514_delay ( .xin(i_acl_1166_emscripten_dom_vk_to_string514_qi), .xout(i_acl_1166_emscripten_dom_vk_to_string514_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1173_emscripten_dom_vk_to_string515(MUX,243)@15
    assign i_acl_1173_emscripten_dom_vk_to_string515_s = i_acl_1166_emscripten_dom_vk_to_string514_q;
    always @(i_acl_1173_emscripten_dom_vk_to_string515_s or i_acl_1165_emscripten_dom_vk_to_string513_q or c_i64_4643211215818981376965_q)
    begin
        unique case (i_acl_1173_emscripten_dom_vk_to_string515_s)
            1'b0 : i_acl_1173_emscripten_dom_vk_to_string515_q = i_acl_1165_emscripten_dom_vk_to_string513_q;
            1'b1 : i_acl_1173_emscripten_dom_vk_to_string515_q = c_i64_4643211215818981376965_q;
            default : i_acl_1173_emscripten_dom_vk_to_string515_q = 64'b0;
        endcase
    end

    // redist62_i_pivot209_emscripten_dom_vk_to_string93_c_11(DELAY,1147)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist62_i_pivot209_emscripten_dom_vk_to_string93_c_11 ( .xin(i_pivot209_emscripten_dom_vk_to_string93_c), .xout(redist62_i_pivot209_emscripten_dom_vk_to_string93_c_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1174_emscripten_dom_vk_to_string516(LOGICAL,244)@14 + 1
    assign i_acl_1174_emscripten_dom_vk_to_string516_qi = redist62_i_pivot209_emscripten_dom_vk_to_string93_c_11_q ^ i_pivot207_emscripten_dom_vk_to_string187_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1174_emscripten_dom_vk_to_string516_delay ( .xin(i_acl_1174_emscripten_dom_vk_to_string516_qi), .xout(i_acl_1174_emscripten_dom_vk_to_string516_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1180_emscripten_dom_vk_to_string517(MUX,245)@15
    assign i_acl_1180_emscripten_dom_vk_to_string517_s = i_acl_1174_emscripten_dom_vk_to_string516_q;
    always @(i_acl_1180_emscripten_dom_vk_to_string517_s or i_acl_1173_emscripten_dom_vk_to_string515_q or c_i64_4643492690795692032966_q)
    begin
        unique case (i_acl_1180_emscripten_dom_vk_to_string517_s)
            1'b0 : i_acl_1180_emscripten_dom_vk_to_string517_q = i_acl_1173_emscripten_dom_vk_to_string515_q;
            1'b1 : i_acl_1180_emscripten_dom_vk_to_string517_q = c_i64_4643492690795692032966_q;
            default : i_acl_1180_emscripten_dom_vk_to_string517_q = 64'b0;
        endcase
    end

    // redist56_i_pivot253_emscripten_dom_vk_to_string101_c_2(DELAY,1141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_pivot253_emscripten_dom_vk_to_string101_c_2_q <= '0;
        end
        else
        begin
            redist56_i_pivot253_emscripten_dom_vk_to_string101_c_2_q <= $unsigned(i_pivot253_emscripten_dom_vk_to_string101_c);
        end
    end

    // c_i32_255829_recast_x(CONSTANT,1007)
    assign c_i32_255829_recast_x_q = $unsigned(32'b00000000000000000000000011111111);

    // redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14(DELAY,1098)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q <= '0;
        end
        else
        begin
            redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q <= $unsigned(redist12_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_13_q);
        end
    end

    // i_pivot245_emscripten_dom_vk_to_string301(COMPARE,611)@15
    assign i_pivot245_emscripten_dom_vk_to_string301_a = $unsigned({{2{redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot245_emscripten_dom_vk_to_string301_b = $unsigned({{2{c_i32_255829_recast_x_q[31]}}, c_i32_255829_recast_x_q});
    assign i_pivot245_emscripten_dom_vk_to_string301_o = $unsigned($signed(i_pivot245_emscripten_dom_vk_to_string301_a) - $signed(i_pivot245_emscripten_dom_vk_to_string301_b));
    assign i_pivot245_emscripten_dom_vk_to_string301_c[0] = i_pivot245_emscripten_dom_vk_to_string301_o[33];

    // i_acl_1182_emscripten_dom_vk_to_string518(LOGICAL,246)@15
    assign i_acl_1182_emscripten_dom_vk_to_string518_q = i_pivot245_emscripten_dom_vk_to_string301_c ^ redist56_i_pivot253_emscripten_dom_vk_to_string101_c_2_q;

    // i_acl_1188_emscripten_dom_vk_to_string519(MUX,247)@15 + 1
    assign i_acl_1188_emscripten_dom_vk_to_string519_s = i_acl_1182_emscripten_dom_vk_to_string518_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1188_emscripten_dom_vk_to_string519_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1188_emscripten_dom_vk_to_string519_s)
                1'b0 : i_acl_1188_emscripten_dom_vk_to_string519_q <= i_acl_1180_emscripten_dom_vk_to_string517_q;
                1'b1 : i_acl_1188_emscripten_dom_vk_to_string519_q <= c_i64_4643774165772402688967_q;
                default : i_acl_1188_emscripten_dom_vk_to_string519_q <= 64'b0;
            endcase
        end
    end

    // c_i32_254779_recast_x(CONSTANT,1006)
    assign c_i32_254779_recast_x_q = $unsigned(32'b00000000000000000000000011111110);

    // i_pivot247_emscripten_dom_vk_to_string201(COMPARE,612)@15
    assign i_pivot247_emscripten_dom_vk_to_string201_a = $unsigned({{2{redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot247_emscripten_dom_vk_to_string201_b = $unsigned({{2{c_i32_254779_recast_x_q[31]}}, c_i32_254779_recast_x_q});
    assign i_pivot247_emscripten_dom_vk_to_string201_o = $unsigned($signed(i_pivot247_emscripten_dom_vk_to_string201_a) - $signed(i_pivot247_emscripten_dom_vk_to_string201_b));
    assign i_pivot247_emscripten_dom_vk_to_string201_c[0] = i_pivot247_emscripten_dom_vk_to_string201_o[33];

    // i_acl_1189_emscripten_dom_vk_to_string520(LOGICAL,248)@15 + 1
    assign i_acl_1189_emscripten_dom_vk_to_string520_qi = i_pivot247_emscripten_dom_vk_to_string201_c ^ i_pivot245_emscripten_dom_vk_to_string301_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1189_emscripten_dom_vk_to_string520_delay ( .xin(i_acl_1189_emscripten_dom_vk_to_string520_qi), .xout(i_acl_1189_emscripten_dom_vk_to_string520_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1196_emscripten_dom_vk_to_string521(MUX,249)@16
    assign i_acl_1196_emscripten_dom_vk_to_string521_s = i_acl_1189_emscripten_dom_vk_to_string520_q;
    always @(i_acl_1196_emscripten_dom_vk_to_string521_s or i_acl_1188_emscripten_dom_vk_to_string519_q or c_i64_4644055640749113344968_q)
    begin
        unique case (i_acl_1196_emscripten_dom_vk_to_string521_s)
            1'b0 : i_acl_1196_emscripten_dom_vk_to_string521_q = i_acl_1188_emscripten_dom_vk_to_string519_q;
            1'b1 : i_acl_1196_emscripten_dom_vk_to_string521_q = c_i64_4644055640749113344968_q;
            default : i_acl_1196_emscripten_dom_vk_to_string521_q = 64'b0;
        endcase
    end

    // redist58_i_pivot247_emscripten_dom_vk_to_string201_c_1(DELAY,1143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_pivot247_emscripten_dom_vk_to_string201_c_1_q <= '0;
        end
        else
        begin
            redist58_i_pivot247_emscripten_dom_vk_to_string201_c_1_q <= $unsigned(i_pivot247_emscripten_dom_vk_to_string201_c);
        end
    end

    // c_i32_253691_recast_x(CONSTANT,1005)
    assign c_i32_253691_recast_x_q = $unsigned(32'b00000000000000000000000011111101);

    // i_pivot267_emscripten_dom_vk_to_string25(COMPARE,623)@15 + 1
    assign i_pivot267_emscripten_dom_vk_to_string25_a = $unsigned({{2{redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot267_emscripten_dom_vk_to_string25_b = $unsigned({{2{c_i32_253691_recast_x_q[31]}}, c_i32_253691_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot267_emscripten_dom_vk_to_string25_o <= 34'b0;
        end
        else
        begin
            i_pivot267_emscripten_dom_vk_to_string25_o <= $unsigned($signed(i_pivot267_emscripten_dom_vk_to_string25_a) - $signed(i_pivot267_emscripten_dom_vk_to_string25_b));
        end
    end
    assign i_pivot267_emscripten_dom_vk_to_string25_c[0] = i_pivot267_emscripten_dom_vk_to_string25_o[33];

    // i_acl_1199_emscripten_dom_vk_to_string522(LOGICAL,250)@16
    assign i_acl_1199_emscripten_dom_vk_to_string522_q = i_pivot267_emscripten_dom_vk_to_string25_c ^ redist58_i_pivot247_emscripten_dom_vk_to_string201_c_1_q;

    // i_acl_1203_emscripten_dom_vk_to_string523(MUX,251)@16
    assign i_acl_1203_emscripten_dom_vk_to_string523_s = i_acl_1199_emscripten_dom_vk_to_string522_q;
    always @(i_acl_1203_emscripten_dom_vk_to_string523_s or i_acl_1196_emscripten_dom_vk_to_string521_q or c_i64_4644337115725824000969_q)
    begin
        unique case (i_acl_1203_emscripten_dom_vk_to_string523_s)
            1'b0 : i_acl_1203_emscripten_dom_vk_to_string523_q = i_acl_1196_emscripten_dom_vk_to_string521_q;
            1'b1 : i_acl_1203_emscripten_dom_vk_to_string523_q = c_i64_4644337115725824000969_q;
            default : i_acl_1203_emscripten_dom_vk_to_string523_q = 64'b0;
        endcase
    end

    // c_i32_252828_recast_x(CONSTANT,1004)
    assign c_i32_252828_recast_x_q = $unsigned(32'b00000000000000000000000011111100);

    // i_pivot237_emscripten_dom_vk_to_string299(COMPARE,606)@15 + 1
    assign i_pivot237_emscripten_dom_vk_to_string299_a = $unsigned({{2{redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot237_emscripten_dom_vk_to_string299_b = $unsigned({{2{c_i32_252828_recast_x_q[31]}}, c_i32_252828_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot237_emscripten_dom_vk_to_string299_o <= 34'b0;
        end
        else
        begin
            i_pivot237_emscripten_dom_vk_to_string299_o <= $unsigned($signed(i_pivot237_emscripten_dom_vk_to_string299_a) - $signed(i_pivot237_emscripten_dom_vk_to_string299_b));
        end
    end
    assign i_pivot237_emscripten_dom_vk_to_string299_c[0] = i_pivot237_emscripten_dom_vk_to_string299_o[33];

    // i_acl_1207_emscripten_dom_vk_to_string524(LOGICAL,252)@16
    assign i_acl_1207_emscripten_dom_vk_to_string524_q = i_pivot237_emscripten_dom_vk_to_string299_c ^ i_pivot267_emscripten_dom_vk_to_string25_c;

    // i_acl_1211_emscripten_dom_vk_to_string525(MUX,253)@16
    assign i_acl_1211_emscripten_dom_vk_to_string525_s = i_acl_1207_emscripten_dom_vk_to_string524_q;
    always @(i_acl_1211_emscripten_dom_vk_to_string525_s or i_acl_1203_emscripten_dom_vk_to_string523_q or c_i64_4644618590702534656970_q)
    begin
        unique case (i_acl_1211_emscripten_dom_vk_to_string525_s)
            1'b0 : i_acl_1211_emscripten_dom_vk_to_string525_q = i_acl_1203_emscripten_dom_vk_to_string523_q;
            1'b1 : i_acl_1211_emscripten_dom_vk_to_string525_q = c_i64_4644618590702534656970_q;
            default : i_acl_1211_emscripten_dom_vk_to_string525_q = 64'b0;
        endcase
    end

    // c_i32_251778_recast_x(CONSTANT,1003)
    assign c_i32_251778_recast_x_q = $unsigned(32'b00000000000000000000000011111011);

    // i_pivot239_emscripten_dom_vk_to_string199(COMPARE,607)@15 + 1
    assign i_pivot239_emscripten_dom_vk_to_string199_a = $unsigned({{2{redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot239_emscripten_dom_vk_to_string199_b = $unsigned({{2{c_i32_251778_recast_x_q[31]}}, c_i32_251778_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot239_emscripten_dom_vk_to_string199_o <= 34'b0;
        end
        else
        begin
            i_pivot239_emscripten_dom_vk_to_string199_o <= $unsigned($signed(i_pivot239_emscripten_dom_vk_to_string199_a) - $signed(i_pivot239_emscripten_dom_vk_to_string199_b));
        end
    end
    assign i_pivot239_emscripten_dom_vk_to_string199_c[0] = i_pivot239_emscripten_dom_vk_to_string199_o[33];

    // i_acl_1212_emscripten_dom_vk_to_string526(LOGICAL,254)@16
    assign i_acl_1212_emscripten_dom_vk_to_string526_q = i_pivot239_emscripten_dom_vk_to_string199_c ^ i_pivot237_emscripten_dom_vk_to_string299_c;

    // i_acl_1219_emscripten_dom_vk_to_string527(MUX,255)@16
    assign i_acl_1219_emscripten_dom_vk_to_string527_s = i_acl_1212_emscripten_dom_vk_to_string526_q;
    always @(i_acl_1219_emscripten_dom_vk_to_string527_s or i_acl_1211_emscripten_dom_vk_to_string525_q or c_i64_4644900065679245312971_q)
    begin
        unique case (i_acl_1219_emscripten_dom_vk_to_string527_s)
            1'b0 : i_acl_1219_emscripten_dom_vk_to_string527_q = i_acl_1211_emscripten_dom_vk_to_string525_q;
            1'b1 : i_acl_1219_emscripten_dom_vk_to_string527_q = c_i64_4644900065679245312971_q;
            default : i_acl_1219_emscripten_dom_vk_to_string527_q = 64'b0;
        endcase
    end

    // c_i32_250728_recast_x(CONSTANT,1002)
    assign c_i32_250728_recast_x_q = $unsigned(32'b00000000000000000000000011111010);

    // i_pivot241_emscripten_dom_vk_to_string99(COMPARE,609)@15 + 1
    assign i_pivot241_emscripten_dom_vk_to_string99_a = $unsigned({{2{redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot241_emscripten_dom_vk_to_string99_b = $unsigned({{2{c_i32_250728_recast_x_q[31]}}, c_i32_250728_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot241_emscripten_dom_vk_to_string99_o <= 34'b0;
        end
        else
        begin
            i_pivot241_emscripten_dom_vk_to_string99_o <= $unsigned($signed(i_pivot241_emscripten_dom_vk_to_string99_a) - $signed(i_pivot241_emscripten_dom_vk_to_string99_b));
        end
    end
    assign i_pivot241_emscripten_dom_vk_to_string99_c[0] = i_pivot241_emscripten_dom_vk_to_string99_o[33];

    // i_acl_1220_emscripten_dom_vk_to_string528(LOGICAL,256)@16
    assign i_acl_1220_emscripten_dom_vk_to_string528_q = i_pivot241_emscripten_dom_vk_to_string99_c ^ i_pivot239_emscripten_dom_vk_to_string199_c;

    // i_acl_1226_emscripten_dom_vk_to_string529(MUX,257)@16
    assign i_acl_1226_emscripten_dom_vk_to_string529_s = i_acl_1220_emscripten_dom_vk_to_string528_q;
    always @(i_acl_1226_emscripten_dom_vk_to_string529_s or i_acl_1219_emscripten_dom_vk_to_string527_q or c_i64_4645181540655955968972_q)
    begin
        unique case (i_acl_1226_emscripten_dom_vk_to_string529_s)
            1'b0 : i_acl_1226_emscripten_dom_vk_to_string529_q = i_acl_1219_emscripten_dom_vk_to_string527_q;
            1'b1 : i_acl_1226_emscripten_dom_vk_to_string529_q = c_i64_4645181540655955968972_q;
            default : i_acl_1226_emscripten_dom_vk_to_string529_q = 64'b0;
        endcase
    end

    // c_i32_249827_recast_x(CONSTANT,1001)
    assign c_i32_249827_recast_x_q = $unsigned(32'b00000000000000000000000011111001);

    // redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15(DELAY,1099)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q <= '0;
        end
        else
        begin
            redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q <= $unsigned(redist13_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_14_q);
        end
    end

    // i_pivot233_emscripten_dom_vk_to_string297(COMPARE,604)@16
    assign i_pivot233_emscripten_dom_vk_to_string297_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot233_emscripten_dom_vk_to_string297_b = $unsigned({{2{c_i32_249827_recast_x_q[31]}}, c_i32_249827_recast_x_q});
    assign i_pivot233_emscripten_dom_vk_to_string297_o = $unsigned($signed(i_pivot233_emscripten_dom_vk_to_string297_a) - $signed(i_pivot233_emscripten_dom_vk_to_string297_b));
    assign i_pivot233_emscripten_dom_vk_to_string297_c[0] = i_pivot233_emscripten_dom_vk_to_string297_o[33];

    // i_acl_1228_emscripten_dom_vk_to_string530(LOGICAL,258)@16
    assign i_acl_1228_emscripten_dom_vk_to_string530_q = i_pivot233_emscripten_dom_vk_to_string297_c ^ i_pivot241_emscripten_dom_vk_to_string99_c;

    // i_acl_1234_emscripten_dom_vk_to_string531(MUX,259)@16
    assign i_acl_1234_emscripten_dom_vk_to_string531_s = i_acl_1228_emscripten_dom_vk_to_string530_q;
    always @(i_acl_1234_emscripten_dom_vk_to_string531_s or i_acl_1226_emscripten_dom_vk_to_string529_q or c_i64_4645463015632666624973_q)
    begin
        unique case (i_acl_1234_emscripten_dom_vk_to_string531_s)
            1'b0 : i_acl_1234_emscripten_dom_vk_to_string531_q = i_acl_1226_emscripten_dom_vk_to_string529_q;
            1'b1 : i_acl_1234_emscripten_dom_vk_to_string531_q = c_i64_4645463015632666624973_q;
            default : i_acl_1234_emscripten_dom_vk_to_string531_q = 64'b0;
        endcase
    end

    // c_i32_248777_recast_x(CONSTANT,1000)
    assign c_i32_248777_recast_x_q = $unsigned(32'b00000000000000000000000011111000);

    // i_pivot235_emscripten_dom_vk_to_string197(COMPARE,605)@16
    assign i_pivot235_emscripten_dom_vk_to_string197_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot235_emscripten_dom_vk_to_string197_b = $unsigned({{2{c_i32_248777_recast_x_q[31]}}, c_i32_248777_recast_x_q});
    assign i_pivot235_emscripten_dom_vk_to_string197_o = $unsigned($signed(i_pivot235_emscripten_dom_vk_to_string197_a) - $signed(i_pivot235_emscripten_dom_vk_to_string197_b));
    assign i_pivot235_emscripten_dom_vk_to_string197_c[0] = i_pivot235_emscripten_dom_vk_to_string197_o[33];

    // i_acl_1235_emscripten_dom_vk_to_string532(LOGICAL,260)@16
    assign i_acl_1235_emscripten_dom_vk_to_string532_q = i_pivot235_emscripten_dom_vk_to_string197_c ^ i_pivot233_emscripten_dom_vk_to_string297_c;

    // i_acl_1242_emscripten_dom_vk_to_string533(MUX,261)@16 + 1
    assign i_acl_1242_emscripten_dom_vk_to_string533_s = i_acl_1235_emscripten_dom_vk_to_string532_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1242_emscripten_dom_vk_to_string533_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1242_emscripten_dom_vk_to_string533_s)
                1'b0 : i_acl_1242_emscripten_dom_vk_to_string533_q <= i_acl_1234_emscripten_dom_vk_to_string531_q;
                1'b1 : i_acl_1242_emscripten_dom_vk_to_string533_q <= c_i64_4645744490609377280974_q;
                default : i_acl_1242_emscripten_dom_vk_to_string533_q <= 64'b0;
            endcase
        end
    end

    // c_i32_247703_recast_x(CONSTANT,999)
    assign c_i32_247703_recast_x_q = $unsigned(32'b00000000000000000000000011110111);

    // i_pivot243_emscripten_dom_vk_to_string49(COMPARE,610)@16
    assign i_pivot243_emscripten_dom_vk_to_string49_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot243_emscripten_dom_vk_to_string49_b = $unsigned({{2{c_i32_247703_recast_x_q[31]}}, c_i32_247703_recast_x_q});
    assign i_pivot243_emscripten_dom_vk_to_string49_o = $unsigned($signed(i_pivot243_emscripten_dom_vk_to_string49_a) - $signed(i_pivot243_emscripten_dom_vk_to_string49_b));
    assign i_pivot243_emscripten_dom_vk_to_string49_c[0] = i_pivot243_emscripten_dom_vk_to_string49_o[33];

    // i_acl_1244_emscripten_dom_vk_to_string534(LOGICAL,262)@16 + 1
    assign i_acl_1244_emscripten_dom_vk_to_string534_qi = i_pivot243_emscripten_dom_vk_to_string49_c ^ i_pivot235_emscripten_dom_vk_to_string197_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1244_emscripten_dom_vk_to_string534_delay ( .xin(i_acl_1244_emscripten_dom_vk_to_string534_qi), .xout(i_acl_1244_emscripten_dom_vk_to_string534_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1249_emscripten_dom_vk_to_string535(MUX,263)@17
    assign i_acl_1249_emscripten_dom_vk_to_string535_s = i_acl_1244_emscripten_dom_vk_to_string534_q;
    always @(i_acl_1249_emscripten_dom_vk_to_string535_s or i_acl_1242_emscripten_dom_vk_to_string533_q or c_i64_4646025965586087936975_q)
    begin
        unique case (i_acl_1249_emscripten_dom_vk_to_string535_s)
            1'b0 : i_acl_1249_emscripten_dom_vk_to_string535_q = i_acl_1242_emscripten_dom_vk_to_string533_q;
            1'b1 : i_acl_1249_emscripten_dom_vk_to_string535_q = c_i64_4646025965586087936975_q;
            default : i_acl_1249_emscripten_dom_vk_to_string535_q = 64'b0;
        endcase
    end

    // redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2(DELAY,1145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_delay_0 <= '0;
            redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_q <= '0;
        end
        else
        begin
            redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_delay_0 <= $unsigned(i_pivot227_emscripten_dom_vk_to_string295_c);
            redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_q <= redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_delay_0;
        end
    end

    // i_acl_1252_emscripten_dom_vk_to_string536(LOGICAL,264)@16 + 1
    assign i_acl_1252_emscripten_dom_vk_to_string536_qi = redist60_i_pivot227_emscripten_dom_vk_to_string295_c_2_q ^ i_pivot243_emscripten_dom_vk_to_string49_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1252_emscripten_dom_vk_to_string536_delay ( .xin(i_acl_1252_emscripten_dom_vk_to_string536_qi), .xout(i_acl_1252_emscripten_dom_vk_to_string536_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1257_emscripten_dom_vk_to_string537(MUX,265)@17
    assign i_acl_1257_emscripten_dom_vk_to_string537_s = i_acl_1252_emscripten_dom_vk_to_string536_q;
    always @(i_acl_1257_emscripten_dom_vk_to_string537_s or i_acl_1249_emscripten_dom_vk_to_string535_q or c_i64_4646307440562798592976_q)
    begin
        unique case (i_acl_1257_emscripten_dom_vk_to_string537_s)
            1'b0 : i_acl_1257_emscripten_dom_vk_to_string537_q = i_acl_1249_emscripten_dom_vk_to_string535_q;
            1'b1 : i_acl_1257_emscripten_dom_vk_to_string537_q = c_i64_4646307440562798592976_q;
            default : i_acl_1257_emscripten_dom_vk_to_string537_q = 64'b0;
        endcase
    end

    // redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2(DELAY,1144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_delay_0 <= '0;
            redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_q <= '0;
        end
        else
        begin
            redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_delay_0 <= $unsigned(i_pivot229_emscripten_dom_vk_to_string195_c);
            redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_q <= redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_delay_0;
        end
    end

    // c_i32_244727_recast_x(CONSTANT,996)
    assign c_i32_244727_recast_x_q = $unsigned(32'b00000000000000000000000011110100);

    // i_pivot231_emscripten_dom_vk_to_string97(COMPARE,603)@16
    assign i_pivot231_emscripten_dom_vk_to_string97_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot231_emscripten_dom_vk_to_string97_b = $unsigned({{2{c_i32_244727_recast_x_q[31]}}, c_i32_244727_recast_x_q});
    assign i_pivot231_emscripten_dom_vk_to_string97_o = $unsigned($signed(i_pivot231_emscripten_dom_vk_to_string97_a) - $signed(i_pivot231_emscripten_dom_vk_to_string97_b));
    assign i_pivot231_emscripten_dom_vk_to_string97_c[0] = i_pivot231_emscripten_dom_vk_to_string97_o[33];

    // i_acl_1258_emscripten_dom_vk_to_string538(LOGICAL,266)@16 + 1
    assign i_acl_1258_emscripten_dom_vk_to_string538_qi = i_pivot231_emscripten_dom_vk_to_string97_c ^ redist59_i_pivot229_emscripten_dom_vk_to_string195_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1258_emscripten_dom_vk_to_string538_delay ( .xin(i_acl_1258_emscripten_dom_vk_to_string538_qi), .xout(i_acl_1258_emscripten_dom_vk_to_string538_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1264_emscripten_dom_vk_to_string539(MUX,267)@17
    assign i_acl_1264_emscripten_dom_vk_to_string539_s = i_acl_1258_emscripten_dom_vk_to_string538_q;
    always @(i_acl_1264_emscripten_dom_vk_to_string539_s or i_acl_1257_emscripten_dom_vk_to_string537_q or c_i64_4646588915539509248977_q)
    begin
        unique case (i_acl_1264_emscripten_dom_vk_to_string539_s)
            1'b0 : i_acl_1264_emscripten_dom_vk_to_string539_q = i_acl_1257_emscripten_dom_vk_to_string537_q;
            1'b1 : i_acl_1264_emscripten_dom_vk_to_string539_q = c_i64_4646588915539509248977_q;
            default : i_acl_1264_emscripten_dom_vk_to_string539_q = 64'b0;
        endcase
    end

    // c_i32_243775_recast_x(CONSTANT,995)
    assign c_i32_243775_recast_x_q = $unsigned(32'b00000000000000000000000011110011);

    // i_pivot225_emscripten_dom_vk_to_string193(COMPARE,600)@16
    assign i_pivot225_emscripten_dom_vk_to_string193_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot225_emscripten_dom_vk_to_string193_b = $unsigned({{2{c_i32_243775_recast_x_q[31]}}, c_i32_243775_recast_x_q});
    assign i_pivot225_emscripten_dom_vk_to_string193_o = $unsigned($signed(i_pivot225_emscripten_dom_vk_to_string193_a) - $signed(i_pivot225_emscripten_dom_vk_to_string193_b));
    assign i_pivot225_emscripten_dom_vk_to_string193_c[0] = i_pivot225_emscripten_dom_vk_to_string193_o[33];

    // i_acl_1265_emscripten_dom_vk_to_string540(LOGICAL,268)@16 + 1
    assign i_acl_1265_emscripten_dom_vk_to_string540_qi = i_pivot225_emscripten_dom_vk_to_string193_c ^ i_pivot231_emscripten_dom_vk_to_string97_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1265_emscripten_dom_vk_to_string540_delay ( .xin(i_acl_1265_emscripten_dom_vk_to_string540_qi), .xout(i_acl_1265_emscripten_dom_vk_to_string540_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1271_emscripten_dom_vk_to_string541(MUX,269)@17
    assign i_acl_1271_emscripten_dom_vk_to_string541_s = i_acl_1265_emscripten_dom_vk_to_string540_q;
    always @(i_acl_1271_emscripten_dom_vk_to_string541_s or i_acl_1264_emscripten_dom_vk_to_string539_q or c_i64_4646870390516219904978_q)
    begin
        unique case (i_acl_1271_emscripten_dom_vk_to_string541_s)
            1'b0 : i_acl_1271_emscripten_dom_vk_to_string541_q = i_acl_1264_emscripten_dom_vk_to_string539_q;
            1'b1 : i_acl_1271_emscripten_dom_vk_to_string541_q = c_i64_4646870390516219904978_q;
            default : i_acl_1271_emscripten_dom_vk_to_string541_q = 64'b0;
        endcase
    end

    // c_i32_242685_recast_x(CONSTANT,994)
    assign c_i32_242685_recast_x_q = $unsigned(32'b00000000000000000000000011110010);

    // i_pivot269_emscripten_dom_vk_to_string13(COMPARE,624)@16
    assign i_pivot269_emscripten_dom_vk_to_string13_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot269_emscripten_dom_vk_to_string13_b = $unsigned({{2{c_i32_242685_recast_x_q[31]}}, c_i32_242685_recast_x_q});
    assign i_pivot269_emscripten_dom_vk_to_string13_o = $unsigned($signed(i_pivot269_emscripten_dom_vk_to_string13_a) - $signed(i_pivot269_emscripten_dom_vk_to_string13_b));
    assign i_pivot269_emscripten_dom_vk_to_string13_c[0] = i_pivot269_emscripten_dom_vk_to_string13_o[33];

    // i_acl_1275_emscripten_dom_vk_to_string542(LOGICAL,270)@16 + 1
    assign i_acl_1275_emscripten_dom_vk_to_string542_qi = i_pivot269_emscripten_dom_vk_to_string13_c ^ i_pivot225_emscripten_dom_vk_to_string193_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1275_emscripten_dom_vk_to_string542_delay ( .xin(i_acl_1275_emscripten_dom_vk_to_string542_qi), .xout(i_acl_1275_emscripten_dom_vk_to_string542_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1278_emscripten_dom_vk_to_string543(MUX,271)@17
    assign i_acl_1278_emscripten_dom_vk_to_string543_s = i_acl_1275_emscripten_dom_vk_to_string542_q;
    always @(i_acl_1278_emscripten_dom_vk_to_string543_s or i_acl_1271_emscripten_dom_vk_to_string541_q or c_i64_4647151865492930560979_q)
    begin
        unique case (i_acl_1278_emscripten_dom_vk_to_string543_s)
            1'b0 : i_acl_1278_emscripten_dom_vk_to_string543_q = i_acl_1271_emscripten_dom_vk_to_string541_q;
            1'b1 : i_acl_1278_emscripten_dom_vk_to_string543_q = c_i64_4647151865492930560979_q;
            default : i_acl_1278_emscripten_dom_vk_to_string543_q = 64'b0;
        endcase
    end

    // c_i32_241825_recast_x(CONSTANT,993)
    assign c_i32_241825_recast_x_q = $unsigned(32'b00000000000000000000000011110001);

    // i_pivot215_emscripten_dom_vk_to_string293(COMPARE,594)@16
    assign i_pivot215_emscripten_dom_vk_to_string293_a = $unsigned({{2{redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot215_emscripten_dom_vk_to_string293_b = $unsigned({{2{c_i32_241825_recast_x_q[31]}}, c_i32_241825_recast_x_q});
    assign i_pivot215_emscripten_dom_vk_to_string293_o = $unsigned($signed(i_pivot215_emscripten_dom_vk_to_string293_a) - $signed(i_pivot215_emscripten_dom_vk_to_string293_b));
    assign i_pivot215_emscripten_dom_vk_to_string293_c[0] = i_pivot215_emscripten_dom_vk_to_string293_o[33];

    // i_acl_1283_emscripten_dom_vk_to_string544(LOGICAL,272)@16 + 1
    assign i_acl_1283_emscripten_dom_vk_to_string544_qi = i_pivot215_emscripten_dom_vk_to_string293_c ^ i_pivot269_emscripten_dom_vk_to_string13_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1283_emscripten_dom_vk_to_string544_delay ( .xin(i_acl_1283_emscripten_dom_vk_to_string544_qi), .xout(i_acl_1283_emscripten_dom_vk_to_string544_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1286_emscripten_dom_vk_to_string545(MUX,273)@17
    assign i_acl_1286_emscripten_dom_vk_to_string545_s = i_acl_1283_emscripten_dom_vk_to_string544_q;
    always @(i_acl_1286_emscripten_dom_vk_to_string545_s or i_acl_1278_emscripten_dom_vk_to_string543_q or c_i64_4647433340469641216980_q)
    begin
        unique case (i_acl_1286_emscripten_dom_vk_to_string545_s)
            1'b0 : i_acl_1286_emscripten_dom_vk_to_string545_q = i_acl_1278_emscripten_dom_vk_to_string543_q;
            1'b1 : i_acl_1286_emscripten_dom_vk_to_string545_q = c_i64_4647433340469641216980_q;
            default : i_acl_1286_emscripten_dom_vk_to_string545_q = 64'b0;
        endcase
    end

    // redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2(DELAY,1146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_delay_0 <= '0;
            redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_q <= '0;
        end
        else
        begin
            redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_delay_0 <= $unsigned(i_pivot217_emscripten_dom_vk_to_string191_c);
            redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_q <= redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_delay_0;
        end
    end

    // i_acl_1287_emscripten_dom_vk_to_string546(LOGICAL,274)@16 + 1
    assign i_acl_1287_emscripten_dom_vk_to_string546_qi = redist61_i_pivot217_emscripten_dom_vk_to_string191_c_2_q ^ i_pivot215_emscripten_dom_vk_to_string293_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1287_emscripten_dom_vk_to_string546_delay ( .xin(i_acl_1287_emscripten_dom_vk_to_string546_qi), .xout(i_acl_1287_emscripten_dom_vk_to_string546_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1294_emscripten_dom_vk_to_string547(MUX,275)@17 + 1
    assign i_acl_1294_emscripten_dom_vk_to_string547_s = i_acl_1287_emscripten_dom_vk_to_string546_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1294_emscripten_dom_vk_to_string547_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1294_emscripten_dom_vk_to_string547_s)
                1'b0 : i_acl_1294_emscripten_dom_vk_to_string547_q <= i_acl_1286_emscripten_dom_vk_to_string545_q;
                1'b1 : i_acl_1294_emscripten_dom_vk_to_string547_q <= c_i64_4647714815446351872981_q;
                default : i_acl_1294_emscripten_dom_vk_to_string547_q <= 64'b0;
            endcase
        end
    end

    // redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3(DELAY,1164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_delay_0 <= '0;
            redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_q <= '0;
        end
        else
        begin
            redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_delay_0 <= $unsigned(i_pivot139_emscripten_dom_vk_to_string81_c);
            redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_q <= redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_delay_0;
        end
    end

    // i_acl_1295_emscripten_dom_vk_to_string548(LOGICAL,276)@12 + 1
    assign i_acl_1295_emscripten_dom_vk_to_string548_qi = redist79_i_pivot139_emscripten_dom_vk_to_string81_c_3_q ^ i_pivot137_emscripten_dom_vk_to_string163_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1295_emscripten_dom_vk_to_string548_delay ( .xin(i_acl_1295_emscripten_dom_vk_to_string548_qi), .xout(i_acl_1295_emscripten_dom_vk_to_string548_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6(DELAY,1231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_0 <= '0;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_1 <= '0;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_2 <= '0;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_3 <= '0;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_q <= '0;
        end
        else
        begin
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_0 <= $unsigned(i_acl_1295_emscripten_dom_vk_to_string548_q);
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_1 <= redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_0;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_2 <= redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_1;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_3 <= redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_2;
            redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_q <= redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_delay_3;
        end
    end

    // i_acl_1301_emscripten_dom_vk_to_string549(MUX,277)@18
    assign i_acl_1301_emscripten_dom_vk_to_string549_s = redist146_i_acl_1295_emscripten_dom_vk_to_string548_q_6_q;
    always @(i_acl_1301_emscripten_dom_vk_to_string549_s or i_acl_1294_emscripten_dom_vk_to_string547_q or c_i64_4647996290423062528982_q)
    begin
        unique case (i_acl_1301_emscripten_dom_vk_to_string549_s)
            1'b0 : i_acl_1301_emscripten_dom_vk_to_string549_q = i_acl_1294_emscripten_dom_vk_to_string547_q;
            1'b1 : i_acl_1301_emscripten_dom_vk_to_string549_q = c_i64_4647996290423062528982_q;
            default : i_acl_1301_emscripten_dom_vk_to_string549_q = 64'b0;
        endcase
    end

    // redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5(DELAY,1113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_0 <= '0;
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_1 <= '0;
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_2 <= '0;
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_q <= '0;
        end
        else
        begin
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_0 <= $unsigned(i_pivot89_emscripten_dom_vk_to_string145_c);
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_1 <= redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_0;
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_2 <= redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_1;
            redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_q <= redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_delay_2;
        end
    end

    // i_acl_1302_emscripten_dom_vk_to_string550(LOGICAL,278)@10 + 1
    assign i_acl_1302_emscripten_dom_vk_to_string550_qi = redist28_i_pivot89_emscripten_dom_vk_to_string145_c_5_q ^ i_pivot95_emscripten_dom_vk_to_string73_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1302_emscripten_dom_vk_to_string550_delay ( .xin(i_acl_1302_emscripten_dom_vk_to_string550_qi), .xout(i_acl_1302_emscripten_dom_vk_to_string550_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist145_i_acl_1302_emscripten_dom_vk_to_string550_q_8(DELAY,1230)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist145_i_acl_1302_emscripten_dom_vk_to_string550_q_8 ( .xin(i_acl_1302_emscripten_dom_vk_to_string550_q), .xout(redist145_i_acl_1302_emscripten_dom_vk_to_string550_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1308_emscripten_dom_vk_to_string551(MUX,279)@18
    assign i_acl_1308_emscripten_dom_vk_to_string551_s = redist145_i_acl_1302_emscripten_dom_vk_to_string550_q_8_q;
    always @(i_acl_1308_emscripten_dom_vk_to_string551_s or i_acl_1301_emscripten_dom_vk_to_string549_q or c_i64_4648277765399773184983_q)
    begin
        unique case (i_acl_1308_emscripten_dom_vk_to_string551_s)
            1'b0 : i_acl_1308_emscripten_dom_vk_to_string551_q = i_acl_1301_emscripten_dom_vk_to_string549_q;
            1'b1 : i_acl_1308_emscripten_dom_vk_to_string551_q = c_i64_4648277765399773184983_q;
            default : i_acl_1308_emscripten_dom_vk_to_string551_q = 64'b0;
        endcase
    end

    // c_i32_143795_recast_x(CONSTANT,895)
    assign c_i32_143795_recast_x_q = $unsigned(32'b00000000000000000000000010001111);

    // redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16(DELAY,1100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q <= '0;
        end
        else
        begin
            redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q <= $unsigned(redist14_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_15_q);
        end
    end

    // i_pivot23_emscripten_dom_vk_to_string233(COMPARE,608)@17
    assign i_pivot23_emscripten_dom_vk_to_string233_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot23_emscripten_dom_vk_to_string233_b = $unsigned({{2{c_i32_143795_recast_x_q[31]}}, c_i32_143795_recast_x_q});
    assign i_pivot23_emscripten_dom_vk_to_string233_o = $unsigned($signed(i_pivot23_emscripten_dom_vk_to_string233_a) - $signed(i_pivot23_emscripten_dom_vk_to_string233_b));
    assign i_pivot23_emscripten_dom_vk_to_string233_c[0] = i_pivot23_emscripten_dom_vk_to_string233_o[33];

    // c_i32_142740_recast_x(CONSTANT,894)
    assign c_i32_142740_recast_x_q = $unsigned(32'b00000000000000000000000010001110);

    // i_pivot25_emscripten_dom_vk_to_string123(COMPARE,619)@17
    assign i_pivot25_emscripten_dom_vk_to_string123_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot25_emscripten_dom_vk_to_string123_b = $unsigned({{2{c_i32_142740_recast_x_q[31]}}, c_i32_142740_recast_x_q});
    assign i_pivot25_emscripten_dom_vk_to_string123_o = $unsigned($signed(i_pivot25_emscripten_dom_vk_to_string123_a) - $signed(i_pivot25_emscripten_dom_vk_to_string123_b));
    assign i_pivot25_emscripten_dom_vk_to_string123_c[0] = i_pivot25_emscripten_dom_vk_to_string123_o[33];

    // i_acl_1309_emscripten_dom_vk_to_string552(LOGICAL,280)@17 + 1
    assign i_acl_1309_emscripten_dom_vk_to_string552_qi = i_pivot25_emscripten_dom_vk_to_string123_c ^ i_pivot23_emscripten_dom_vk_to_string233_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1309_emscripten_dom_vk_to_string552_delay ( .xin(i_acl_1309_emscripten_dom_vk_to_string552_qi), .xout(i_acl_1309_emscripten_dom_vk_to_string552_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1316_emscripten_dom_vk_to_string553(MUX,281)@18
    assign i_acl_1316_emscripten_dom_vk_to_string553_s = i_acl_1309_emscripten_dom_vk_to_string552_q;
    always @(i_acl_1316_emscripten_dom_vk_to_string553_s or i_acl_1308_emscripten_dom_vk_to_string551_q or c_i64_4648559240376483840984_q)
    begin
        unique case (i_acl_1316_emscripten_dom_vk_to_string553_s)
            1'b0 : i_acl_1316_emscripten_dom_vk_to_string553_q = i_acl_1308_emscripten_dom_vk_to_string551_q;
            1'b1 : i_acl_1316_emscripten_dom_vk_to_string553_q = c_i64_4648559240376483840984_q;
            default : i_acl_1316_emscripten_dom_vk_to_string553_q = 64'b0;
        endcase
    end

    // c_i32_141709_recast_x(CONSTANT,893)
    assign c_i32_141709_recast_x_q = $unsigned(32'b00000000000000000000000010001101);

    // i_pivot27_emscripten_dom_vk_to_string61(COMPARE,630)@17
    assign i_pivot27_emscripten_dom_vk_to_string61_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot27_emscripten_dom_vk_to_string61_b = $unsigned({{2{c_i32_141709_recast_x_q[31]}}, c_i32_141709_recast_x_q});
    assign i_pivot27_emscripten_dom_vk_to_string61_o = $unsigned($signed(i_pivot27_emscripten_dom_vk_to_string61_a) - $signed(i_pivot27_emscripten_dom_vk_to_string61_b));
    assign i_pivot27_emscripten_dom_vk_to_string61_c[0] = i_pivot27_emscripten_dom_vk_to_string61_o[33];

    // c_i32_140739_recast_x(CONSTANT,892)
    assign c_i32_140739_recast_x_q = $unsigned(32'b00000000000000000000000010001100);

    // i_pivot21_emscripten_dom_vk_to_string121(COMPARE,597)@17
    assign i_pivot21_emscripten_dom_vk_to_string121_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot21_emscripten_dom_vk_to_string121_b = $unsigned({{2{c_i32_140739_recast_x_q[31]}}, c_i32_140739_recast_x_q});
    assign i_pivot21_emscripten_dom_vk_to_string121_o = $unsigned($signed(i_pivot21_emscripten_dom_vk_to_string121_a) - $signed(i_pivot21_emscripten_dom_vk_to_string121_b));
    assign i_pivot21_emscripten_dom_vk_to_string121_c[0] = i_pivot21_emscripten_dom_vk_to_string121_o[33];

    // i_acl_1317_emscripten_dom_vk_to_string554(LOGICAL,282)@17 + 1
    assign i_acl_1317_emscripten_dom_vk_to_string554_qi = i_pivot21_emscripten_dom_vk_to_string121_c ^ i_pivot27_emscripten_dom_vk_to_string61_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1317_emscripten_dom_vk_to_string554_delay ( .xin(i_acl_1317_emscripten_dom_vk_to_string554_qi), .xout(i_acl_1317_emscripten_dom_vk_to_string554_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1323_emscripten_dom_vk_to_string555(MUX,283)@18
    assign i_acl_1323_emscripten_dom_vk_to_string555_s = i_acl_1317_emscripten_dom_vk_to_string554_q;
    always @(i_acl_1323_emscripten_dom_vk_to_string555_s or i_acl_1316_emscripten_dom_vk_to_string553_q or c_i64_4648840715353194496985_q)
    begin
        unique case (i_acl_1323_emscripten_dom_vk_to_string555_s)
            1'b0 : i_acl_1323_emscripten_dom_vk_to_string555_q = i_acl_1316_emscripten_dom_vk_to_string553_q;
            1'b1 : i_acl_1323_emscripten_dom_vk_to_string555_q = c_i64_4648840715353194496985_q;
            default : i_acl_1323_emscripten_dom_vk_to_string555_q = 64'b0;
        endcase
    end

    // c_i32_139686_recast_x(CONSTANT,891)
    assign c_i32_139686_recast_x_q = $unsigned(32'b00000000000000000000000010001011);

    // i_pivot41_emscripten_dom_vk_to_string15(COMPARE,656)@17
    assign i_pivot41_emscripten_dom_vk_to_string15_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot41_emscripten_dom_vk_to_string15_b = $unsigned({{2{c_i32_139686_recast_x_q[31]}}, c_i32_139686_recast_x_q});
    assign i_pivot41_emscripten_dom_vk_to_string15_o = $unsigned($signed(i_pivot41_emscripten_dom_vk_to_string15_a) - $signed(i_pivot41_emscripten_dom_vk_to_string15_b));
    assign i_pivot41_emscripten_dom_vk_to_string15_c[0] = i_pivot41_emscripten_dom_vk_to_string15_o[33];

    // c_i32_138794_recast_x(CONSTANT,890)
    assign c_i32_138794_recast_x_q = $unsigned(32'b00000000000000000000000010001010);

    // i_pivot13_emscripten_dom_vk_to_string231(COMPARE,553)@17
    assign i_pivot13_emscripten_dom_vk_to_string231_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot13_emscripten_dom_vk_to_string231_b = $unsigned({{2{c_i32_138794_recast_x_q[31]}}, c_i32_138794_recast_x_q});
    assign i_pivot13_emscripten_dom_vk_to_string231_o = $unsigned($signed(i_pivot13_emscripten_dom_vk_to_string231_a) - $signed(i_pivot13_emscripten_dom_vk_to_string231_b));
    assign i_pivot13_emscripten_dom_vk_to_string231_c[0] = i_pivot13_emscripten_dom_vk_to_string231_o[33];

    // i_acl_1327_emscripten_dom_vk_to_string556(LOGICAL,284)@17 + 1
    assign i_acl_1327_emscripten_dom_vk_to_string556_qi = i_pivot13_emscripten_dom_vk_to_string231_c ^ i_pivot41_emscripten_dom_vk_to_string15_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1327_emscripten_dom_vk_to_string556_delay ( .xin(i_acl_1327_emscripten_dom_vk_to_string556_qi), .xout(i_acl_1327_emscripten_dom_vk_to_string556_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1331_emscripten_dom_vk_to_string557(MUX,285)@18
    assign i_acl_1331_emscripten_dom_vk_to_string557_s = i_acl_1327_emscripten_dom_vk_to_string556_q;
    always @(i_acl_1331_emscripten_dom_vk_to_string557_s or i_acl_1323_emscripten_dom_vk_to_string555_q or c_i64_4649122190329905152986_q)
    begin
        unique case (i_acl_1331_emscripten_dom_vk_to_string557_s)
            1'b0 : i_acl_1331_emscripten_dom_vk_to_string557_q = i_acl_1323_emscripten_dom_vk_to_string555_q;
            1'b1 : i_acl_1331_emscripten_dom_vk_to_string557_q = c_i64_4649122190329905152986_q;
            default : i_acl_1331_emscripten_dom_vk_to_string557_q = 64'b0;
        endcase
    end

    // i_acl_1332_emscripten_dom_vk_to_string558(LOGICAL,286)@17 + 1
    assign i_acl_1332_emscripten_dom_vk_to_string558_qi = i_pivot27_emscripten_dom_vk_to_string61_c ^ i_pivot25_emscripten_dom_vk_to_string123_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1332_emscripten_dom_vk_to_string558_delay ( .xin(i_acl_1332_emscripten_dom_vk_to_string558_qi), .xout(i_acl_1332_emscripten_dom_vk_to_string558_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1338_emscripten_dom_vk_to_string559(MUX,287)@18
    assign i_acl_1338_emscripten_dom_vk_to_string559_s = i_acl_1332_emscripten_dom_vk_to_string558_q;
    always @(i_acl_1338_emscripten_dom_vk_to_string559_s or i_acl_1331_emscripten_dom_vk_to_string557_q or c_i64_4649403665306615808987_q)
    begin
        unique case (i_acl_1338_emscripten_dom_vk_to_string559_s)
            1'b0 : i_acl_1338_emscripten_dom_vk_to_string559_q = i_acl_1331_emscripten_dom_vk_to_string557_q;
            1'b1 : i_acl_1338_emscripten_dom_vk_to_string559_q = c_i64_4649403665306615808987_q;
            default : i_acl_1338_emscripten_dom_vk_to_string559_q = 64'b0;
        endcase
    end

    // i_acl_1341_emscripten_dom_vk_to_string560(LOGICAL,288)@17 + 1
    assign i_acl_1341_emscripten_dom_vk_to_string560_qi = i_pivot41_emscripten_dom_vk_to_string15_c ^ i_pivot21_emscripten_dom_vk_to_string121_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1341_emscripten_dom_vk_to_string560_delay ( .xin(i_acl_1341_emscripten_dom_vk_to_string560_qi), .xout(i_acl_1341_emscripten_dom_vk_to_string560_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1345_emscripten_dom_vk_to_string561(MUX,289)@18 + 1
    assign i_acl_1345_emscripten_dom_vk_to_string561_s = i_acl_1341_emscripten_dom_vk_to_string560_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1345_emscripten_dom_vk_to_string561_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1345_emscripten_dom_vk_to_string561_s)
                1'b0 : i_acl_1345_emscripten_dom_vk_to_string561_q <= i_acl_1338_emscripten_dom_vk_to_string559_q;
                1'b1 : i_acl_1345_emscripten_dom_vk_to_string561_q <= c_i64_4649685140283326464988_q;
                default : i_acl_1345_emscripten_dom_vk_to_string561_q <= 64'b0;
            endcase
        end
    end

    // i_acl_1347_emscripten_dom_vk_to_string562(LOGICAL,290)@2 + 1
    assign i_acl_1347_emscripten_dom_vk_to_string562_qi = i_pivot301_emscripten_dom_vk_to_string319_c ^ i_pivot309_emscripten_dom_vk_to_string111_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1347_emscripten_dom_vk_to_string562_delay ( .xin(i_acl_1347_emscripten_dom_vk_to_string562_qi), .xout(i_acl_1347_emscripten_dom_vk_to_string562_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist144_i_acl_1347_emscripten_dom_vk_to_string562_q_17(DELAY,1229)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist144_i_acl_1347_emscripten_dom_vk_to_string562_q_17 ( .xin(i_acl_1347_emscripten_dom_vk_to_string562_q), .xout(redist144_i_acl_1347_emscripten_dom_vk_to_string562_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1353_emscripten_dom_vk_to_string563(MUX,291)@19
    assign i_acl_1353_emscripten_dom_vk_to_string563_s = redist144_i_acl_1347_emscripten_dom_vk_to_string562_q_17_q;
    always @(i_acl_1353_emscripten_dom_vk_to_string563_s or i_acl_1345_emscripten_dom_vk_to_string561_q or c_i64_4649966615260037120989_q)
    begin
        unique case (i_acl_1353_emscripten_dom_vk_to_string563_s)
            1'b0 : i_acl_1353_emscripten_dom_vk_to_string563_q = i_acl_1345_emscripten_dom_vk_to_string561_q;
            1'b1 : i_acl_1353_emscripten_dom_vk_to_string563_q = c_i64_4649966615260037120989_q;
            default : i_acl_1353_emscripten_dom_vk_to_string563_q = 64'b0;
        endcase
    end

    // redist55_i_pivot255_emscripten_dom_vk_to_string305_c_2(DELAY,1140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_pivot255_emscripten_dom_vk_to_string305_c_2_q <= '0;
        end
        else
        begin
            redist55_i_pivot255_emscripten_dom_vk_to_string305_c_2_q <= $unsigned(i_pivot255_emscripten_dom_vk_to_string305_c);
        end
    end

    // i_acl_1354_emscripten_dom_vk_to_string564(LOGICAL,292)@5 + 1
    assign i_acl_1354_emscripten_dom_vk_to_string564_qi = i_pivot257_emscripten_dom_vk_to_string205_c ^ redist55_i_pivot255_emscripten_dom_vk_to_string305_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1354_emscripten_dom_vk_to_string564_delay ( .xin(i_acl_1354_emscripten_dom_vk_to_string564_qi), .xout(i_acl_1354_emscripten_dom_vk_to_string564_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist143_i_acl_1354_emscripten_dom_vk_to_string564_q_14(DELAY,1228)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist143_i_acl_1354_emscripten_dom_vk_to_string564_q_14 ( .xin(i_acl_1354_emscripten_dom_vk_to_string564_q), .xout(redist143_i_acl_1354_emscripten_dom_vk_to_string564_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1361_emscripten_dom_vk_to_string565(MUX,293)@19
    assign i_acl_1361_emscripten_dom_vk_to_string565_s = redist143_i_acl_1354_emscripten_dom_vk_to_string564_q_14_q;
    always @(i_acl_1361_emscripten_dom_vk_to_string565_s or i_acl_1353_emscripten_dom_vk_to_string563_q or c_i64_4650248090236747776990_q)
    begin
        unique case (i_acl_1361_emscripten_dom_vk_to_string565_s)
            1'b0 : i_acl_1361_emscripten_dom_vk_to_string565_q = i_acl_1353_emscripten_dom_vk_to_string563_q;
            1'b1 : i_acl_1361_emscripten_dom_vk_to_string565_q = c_i64_4650248090236747776990_q;
            default : i_acl_1361_emscripten_dom_vk_to_string565_q = 64'b0;
        endcase
    end

    // redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2(DELAY,1149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_delay_0 <= '0;
            redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_q <= '0;
        end
        else
        begin
            redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_delay_0 <= $unsigned(i_pivot197_emscripten_dom_vk_to_string91_c);
            redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_q <= redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_delay_0;
        end
    end

    // i_acl_1362_emscripten_dom_vk_to_string566(LOGICAL,294)@3 + 1
    assign i_acl_1362_emscripten_dom_vk_to_string566_qi = redist64_i_pivot197_emscripten_dom_vk_to_string91_c_2_q ^ i_pivot195_emscripten_dom_vk_to_string183_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1362_emscripten_dom_vk_to_string566_delay ( .xin(i_acl_1362_emscripten_dom_vk_to_string566_qi), .xout(i_acl_1362_emscripten_dom_vk_to_string566_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist142_i_acl_1362_emscripten_dom_vk_to_string566_q_16(DELAY,1227)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist142_i_acl_1362_emscripten_dom_vk_to_string566_q_16 ( .xin(i_acl_1362_emscripten_dom_vk_to_string566_q), .xout(redist142_i_acl_1362_emscripten_dom_vk_to_string566_q_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1368_emscripten_dom_vk_to_string567(MUX,295)@19
    assign i_acl_1368_emscripten_dom_vk_to_string567_s = redist142_i_acl_1362_emscripten_dom_vk_to_string566_q_16_q;
    always @(i_acl_1368_emscripten_dom_vk_to_string567_s or i_acl_1361_emscripten_dom_vk_to_string565_q or c_i64_4650529565213458432991_q)
    begin
        unique case (i_acl_1368_emscripten_dom_vk_to_string567_s)
            1'b0 : i_acl_1368_emscripten_dom_vk_to_string567_q = i_acl_1361_emscripten_dom_vk_to_string565_q;
            1'b1 : i_acl_1368_emscripten_dom_vk_to_string567_q = c_i64_4650529565213458432991_q;
            default : i_acl_1368_emscripten_dom_vk_to_string567_q = 64'b0;
        endcase
    end

    // redist52_i_pivot273_emscripten_dom_vk_to_string309_c_8(DELAY,1137)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist52_i_pivot273_emscripten_dom_vk_to_string309_c_8 ( .xin(i_pivot273_emscripten_dom_vk_to_string309_c), .xout(redist52_i_pivot273_emscripten_dom_vk_to_string309_c_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1371_emscripten_dom_vk_to_string568(LOGICAL,296)@13 + 1
    assign i_acl_1371_emscripten_dom_vk_to_string568_qi = redist52_i_pivot273_emscripten_dom_vk_to_string309_c_8_q ^ i_pivot289_emscripten_dom_vk_to_string53_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1371_emscripten_dom_vk_to_string568_delay ( .xin(i_acl_1371_emscripten_dom_vk_to_string568_qi), .xout(i_acl_1371_emscripten_dom_vk_to_string568_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6(DELAY,1226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_0 <= '0;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_1 <= '0;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_2 <= '0;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_3 <= '0;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_q <= '0;
        end
        else
        begin
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_0 <= $unsigned(i_acl_1371_emscripten_dom_vk_to_string568_q);
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_1 <= redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_0;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_2 <= redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_1;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_3 <= redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_2;
            redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_q <= redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_delay_3;
        end
    end

    // i_acl_1376_emscripten_dom_vk_to_string569(MUX,297)@19
    assign i_acl_1376_emscripten_dom_vk_to_string569_s = redist141_i_acl_1371_emscripten_dom_vk_to_string568_q_6_q;
    always @(i_acl_1376_emscripten_dom_vk_to_string569_s or i_acl_1368_emscripten_dom_vk_to_string567_q or c_i64_4650811040190169088992_q)
    begin
        unique case (i_acl_1376_emscripten_dom_vk_to_string569_s)
            1'b0 : i_acl_1376_emscripten_dom_vk_to_string569_q = i_acl_1368_emscripten_dom_vk_to_string567_q;
            1'b1 : i_acl_1376_emscripten_dom_vk_to_string569_q = c_i64_4650811040190169088992_q;
            default : i_acl_1376_emscripten_dom_vk_to_string569_q = 64'b0;
        endcase
    end

    // redist86_i_pivot113_emscripten_dom_vk_to_string261_c_15(DELAY,1171)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist86_i_pivot113_emscripten_dom_vk_to_string261_c_15 ( .xin(i_pivot113_emscripten_dom_vk_to_string261_c), .xout(redist86_i_pivot113_emscripten_dom_vk_to_string261_c_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_188756_recast_x(CONSTANT,940)
    assign c_i32_188756_recast_x_q = $unsigned(32'b00000000000000000000000010111100);

    // i_pivot115_emscripten_dom_vk_to_string155(COMPARE,539)@17
    assign i_pivot115_emscripten_dom_vk_to_string155_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot115_emscripten_dom_vk_to_string155_b = $unsigned({{2{c_i32_188756_recast_x_q[31]}}, c_i32_188756_recast_x_q});
    assign i_pivot115_emscripten_dom_vk_to_string155_o = $unsigned($signed(i_pivot115_emscripten_dom_vk_to_string155_a) - $signed(i_pivot115_emscripten_dom_vk_to_string155_b));
    assign i_pivot115_emscripten_dom_vk_to_string155_c[0] = i_pivot115_emscripten_dom_vk_to_string155_o[33];

    // i_acl_1377_emscripten_dom_vk_to_string570(LOGICAL,298)@17 + 1
    assign i_acl_1377_emscripten_dom_vk_to_string570_qi = i_pivot115_emscripten_dom_vk_to_string155_c ^ redist86_i_pivot113_emscripten_dom_vk_to_string261_c_15_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1377_emscripten_dom_vk_to_string570_delay ( .xin(i_acl_1377_emscripten_dom_vk_to_string570_qi), .xout(i_acl_1377_emscripten_dom_vk_to_string570_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist140_i_acl_1377_emscripten_dom_vk_to_string570_q_2(DELAY,1225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_i_acl_1377_emscripten_dom_vk_to_string570_q_2_q <= '0;
        end
        else
        begin
            redist140_i_acl_1377_emscripten_dom_vk_to_string570_q_2_q <= $unsigned(i_acl_1377_emscripten_dom_vk_to_string570_q);
        end
    end

    // i_acl_1384_emscripten_dom_vk_to_string571(MUX,299)@19
    assign i_acl_1384_emscripten_dom_vk_to_string571_s = redist140_i_acl_1377_emscripten_dom_vk_to_string570_q_2_q;
    always @(i_acl_1384_emscripten_dom_vk_to_string571_s or i_acl_1376_emscripten_dom_vk_to_string569_q or c_i64_4651092515166879744993_q)
    begin
        unique case (i_acl_1384_emscripten_dom_vk_to_string571_s)
            1'b0 : i_acl_1384_emscripten_dom_vk_to_string571_q = i_acl_1376_emscripten_dom_vk_to_string569_q;
            1'b1 : i_acl_1384_emscripten_dom_vk_to_string571_q = c_i64_4651092515166879744993_q;
            default : i_acl_1384_emscripten_dom_vk_to_string571_q = 64'b0;
        endcase
    end

    // c_i32_295994_recast_x(CONSTANT,1044)
    assign c_i32_295994_recast_x_q = $unsigned(32'b00000000000000000000000100100111);

    // i_unnamed_emscripten_dom_vk_to_string572(LOGICAL,702)@17 + 1
    assign i_unnamed_emscripten_dom_vk_to_string572_qi = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_295994_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string572_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string572_qi), .xout(i_unnamed_emscripten_dom_vk_to_string572_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_unnamed_emscripten_dom_vk_to_string572_q_2(DELAY,1107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_unnamed_emscripten_dom_vk_to_string572_q_2_q <= '0;
        end
        else
        begin
            redist22_i_unnamed_emscripten_dom_vk_to_string572_q_2_q <= $unsigned(i_unnamed_emscripten_dom_vk_to_string572_q);
        end
    end

    // i_acl_1392_emscripten_dom_vk_to_string574(MUX,300)@19
    assign i_acl_1392_emscripten_dom_vk_to_string574_s = redist22_i_unnamed_emscripten_dom_vk_to_string572_q_2_q;
    always @(i_acl_1392_emscripten_dom_vk_to_string574_s or i_acl_1384_emscripten_dom_vk_to_string571_q or c_i64_4651373990143590400995_q)
    begin
        unique case (i_acl_1392_emscripten_dom_vk_to_string574_s)
            1'b0 : i_acl_1392_emscripten_dom_vk_to_string574_q = i_acl_1384_emscripten_dom_vk_to_string571_q;
            1'b1 : i_acl_1392_emscripten_dom_vk_to_string574_q = c_i64_4651373990143590400995_q;
            default : i_acl_1392_emscripten_dom_vk_to_string574_q = 64'b0;
        endcase
    end

    // redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5(DELAY,1114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_0 <= '0;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_1 <= '0;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_2 <= '0;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_3 <= '0;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_q <= '0;
        end
        else
        begin
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_0 <= $unsigned(i_pivot85_emscripten_dom_vk_to_string17_c);
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_1 <= redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_0;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_2 <= redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_1;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_3 <= redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_2;
            redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_q <= redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_delay_3;
        end
    end

    // i_acl_1395_emscripten_dom_vk_to_string575(LOGICAL,301)@10 + 1
    assign i_acl_1395_emscripten_dom_vk_to_string575_qi = redist29_i_pivot85_emscripten_dom_vk_to_string17_c_5_q ^ i_pivot65_emscripten_dom_vk_to_string137_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1395_emscripten_dom_vk_to_string575_delay ( .xin(i_acl_1395_emscripten_dom_vk_to_string575_qi), .xout(i_acl_1395_emscripten_dom_vk_to_string575_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist139_i_acl_1395_emscripten_dom_vk_to_string575_q_9(DELAY,1224)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist139_i_acl_1395_emscripten_dom_vk_to_string575_q_9 ( .xin(i_acl_1395_emscripten_dom_vk_to_string575_q), .xout(redist139_i_acl_1395_emscripten_dom_vk_to_string575_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1399_emscripten_dom_vk_to_string576(MUX,302)@19 + 1
    assign i_acl_1399_emscripten_dom_vk_to_string576_s = redist139_i_acl_1395_emscripten_dom_vk_to_string575_q_9_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1399_emscripten_dom_vk_to_string576_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1399_emscripten_dom_vk_to_string576_s)
                1'b0 : i_acl_1399_emscripten_dom_vk_to_string576_q <= i_acl_1392_emscripten_dom_vk_to_string574_q;
                1'b1 : i_acl_1399_emscripten_dom_vk_to_string576_q <= c_i64_4651655465120301056996_q;
                default : i_acl_1399_emscripten_dom_vk_to_string576_q <= 64'b0;
            endcase
        end
    end

    // c_i32_195811_recast_x(CONSTANT,947)
    assign c_i32_195811_recast_x_q = $unsigned(32'b00000000000000000000000011000011);

    // i_pivot123_emscripten_dom_vk_to_string265(COMPARE,544)@17
    assign i_pivot123_emscripten_dom_vk_to_string265_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot123_emscripten_dom_vk_to_string265_b = $unsigned({{2{c_i32_195811_recast_x_q[31]}}, c_i32_195811_recast_x_q});
    assign i_pivot123_emscripten_dom_vk_to_string265_o = $unsigned($signed(i_pivot123_emscripten_dom_vk_to_string265_a) - $signed(i_pivot123_emscripten_dom_vk_to_string265_b));
    assign i_pivot123_emscripten_dom_vk_to_string265_c[0] = i_pivot123_emscripten_dom_vk_to_string265_o[33];

    // redist83_i_pivot125_emscripten_dom_vk_to_string159_c_8(DELAY,1168)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist83_i_pivot125_emscripten_dom_vk_to_string159_c_8 ( .xin(i_pivot125_emscripten_dom_vk_to_string159_c), .xout(redist83_i_pivot125_emscripten_dom_vk_to_string159_c_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1400_emscripten_dom_vk_to_string577(LOGICAL,303)@17 + 1
    assign i_acl_1400_emscripten_dom_vk_to_string577_qi = redist83_i_pivot125_emscripten_dom_vk_to_string159_c_8_q ^ i_pivot123_emscripten_dom_vk_to_string265_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1400_emscripten_dom_vk_to_string577_delay ( .xin(i_acl_1400_emscripten_dom_vk_to_string577_qi), .xout(i_acl_1400_emscripten_dom_vk_to_string577_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3(DELAY,1223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_delay_0 <= '0;
            redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_q <= '0;
        end
        else
        begin
            redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_delay_0 <= $unsigned(i_acl_1400_emscripten_dom_vk_to_string577_q);
            redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_q <= redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_delay_0;
        end
    end

    // i_acl_1407_emscripten_dom_vk_to_string578(MUX,304)@20
    assign i_acl_1407_emscripten_dom_vk_to_string578_s = redist138_i_acl_1400_emscripten_dom_vk_to_string577_q_3_q;
    always @(i_acl_1407_emscripten_dom_vk_to_string578_s or i_acl_1399_emscripten_dom_vk_to_string576_q or c_i64_4651936940097011712997_q)
    begin
        unique case (i_acl_1407_emscripten_dom_vk_to_string578_s)
            1'b0 : i_acl_1407_emscripten_dom_vk_to_string578_q = i_acl_1399_emscripten_dom_vk_to_string576_q;
            1'b1 : i_acl_1407_emscripten_dom_vk_to_string578_q = c_i64_4651936940097011712997_q;
            default : i_acl_1407_emscripten_dom_vk_to_string578_q = 64'b0;
        endcase
    end

    // c_i32_281837_recast_x(CONSTANT,1033)
    assign c_i32_281837_recast_x_q = $unsigned(32'b00000000000000000000000100011001);

    // i_pivot295_emscripten_dom_vk_to_string317(COMPARE,638)@17
    assign i_pivot295_emscripten_dom_vk_to_string317_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot295_emscripten_dom_vk_to_string317_b = $unsigned({{2{c_i32_281837_recast_x_q[31]}}, c_i32_281837_recast_x_q});
    assign i_pivot295_emscripten_dom_vk_to_string317_o = $unsigned($signed(i_pivot295_emscripten_dom_vk_to_string317_a) - $signed(i_pivot295_emscripten_dom_vk_to_string317_b));
    assign i_pivot295_emscripten_dom_vk_to_string317_c[0] = i_pivot295_emscripten_dom_vk_to_string317_o[33];

    // redist46_i_pivot297_emscripten_dom_vk_to_string219_c_11(DELAY,1131)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist46_i_pivot297_emscripten_dom_vk_to_string219_c_11 ( .xin(i_pivot297_emscripten_dom_vk_to_string219_c), .xout(redist46_i_pivot297_emscripten_dom_vk_to_string219_c_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1408_emscripten_dom_vk_to_string579(LOGICAL,305)@17 + 1
    assign i_acl_1408_emscripten_dom_vk_to_string579_qi = redist46_i_pivot297_emscripten_dom_vk_to_string219_c_11_q ^ i_pivot295_emscripten_dom_vk_to_string317_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1408_emscripten_dom_vk_to_string579_delay ( .xin(i_acl_1408_emscripten_dom_vk_to_string579_qi), .xout(i_acl_1408_emscripten_dom_vk_to_string579_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3(DELAY,1222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_delay_0 <= '0;
            redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_q <= '0;
        end
        else
        begin
            redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_delay_0 <= $unsigned(i_acl_1408_emscripten_dom_vk_to_string579_q);
            redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_q <= redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_delay_0;
        end
    end

    // i_acl_1415_emscripten_dom_vk_to_string580(MUX,306)@20
    assign i_acl_1415_emscripten_dom_vk_to_string580_s = redist137_i_acl_1408_emscripten_dom_vk_to_string579_q_3_q;
    always @(i_acl_1415_emscripten_dom_vk_to_string580_s or i_acl_1407_emscripten_dom_vk_to_string578_q or c_i64_4652218415073722368998_q)
    begin
        unique case (i_acl_1415_emscripten_dom_vk_to_string580_s)
            1'b0 : i_acl_1415_emscripten_dom_vk_to_string580_q = i_acl_1407_emscripten_dom_vk_to_string578_q;
            1'b1 : i_acl_1415_emscripten_dom_vk_to_string580_q = c_i64_4652218415073722368998_q;
            default : i_acl_1415_emscripten_dom_vk_to_string580_q = 64'b0;
        endcase
    end

    // c_i32_294999_recast_x(CONSTANT,1043)
    assign c_i32_294999_recast_x_q = $unsigned(32'b00000000000000000000000100100110);

    // i_unnamed_emscripten_dom_vk_to_string581(LOGICAL,703)@17 + 1
    assign i_unnamed_emscripten_dom_vk_to_string581_qi = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_294999_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string581_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string581_qi), .xout(i_unnamed_emscripten_dom_vk_to_string581_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3(DELAY,1106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_delay_0 <= '0;
            redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_q <= '0;
        end
        else
        begin
            redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_delay_0 <= $unsigned(i_unnamed_emscripten_dom_vk_to_string581_q);
            redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_q <= redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_delay_0;
        end
    end

    // i_acl_1423_emscripten_dom_vk_to_string583(MUX,307)@20
    assign i_acl_1423_emscripten_dom_vk_to_string583_s = redist21_i_unnamed_emscripten_dom_vk_to_string581_q_3_q;
    always @(i_acl_1423_emscripten_dom_vk_to_string583_s or i_acl_1415_emscripten_dom_vk_to_string580_q or c_i64_46524998900504330241000_q)
    begin
        unique case (i_acl_1423_emscripten_dom_vk_to_string583_s)
            1'b0 : i_acl_1423_emscripten_dom_vk_to_string583_q = i_acl_1415_emscripten_dom_vk_to_string580_q;
            1'b1 : i_acl_1423_emscripten_dom_vk_to_string583_q = c_i64_46524998900504330241000_q;
            default : i_acl_1423_emscripten_dom_vk_to_string583_q = 64'b0;
        endcase
    end

    // c_i32_185755_recast_x(CONSTANT,937)
    assign c_i32_185755_recast_x_q = $unsigned(32'b00000000000000000000000010111001);

    // i_pivot111_emscripten_dom_vk_to_string153(COMPARE,537)@17
    assign i_pivot111_emscripten_dom_vk_to_string153_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot111_emscripten_dom_vk_to_string153_b = $unsigned({{2{c_i32_185755_recast_x_q[31]}}, c_i32_185755_recast_x_q});
    assign i_pivot111_emscripten_dom_vk_to_string153_o = $unsigned($signed(i_pivot111_emscripten_dom_vk_to_string153_a) - $signed(i_pivot111_emscripten_dom_vk_to_string153_b));
    assign i_pivot111_emscripten_dom_vk_to_string153_c[0] = i_pivot111_emscripten_dom_vk_to_string153_o[33];

    // redist81_i_pivot131_emscripten_dom_vk_to_string19_c_12(DELAY,1166)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist81_i_pivot131_emscripten_dom_vk_to_string19_c_12 ( .xin(i_pivot131_emscripten_dom_vk_to_string19_c), .xout(redist81_i_pivot131_emscripten_dom_vk_to_string19_c_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1426_emscripten_dom_vk_to_string584(LOGICAL,308)@17 + 1
    assign i_acl_1426_emscripten_dom_vk_to_string584_qi = redist81_i_pivot131_emscripten_dom_vk_to_string19_c_12_q ^ i_pivot111_emscripten_dom_vk_to_string153_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1426_emscripten_dom_vk_to_string584_delay ( .xin(i_acl_1426_emscripten_dom_vk_to_string584_qi), .xout(i_acl_1426_emscripten_dom_vk_to_string584_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3(DELAY,1221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_delay_0 <= '0;
            redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_q <= '0;
        end
        else
        begin
            redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_delay_0 <= $unsigned(i_acl_1426_emscripten_dom_vk_to_string584_q);
            redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_q <= redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_delay_0;
        end
    end

    // i_acl_1430_emscripten_dom_vk_to_string585(MUX,309)@20
    assign i_acl_1430_emscripten_dom_vk_to_string585_s = redist136_i_acl_1426_emscripten_dom_vk_to_string584_q_3_q;
    always @(i_acl_1430_emscripten_dom_vk_to_string585_s or i_acl_1423_emscripten_dom_vk_to_string583_q or c_i64_46527813650271436801001_q)
    begin
        unique case (i_acl_1430_emscripten_dom_vk_to_string585_s)
            1'b0 : i_acl_1430_emscripten_dom_vk_to_string585_q = i_acl_1423_emscripten_dom_vk_to_string583_q;
            1'b1 : i_acl_1430_emscripten_dom_vk_to_string585_q = c_i64_46527813650271436801001_q;
            default : i_acl_1430_emscripten_dom_vk_to_string585_q = 64'b0;
        endcase
    end

    // c_i32_187717_recast_x(CONSTANT,939)
    assign c_i32_187717_recast_x_q = $unsigned(32'b00000000000000000000000010111011);

    // i_pivot117_emscripten_dom_vk_to_string77(COMPARE,540)@17
    assign i_pivot117_emscripten_dom_vk_to_string77_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot117_emscripten_dom_vk_to_string77_b = $unsigned({{2{c_i32_187717_recast_x_q[31]}}, c_i32_187717_recast_x_q});
    assign i_pivot117_emscripten_dom_vk_to_string77_o = $unsigned($signed(i_pivot117_emscripten_dom_vk_to_string77_a) - $signed(i_pivot117_emscripten_dom_vk_to_string77_b));
    assign i_pivot117_emscripten_dom_vk_to_string77_c[0] = i_pivot117_emscripten_dom_vk_to_string77_o[33];

    // c_i32_186808_recast_x(CONSTANT,938)
    assign c_i32_186808_recast_x_q = $unsigned(32'b00000000000000000000000010111010);

    // i_pivot109_emscripten_dom_vk_to_string259(COMPARE,536)@17
    assign i_pivot109_emscripten_dom_vk_to_string259_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot109_emscripten_dom_vk_to_string259_b = $unsigned({{2{c_i32_186808_recast_x_q[31]}}, c_i32_186808_recast_x_q});
    assign i_pivot109_emscripten_dom_vk_to_string259_o = $unsigned($signed(i_pivot109_emscripten_dom_vk_to_string259_a) - $signed(i_pivot109_emscripten_dom_vk_to_string259_b));
    assign i_pivot109_emscripten_dom_vk_to_string259_c[0] = i_pivot109_emscripten_dom_vk_to_string259_o[33];

    // i_acl_1432_emscripten_dom_vk_to_string586(LOGICAL,310)@17 + 1
    assign i_acl_1432_emscripten_dom_vk_to_string586_qi = i_pivot109_emscripten_dom_vk_to_string259_c ^ i_pivot117_emscripten_dom_vk_to_string77_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1432_emscripten_dom_vk_to_string586_delay ( .xin(i_acl_1432_emscripten_dom_vk_to_string586_qi), .xout(i_acl_1432_emscripten_dom_vk_to_string586_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3(DELAY,1220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_delay_0 <= '0;
            redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_q <= '0;
        end
        else
        begin
            redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_delay_0 <= $unsigned(i_acl_1432_emscripten_dom_vk_to_string586_q);
            redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_q <= redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_delay_0;
        end
    end

    // i_acl_1438_emscripten_dom_vk_to_string587(MUX,311)@20
    assign i_acl_1438_emscripten_dom_vk_to_string587_s = redist135_i_acl_1432_emscripten_dom_vk_to_string586_q_3_q;
    always @(i_acl_1438_emscripten_dom_vk_to_string587_s or i_acl_1430_emscripten_dom_vk_to_string585_q or c_i64_46530628400038543361002_q)
    begin
        unique case (i_acl_1438_emscripten_dom_vk_to_string587_s)
            1'b0 : i_acl_1438_emscripten_dom_vk_to_string587_q = i_acl_1430_emscripten_dom_vk_to_string585_q;
            1'b1 : i_acl_1438_emscripten_dom_vk_to_string587_q = c_i64_46530628400038543361002_q;
            default : i_acl_1438_emscripten_dom_vk_to_string587_q = 64'b0;
        endcase
    end

    // redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4(DELAY,1151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_0 <= '0;
            redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_1 <= '0;
            redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_q <= '0;
        end
        else
        begin
            redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_0 <= $unsigned(i_pivot191_emscripten_dom_vk_to_string181_c);
            redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_1 <= redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_0;
            redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_q <= redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_delay_1;
        end
    end

    // i_acl_1440_emscripten_dom_vk_to_string588(LOGICAL,312)@8 + 1
    assign i_acl_1440_emscripten_dom_vk_to_string588_qi = i_pivot199_emscripten_dom_vk_to_string45_c ^ redist66_i_pivot191_emscripten_dom_vk_to_string181_c_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1440_emscripten_dom_vk_to_string588_delay ( .xin(i_acl_1440_emscripten_dom_vk_to_string588_qi), .xout(i_acl_1440_emscripten_dom_vk_to_string588_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist134_i_acl_1440_emscripten_dom_vk_to_string588_q_12(DELAY,1219)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist134_i_acl_1440_emscripten_dom_vk_to_string588_q_12 ( .xin(i_acl_1440_emscripten_dom_vk_to_string588_q), .xout(redist134_i_acl_1440_emscripten_dom_vk_to_string588_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1445_emscripten_dom_vk_to_string589(MUX,313)@20
    assign i_acl_1445_emscripten_dom_vk_to_string589_s = redist134_i_acl_1440_emscripten_dom_vk_to_string588_q_12_q;
    always @(i_acl_1445_emscripten_dom_vk_to_string589_s or i_acl_1438_emscripten_dom_vk_to_string587_q or c_i64_46533443149805649921003_q)
    begin
        unique case (i_acl_1445_emscripten_dom_vk_to_string589_s)
            1'b0 : i_acl_1445_emscripten_dom_vk_to_string589_q = i_acl_1438_emscripten_dom_vk_to_string587_q;
            1'b1 : i_acl_1445_emscripten_dom_vk_to_string589_q = c_i64_46533443149805649921003_q;
            default : i_acl_1445_emscripten_dom_vk_to_string589_q = 64'b0;
        endcase
    end

    // c_i32_196684_recast_x(CONSTANT,948)
    assign c_i32_196684_recast_x_q = $unsigned(32'b00000000000000000000000011000100);

    // i_pivot177_emscripten_dom_vk_to_string11(COMPARE,573)@17
    assign i_pivot177_emscripten_dom_vk_to_string11_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot177_emscripten_dom_vk_to_string11_b = $unsigned({{2{c_i32_196684_recast_x_q[31]}}, c_i32_196684_recast_x_q});
    assign i_pivot177_emscripten_dom_vk_to_string11_o = $unsigned($signed(i_pivot177_emscripten_dom_vk_to_string11_a) - $signed(i_pivot177_emscripten_dom_vk_to_string11_b));
    assign i_pivot177_emscripten_dom_vk_to_string11_c[0] = i_pivot177_emscripten_dom_vk_to_string11_o[33];

    // i_acl_1450_emscripten_dom_vk_to_string590(LOGICAL,314)@17 + 1
    assign i_acl_1450_emscripten_dom_vk_to_string590_qi = i_pivot123_emscripten_dom_vk_to_string265_c ^ i_pivot177_emscripten_dom_vk_to_string11_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1450_emscripten_dom_vk_to_string590_delay ( .xin(i_acl_1450_emscripten_dom_vk_to_string590_qi), .xout(i_acl_1450_emscripten_dom_vk_to_string590_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3(DELAY,1218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_delay_0 <= '0;
            redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_q <= '0;
        end
        else
        begin
            redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_delay_0 <= $unsigned(i_acl_1450_emscripten_dom_vk_to_string590_q);
            redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_q <= redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_delay_0;
        end
    end

    // i_acl_1453_emscripten_dom_vk_to_string591(MUX,315)@20 + 1
    assign i_acl_1453_emscripten_dom_vk_to_string591_s = redist133_i_acl_1450_emscripten_dom_vk_to_string590_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1453_emscripten_dom_vk_to_string591_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1453_emscripten_dom_vk_to_string591_s)
                1'b0 : i_acl_1453_emscripten_dom_vk_to_string591_q <= i_acl_1445_emscripten_dom_vk_to_string589_q;
                1'b1 : i_acl_1453_emscripten_dom_vk_to_string591_q <= c_i64_46536257899572756481004_q;
                default : i_acl_1453_emscripten_dom_vk_to_string591_q <= 64'b0;
            endcase
        end
    end

    // c_i32_282706_recast_x(CONSTANT,1034)
    assign c_i32_282706_recast_x_q = $unsigned(32'b00000000000000000000000100011010);

    // i_pivot311_emscripten_dom_vk_to_string55(COMPARE,646)@17
    assign i_pivot311_emscripten_dom_vk_to_string55_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot311_emscripten_dom_vk_to_string55_b = $unsigned({{2{c_i32_282706_recast_x_q[31]}}, c_i32_282706_recast_x_q});
    assign i_pivot311_emscripten_dom_vk_to_string55_o = $unsigned($signed(i_pivot311_emscripten_dom_vk_to_string55_a) - $signed(i_pivot311_emscripten_dom_vk_to_string55_b));
    assign i_pivot311_emscripten_dom_vk_to_string55_c[0] = i_pivot311_emscripten_dom_vk_to_string55_o[33];

    // i_acl_1456_emscripten_dom_vk_to_string592(LOGICAL,316)@17 + 1
    assign i_acl_1456_emscripten_dom_vk_to_string592_qi = i_pivot295_emscripten_dom_vk_to_string317_c ^ i_pivot311_emscripten_dom_vk_to_string55_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1456_emscripten_dom_vk_to_string592_delay ( .xin(i_acl_1456_emscripten_dom_vk_to_string592_qi), .xout(i_acl_1456_emscripten_dom_vk_to_string592_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4(DELAY,1217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_0 <= '0;
            redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_1 <= '0;
            redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_q <= '0;
        end
        else
        begin
            redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_0 <= $unsigned(i_acl_1456_emscripten_dom_vk_to_string592_q);
            redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_1 <= redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_0;
            redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_q <= redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_delay_1;
        end
    end

    // i_acl_1461_emscripten_dom_vk_to_string593(MUX,317)@21
    assign i_acl_1461_emscripten_dom_vk_to_string593_s = redist132_i_acl_1456_emscripten_dom_vk_to_string592_q_4_q;
    always @(i_acl_1461_emscripten_dom_vk_to_string593_s or i_acl_1453_emscripten_dom_vk_to_string591_q or c_i64_46539072649339863041005_q)
    begin
        unique case (i_acl_1461_emscripten_dom_vk_to_string593_s)
            1'b0 : i_acl_1461_emscripten_dom_vk_to_string593_q = i_acl_1453_emscripten_dom_vk_to_string591_q;
            1'b1 : i_acl_1461_emscripten_dom_vk_to_string593_q = c_i64_46539072649339863041005_q;
            default : i_acl_1461_emscripten_dom_vk_to_string593_q = 64'b0;
        endcase
    end

    // redist33_i_pivot71_emscripten_dom_vk_to_string69_c_9(DELAY,1118)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_i_pivot71_emscripten_dom_vk_to_string69_c_9 ( .xin(i_pivot71_emscripten_dom_vk_to_string69_c), .xout(redist33_i_pivot71_emscripten_dom_vk_to_string69_c_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1463_emscripten_dom_vk_to_string594(LOGICAL,318)@10 + 1
    assign i_acl_1463_emscripten_dom_vk_to_string594_qi = i_pivot63_emscripten_dom_vk_to_string245_c ^ redist33_i_pivot71_emscripten_dom_vk_to_string69_c_9_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1463_emscripten_dom_vk_to_string594_delay ( .xin(i_acl_1463_emscripten_dom_vk_to_string594_qi), .xout(i_acl_1463_emscripten_dom_vk_to_string594_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist131_i_acl_1463_emscripten_dom_vk_to_string594_q_11(DELAY,1216)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist131_i_acl_1463_emscripten_dom_vk_to_string594_q_11 ( .xin(i_acl_1463_emscripten_dom_vk_to_string594_q), .xout(redist131_i_acl_1463_emscripten_dom_vk_to_string594_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1469_emscripten_dom_vk_to_string595(MUX,319)@21
    assign i_acl_1469_emscripten_dom_vk_to_string595_s = redist131_i_acl_1463_emscripten_dom_vk_to_string594_q_11_q;
    always @(i_acl_1469_emscripten_dom_vk_to_string595_s or i_acl_1461_emscripten_dom_vk_to_string593_q or c_i64_46541887399106969601006_q)
    begin
        unique case (i_acl_1469_emscripten_dom_vk_to_string595_s)
            1'b0 : i_acl_1469_emscripten_dom_vk_to_string595_q = i_acl_1461_emscripten_dom_vk_to_string593_q;
            1'b1 : i_acl_1469_emscripten_dom_vk_to_string595_q = c_i64_46541887399106969601006_q;
            default : i_acl_1469_emscripten_dom_vk_to_string595_q = 64'b0;
        endcase
    end

    // c_i32_158712_recast_x(CONSTANT,910)
    assign c_i32_158712_recast_x_q = $unsigned(32'b00000000000000000000000010011110);

    // i_pivot59_emscripten_dom_vk_to_string67(COMPARE,665)@17
    assign i_pivot59_emscripten_dom_vk_to_string67_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot59_emscripten_dom_vk_to_string67_b = $unsigned({{2{c_i32_158712_recast_x_q[31]}}, c_i32_158712_recast_x_q});
    assign i_pivot59_emscripten_dom_vk_to_string67_o = $unsigned($signed(i_pivot59_emscripten_dom_vk_to_string67_a) - $signed(i_pivot59_emscripten_dom_vk_to_string67_b));
    assign i_pivot59_emscripten_dom_vk_to_string67_c[0] = i_pivot59_emscripten_dom_vk_to_string67_o[33];

    // c_i32_157799_recast_x(CONSTANT,909)
    assign c_i32_157799_recast_x_q = $unsigned(32'b00000000000000000000000010011101);

    // i_pivot51_emscripten_dom_vk_to_string241(COMPARE,661)@17
    assign i_pivot51_emscripten_dom_vk_to_string241_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot51_emscripten_dom_vk_to_string241_b = $unsigned({{2{c_i32_157799_recast_x_q[31]}}, c_i32_157799_recast_x_q});
    assign i_pivot51_emscripten_dom_vk_to_string241_o = $unsigned($signed(i_pivot51_emscripten_dom_vk_to_string241_a) - $signed(i_pivot51_emscripten_dom_vk_to_string241_b));
    assign i_pivot51_emscripten_dom_vk_to_string241_c[0] = i_pivot51_emscripten_dom_vk_to_string241_o[33];

    // i_acl_1471_emscripten_dom_vk_to_string596(LOGICAL,320)@17 + 1
    assign i_acl_1471_emscripten_dom_vk_to_string596_qi = i_pivot51_emscripten_dom_vk_to_string241_c ^ i_pivot59_emscripten_dom_vk_to_string67_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1471_emscripten_dom_vk_to_string596_delay ( .xin(i_acl_1471_emscripten_dom_vk_to_string596_qi), .xout(i_acl_1471_emscripten_dom_vk_to_string596_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4(DELAY,1215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_0 <= '0;
            redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_1 <= '0;
            redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_q <= '0;
        end
        else
        begin
            redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_0 <= $unsigned(i_acl_1471_emscripten_dom_vk_to_string596_q);
            redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_1 <= redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_0;
            redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_q <= redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_delay_1;
        end
    end

    // i_acl_1477_emscripten_dom_vk_to_string597(MUX,321)@21
    assign i_acl_1477_emscripten_dom_vk_to_string597_s = redist130_i_acl_1471_emscripten_dom_vk_to_string596_q_4_q;
    always @(i_acl_1477_emscripten_dom_vk_to_string597_s or i_acl_1469_emscripten_dom_vk_to_string595_q or c_i64_46544702148874076161007_q)
    begin
        unique case (i_acl_1477_emscripten_dom_vk_to_string597_s)
            1'b0 : i_acl_1477_emscripten_dom_vk_to_string597_q = i_acl_1469_emscripten_dom_vk_to_string595_q;
            1'b1 : i_acl_1477_emscripten_dom_vk_to_string597_q = c_i64_46544702148874076161007_q;
            default : i_acl_1477_emscripten_dom_vk_to_string597_q = 64'b0;
        endcase
    end

    // redist35_i_pivot57_emscripten_dom_vk_to_string135_c_7(DELAY,1120)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_i_pivot57_emscripten_dom_vk_to_string135_c_7 ( .xin(i_pivot57_emscripten_dom_vk_to_string135_c), .xout(redist35_i_pivot57_emscripten_dom_vk_to_string135_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1478_emscripten_dom_vk_to_string598(LOGICAL,322)@17 + 1
    assign i_acl_1478_emscripten_dom_vk_to_string598_qi = i_pivot59_emscripten_dom_vk_to_string67_c ^ redist35_i_pivot57_emscripten_dom_vk_to_string135_c_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1478_emscripten_dom_vk_to_string598_delay ( .xin(i_acl_1478_emscripten_dom_vk_to_string598_qi), .xout(i_acl_1478_emscripten_dom_vk_to_string598_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4(DELAY,1214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_0 <= '0;
            redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_1 <= '0;
            redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_q <= '0;
        end
        else
        begin
            redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_0 <= $unsigned(i_acl_1478_emscripten_dom_vk_to_string598_q);
            redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_1 <= redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_0;
            redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_q <= redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_delay_1;
        end
    end

    // i_acl_1484_emscripten_dom_vk_to_string599(MUX,323)@21
    assign i_acl_1484_emscripten_dom_vk_to_string599_s = redist129_i_acl_1478_emscripten_dom_vk_to_string598_q_4_q;
    always @(i_acl_1484_emscripten_dom_vk_to_string599_s or i_acl_1477_emscripten_dom_vk_to_string597_q or c_i64_46547516898641182721008_q)
    begin
        unique case (i_acl_1484_emscripten_dom_vk_to_string599_s)
            1'b0 : i_acl_1484_emscripten_dom_vk_to_string599_q = i_acl_1477_emscripten_dom_vk_to_string597_q;
            1'b1 : i_acl_1484_emscripten_dom_vk_to_string599_q = c_i64_46547516898641182721008_q;
            default : i_acl_1484_emscripten_dom_vk_to_string599_q = 64'b0;
        endcase
    end

    // redist37_i_pivot53_emscripten_dom_vk_to_string133_c_7(DELAY,1122)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_i_pivot53_emscripten_dom_vk_to_string133_c_7 ( .xin(i_pivot53_emscripten_dom_vk_to_string133_c), .xout(redist37_i_pivot53_emscripten_dom_vk_to_string133_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1485_emscripten_dom_vk_to_string600(LOGICAL,324)@17 + 1
    assign i_acl_1485_emscripten_dom_vk_to_string600_qi = redist37_i_pivot53_emscripten_dom_vk_to_string133_c_7_q ^ i_pivot51_emscripten_dom_vk_to_string241_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1485_emscripten_dom_vk_to_string600_delay ( .xin(i_acl_1485_emscripten_dom_vk_to_string600_qi), .xout(i_acl_1485_emscripten_dom_vk_to_string600_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4(DELAY,1213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_0 <= '0;
            redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_1 <= '0;
            redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_q <= '0;
        end
        else
        begin
            redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_0 <= $unsigned(i_acl_1485_emscripten_dom_vk_to_string600_q);
            redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_1 <= redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_0;
            redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_q <= redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_delay_1;
        end
    end

    // i_acl_1492_emscripten_dom_vk_to_string601(MUX,325)@21
    assign i_acl_1492_emscripten_dom_vk_to_string601_s = redist128_i_acl_1485_emscripten_dom_vk_to_string600_q_4_q;
    always @(i_acl_1492_emscripten_dom_vk_to_string601_s or i_acl_1484_emscripten_dom_vk_to_string599_q or c_i64_46550331648408289281009_q)
    begin
        unique case (i_acl_1492_emscripten_dom_vk_to_string601_s)
            1'b0 : i_acl_1492_emscripten_dom_vk_to_string601_q = i_acl_1484_emscripten_dom_vk_to_string599_q;
            1'b1 : i_acl_1492_emscripten_dom_vk_to_string601_q = c_i64_46550331648408289281009_q;
            default : i_acl_1492_emscripten_dom_vk_to_string601_q = 64'b0;
        endcase
    end

    // redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5(DELAY,1130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_0 <= '0;
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_1 <= '0;
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_2 <= '0;
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_q <= '0;
        end
        else
        begin
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_0 <= $unsigned(i_pivot299_emscripten_dom_vk_to_string109_c);
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_1 <= redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_0;
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_2 <= redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_1;
            redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_q <= redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_delay_2;
        end
    end

    // i_acl_1494_emscripten_dom_vk_to_string602(LOGICAL,326)@11 + 1
    assign i_acl_1494_emscripten_dom_vk_to_string602_qi = i_pivot291_emscripten_dom_vk_to_string315_c ^ redist45_i_pivot299_emscripten_dom_vk_to_string109_c_5_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1494_emscripten_dom_vk_to_string602_delay ( .xin(i_acl_1494_emscripten_dom_vk_to_string602_qi), .xout(i_acl_1494_emscripten_dom_vk_to_string602_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist127_i_acl_1494_emscripten_dom_vk_to_string602_q_10(DELAY,1212)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist127_i_acl_1494_emscripten_dom_vk_to_string602_q_10 ( .xin(i_acl_1494_emscripten_dom_vk_to_string602_q), .xout(redist127_i_acl_1494_emscripten_dom_vk_to_string602_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1500_emscripten_dom_vk_to_string603(MUX,327)@21
    assign i_acl_1500_emscripten_dom_vk_to_string603_s = redist127_i_acl_1494_emscripten_dom_vk_to_string602_q_10_q;
    always @(i_acl_1500_emscripten_dom_vk_to_string603_s or i_acl_1492_emscripten_dom_vk_to_string601_q or c_i64_46553146398175395841010_q)
    begin
        unique case (i_acl_1500_emscripten_dom_vk_to_string603_s)
            1'b0 : i_acl_1500_emscripten_dom_vk_to_string603_q = i_acl_1492_emscripten_dom_vk_to_string601_q;
            1'b1 : i_acl_1500_emscripten_dom_vk_to_string603_q = c_i64_46553146398175395841010_q;
            default : i_acl_1500_emscripten_dom_vk_to_string603_q = 64'b0;
        endcase
    end

    // i_acl_1501_emscripten_dom_vk_to_string604(LOGICAL,328)@17 + 1
    assign i_acl_1501_emscripten_dom_vk_to_string604_qi = i_pivot117_emscripten_dom_vk_to_string77_c ^ i_pivot115_emscripten_dom_vk_to_string155_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1501_emscripten_dom_vk_to_string604_delay ( .xin(i_acl_1501_emscripten_dom_vk_to_string604_qi), .xout(i_acl_1501_emscripten_dom_vk_to_string604_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4(DELAY,1211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_0 <= '0;
            redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_1 <= '0;
            redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_q <= '0;
        end
        else
        begin
            redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_0 <= $unsigned(i_acl_1501_emscripten_dom_vk_to_string604_q);
            redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_1 <= redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_0;
            redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_q <= redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_delay_1;
        end
    end

    // i_acl_1507_emscripten_dom_vk_to_string605(MUX,329)@21 + 1
    assign i_acl_1507_emscripten_dom_vk_to_string605_s = redist126_i_acl_1501_emscripten_dom_vk_to_string604_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1507_emscripten_dom_vk_to_string605_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1507_emscripten_dom_vk_to_string605_s)
                1'b0 : i_acl_1507_emscripten_dom_vk_to_string605_q <= i_acl_1500_emscripten_dom_vk_to_string603_q;
                1'b1 : i_acl_1507_emscripten_dom_vk_to_string605_q <= c_i64_46555961147942502401011_q;
                default : i_acl_1507_emscripten_dom_vk_to_string605_q <= 64'b0;
            endcase
        end
    end

    // redist30_i_pivot81_emscripten_dom_vk_to_string71_c_9(DELAY,1115)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_i_pivot81_emscripten_dom_vk_to_string71_c_9 ( .xin(i_pivot81_emscripten_dom_vk_to_string71_c), .xout(redist30_i_pivot81_emscripten_dom_vk_to_string71_c_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1509_emscripten_dom_vk_to_string606(LOGICAL,330)@11 + 1
    assign i_acl_1509_emscripten_dom_vk_to_string606_qi = i_pivot73_emscripten_dom_vk_to_string249_c ^ redist30_i_pivot81_emscripten_dom_vk_to_string71_c_9_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1509_emscripten_dom_vk_to_string606_delay ( .xin(i_acl_1509_emscripten_dom_vk_to_string606_qi), .xout(i_acl_1509_emscripten_dom_vk_to_string606_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist125_i_acl_1509_emscripten_dom_vk_to_string606_q_11(DELAY,1210)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist125_i_acl_1509_emscripten_dom_vk_to_string606_q_11 ( .xin(i_acl_1509_emscripten_dom_vk_to_string606_q), .xout(redist125_i_acl_1509_emscripten_dom_vk_to_string606_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1515_emscripten_dom_vk_to_string607(MUX,331)@22
    assign i_acl_1515_emscripten_dom_vk_to_string607_s = redist125_i_acl_1509_emscripten_dom_vk_to_string606_q_11_q;
    always @(i_acl_1515_emscripten_dom_vk_to_string607_s or i_acl_1507_emscripten_dom_vk_to_string605_q or c_i64_46558775897709608961012_q)
    begin
        unique case (i_acl_1515_emscripten_dom_vk_to_string607_s)
            1'b0 : i_acl_1515_emscripten_dom_vk_to_string607_q = i_acl_1507_emscripten_dom_vk_to_string605_q;
            1'b1 : i_acl_1515_emscripten_dom_vk_to_string607_q = c_i64_46558775897709608961012_q;
            default : i_acl_1515_emscripten_dom_vk_to_string607_q = 64'b0;
        endcase
    end

    // c_i32_2901013_recast_x(CONSTANT,1041)
    assign c_i32_2901013_recast_x_q = $unsigned(32'b00000000000000000000000100100010);

    // i_unnamed_emscripten_dom_vk_to_string608(LOGICAL,704)@17 + 1
    assign i_unnamed_emscripten_dom_vk_to_string608_qi = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_2901013_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string608_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string608_qi), .xout(i_unnamed_emscripten_dom_vk_to_string608_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5(DELAY,1105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_0 <= '0;
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_1 <= '0;
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_2 <= '0;
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_q <= '0;
        end
        else
        begin
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_0 <= $unsigned(i_unnamed_emscripten_dom_vk_to_string608_q);
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_1 <= redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_0;
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_2 <= redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_1;
            redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_q <= redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_delay_2;
        end
    end

    // i_acl_1522_emscripten_dom_vk_to_string610(MUX,332)@22
    assign i_acl_1522_emscripten_dom_vk_to_string610_s = redist20_i_unnamed_emscripten_dom_vk_to_string608_q_5_q;
    always @(i_acl_1522_emscripten_dom_vk_to_string610_s or i_acl_1515_emscripten_dom_vk_to_string607_q or c_i64_46561590647476715521014_q)
    begin
        unique case (i_acl_1522_emscripten_dom_vk_to_string610_s)
            1'b0 : i_acl_1522_emscripten_dom_vk_to_string610_q = i_acl_1515_emscripten_dom_vk_to_string607_q;
            1'b1 : i_acl_1522_emscripten_dom_vk_to_string610_q = c_i64_46561590647476715521014_q;
            default : i_acl_1522_emscripten_dom_vk_to_string610_q = 64'b0;
        endcase
    end

    // redist80_i_pivot133_emscripten_dom_vk_to_string161_c_8(DELAY,1165)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist80_i_pivot133_emscripten_dom_vk_to_string161_c_8 ( .xin(i_pivot133_emscripten_dom_vk_to_string161_c), .xout(redist80_i_pivot133_emscripten_dom_vk_to_string161_c_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1526_emscripten_dom_vk_to_string611(LOGICAL,333)@17 + 1
    assign i_acl_1526_emscripten_dom_vk_to_string611_qi = i_pivot177_emscripten_dom_vk_to_string11_c ^ redist80_i_pivot133_emscripten_dom_vk_to_string161_c_8_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1526_emscripten_dom_vk_to_string611_delay ( .xin(i_acl_1526_emscripten_dom_vk_to_string611_qi), .xout(i_acl_1526_emscripten_dom_vk_to_string611_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5(DELAY,1209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_0 <= '0;
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_1 <= '0;
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_2 <= '0;
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_q <= '0;
        end
        else
        begin
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_0 <= $unsigned(i_acl_1526_emscripten_dom_vk_to_string611_q);
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_1 <= redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_0;
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_2 <= redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_1;
            redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_q <= redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_delay_2;
        end
    end

    // i_acl_1529_emscripten_dom_vk_to_string612(MUX,334)@22
    assign i_acl_1529_emscripten_dom_vk_to_string612_s = redist124_i_acl_1526_emscripten_dom_vk_to_string611_q_5_q;
    always @(i_acl_1529_emscripten_dom_vk_to_string612_s or i_acl_1522_emscripten_dom_vk_to_string610_q or c_i64_46564405397243822081015_q)
    begin
        unique case (i_acl_1529_emscripten_dom_vk_to_string612_s)
            1'b0 : i_acl_1529_emscripten_dom_vk_to_string612_q = i_acl_1522_emscripten_dom_vk_to_string610_q;
            1'b1 : i_acl_1529_emscripten_dom_vk_to_string612_q = c_i64_46564405397243822081015_q;
            default : i_acl_1529_emscripten_dom_vk_to_string612_q = 64'b0;
        endcase
    end

    // c_i32_2891016_recast_x(CONSTANT,1040)
    assign c_i32_2891016_recast_x_q = $unsigned(32'b00000000000000000000000100100001);

    // i_unnamed_emscripten_dom_vk_to_string613(LOGICAL,705)@17 + 1
    assign i_unnamed_emscripten_dom_vk_to_string613_qi = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_2891016_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string613_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string613_qi), .xout(i_unnamed_emscripten_dom_vk_to_string613_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5(DELAY,1104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_0 <= '0;
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_1 <= '0;
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_2 <= '0;
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_q <= '0;
        end
        else
        begin
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_0 <= $unsigned(i_unnamed_emscripten_dom_vk_to_string613_q);
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_1 <= redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_0;
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_2 <= redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_1;
            redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_q <= redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_delay_2;
        end
    end

    // i_acl_1536_emscripten_dom_vk_to_string615(MUX,335)@22
    assign i_acl_1536_emscripten_dom_vk_to_string615_s = redist19_i_unnamed_emscripten_dom_vk_to_string613_q_5_q;
    always @(i_acl_1536_emscripten_dom_vk_to_string615_s or i_acl_1529_emscripten_dom_vk_to_string612_q or c_i64_46567220147010928641017_q)
    begin
        unique case (i_acl_1536_emscripten_dom_vk_to_string615_s)
            1'b0 : i_acl_1536_emscripten_dom_vk_to_string615_q = i_acl_1529_emscripten_dom_vk_to_string612_q;
            1'b1 : i_acl_1536_emscripten_dom_vk_to_string615_q = c_i64_46567220147010928641017_q;
            default : i_acl_1536_emscripten_dom_vk_to_string615_q = 64'b0;
        endcase
    end

    // redist44_i_pivot303_emscripten_dom_vk_to_string221_c_16(DELAY,1129)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist44_i_pivot303_emscripten_dom_vk_to_string221_c_16 ( .xin(i_pivot303_emscripten_dom_vk_to_string221_c), .xout(redist44_i_pivot303_emscripten_dom_vk_to_string221_c_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1538_emscripten_dom_vk_to_string616(LOGICAL,336)@17 + 1
    assign i_acl_1538_emscripten_dom_vk_to_string616_qi = i_pivot311_emscripten_dom_vk_to_string55_c ^ redist44_i_pivot303_emscripten_dom_vk_to_string221_c_16_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1538_emscripten_dom_vk_to_string616_delay ( .xin(i_acl_1538_emscripten_dom_vk_to_string616_qi), .xout(i_acl_1538_emscripten_dom_vk_to_string616_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5(DELAY,1208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_0 <= '0;
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_1 <= '0;
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_2 <= '0;
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_q <= '0;
        end
        else
        begin
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_0 <= $unsigned(i_acl_1538_emscripten_dom_vk_to_string616_q);
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_1 <= redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_0;
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_2 <= redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_1;
            redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_q <= redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_delay_2;
        end
    end

    // i_acl_1543_emscripten_dom_vk_to_string617(MUX,337)@22
    assign i_acl_1543_emscripten_dom_vk_to_string617_s = redist123_i_acl_1538_emscripten_dom_vk_to_string616_q_5_q;
    always @(i_acl_1543_emscripten_dom_vk_to_string617_s or i_acl_1536_emscripten_dom_vk_to_string615_q or c_i64_46570034896778035201018_q)
    begin
        unique case (i_acl_1543_emscripten_dom_vk_to_string617_s)
            1'b0 : i_acl_1543_emscripten_dom_vk_to_string617_q = i_acl_1536_emscripten_dom_vk_to_string615_q;
            1'b1 : i_acl_1543_emscripten_dom_vk_to_string617_q = c_i64_46570034896778035201018_q;
            default : i_acl_1543_emscripten_dom_vk_to_string617_q = 64'b0;
        endcase
    end

    // redist25_i_pivot97_emscripten_dom_vk_to_string255_c_2(DELAY,1110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_pivot97_emscripten_dom_vk_to_string255_c_2_q <= '0;
        end
        else
        begin
            redist25_i_pivot97_emscripten_dom_vk_to_string255_c_2_q <= $unsigned(i_pivot97_emscripten_dom_vk_to_string255_c);
        end
    end

    // i_acl_1544_emscripten_dom_vk_to_string618(LOGICAL,338)@9 + 1
    assign i_acl_1544_emscripten_dom_vk_to_string618_qi = i_pivot99_emscripten_dom_vk_to_string149_c ^ redist25_i_pivot97_emscripten_dom_vk_to_string255_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1544_emscripten_dom_vk_to_string618_delay ( .xin(i_acl_1544_emscripten_dom_vk_to_string618_qi), .xout(i_acl_1544_emscripten_dom_vk_to_string618_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist122_i_acl_1544_emscripten_dom_vk_to_string618_q_13(DELAY,1207)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist122_i_acl_1544_emscripten_dom_vk_to_string618_q_13 ( .xin(i_acl_1544_emscripten_dom_vk_to_string618_q), .xout(redist122_i_acl_1544_emscripten_dom_vk_to_string618_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1551_emscripten_dom_vk_to_string619(MUX,339)@22
    assign i_acl_1551_emscripten_dom_vk_to_string619_s = redist122_i_acl_1544_emscripten_dom_vk_to_string618_q_13_q;
    always @(i_acl_1551_emscripten_dom_vk_to_string619_s or i_acl_1543_emscripten_dom_vk_to_string617_q or c_i64_46572849646545141761019_q)
    begin
        unique case (i_acl_1551_emscripten_dom_vk_to_string619_s)
            1'b0 : i_acl_1551_emscripten_dom_vk_to_string619_q = i_acl_1543_emscripten_dom_vk_to_string617_q;
            1'b1 : i_acl_1551_emscripten_dom_vk_to_string619_q = c_i64_46572849646545141761019_q;
            default : i_acl_1551_emscripten_dom_vk_to_string619_q = 64'b0;
        endcase
    end

    // redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5(DELAY,1156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_0 <= '0;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_1 <= '0;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_2 <= '0;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_3 <= '0;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_q <= '0;
        end
        else
        begin
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_0 <= $unsigned(i_pivot173_emscripten_dom_vk_to_string43_c);
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_1 <= redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_0;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_2 <= redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_1;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_3 <= redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_2;
            redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_q <= redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_delay_3;
        end
    end

    // i_acl_1553_emscripten_dom_vk_to_string620(LOGICAL,340)@9 + 1
    assign i_acl_1553_emscripten_dom_vk_to_string620_qi = redist71_i_pivot173_emscripten_dom_vk_to_string43_c_5_q ^ i_pivot165_emscripten_dom_vk_to_string173_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1553_emscripten_dom_vk_to_string620_delay ( .xin(i_acl_1553_emscripten_dom_vk_to_string620_qi), .xout(i_acl_1553_emscripten_dom_vk_to_string620_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist121_i_acl_1553_emscripten_dom_vk_to_string620_q_13(DELAY,1206)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist121_i_acl_1553_emscripten_dom_vk_to_string620_q_13 ( .xin(i_acl_1553_emscripten_dom_vk_to_string620_q), .xout(redist121_i_acl_1553_emscripten_dom_vk_to_string620_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1558_emscripten_dom_vk_to_string621(MUX,341)@22 + 1
    assign i_acl_1558_emscripten_dom_vk_to_string621_s = redist121_i_acl_1553_emscripten_dom_vk_to_string620_q_13_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1558_emscripten_dom_vk_to_string621_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1558_emscripten_dom_vk_to_string621_s)
                1'b0 : i_acl_1558_emscripten_dom_vk_to_string621_q <= i_acl_1551_emscripten_dom_vk_to_string619_q;
                1'b1 : i_acl_1558_emscripten_dom_vk_to_string621_q <= c_i64_46575664396312248321020_q;
                default : i_acl_1558_emscripten_dom_vk_to_string621_q <= 64'b0;
            endcase
        end
    end

    // c_i32_2961021_recast_x(CONSTANT,1045)
    assign c_i32_2961021_recast_x_q = $unsigned(32'b00000000000000000000000100101000);

    // i_unnamed_emscripten_dom_vk_to_string622(LOGICAL,706)@17 + 1
    assign i_unnamed_emscripten_dom_vk_to_string622_qi = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_2961021_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string622_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string622_qi), .xout(i_unnamed_emscripten_dom_vk_to_string622_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6(DELAY,1103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_0 <= '0;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_1 <= '0;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_2 <= '0;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_3 <= '0;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_q <= '0;
        end
        else
        begin
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_0 <= $unsigned(i_unnamed_emscripten_dom_vk_to_string622_q);
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_1 <= redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_0;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_2 <= redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_1;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_3 <= redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_2;
            redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_q <= redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_delay_3;
        end
    end

    // i_acl_1565_emscripten_dom_vk_to_string624(MUX,342)@23
    assign i_acl_1565_emscripten_dom_vk_to_string624_s = redist18_i_unnamed_emscripten_dom_vk_to_string622_q_6_q;
    always @(i_acl_1565_emscripten_dom_vk_to_string624_s or i_acl_1558_emscripten_dom_vk_to_string621_q or c_i64_46578479146079354881022_q)
    begin
        unique case (i_acl_1565_emscripten_dom_vk_to_string624_s)
            1'b0 : i_acl_1565_emscripten_dom_vk_to_string624_q = i_acl_1558_emscripten_dom_vk_to_string621_q;
            1'b1 : i_acl_1565_emscripten_dom_vk_to_string624_q = c_i64_46578479146079354881022_q;
            default : i_acl_1565_emscripten_dom_vk_to_string624_q = 64'b0;
        endcase
    end

    // c_i32_152711_recast_x(CONSTANT,904)
    assign c_i32_152711_recast_x_q = $unsigned(32'b00000000000000000000000010011000);

    // i_pivot49_emscripten_dom_vk_to_string65(COMPARE,660)@17
    assign i_pivot49_emscripten_dom_vk_to_string65_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot49_emscripten_dom_vk_to_string65_b = $unsigned({{2{c_i32_152711_recast_x_q[31]}}, c_i32_152711_recast_x_q});
    assign i_pivot49_emscripten_dom_vk_to_string65_o = $unsigned($signed(i_pivot49_emscripten_dom_vk_to_string65_a) - $signed(i_pivot49_emscripten_dom_vk_to_string65_b));
    assign i_pivot49_emscripten_dom_vk_to_string65_c[0] = i_pivot49_emscripten_dom_vk_to_string65_o[33];

    // c_i32_151743_recast_x(CONSTANT,903)
    assign c_i32_151743_recast_x_q = $unsigned(32'b00000000000000000000000010010111);

    // i_pivot43_emscripten_dom_vk_to_string129(COMPARE,657)@17
    assign i_pivot43_emscripten_dom_vk_to_string129_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot43_emscripten_dom_vk_to_string129_b = $unsigned({{2{c_i32_151743_recast_x_q[31]}}, c_i32_151743_recast_x_q});
    assign i_pivot43_emscripten_dom_vk_to_string129_o = $unsigned($signed(i_pivot43_emscripten_dom_vk_to_string129_a) - $signed(i_pivot43_emscripten_dom_vk_to_string129_b));
    assign i_pivot43_emscripten_dom_vk_to_string129_c[0] = i_pivot43_emscripten_dom_vk_to_string129_o[33];

    // i_acl_1566_emscripten_dom_vk_to_string625(LOGICAL,343)@17 + 1
    assign i_acl_1566_emscripten_dom_vk_to_string625_qi = i_pivot43_emscripten_dom_vk_to_string129_c ^ i_pivot49_emscripten_dom_vk_to_string65_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1566_emscripten_dom_vk_to_string625_delay ( .xin(i_acl_1566_emscripten_dom_vk_to_string625_qi), .xout(i_acl_1566_emscripten_dom_vk_to_string625_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6(DELAY,1205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_0 <= '0;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_1 <= '0;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_2 <= '0;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_3 <= '0;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_q <= '0;
        end
        else
        begin
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_0 <= $unsigned(i_acl_1566_emscripten_dom_vk_to_string625_q);
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_1 <= redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_0;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_2 <= redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_1;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_3 <= redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_2;
            redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_q <= redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_delay_3;
        end
    end

    // i_acl_1572_emscripten_dom_vk_to_string626(MUX,344)@23
    assign i_acl_1572_emscripten_dom_vk_to_string626_s = redist120_i_acl_1566_emscripten_dom_vk_to_string625_q_6_q;
    always @(i_acl_1572_emscripten_dom_vk_to_string626_s or i_acl_1565_emscripten_dom_vk_to_string624_q or c_i64_46581293895846461441023_q)
    begin
        unique case (i_acl_1572_emscripten_dom_vk_to_string626_s)
            1'b0 : i_acl_1572_emscripten_dom_vk_to_string626_q = i_acl_1565_emscripten_dom_vk_to_string624_q;
            1'b1 : i_acl_1572_emscripten_dom_vk_to_string626_q = c_i64_46581293895846461441023_q;
            default : i_acl_1572_emscripten_dom_vk_to_string626_q = 64'b0;
        endcase
    end

    // redist38_i_pivot45_emscripten_dom_vk_to_string239_c_6(DELAY,1123)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_i_pivot45_emscripten_dom_vk_to_string239_c_6 ( .xin(i_pivot45_emscripten_dom_vk_to_string239_c), .xout(redist38_i_pivot45_emscripten_dom_vk_to_string239_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_153744_recast_x(CONSTANT,905)
    assign c_i32_153744_recast_x_q = $unsigned(32'b00000000000000000000000010011001);

    // i_pivot47_emscripten_dom_vk_to_string131(COMPARE,659)@17
    assign i_pivot47_emscripten_dom_vk_to_string131_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot47_emscripten_dom_vk_to_string131_b = $unsigned({{2{c_i32_153744_recast_x_q[31]}}, c_i32_153744_recast_x_q});
    assign i_pivot47_emscripten_dom_vk_to_string131_o = $unsigned($signed(i_pivot47_emscripten_dom_vk_to_string131_a) - $signed(i_pivot47_emscripten_dom_vk_to_string131_b));
    assign i_pivot47_emscripten_dom_vk_to_string131_c[0] = i_pivot47_emscripten_dom_vk_to_string131_o[33];

    // i_acl_1573_emscripten_dom_vk_to_string627(LOGICAL,345)@17 + 1
    assign i_acl_1573_emscripten_dom_vk_to_string627_qi = i_pivot47_emscripten_dom_vk_to_string131_c ^ redist38_i_pivot45_emscripten_dom_vk_to_string239_c_6_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1573_emscripten_dom_vk_to_string627_delay ( .xin(i_acl_1573_emscripten_dom_vk_to_string627_qi), .xout(i_acl_1573_emscripten_dom_vk_to_string627_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6(DELAY,1204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_0 <= '0;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_1 <= '0;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_2 <= '0;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_3 <= '0;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_q <= '0;
        end
        else
        begin
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_0 <= $unsigned(i_acl_1573_emscripten_dom_vk_to_string627_q);
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_1 <= redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_0;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_2 <= redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_1;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_3 <= redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_2;
            redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_q <= redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_delay_3;
        end
    end

    // i_acl_1580_emscripten_dom_vk_to_string628(MUX,346)@23
    assign i_acl_1580_emscripten_dom_vk_to_string628_s = redist119_i_acl_1573_emscripten_dom_vk_to_string627_q_6_q;
    always @(i_acl_1580_emscripten_dom_vk_to_string628_s or i_acl_1572_emscripten_dom_vk_to_string626_q or c_i64_46584108645613568001024_q)
    begin
        unique case (i_acl_1580_emscripten_dom_vk_to_string628_s)
            1'b0 : i_acl_1580_emscripten_dom_vk_to_string628_q = i_acl_1572_emscripten_dom_vk_to_string626_q;
            1'b1 : i_acl_1580_emscripten_dom_vk_to_string628_q = c_i64_46584108645613568001024_q;
            default : i_acl_1580_emscripten_dom_vk_to_string628_q = 64'b0;
        endcase
    end

    // i_acl_1581_emscripten_dom_vk_to_string629(LOGICAL,347)@17 + 1
    assign i_acl_1581_emscripten_dom_vk_to_string629_qi = i_pivot49_emscripten_dom_vk_to_string65_c ^ i_pivot47_emscripten_dom_vk_to_string131_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1581_emscripten_dom_vk_to_string629_delay ( .xin(i_acl_1581_emscripten_dom_vk_to_string629_qi), .xout(i_acl_1581_emscripten_dom_vk_to_string629_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6(DELAY,1203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_0 <= '0;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_1 <= '0;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_2 <= '0;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_3 <= '0;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_q <= '0;
        end
        else
        begin
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_0 <= $unsigned(i_acl_1581_emscripten_dom_vk_to_string629_q);
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_1 <= redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_0;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_2 <= redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_1;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_3 <= redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_2;
            redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_q <= redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_delay_3;
        end
    end

    // i_acl_1587_emscripten_dom_vk_to_string630(MUX,348)@23
    assign i_acl_1587_emscripten_dom_vk_to_string630_s = redist118_i_acl_1581_emscripten_dom_vk_to_string629_q_6_q;
    always @(i_acl_1587_emscripten_dom_vk_to_string630_s or i_acl_1580_emscripten_dom_vk_to_string628_q or c_i64_46586923395380674561025_q)
    begin
        unique case (i_acl_1587_emscripten_dom_vk_to_string630_s)
            1'b0 : i_acl_1587_emscripten_dom_vk_to_string630_q = i_acl_1580_emscripten_dom_vk_to_string628_q;
            1'b1 : i_acl_1587_emscripten_dom_vk_to_string630_q = c_i64_46586923395380674561025_q;
            default : i_acl_1587_emscripten_dom_vk_to_string630_q = 64'b0;
        endcase
    end

    // c_i32_134737_recast_x(CONSTANT,886)
    assign c_i32_134737_recast_x_q = $unsigned(32'b00000000000000000000000010000110);

    // i_pivot11_emscripten_dom_vk_to_string117(COMPARE,542)@17
    assign i_pivot11_emscripten_dom_vk_to_string117_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot11_emscripten_dom_vk_to_string117_b = $unsigned({{2{c_i32_134737_recast_x_q[31]}}, c_i32_134737_recast_x_q});
    assign i_pivot11_emscripten_dom_vk_to_string117_o = $unsigned($signed(i_pivot11_emscripten_dom_vk_to_string117_a) - $signed(i_pivot11_emscripten_dom_vk_to_string117_b));
    assign i_pivot11_emscripten_dom_vk_to_string117_c[0] = i_pivot11_emscripten_dom_vk_to_string117_o[33];

    // c_i32_133693_recast_x(CONSTANT,885)
    assign c_i32_133693_recast_x_q = $unsigned(32'b00000000000000000000000010000101);

    // i_pivot19_emscripten_dom_vk_to_string29(COMPARE,586)@17
    assign i_pivot19_emscripten_dom_vk_to_string29_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot19_emscripten_dom_vk_to_string29_b = $unsigned({{2{c_i32_133693_recast_x_q[31]}}, c_i32_133693_recast_x_q});
    assign i_pivot19_emscripten_dom_vk_to_string29_o = $unsigned($signed(i_pivot19_emscripten_dom_vk_to_string29_a) - $signed(i_pivot19_emscripten_dom_vk_to_string29_b));
    assign i_pivot19_emscripten_dom_vk_to_string29_c[0] = i_pivot19_emscripten_dom_vk_to_string29_o[33];

    // i_acl_1589_emscripten_dom_vk_to_string631(LOGICAL,349)@17 + 1
    assign i_acl_1589_emscripten_dom_vk_to_string631_qi = i_pivot19_emscripten_dom_vk_to_string29_c ^ i_pivot11_emscripten_dom_vk_to_string117_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1589_emscripten_dom_vk_to_string631_delay ( .xin(i_acl_1589_emscripten_dom_vk_to_string631_qi), .xout(i_acl_1589_emscripten_dom_vk_to_string631_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6(DELAY,1202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_0 <= '0;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_1 <= '0;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_2 <= '0;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_3 <= '0;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_q <= '0;
        end
        else
        begin
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_0 <= $unsigned(i_acl_1589_emscripten_dom_vk_to_string631_q);
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_1 <= redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_0;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_2 <= redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_1;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_3 <= redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_2;
            redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_q <= redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_delay_3;
        end
    end

    // i_acl_1594_emscripten_dom_vk_to_string632(MUX,350)@23
    assign i_acl_1594_emscripten_dom_vk_to_string632_s = redist117_i_acl_1589_emscripten_dom_vk_to_string631_q_6_q;
    always @(i_acl_1594_emscripten_dom_vk_to_string632_s or i_acl_1587_emscripten_dom_vk_to_string630_q or c_i64_46589738145147781121026_q)
    begin
        unique case (i_acl_1594_emscripten_dom_vk_to_string632_s)
            1'b0 : i_acl_1594_emscripten_dom_vk_to_string632_q = i_acl_1587_emscripten_dom_vk_to_string630_q;
            1'b1 : i_acl_1594_emscripten_dom_vk_to_string632_q = c_i64_46589738145147781121026_q;
            default : i_acl_1594_emscripten_dom_vk_to_string632_q = 64'b0;
        endcase
    end

    // c_i32_137738_recast_x(CONSTANT,889)
    assign c_i32_137738_recast_x_q = $unsigned(32'b00000000000000000000000010001001);

    // i_pivot15_emscripten_dom_vk_to_string119(COMPARE,564)@17
    assign i_pivot15_emscripten_dom_vk_to_string119_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot15_emscripten_dom_vk_to_string119_b = $unsigned({{2{c_i32_137738_recast_x_q[31]}}, c_i32_137738_recast_x_q});
    assign i_pivot15_emscripten_dom_vk_to_string119_o = $unsigned($signed(i_pivot15_emscripten_dom_vk_to_string119_a) - $signed(i_pivot15_emscripten_dom_vk_to_string119_b));
    assign i_pivot15_emscripten_dom_vk_to_string119_c[0] = i_pivot15_emscripten_dom_vk_to_string119_o[33];

    // i_acl_1595_emscripten_dom_vk_to_string633(LOGICAL,351)@17 + 1
    assign i_acl_1595_emscripten_dom_vk_to_string633_qi = i_pivot15_emscripten_dom_vk_to_string119_c ^ i_pivot13_emscripten_dom_vk_to_string231_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1595_emscripten_dom_vk_to_string633_delay ( .xin(i_acl_1595_emscripten_dom_vk_to_string633_qi), .xout(i_acl_1595_emscripten_dom_vk_to_string633_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6(DELAY,1201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_0 <= '0;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_1 <= '0;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_2 <= '0;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_3 <= '0;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_q <= '0;
        end
        else
        begin
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_0 <= $unsigned(i_acl_1595_emscripten_dom_vk_to_string633_q);
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_1 <= redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_0;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_2 <= redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_1;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_3 <= redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_2;
            redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_q <= redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_delay_3;
        end
    end

    // i_acl_1602_emscripten_dom_vk_to_string634(MUX,352)@23
    assign i_acl_1602_emscripten_dom_vk_to_string634_s = redist116_i_acl_1595_emscripten_dom_vk_to_string633_q_6_q;
    always @(i_acl_1602_emscripten_dom_vk_to_string634_s or i_acl_1594_emscripten_dom_vk_to_string632_q or c_i64_46592552894914887681027_q)
    begin
        unique case (i_acl_1602_emscripten_dom_vk_to_string634_s)
            1'b0 : i_acl_1602_emscripten_dom_vk_to_string634_q = i_acl_1594_emscripten_dom_vk_to_string632_q;
            1'b1 : i_acl_1602_emscripten_dom_vk_to_string634_q = c_i64_46592552894914887681027_q;
            default : i_acl_1602_emscripten_dom_vk_to_string634_q = 64'b0;
        endcase
    end

    // c_i32_136708_recast_x(CONSTANT,888)
    assign c_i32_136708_recast_x_q = $unsigned(32'b00000000000000000000000010001000);

    // i_pivot17_emscripten_dom_vk_to_string59(COMPARE,575)@17
    assign i_pivot17_emscripten_dom_vk_to_string59_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot17_emscripten_dom_vk_to_string59_b = $unsigned({{2{c_i32_136708_recast_x_q[31]}}, c_i32_136708_recast_x_q});
    assign i_pivot17_emscripten_dom_vk_to_string59_o = $unsigned($signed(i_pivot17_emscripten_dom_vk_to_string59_a) - $signed(i_pivot17_emscripten_dom_vk_to_string59_b));
    assign i_pivot17_emscripten_dom_vk_to_string59_c[0] = i_pivot17_emscripten_dom_vk_to_string59_o[33];

    // i_acl_1603_emscripten_dom_vk_to_string635(LOGICAL,353)@17 + 1
    assign i_acl_1603_emscripten_dom_vk_to_string635_qi = i_pivot17_emscripten_dom_vk_to_string59_c ^ i_pivot15_emscripten_dom_vk_to_string119_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1603_emscripten_dom_vk_to_string635_delay ( .xin(i_acl_1603_emscripten_dom_vk_to_string635_qi), .xout(i_acl_1603_emscripten_dom_vk_to_string635_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6(DELAY,1200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_0 <= '0;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_1 <= '0;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_2 <= '0;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_3 <= '0;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_q <= '0;
        end
        else
        begin
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_0 <= $unsigned(i_acl_1603_emscripten_dom_vk_to_string635_q);
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_1 <= redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_0;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_2 <= redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_1;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_3 <= redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_2;
            redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_q <= redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_delay_3;
        end
    end

    // i_acl_1609_emscripten_dom_vk_to_string636(MUX,354)@23 + 1
    assign i_acl_1609_emscripten_dom_vk_to_string636_s = redist115_i_acl_1603_emscripten_dom_vk_to_string635_q_6_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1609_emscripten_dom_vk_to_string636_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1609_emscripten_dom_vk_to_string636_s)
                1'b0 : i_acl_1609_emscripten_dom_vk_to_string636_q <= i_acl_1602_emscripten_dom_vk_to_string634_q;
                1'b1 : i_acl_1609_emscripten_dom_vk_to_string636_q <= c_i64_46595367644681994241028_q;
                default : i_acl_1609_emscripten_dom_vk_to_string636_q <= 64'b0;
            endcase
        end
    end

    // c_i32_135793_recast_x(CONSTANT,887)
    assign c_i32_135793_recast_x_q = $unsigned(32'b00000000000000000000000010000111);

    // i_pivot9_emscripten_dom_vk_to_string229(COMPARE,688)@17
    assign i_pivot9_emscripten_dom_vk_to_string229_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot9_emscripten_dom_vk_to_string229_b = $unsigned({{2{c_i32_135793_recast_x_q[31]}}, c_i32_135793_recast_x_q});
    assign i_pivot9_emscripten_dom_vk_to_string229_o = $unsigned($signed(i_pivot9_emscripten_dom_vk_to_string229_a) - $signed(i_pivot9_emscripten_dom_vk_to_string229_b));
    assign i_pivot9_emscripten_dom_vk_to_string229_c[0] = i_pivot9_emscripten_dom_vk_to_string229_o[33];

    // i_acl_1611_emscripten_dom_vk_to_string637(LOGICAL,355)@17 + 1
    assign i_acl_1611_emscripten_dom_vk_to_string637_qi = i_pivot9_emscripten_dom_vk_to_string229_c ^ i_pivot17_emscripten_dom_vk_to_string59_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1611_emscripten_dom_vk_to_string637_delay ( .xin(i_acl_1611_emscripten_dom_vk_to_string637_qi), .xout(i_acl_1611_emscripten_dom_vk_to_string637_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist114_i_acl_1611_emscripten_dom_vk_to_string637_q_7(DELAY,1199)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist114_i_acl_1611_emscripten_dom_vk_to_string637_q_7 ( .xin(i_acl_1611_emscripten_dom_vk_to_string637_q), .xout(redist114_i_acl_1611_emscripten_dom_vk_to_string637_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1617_emscripten_dom_vk_to_string638(MUX,356)@24
    assign i_acl_1617_emscripten_dom_vk_to_string638_s = redist114_i_acl_1611_emscripten_dom_vk_to_string637_q_7_q;
    always @(i_acl_1617_emscripten_dom_vk_to_string638_s or i_acl_1609_emscripten_dom_vk_to_string636_q or c_i64_46598182394449100801029_q)
    begin
        unique case (i_acl_1617_emscripten_dom_vk_to_string638_s)
            1'b0 : i_acl_1617_emscripten_dom_vk_to_string638_q = i_acl_1609_emscripten_dom_vk_to_string636_q;
            1'b1 : i_acl_1617_emscripten_dom_vk_to_string638_q = c_i64_46598182394449100801029_q;
            default : i_acl_1617_emscripten_dom_vk_to_string638_q = 64'b0;
        endcase
    end

    // i_acl_1618_emscripten_dom_vk_to_string639(LOGICAL,357)@17 + 1
    assign i_acl_1618_emscripten_dom_vk_to_string639_qi = i_pivot11_emscripten_dom_vk_to_string117_c ^ i_pivot9_emscripten_dom_vk_to_string229_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1618_emscripten_dom_vk_to_string639_delay ( .xin(i_acl_1618_emscripten_dom_vk_to_string639_qi), .xout(i_acl_1618_emscripten_dom_vk_to_string639_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist113_i_acl_1618_emscripten_dom_vk_to_string639_q_7(DELAY,1198)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist113_i_acl_1618_emscripten_dom_vk_to_string639_q_7 ( .xin(i_acl_1618_emscripten_dom_vk_to_string639_q), .xout(redist113_i_acl_1618_emscripten_dom_vk_to_string639_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1625_emscripten_dom_vk_to_string640(MUX,358)@24
    assign i_acl_1625_emscripten_dom_vk_to_string640_s = redist113_i_acl_1618_emscripten_dom_vk_to_string639_q_7_q;
    always @(i_acl_1625_emscripten_dom_vk_to_string640_s or i_acl_1617_emscripten_dom_vk_to_string638_q or c_i64_46600997144216207361030_q)
    begin
        unique case (i_acl_1625_emscripten_dom_vk_to_string640_s)
            1'b0 : i_acl_1625_emscripten_dom_vk_to_string640_q = i_acl_1617_emscripten_dom_vk_to_string638_q;
            1'b1 : i_acl_1625_emscripten_dom_vk_to_string640_q = c_i64_46600997144216207361030_q;
            default : i_acl_1625_emscripten_dom_vk_to_string640_q = 64'b0;
        endcase
    end

    // redist39_i_pivot3_emscripten_dom_vk_to_string227_c_7(DELAY,1124)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_i_pivot3_emscripten_dom_vk_to_string227_c_7 ( .xin(i_pivot3_emscripten_dom_vk_to_string227_c), .xout(redist39_i_pivot3_emscripten_dom_vk_to_string227_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1628_emscripten_dom_vk_to_string641(LOGICAL,359)@17 + 1
    assign i_acl_1628_emscripten_dom_vk_to_string641_qi = redist39_i_pivot3_emscripten_dom_vk_to_string227_c_7_q ^ i_pivot19_emscripten_dom_vk_to_string29_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1628_emscripten_dom_vk_to_string641_delay ( .xin(i_acl_1628_emscripten_dom_vk_to_string641_qi), .xout(i_acl_1628_emscripten_dom_vk_to_string641_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist112_i_acl_1628_emscripten_dom_vk_to_string641_q_7(DELAY,1197)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist112_i_acl_1628_emscripten_dom_vk_to_string641_q_7 ( .xin(i_acl_1628_emscripten_dom_vk_to_string641_q), .xout(redist112_i_acl_1628_emscripten_dom_vk_to_string641_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1633_emscripten_dom_vk_to_string642(MUX,360)@24
    assign i_acl_1633_emscripten_dom_vk_to_string642_s = redist112_i_acl_1628_emscripten_dom_vk_to_string641_q_7_q;
    always @(i_acl_1633_emscripten_dom_vk_to_string642_s or i_acl_1625_emscripten_dom_vk_to_string640_q or c_i64_46603811893983313921031_q)
    begin
        unique case (i_acl_1633_emscripten_dom_vk_to_string642_s)
            1'b0 : i_acl_1633_emscripten_dom_vk_to_string642_q = i_acl_1625_emscripten_dom_vk_to_string640_q;
            1'b1 : i_acl_1633_emscripten_dom_vk_to_string642_q = c_i64_46603811893983313921031_q;
            default : i_acl_1633_emscripten_dom_vk_to_string642_q = 64'b0;
        endcase
    end

    // c_i32_146796_recast_x(CONSTANT,898)
    assign c_i32_146796_recast_x_q = $unsigned(32'b00000000000000000000000010010010);

    // i_pivot29_emscripten_dom_vk_to_string235(COMPARE,641)@17
    assign i_pivot29_emscripten_dom_vk_to_string235_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot29_emscripten_dom_vk_to_string235_b = $unsigned({{2{c_i32_146796_recast_x_q[31]}}, c_i32_146796_recast_x_q});
    assign i_pivot29_emscripten_dom_vk_to_string235_o = $unsigned($signed(i_pivot29_emscripten_dom_vk_to_string235_a) - $signed(i_pivot29_emscripten_dom_vk_to_string235_b));
    assign i_pivot29_emscripten_dom_vk_to_string235_c[0] = i_pivot29_emscripten_dom_vk_to_string235_o[33];

    // c_i32_145741_recast_x(CONSTANT,897)
    assign c_i32_145741_recast_x_q = $unsigned(32'b00000000000000000000000010010001);

    // i_pivot31_emscripten_dom_vk_to_string125(COMPARE,648)@17
    assign i_pivot31_emscripten_dom_vk_to_string125_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot31_emscripten_dom_vk_to_string125_b = $unsigned({{2{c_i32_145741_recast_x_q[31]}}, c_i32_145741_recast_x_q});
    assign i_pivot31_emscripten_dom_vk_to_string125_o = $unsigned($signed(i_pivot31_emscripten_dom_vk_to_string125_a) - $signed(i_pivot31_emscripten_dom_vk_to_string125_b));
    assign i_pivot31_emscripten_dom_vk_to_string125_c[0] = i_pivot31_emscripten_dom_vk_to_string125_o[33];

    // i_acl_1634_emscripten_dom_vk_to_string643(LOGICAL,361)@17 + 1
    assign i_acl_1634_emscripten_dom_vk_to_string643_qi = i_pivot31_emscripten_dom_vk_to_string125_c ^ i_pivot29_emscripten_dom_vk_to_string235_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1634_emscripten_dom_vk_to_string643_delay ( .xin(i_acl_1634_emscripten_dom_vk_to_string643_qi), .xout(i_acl_1634_emscripten_dom_vk_to_string643_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist111_i_acl_1634_emscripten_dom_vk_to_string643_q_7(DELAY,1196)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist111_i_acl_1634_emscripten_dom_vk_to_string643_q_7 ( .xin(i_acl_1634_emscripten_dom_vk_to_string643_q), .xout(redist111_i_acl_1634_emscripten_dom_vk_to_string643_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1641_emscripten_dom_vk_to_string644(MUX,362)@24
    assign i_acl_1641_emscripten_dom_vk_to_string644_s = redist111_i_acl_1634_emscripten_dom_vk_to_string643_q_7_q;
    always @(i_acl_1641_emscripten_dom_vk_to_string644_s or i_acl_1633_emscripten_dom_vk_to_string642_q or c_i64_46606626643750420481032_q)
    begin
        unique case (i_acl_1641_emscripten_dom_vk_to_string644_s)
            1'b0 : i_acl_1641_emscripten_dom_vk_to_string644_q = i_acl_1633_emscripten_dom_vk_to_string642_q;
            1'b1 : i_acl_1641_emscripten_dom_vk_to_string644_q = c_i64_46606626643750420481032_q;
            default : i_acl_1641_emscripten_dom_vk_to_string644_q = 64'b0;
        endcase
    end

    // c_i32_150683_recast_x(CONSTANT,902)
    assign c_i32_150683_recast_x_q = $unsigned(32'b00000000000000000000000010010110);

    // i_pivot87_emscripten_dom_vk_to_string9(COMPARE,681)@17
    assign i_pivot87_emscripten_dom_vk_to_string9_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot87_emscripten_dom_vk_to_string9_b = $unsigned({{2{c_i32_150683_recast_x_q[31]}}, c_i32_150683_recast_x_q});
    assign i_pivot87_emscripten_dom_vk_to_string9_o = $unsigned($signed(i_pivot87_emscripten_dom_vk_to_string9_a) - $signed(i_pivot87_emscripten_dom_vk_to_string9_b));
    assign i_pivot87_emscripten_dom_vk_to_string9_c[0] = i_pivot87_emscripten_dom_vk_to_string9_o[33];

    // i_acl_1645_emscripten_dom_vk_to_string645(LOGICAL,363)@17 + 1
    assign i_acl_1645_emscripten_dom_vk_to_string645_qi = i_pivot87_emscripten_dom_vk_to_string9_c ^ i_pivot43_emscripten_dom_vk_to_string129_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1645_emscripten_dom_vk_to_string645_delay ( .xin(i_acl_1645_emscripten_dom_vk_to_string645_qi), .xout(i_acl_1645_emscripten_dom_vk_to_string645_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist110_i_acl_1645_emscripten_dom_vk_to_string645_q_7(DELAY,1195)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist110_i_acl_1645_emscripten_dom_vk_to_string645_q_7 ( .xin(i_acl_1645_emscripten_dom_vk_to_string645_q), .xout(redist110_i_acl_1645_emscripten_dom_vk_to_string645_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1648_emscripten_dom_vk_to_string646(MUX,364)@24
    assign i_acl_1648_emscripten_dom_vk_to_string646_s = redist110_i_acl_1645_emscripten_dom_vk_to_string645_q_7_q;
    always @(i_acl_1648_emscripten_dom_vk_to_string646_s or i_acl_1641_emscripten_dom_vk_to_string644_q or c_i64_46609441393517527041033_q)
    begin
        unique case (i_acl_1648_emscripten_dom_vk_to_string646_s)
            1'b0 : i_acl_1648_emscripten_dom_vk_to_string646_q = i_acl_1641_emscripten_dom_vk_to_string644_q;
            1'b1 : i_acl_1648_emscripten_dom_vk_to_string646_q = c_i64_46609441393517527041033_q;
            default : i_acl_1648_emscripten_dom_vk_to_string646_q = 64'b0;
        endcase
    end

    // c_i32_144694_recast_x(CONSTANT,896)
    assign c_i32_144694_recast_x_q = $unsigned(32'b00000000000000000000000010010000);

    // i_pivot39_emscripten_dom_vk_to_string31(COMPARE,654)@17
    assign i_pivot39_emscripten_dom_vk_to_string31_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot39_emscripten_dom_vk_to_string31_b = $unsigned({{2{c_i32_144694_recast_x_q[31]}}, c_i32_144694_recast_x_q});
    assign i_pivot39_emscripten_dom_vk_to_string31_o = $unsigned($signed(i_pivot39_emscripten_dom_vk_to_string31_a) - $signed(i_pivot39_emscripten_dom_vk_to_string31_b));
    assign i_pivot39_emscripten_dom_vk_to_string31_c[0] = i_pivot39_emscripten_dom_vk_to_string31_o[33];

    // i_acl_1651_emscripten_dom_vk_to_string647(LOGICAL,365)@17 + 1
    assign i_acl_1651_emscripten_dom_vk_to_string647_qi = i_pivot23_emscripten_dom_vk_to_string233_c ^ i_pivot39_emscripten_dom_vk_to_string31_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1651_emscripten_dom_vk_to_string647_delay ( .xin(i_acl_1651_emscripten_dom_vk_to_string647_qi), .xout(i_acl_1651_emscripten_dom_vk_to_string647_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist109_i_acl_1651_emscripten_dom_vk_to_string647_q_7(DELAY,1194)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist109_i_acl_1651_emscripten_dom_vk_to_string647_q_7 ( .xin(i_acl_1651_emscripten_dom_vk_to_string647_q), .xout(redist109_i_acl_1651_emscripten_dom_vk_to_string647_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1656_emscripten_dom_vk_to_string648(MUX,366)@24
    assign i_acl_1656_emscripten_dom_vk_to_string648_s = redist109_i_acl_1651_emscripten_dom_vk_to_string647_q_7_q;
    always @(i_acl_1656_emscripten_dom_vk_to_string648_s or i_acl_1648_emscripten_dom_vk_to_string646_q or c_i64_46612256143284633601034_q)
    begin
        unique case (i_acl_1656_emscripten_dom_vk_to_string648_s)
            1'b0 : i_acl_1656_emscripten_dom_vk_to_string648_q = i_acl_1648_emscripten_dom_vk_to_string646_q;
            1'b1 : i_acl_1656_emscripten_dom_vk_to_string648_q = c_i64_46612256143284633601034_q;
            default : i_acl_1656_emscripten_dom_vk_to_string648_q = 64'b0;
        endcase
    end

    // c_i32_147710_recast_x(CONSTANT,899)
    assign c_i32_147710_recast_x_q = $unsigned(32'b00000000000000000000000010010011);

    // i_pivot37_emscripten_dom_vk_to_string63(COMPARE,653)@17
    assign i_pivot37_emscripten_dom_vk_to_string63_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot37_emscripten_dom_vk_to_string63_b = $unsigned({{2{c_i32_147710_recast_x_q[31]}}, c_i32_147710_recast_x_q});
    assign i_pivot37_emscripten_dom_vk_to_string63_o = $unsigned($signed(i_pivot37_emscripten_dom_vk_to_string63_a) - $signed(i_pivot37_emscripten_dom_vk_to_string63_b));
    assign i_pivot37_emscripten_dom_vk_to_string63_c[0] = i_pivot37_emscripten_dom_vk_to_string63_o[33];

    // i_acl_1658_emscripten_dom_vk_to_string649(LOGICAL,367)@17 + 1
    assign i_acl_1658_emscripten_dom_vk_to_string649_qi = i_pivot29_emscripten_dom_vk_to_string235_c ^ i_pivot37_emscripten_dom_vk_to_string63_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1658_emscripten_dom_vk_to_string649_delay ( .xin(i_acl_1658_emscripten_dom_vk_to_string649_qi), .xout(i_acl_1658_emscripten_dom_vk_to_string649_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist108_i_acl_1658_emscripten_dom_vk_to_string649_q_7(DELAY,1193)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist108_i_acl_1658_emscripten_dom_vk_to_string649_q_7 ( .xin(i_acl_1658_emscripten_dom_vk_to_string649_q), .xout(redist108_i_acl_1658_emscripten_dom_vk_to_string649_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1664_emscripten_dom_vk_to_string650(MUX,368)@24 + 1
    assign i_acl_1664_emscripten_dom_vk_to_string650_s = redist108_i_acl_1658_emscripten_dom_vk_to_string649_q_7_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1664_emscripten_dom_vk_to_string650_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1664_emscripten_dom_vk_to_string650_s)
                1'b0 : i_acl_1664_emscripten_dom_vk_to_string650_q <= i_acl_1656_emscripten_dom_vk_to_string648_q;
                1'b1 : i_acl_1664_emscripten_dom_vk_to_string650_q <= c_i64_46615070893051740161035_q;
                default : i_acl_1664_emscripten_dom_vk_to_string650_q <= 64'b0;
            endcase
        end
    end

    // c_i32_149797_recast_x(CONSTANT,901)
    assign c_i32_149797_recast_x_q = $unsigned(32'b00000000000000000000000010010101);

    // i_pivot33_emscripten_dom_vk_to_string237(COMPARE,649)@17
    assign i_pivot33_emscripten_dom_vk_to_string237_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot33_emscripten_dom_vk_to_string237_b = $unsigned({{2{c_i32_149797_recast_x_q[31]}}, c_i32_149797_recast_x_q});
    assign i_pivot33_emscripten_dom_vk_to_string237_o = $unsigned($signed(i_pivot33_emscripten_dom_vk_to_string237_a) - $signed(i_pivot33_emscripten_dom_vk_to_string237_b));
    assign i_pivot33_emscripten_dom_vk_to_string237_c[0] = i_pivot33_emscripten_dom_vk_to_string237_o[33];

    // i_acl_1669_emscripten_dom_vk_to_string651(LOGICAL,369)@17 + 1
    assign i_acl_1669_emscripten_dom_vk_to_string651_qi = i_pivot33_emscripten_dom_vk_to_string237_c ^ i_pivot87_emscripten_dom_vk_to_string9_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1669_emscripten_dom_vk_to_string651_delay ( .xin(i_acl_1669_emscripten_dom_vk_to_string651_qi), .xout(i_acl_1669_emscripten_dom_vk_to_string651_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist107_i_acl_1669_emscripten_dom_vk_to_string651_q_8(DELAY,1192)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist107_i_acl_1669_emscripten_dom_vk_to_string651_q_8 ( .xin(i_acl_1669_emscripten_dom_vk_to_string651_q), .xout(redist107_i_acl_1669_emscripten_dom_vk_to_string651_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1672_emscripten_dom_vk_to_string652(MUX,370)@25
    assign i_acl_1672_emscripten_dom_vk_to_string652_s = redist107_i_acl_1669_emscripten_dom_vk_to_string651_q_8_q;
    always @(i_acl_1672_emscripten_dom_vk_to_string652_s or i_acl_1664_emscripten_dom_vk_to_string650_q or c_i64_46617885642818846721036_q)
    begin
        unique case (i_acl_1672_emscripten_dom_vk_to_string652_s)
            1'b0 : i_acl_1672_emscripten_dom_vk_to_string652_q = i_acl_1664_emscripten_dom_vk_to_string650_q;
            1'b1 : i_acl_1672_emscripten_dom_vk_to_string652_q = c_i64_46617885642818846721036_q;
            default : i_acl_1672_emscripten_dom_vk_to_string652_q = 64'b0;
        endcase
    end

    // i_acl_1674_emscripten_dom_vk_to_string653(LOGICAL,371)@17 + 1
    assign i_acl_1674_emscripten_dom_vk_to_string653_qi = i_pivot39_emscripten_dom_vk_to_string31_c ^ i_pivot31_emscripten_dom_vk_to_string125_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1674_emscripten_dom_vk_to_string653_delay ( .xin(i_acl_1674_emscripten_dom_vk_to_string653_qi), .xout(i_acl_1674_emscripten_dom_vk_to_string653_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist106_i_acl_1674_emscripten_dom_vk_to_string653_q_8(DELAY,1191)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist106_i_acl_1674_emscripten_dom_vk_to_string653_q_8 ( .xin(i_acl_1674_emscripten_dom_vk_to_string653_q), .xout(redist106_i_acl_1674_emscripten_dom_vk_to_string653_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1679_emscripten_dom_vk_to_string654(MUX,372)@25
    assign i_acl_1679_emscripten_dom_vk_to_string654_s = redist106_i_acl_1674_emscripten_dom_vk_to_string653_q_8_q;
    always @(i_acl_1679_emscripten_dom_vk_to_string654_s or i_acl_1672_emscripten_dom_vk_to_string652_q or c_i64_46620700392585953281037_q)
    begin
        unique case (i_acl_1679_emscripten_dom_vk_to_string654_s)
            1'b0 : i_acl_1679_emscripten_dom_vk_to_string654_q = i_acl_1672_emscripten_dom_vk_to_string652_q;
            1'b1 : i_acl_1679_emscripten_dom_vk_to_string654_q = c_i64_46620700392585953281037_q;
            default : i_acl_1679_emscripten_dom_vk_to_string654_q = 64'b0;
        endcase
    end

    // c_i32_148742_recast_x(CONSTANT,900)
    assign c_i32_148742_recast_x_q = $unsigned(32'b00000000000000000000000010010100);

    // i_pivot35_emscripten_dom_vk_to_string127(COMPARE,650)@17
    assign i_pivot35_emscripten_dom_vk_to_string127_a = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot35_emscripten_dom_vk_to_string127_b = $unsigned({{2{c_i32_148742_recast_x_q[31]}}, c_i32_148742_recast_x_q});
    assign i_pivot35_emscripten_dom_vk_to_string127_o = $unsigned($signed(i_pivot35_emscripten_dom_vk_to_string127_a) - $signed(i_pivot35_emscripten_dom_vk_to_string127_b));
    assign i_pivot35_emscripten_dom_vk_to_string127_c[0] = i_pivot35_emscripten_dom_vk_to_string127_o[33];

    // i_acl_1680_emscripten_dom_vk_to_string655(LOGICAL,373)@17 + 1
    assign i_acl_1680_emscripten_dom_vk_to_string655_qi = i_pivot35_emscripten_dom_vk_to_string127_c ^ i_pivot33_emscripten_dom_vk_to_string237_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1680_emscripten_dom_vk_to_string655_delay ( .xin(i_acl_1680_emscripten_dom_vk_to_string655_qi), .xout(i_acl_1680_emscripten_dom_vk_to_string655_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist105_i_acl_1680_emscripten_dom_vk_to_string655_q_8(DELAY,1190)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist105_i_acl_1680_emscripten_dom_vk_to_string655_q_8 ( .xin(i_acl_1680_emscripten_dom_vk_to_string655_q), .xout(redist105_i_acl_1680_emscripten_dom_vk_to_string655_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1687_emscripten_dom_vk_to_string656(MUX,374)@25
    assign i_acl_1687_emscripten_dom_vk_to_string656_s = redist105_i_acl_1680_emscripten_dom_vk_to_string655_q_8_q;
    always @(i_acl_1687_emscripten_dom_vk_to_string656_s or i_acl_1679_emscripten_dom_vk_to_string654_q or c_i64_46623515142353059841038_q)
    begin
        unique case (i_acl_1687_emscripten_dom_vk_to_string656_s)
            1'b0 : i_acl_1687_emscripten_dom_vk_to_string656_q = i_acl_1679_emscripten_dom_vk_to_string654_q;
            1'b1 : i_acl_1687_emscripten_dom_vk_to_string656_q = c_i64_46623515142353059841038_q;
            default : i_acl_1687_emscripten_dom_vk_to_string656_q = 64'b0;
        endcase
    end

    // c_i32_2921039_recast_x(CONSTANT,1042)
    assign c_i32_2921039_recast_x_q = $unsigned(32'b00000000000000000000000100100100);

    // i_unnamed_emscripten_dom_vk_to_string657(LOGICAL,707)@17 + 1
    assign i_unnamed_emscripten_dom_vk_to_string657_qi = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_2921039_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_emscripten_dom_vk_to_string657_delay ( .xin(i_unnamed_emscripten_dom_vk_to_string657_qi), .xout(i_unnamed_emscripten_dom_vk_to_string657_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_unnamed_emscripten_dom_vk_to_string657_q_8(DELAY,1102)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_unnamed_emscripten_dom_vk_to_string657_q_8 ( .xin(i_unnamed_emscripten_dom_vk_to_string657_q), .xout(redist17_i_unnamed_emscripten_dom_vk_to_string657_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1695_emscripten_dom_vk_to_string659(MUX,375)@25
    assign i_acl_1695_emscripten_dom_vk_to_string659_s = redist17_i_unnamed_emscripten_dom_vk_to_string657_q_8_q;
    always @(i_acl_1695_emscripten_dom_vk_to_string659_s or i_acl_1687_emscripten_dom_vk_to_string656_q or c_i64_46626329892120166401040_q)
    begin
        unique case (i_acl_1695_emscripten_dom_vk_to_string659_s)
            1'b0 : i_acl_1695_emscripten_dom_vk_to_string659_q = i_acl_1687_emscripten_dom_vk_to_string656_q;
            1'b1 : i_acl_1695_emscripten_dom_vk_to_string659_q = c_i64_46626329892120166401040_q;
            default : i_acl_1695_emscripten_dom_vk_to_string659_q = 64'b0;
        endcase
    end

    // redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4(DELAY,1133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_0 <= '0;
            redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_1 <= '0;
            redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_q <= '0;
        end
        else
        begin
            redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_0 <= $unsigned(i_pivot283_emscripten_dom_vk_to_string313_c);
            redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_1 <= redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_0;
            redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_q <= redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_delay_1;
        end
    end

    // i_acl_1696_emscripten_dom_vk_to_string660(LOGICAL,376)@7 + 1
    assign i_acl_1696_emscripten_dom_vk_to_string660_qi = i_pivot285_emscripten_dom_vk_to_string215_c ^ redist48_i_pivot283_emscripten_dom_vk_to_string313_c_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1696_emscripten_dom_vk_to_string660_delay ( .xin(i_acl_1696_emscripten_dom_vk_to_string660_qi), .xout(i_acl_1696_emscripten_dom_vk_to_string660_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist104_i_acl_1696_emscripten_dom_vk_to_string660_q_18(DELAY,1189)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist104_i_acl_1696_emscripten_dom_vk_to_string660_q_18 ( .xin(i_acl_1696_emscripten_dom_vk_to_string660_q), .xout(redist104_i_acl_1696_emscripten_dom_vk_to_string660_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1703_emscripten_dom_vk_to_string661(MUX,377)@25
    assign i_acl_1703_emscripten_dom_vk_to_string661_s = redist104_i_acl_1696_emscripten_dom_vk_to_string660_q_18_q;
    always @(i_acl_1703_emscripten_dom_vk_to_string661_s or i_acl_1695_emscripten_dom_vk_to_string659_q or c_i64_46629144641887272961041_q)
    begin
        unique case (i_acl_1703_emscripten_dom_vk_to_string661_s)
            1'b0 : i_acl_1703_emscripten_dom_vk_to_string661_q = i_acl_1695_emscripten_dom_vk_to_string659_q;
            1'b1 : i_acl_1703_emscripten_dom_vk_to_string661_q = c_i64_46629144641887272961041_q;
            default : i_acl_1703_emscripten_dom_vk_to_string661_q = 64'b0;
        endcase
    end

    // redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3(DELAY,1138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_0 <= '0;
            redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_1 <= '0;
            redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_q <= '0;
        end
        else
        begin
            redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_0 <= $unsigned(i_pivot265_emscripten_dom_vk_to_string51_c);
            redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_1 <= redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_0;
            redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_q <= redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_delay_1;
        end
    end

    // i_acl_1706_emscripten_dom_vk_to_string662(LOGICAL,378)@8 + 1
    assign i_acl_1706_emscripten_dom_vk_to_string662_qi = i_pivot249_emscripten_dom_vk_to_string303_c ^ redist53_i_pivot265_emscripten_dom_vk_to_string51_c_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1706_emscripten_dom_vk_to_string662_delay ( .xin(i_acl_1706_emscripten_dom_vk_to_string662_qi), .xout(i_acl_1706_emscripten_dom_vk_to_string662_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist103_i_acl_1706_emscripten_dom_vk_to_string662_q_17(DELAY,1188)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist103_i_acl_1706_emscripten_dom_vk_to_string662_q_17 ( .xin(i_acl_1706_emscripten_dom_vk_to_string662_q), .xout(redist103_i_acl_1706_emscripten_dom_vk_to_string662_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1711_emscripten_dom_vk_to_string663(MUX,379)@25
    assign i_acl_1711_emscripten_dom_vk_to_string663_s = redist103_i_acl_1706_emscripten_dom_vk_to_string662_q_17_q;
    always @(i_acl_1711_emscripten_dom_vk_to_string663_s or i_acl_1703_emscripten_dom_vk_to_string661_q or c_i64_46631959391654379521042_q)
    begin
        unique case (i_acl_1711_emscripten_dom_vk_to_string663_s)
            1'b0 : i_acl_1711_emscripten_dom_vk_to_string663_q = i_acl_1703_emscripten_dom_vk_to_string661_q;
            1'b1 : i_acl_1711_emscripten_dom_vk_to_string663_q = c_i64_46631959391654379521042_q;
            default : i_acl_1711_emscripten_dom_vk_to_string663_q = 64'b0;
        endcase
    end

    // i_acl_1712_emscripten_dom_vk_to_string664(LOGICAL,380)@4 + 1
    assign i_acl_1712_emscripten_dom_vk_to_string664_qi = i_pivot263_emscripten_dom_vk_to_string103_c ^ i_pivot261_emscripten_dom_vk_to_string207_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1712_emscripten_dom_vk_to_string664_delay ( .xin(i_acl_1712_emscripten_dom_vk_to_string664_qi), .xout(i_acl_1712_emscripten_dom_vk_to_string664_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist102_i_acl_1712_emscripten_dom_vk_to_string664_q_21(DELAY,1187)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist102_i_acl_1712_emscripten_dom_vk_to_string664_q_21 ( .xin(i_acl_1712_emscripten_dom_vk_to_string664_q), .xout(redist102_i_acl_1712_emscripten_dom_vk_to_string664_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1718_emscripten_dom_vk_to_string665(MUX,381)@25 + 1
    assign i_acl_1718_emscripten_dom_vk_to_string665_s = redist102_i_acl_1712_emscripten_dom_vk_to_string664_q_21_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1718_emscripten_dom_vk_to_string665_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1718_emscripten_dom_vk_to_string665_s)
                1'b0 : i_acl_1718_emscripten_dom_vk_to_string665_q <= i_acl_1711_emscripten_dom_vk_to_string663_q;
                1'b1 : i_acl_1718_emscripten_dom_vk_to_string665_q <= c_i64_46634774141421486081043_q;
                default : i_acl_1718_emscripten_dom_vk_to_string665_q <= 64'b0;
            endcase
        end
    end

    // i_acl_1719_emscripten_dom_vk_to_string666(LOGICAL,382)@17 + 1
    assign i_acl_1719_emscripten_dom_vk_to_string666_qi = i_pivot111_emscripten_dom_vk_to_string153_c ^ i_pivot109_emscripten_dom_vk_to_string259_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1719_emscripten_dom_vk_to_string666_delay ( .xin(i_acl_1719_emscripten_dom_vk_to_string666_qi), .xout(i_acl_1719_emscripten_dom_vk_to_string666_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist101_i_acl_1719_emscripten_dom_vk_to_string666_q_9(DELAY,1186)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist101_i_acl_1719_emscripten_dom_vk_to_string666_q_9 ( .xin(i_acl_1719_emscripten_dom_vk_to_string666_q), .xout(redist101_i_acl_1719_emscripten_dom_vk_to_string666_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1726_emscripten_dom_vk_to_string667(MUX,383)@26
    assign i_acl_1726_emscripten_dom_vk_to_string667_s = redist101_i_acl_1719_emscripten_dom_vk_to_string666_q_9_q;
    always @(i_acl_1726_emscripten_dom_vk_to_string667_s or i_acl_1718_emscripten_dom_vk_to_string665_q or c_i64_46637588891188592641044_q)
    begin
        unique case (i_acl_1726_emscripten_dom_vk_to_string667_s)
            1'b0 : i_acl_1726_emscripten_dom_vk_to_string667_q = i_acl_1718_emscripten_dom_vk_to_string665_q;
            1'b1 : i_acl_1726_emscripten_dom_vk_to_string667_q = c_i64_46637588891188592641044_q;
            default : i_acl_1726_emscripten_dom_vk_to_string667_q = 64'b0;
        endcase
    end

    // c_i32_128791_recast_x(CONSTANT,880)
    assign c_i32_128791_recast_x_q = $unsigned(32'b00000000000000000000000010000000);

    // i_switchleaf_emscripten_dom_vk_to_string225(LOGICAL,697)@17
    assign i_switchleaf_emscripten_dom_vk_to_string225_q = $unsigned(redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q == c_i32_128791_recast_x_q ? 1'b1 : 1'b0);

    // redist23_i_switchleaf_emscripten_dom_vk_to_string225_q_9(DELAY,1108)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_i_switchleaf_emscripten_dom_vk_to_string225_q_9 ( .xin(i_switchleaf_emscripten_dom_vk_to_string225_q), .xout(redist23_i_switchleaf_emscripten_dom_vk_to_string225_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1734_emscripten_dom_vk_to_string668(MUX,384)@26
    assign i_acl_1734_emscripten_dom_vk_to_string668_s = redist23_i_switchleaf_emscripten_dom_vk_to_string225_q_9_q;
    always @(i_acl_1734_emscripten_dom_vk_to_string668_s or i_acl_1726_emscripten_dom_vk_to_string667_q or c_i64_46640403640955699201045_q)
    begin
        unique case (i_acl_1734_emscripten_dom_vk_to_string668_s)
            1'b0 : i_acl_1734_emscripten_dom_vk_to_string668_q = i_acl_1726_emscripten_dom_vk_to_string667_q;
            1'b1 : i_acl_1734_emscripten_dom_vk_to_string668_q = c_i64_46640403640955699201045_q;
            default : i_acl_1734_emscripten_dom_vk_to_string668_q = 64'b0;
        endcase
    end

    // redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6(DELAY,1170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_0 <= '0;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_1 <= '0;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_2 <= '0;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_3 <= '0;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_q <= '0;
        end
        else
        begin
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_0 <= $unsigned(i_pivot119_emscripten_dom_vk_to_string263_c);
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_1 <= redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_0;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_2 <= redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_1;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_3 <= redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_2;
            redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_q <= redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_delay_3;
        end
    end

    // i_acl_1736_emscripten_dom_vk_to_string669(LOGICAL,385)@10 + 1
    assign i_acl_1736_emscripten_dom_vk_to_string669_qi = redist85_i_pivot119_emscripten_dom_vk_to_string263_c_6_q ^ i_pivot127_emscripten_dom_vk_to_string79_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1736_emscripten_dom_vk_to_string669_delay ( .xin(i_acl_1736_emscripten_dom_vk_to_string669_qi), .xout(i_acl_1736_emscripten_dom_vk_to_string669_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist100_i_acl_1736_emscripten_dom_vk_to_string669_q_16(DELAY,1185)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist100_i_acl_1736_emscripten_dom_vk_to_string669_q_16 ( .xin(i_acl_1736_emscripten_dom_vk_to_string669_q), .xout(redist100_i_acl_1736_emscripten_dom_vk_to_string669_q_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1742_emscripten_dom_vk_to_string670(MUX,386)@26
    assign i_acl_1742_emscripten_dom_vk_to_string670_s = redist100_i_acl_1736_emscripten_dom_vk_to_string669_q_16_q;
    always @(i_acl_1742_emscripten_dom_vk_to_string670_s or i_acl_1734_emscripten_dom_vk_to_string668_q or c_i64_46643218390722805761046_q)
    begin
        unique case (i_acl_1742_emscripten_dom_vk_to_string670_s)
            1'b0 : i_acl_1742_emscripten_dom_vk_to_string670_q = i_acl_1734_emscripten_dom_vk_to_string668_q;
            1'b1 : i_acl_1742_emscripten_dom_vk_to_string670_q = c_i64_46643218390722805761046_q;
            default : i_acl_1742_emscripten_dom_vk_to_string670_q = 64'b0;
        endcase
    end

    // i_acl_1743_emscripten_dom_vk_to_string671(LOGICAL,387)@17 + 1
    assign i_acl_1743_emscripten_dom_vk_to_string671_qi = i_pivot37_emscripten_dom_vk_to_string63_c ^ i_pivot35_emscripten_dom_vk_to_string127_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1743_emscripten_dom_vk_to_string671_delay ( .xin(i_acl_1743_emscripten_dom_vk_to_string671_qi), .xout(i_acl_1743_emscripten_dom_vk_to_string671_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist99_i_acl_1743_emscripten_dom_vk_to_string671_q_9(DELAY,1184)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist99_i_acl_1743_emscripten_dom_vk_to_string671_q_9 ( .xin(i_acl_1743_emscripten_dom_vk_to_string671_q), .xout(redist99_i_acl_1743_emscripten_dom_vk_to_string671_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1749_emscripten_dom_vk_to_string672(MUX,388)@26
    assign i_acl_1749_emscripten_dom_vk_to_string672_s = redist99_i_acl_1743_emscripten_dom_vk_to_string671_q_9_q;
    always @(i_acl_1749_emscripten_dom_vk_to_string672_s or i_acl_1742_emscripten_dom_vk_to_string670_q or c_i64_46646033140489912321047_q)
    begin
        unique case (i_acl_1749_emscripten_dom_vk_to_string672_s)
            1'b0 : i_acl_1749_emscripten_dom_vk_to_string672_q = i_acl_1742_emscripten_dom_vk_to_string670_q;
            1'b1 : i_acl_1749_emscripten_dom_vk_to_string672_q = c_i64_46646033140489912321047_q;
            default : i_acl_1749_emscripten_dom_vk_to_string672_q = 64'b0;
        endcase
    end

    // redist24_i_pivot_emscripten_dom_vk_to_string113_c_6(DELAY,1109)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_pivot_emscripten_dom_vk_to_string113_c_6 ( .xin(i_pivot_emscripten_dom_vk_to_string113_c), .xout(redist24_i_pivot_emscripten_dom_vk_to_string113_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1750_emscripten_dom_vk_to_string673(LOGICAL,389)@17
    assign i_acl_1750_emscripten_dom_vk_to_string673_q = i_switchleaf_emscripten_dom_vk_to_string225_q ^ redist24_i_pivot_emscripten_dom_vk_to_string113_c_6_q;

    // c_i32_3101048_recast_x(CONSTANT,1049)
    assign c_i32_3101048_recast_x_q = $unsigned(32'b00000000000000000000000100110110);

    // i_unnamed_emscripten_dom_vk_to_string674(COMPARE,708)@17
    assign i_unnamed_emscripten_dom_vk_to_string674_a = $unsigned({{2{c_i32_3101048_recast_x_q[31]}}, c_i32_3101048_recast_x_q});
    assign i_unnamed_emscripten_dom_vk_to_string674_b = $unsigned({{2{redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1051_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_unnamed_emscripten_dom_vk_to_string674_o = $unsigned($signed(i_unnamed_emscripten_dom_vk_to_string674_a) - $signed(i_unnamed_emscripten_dom_vk_to_string674_b));
    assign i_unnamed_emscripten_dom_vk_to_string674_c[0] = i_unnamed_emscripten_dom_vk_to_string674_o[33];

    // redist41_i_pivot365_emscripten_dom_vk_to_string3_c_14(DELAY,1126)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_i_pivot365_emscripten_dom_vk_to_string3_c_14 ( .xin(redist40_i_pivot365_emscripten_dom_vk_to_string3_c_6_q), .xout(redist41_i_pivot365_emscripten_dom_vk_to_string3_c_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1763_emscripten_dom_vk_to_string676(MUX,390)@17 + 1
    assign i_acl_1763_emscripten_dom_vk_to_string676_s = redist41_i_pivot365_emscripten_dom_vk_to_string3_c_14_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1763_emscripten_dom_vk_to_string676_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_1763_emscripten_dom_vk_to_string676_s)
                1'b0 : i_acl_1763_emscripten_dom_vk_to_string676_q <= i_unnamed_emscripten_dom_vk_to_string674_c;
                1'b1 : i_acl_1763_emscripten_dom_vk_to_string676_q <= i_acl_1750_emscripten_dom_vk_to_string673_q;
                default : i_acl_1763_emscripten_dom_vk_to_string676_q <= 1'b0;
            endcase
        end
    end

    // redist98_i_acl_1763_emscripten_dom_vk_to_string676_q_9(DELAY,1183)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist98_i_acl_1763_emscripten_dom_vk_to_string676_q_9 ( .xin(i_acl_1763_emscripten_dom_vk_to_string676_q), .xout(redist98_i_acl_1763_emscripten_dom_vk_to_string676_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1764_emscripten_dom_vk_to_string677(MUX,391)@26
    assign i_acl_1764_emscripten_dom_vk_to_string677_s = redist98_i_acl_1763_emscripten_dom_vk_to_string676_q_9_q;
    always @(i_acl_1764_emscripten_dom_vk_to_string677_s or i_acl_1749_emscripten_dom_vk_to_string672_q or c_i64_46648847890257018881049_q)
    begin
        unique case (i_acl_1764_emscripten_dom_vk_to_string677_s)
            1'b0 : i_acl_1764_emscripten_dom_vk_to_string677_q = i_acl_1749_emscripten_dom_vk_to_string672_q;
            1'b1 : i_acl_1764_emscripten_dom_vk_to_string677_q = c_i64_46648847890257018881049_q;
            default : i_acl_1764_emscripten_dom_vk_to_string677_q = 64'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,1069)@26
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_acl_1764_emscripten_dom_vk_to_string677_q;
    assign out_o_valid = redist16_sync_together1051_aunroll_x_in_i_valid_25_q;
    assign out_unnamed_emscripten_dom_vk_to_string1 = GND_q;

endmodule
