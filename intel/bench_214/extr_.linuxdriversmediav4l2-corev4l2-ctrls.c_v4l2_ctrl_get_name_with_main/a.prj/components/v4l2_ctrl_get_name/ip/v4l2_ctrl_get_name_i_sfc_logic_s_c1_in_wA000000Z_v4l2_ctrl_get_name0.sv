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

// SystemVerilog created from v4l2_ctrl_get_name_i_sfc_logic_s_c1_in_wA000000Z_v4l2_ctrl_get_name0
// SystemVerilog created on Sun May 24 22:35:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module v4l2_ctrl_get_name_i_sfc_logic_s_c1_in_wA000000Z_v4l2_ctrl_get_name0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [63:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_v4l2_ctrl_get_name1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_01088_q;
    wire [31:0] c_i32_11089_q;
    wire [31:0] c_i32_1361285_q;
    wire [31:0] c_i32_1371286_q;
    wire [31:0] c_i32_1391287_q;
    wire [31:0] c_i32_1411218_q;
    wire [31:0] c_i32_1421219_q;
    wire [31:0] c_i32_1431220_q;
    wire [31:0] c_i32_1441318_q;
    wire [31:0] c_i32_1451319_q;
    wire [31:0] c_i32_1461320_q;
    wire [31:0] c_i32_1471321_q;
    wire [31:0] c_i32_1891288_q;
    wire [31:0] c_i32_1901289_q;
    wire [31:0] c_i32_1911290_q;
    wire [31:0] c_i32_1931221_q;
    wire [31:0] c_i32_1941222_q;
    wire [31:0] c_i32_1951223_q;
    wire [31:0] c_i32_2101133_q;
    wire [31:0] c_i32_21090_q;
    wire [31:0] c_i32_2111044_q;
    wire [31:0] c_i32_2121134_q;
    wire [31:0] c_i32_2161135_q;
    wire [31:0] c_i32_2171136_q;
    wire [31:0] c_i32_2181045_q;
    wire [31:0] c_i32_2191046_q;
    wire [31:0] c_i32_2311055_q;
    wire [31:0] c_i32_2321056_q;
    wire [31:0] c_i32_2761057_q;
    wire [31:0] c_i32_31091_q;
    wire [31:0] c_i32_41098_q;
    wire [31:0] c_i32_51080_q;
    wire [31:0] c_i32_61081_q;
    wire [31:0] c_i32_71075_q;
    wire [63:0] c_i64_4613374868287651840961_q;
    wire [63:0] c_i64_4613656343264362496962_q;
    wire [63:0] c_i64_4613937818241073152963_q;
    wire [63:0] c_i64_4614219293217783808965_q;
    wire [63:0] c_i64_4614500768194494464966_q;
    wire [63:0] c_i64_4614782243171205120967_q;
    wire [63:0] c_i64_4615063718147915776968_q;
    wire [63:0] c_i64_4615345193124626432969_q;
    wire [63:0] c_i64_4615626668101337088970_q;
    wire [63:0] c_i64_4615908143078047744971_q;
    wire [63:0] c_i64_4616189618054758400972_q;
    wire [63:0] c_i64_4616471093031469056973_q;
    wire [63:0] c_i64_4616752568008179712974_q;
    wire [63:0] c_i64_4617034042984890368975_q;
    wire [63:0] c_i64_4617315517961601024977_q;
    wire [63:0] c_i64_4617596992938311680978_q;
    wire [63:0] c_i64_4617878467915022336979_q;
    wire [63:0] c_i64_4618159942891732992980_q;
    wire [63:0] c_i64_4618441417868443648981_q;
    wire [63:0] c_i64_4618722892845154304982_q;
    wire [63:0] c_i64_4619004367821864960983_q;
    wire [63:0] c_i64_4619285842798575616984_q;
    wire [63:0] c_i64_4619567317775286272986_q;
    wire [63:0] c_i64_4619848792751996928987_q;
    wire [63:0] c_i64_4620130267728707584988_q;
    wire [63:0] c_i64_4620411742705418240990_q;
    wire [63:0] c_i64_4620693217682128896991_q;
    wire [63:0] c_i64_4620974692658839552992_q;
    wire [63:0] c_i64_4621256167635550208993_q;
    wire [63:0] c_i64_4621537642612260864994_q;
    wire [63:0] c_i64_4621819117588971520995_q;
    wire [63:0] c_i64_4622100592565682176996_q;
    wire [63:0] c_i64_4622382067542392832998_q;
    wire [63:0] c_i64_4622663542519103488999_q;
    wire [63:0] c_i64_46229450174958141441000_q;
    wire [63:0] c_i64_46232264924725248001001_q;
    wire [63:0] c_i64_46235079674492354561002_q;
    wire [63:0] c_i64_46237894424259461121003_q;
    wire [63:0] c_i64_46240709174026567681004_q;
    wire [63:0] c_i64_46243523923793674241005_q;
    wire [63:0] c_i64_46246338673560780801006_q;
    wire [63:0] c_i64_46249153423327887361007_q;
    wire [63:0] c_i64_46251968173094993921008_q;
    wire [63:0] c_i64_46254782922862100481009_q;
    wire [63:0] c_i64_46257597672629207041010_q;
    wire [63:0] c_i64_46260412422396313601011_q;
    wire [63:0] c_i64_46263227172163420161012_q;
    wire [63:0] c_i64_46266041921930526721013_q;
    wire [63:0] c_i64_46268856671697633281014_q;
    wire [63:0] c_i64_46271671421464739841015_q;
    wire [63:0] c_i64_46274486171231846401016_q;
    wire [63:0] c_i64_46277300920998952961017_q;
    wire [63:0] c_i64_46280115670766059521018_q;
    wire [63:0] c_i64_46282930420533166081019_q;
    wire [63:0] c_i64_46285745170300272641020_q;
    wire [63:0] c_i64_46288559920067379201021_q;
    wire [63:0] c_i64_46291374669834485761022_q;
    wire [63:0] c_i64_46294189419601592321023_q;
    wire [63:0] c_i64_46297004169368698881024_q;
    wire [63:0] c_i64_46299818919135805441025_q;
    wire [63:0] c_i64_46302633668902912001026_q;
    wire [63:0] c_i64_46305448418670018561027_q;
    wire [63:0] c_i64_46308263168437125121028_q;
    wire [63:0] c_i64_46311077918204231681029_q;
    wire [63:0] c_i64_46313892667971338241030_q;
    wire [63:0] c_i64_46316707417738444801031_q;
    wire [63:0] c_i64_46319522167505551361032_q;
    wire [63:0] c_i64_46322336917272657921033_q;
    wire [63:0] c_i64_46325151667039764481034_q;
    wire [63:0] c_i64_46327966416806871041036_q;
    wire [63:0] c_i64_46330781166573977601037_q;
    wire [63:0] c_i64_46333595916341084161038_q;
    wire [63:0] c_i64_46336410666108190721039_q;
    wire [63:0] c_i64_46339225415875297281041_q;
    wire [63:0] c_i64_46342040165642403841043_q;
    wire [63:0] c_i64_46344854915409510401042_q;
    wire [63:0] c_i64_46347669665176616961047_q;
    wire [63:0] c_i64_46350484414943723521048_q;
    wire [63:0] c_i64_46353299164710830081049_q;
    wire [63:0] c_i64_46356113914477936641050_q;
    wire [63:0] c_i64_46358928664245043201052_q;
    wire [63:0] c_i64_46361743414012149761054_q;
    wire [63:0] c_i64_46364558163779256321053_q;
    wire [63:0] c_i64_46367372913546362881058_q;
    wire [63:0] c_i64_46370187663313469441059_q;
    wire [63:0] c_i64_46373002413080576001060_q;
    wire [63:0] c_i64_46375817162847682561061_q;
    wire [63:0] c_i64_46378631912614789121062_q;
    wire [63:0] c_i64_46381446662381895681063_q;
    wire [63:0] c_i64_46384261412149002241065_q;
    wire [63:0] c_i64_46387076161916108801066_q;
    wire [63:0] c_i64_46389890911683215361068_q;
    wire [63:0] c_i64_46392705661450321921070_q;
    wire [63:0] c_i64_46395520411217428481071_q;
    wire [63:0] c_i64_46398335160984535041072_q;
    wire [63:0] c_i64_46401149910751641601073_q;
    wire [63:0] c_i64_46403964660518748161074_q;
    wire [63:0] c_i64_46406779410285854721096_q;
    wire [63:0] c_i64_46409594160052961281095_q;
    wire [63:0] c_i64_46412408909820067841094_q;
    wire [63:0] c_i64_46415223659587174401093_q;
    wire [63:0] c_i64_46418038409354280961087_q;
    wire [63:0] c_i64_46420853159121387521083_q;
    wire [63:0] c_i64_46423667908888494081079_q;
    wire [63:0] c_i64_46426482658655600641078_q;
    wire [63:0] c_i64_46429297408422707201077_q;
    wire [63:0] c_i64_46432112158189813761084_q;
    wire [63:0] c_i64_46434926907956920321085_q;
    wire [63:0] c_i64_46437741657724026881086_q;
    wire [63:0] c_i64_46440556407491133441099_q;
    wire [63:0] c_i64_46443371157258240001100_q;
    wire [63:0] c_i64_46446185907025346561101_q;
    wire [63:0] c_i64_46449000656792453121102_q;
    wire [63:0] c_i64_46451815406559559681103_q;
    wire [63:0] c_i64_46454630156326666241104_q;
    wire [63:0] c_i64_46457444906093772801105_q;
    wire [63:0] c_i64_46460259655860879361106_q;
    wire [63:0] c_i64_46463074405627985921107_q;
    wire [63:0] c_i64_46465889155395092481108_q;
    wire [63:0] c_i64_46468703905162199041109_q;
    wire [63:0] c_i64_46471518654929305601110_q;
    wire [63:0] c_i64_46474333404696412161124_q;
    wire [63:0] c_i64_46477148154463518721119_q;
    wire [63:0] c_i64_46479962904230625281125_q;
    wire [63:0] c_i64_46482777653997731841121_q;
    wire [63:0] c_i64_46485592403764838401122_q;
    wire [63:0] c_i64_46488407153531944961123_q;
    wire [63:0] c_i64_46491221903299051521120_q;
    wire [63:0] c_i64_46494036653066158081117_q;
    wire [63:0] c_i64_46496851402833264641116_q;
    wire [63:0] c_i64_46499666152600371201115_q;
    wire [63:0] c_i64_46502480902367477761114_q;
    wire [63:0] c_i64_46505295652134584321112_q;
    wire [63:0] c_i64_46508110401901690881126_q;
    wire [63:0] c_i64_46510925151668797441127_q;
    wire [63:0] c_i64_46513739901435904001129_q;
    wire [63:0] c_i64_46516554651203010561132_q;
    wire [63:0] c_i64_46519369400970117121131_q;
    wire [63:0] c_i64_46522184150737223681130_q;
    wire [63:0] c_i64_46524998900504330241137_q;
    wire [63:0] c_i64_46527813650271436801141_q;
    wire [63:0] c_i64_46530628400038543361146_q;
    wire [63:0] c_i64_46533443149805649921140_q;
    wire [63:0] c_i64_46536257899572756481150_q;
    wire [63:0] c_i64_46539072649339863041149_q;
    wire [63:0] c_i64_46541887399106969601148_q;
    wire [63:0] c_i64_46544702148874076161147_q;
    wire [63:0] c_i64_46547516898641182721142_q;
    wire [63:0] c_i64_46550331648408289281144_q;
    wire [63:0] c_i64_46553146398175395841145_q;
    wire [63:0] c_i64_46555961147942502401139_q;
    wire [63:0] c_i64_46558775897709608961153_q;
    wire [63:0] c_i64_46561590647476715521151_q;
    wire [63:0] c_i64_46564405397243822081179_q;
    wire [63:0] c_i64_46567220147010928641167_q;
    wire [63:0] c_i64_46570034896778035201204_q;
    wire [63:0] c_i64_46572849646545141761169_q;
    wire [63:0] c_i64_46575664396312248321170_q;
    wire [63:0] c_i64_46578479146079354881168_q;
    wire [63:0] c_i64_46581293895846461441178_q;
    wire [63:0] c_i64_46584108645613568001160_q;
    wire [63:0] c_i64_46586923395380674561202_q;
    wire [63:0] c_i64_46589738145147781121171_q;
    wire [63:0] c_i64_46592552894914887681165_q;
    wire [63:0] c_i64_46595367644681994241203_q;
    wire [63:0] c_i64_46598182394449100801174_q;
    wire [63:0] c_i64_46600997144216207361158_q;
    wire [63:0] c_i64_46603811893983313921175_q;
    wire [63:0] c_i64_46606626643750420481181_q;
    wire [63:0] c_i64_46609441393517527041183_q;
    wire [63:0] c_i64_46612256143284633601184_q;
    wire [63:0] c_i64_46615070893051740161198_q;
    wire [63:0] c_i64_46617885642818846721196_q;
    wire [63:0] c_i64_46620700392585953281194_q;
    wire [63:0] c_i64_46623515142353059841192_q;
    wire [63:0] c_i64_46626329892120166401189_q;
    wire [63:0] c_i64_46629144641887272961187_q;
    wire [63:0] c_i64_46631959391654379521185_q;
    wire [63:0] c_i64_46634774141421486081199_q;
    wire [63:0] c_i64_46637588891188592641197_q;
    wire [63:0] c_i64_46640403640955699201195_q;
    wire [63:0] c_i64_46643218390722805761193_q;
    wire [63:0] c_i64_46646033140489912321190_q;
    wire [63:0] c_i64_46648847890257018881188_q;
    wire [63:0] c_i64_46651662640024125441186_q;
    wire [63:0] c_i64_46654477389791232001201_q;
    wire [63:0] c_i64_46657292139558338561161_q;
    wire [63:0] c_i64_46660106889325445121162_q;
    wire [63:0] c_i64_46662921639092551681180_q;
    wire [63:0] c_i64_46665736388859658241159_q;
    wire [63:0] c_i64_46668551138626764801172_q;
    wire [63:0] c_i64_46671365888393871361157_q;
    wire [63:0] c_i64_46674180638160977921166_q;
    wire [63:0] c_i64_46676995387928084481177_q;
    wire [63:0] c_i64_46679810137695191041176_q;
    wire [63:0] c_i64_46682624887462297601163_q;
    wire [63:0] c_i64_46685439637229404161154_q;
    wire [63:0] c_i64_46688254386996510721155_q;
    wire [63:0] c_i64_46691069136763617281207_q;
    wire [63:0] c_i64_46693883886530723841208_q;
    wire [63:0] c_i64_46696698636297830401209_q;
    wire [63:0] c_i64_46699513386064936961210_q;
    wire [63:0] c_i64_46702328135832043521216_q;
    wire [63:0] c_i64_46705142885599150081213_q;
    wire [63:0] c_i64_46707957635366256641215_q;
    wire [63:0] c_i64_46710772385133363201212_q;
    wire [63:0] c_i64_46713587134900469761217_q;
    wire [63:0] c_i64_46716401884667576321214_q;
    wire [63:0] c_i64_46719216634434682881224_q;
    wire [63:0] c_i64_46722031384201789441225_q;
    wire [63:0] c_i64_46724846133968896001226_q;
    wire [63:0] c_i64_46727660883736002561227_q;
    wire [63:0] c_i64_46730475633503109121228_q;
    wire [63:0] c_i64_46733290383270215681229_q;
    wire [63:0] c_i64_46736105133037322241231_q;
    wire [63:0] c_i64_46738919882804428801232_q;
    wire [63:0] c_i64_46741734632571535361233_q;
    wire [63:0] c_i64_46744549382338641921234_q;
    wire [63:0] c_i64_46747364132105748481235_q;
    wire [63:0] c_i64_46750178881872855041236_q;
    wire [63:0] c_i64_46752993631639961601237_q;
    wire [63:0] c_i64_46755808381407068161238_q;
    wire [63:0] c_i64_46758623131174174721239_q;
    wire [63:0] c_i64_46761437880941281281240_q;
    wire [63:0] c_i64_46764252630708387841242_q;
    wire [63:0] c_i64_46767067380475494401243_q;
    wire [63:0] c_i64_46769882130242600961244_q;
    wire [63:0] c_i64_46772696880009707521245_q;
    wire [63:0] c_i64_46775511629776814081246_q;
    wire [63:0] c_i64_46778326379543920641247_q;
    wire [63:0] c_i64_46781141129311027201249_q;
    wire [63:0] c_i64_46783955879078133761251_q;
    wire [63:0] c_i64_46786770628845240321252_q;
    wire [63:0] c_i64_46789585378612346881264_q;
    wire [63:0] c_i64_46792400128379453441260_q;
    wire [63:0] c_i64_46795214878146560001258_q;
    wire [63:0] c_i64_46798029627913666561259_q;
    wire [63:0] c_i64_46800844377680773121256_q;
    wire [63:0] c_i64_46803659127447879681262_q;
    wire [63:0] c_i64_46806473877214986241267_q;
    wire [63:0] c_i64_46809288626982092801265_q;
    wire [63:0] c_i64_46812103376749199361263_q;
    wire [63:0] c_i64_46814918126516305921255_q;
    wire [63:0] c_i64_46817732876283412481254_q;
    wire [63:0] c_i64_46820547626050519041261_q;
    wire [63:0] c_i64_46823362375817625601268_q;
    wire [63:0] c_i64_46826177125584732161269_q;
    wire [63:0] c_i64_46828991875351838721270_q;
    wire [63:0] c_i64_46831806625118945281271_q;
    wire [63:0] c_i64_46834621374886051841272_q;
    wire [63:0] c_i64_46837436124653158401273_q;
    wire [63:0] c_i64_46840250874420264961274_q;
    wire [63:0] c_i64_46843065624187371521275_q;
    wire [63:0] c_i64_46845880373954478081276_q;
    wire [63:0] c_i64_46848695123721584641277_q;
    wire [63:0] c_i64_46851509873488691201283_q;
    wire [63:0] c_i64_46854324623255797761284_q;
    wire [63:0] c_i64_46857139373022904321282_q;
    wire [63:0] c_i64_46859954122790010881279_q;
    wire [63:0] c_i64_46862768872557117441280_q;
    wire [63:0] c_i64_46865583622324224001281_q;
    wire [63:0] c_i64_46868398372091330561291_q;
    wire [63:0] c_i64_46871213121858437121292_q;
    wire [63:0] c_i64_46874027871625543681293_q;
    wire [63:0] c_i64_46876842621392650241294_q;
    wire [63:0] c_i64_46879657371159756801295_q;
    wire [63:0] c_i64_46882472120926863361296_q;
    wire [63:0] c_i64_46885286870693969921297_q;
    wire [63:0] c_i64_46888101620461076481298_q;
    wire [63:0] c_i64_46890916370228183041299_q;
    wire [63:0] c_i64_46893731119995289601300_q;
    wire [63:0] c_i64_46896545869762396161301_q;
    wire [63:0] c_i64_46899360619529502721302_q;
    wire [63:0] c_i64_46902175369296609281303_q;
    wire [63:0] c_i64_46904990119063715841304_q;
    wire [63:0] c_i64_46907804868830822401305_q;
    wire [63:0] c_i64_46910619618597928961306_q;
    wire [63:0] c_i64_46913434368365035521307_q;
    wire [63:0] c_i64_46916249118132142081308_q;
    wire [63:0] c_i64_46919063867899248641309_q;
    wire [63:0] c_i64_46921878617666355201310_q;
    wire [63:0] c_i64_46924693367433461761311_q;
    wire [63:0] c_i64_46927508117200568321312_q;
    wire [63:0] c_i64_46930322866967674881314_q;
    wire [63:0] c_i64_46933137616734781441315_q;
    wire [63:0] c_i64_46935952366501888001317_q;
    wire [63:0] c_i64_46938767116268994561316_q;
    wire [63:0] c_i64_46941581866036101121322_q;
    wire [63:0] c_i64_46944396615803207681323_q;
    wire [63:0] c_i64_46947211365570314241325_q;
    wire [63:0] c_i64_46950026115337420801327_q;
    wire [63:0] c_i64_46952840865104527361328_q;
    wire [63:0] c_i64_46955655614871633921329_q;
    wire [63:0] c_i64_46958470364638740481330_q;
    wire [63:0] c_i64_46961285114405847041331_q;
    wire [63:0] c_i64_46964099864172953601332_q;
    wire [63:0] c_i64_46966914613940060161333_q;
    wire [63:0] c_i64_46969729363707166721334_q;
    wire [63:0] c_i64_46972544113474273281335_q;
    wire [63:0] c_i64_46975358863241379841336_q;
    wire [63:0] c_i64_46978173613008486401337_q;
    wire [63:0] c_i64_46980988362775592961338_q;
    wire [63:0] c_i64_46983803112542699521339_q;
    wire [63:0] c_i64_46986617862309806081340_q;
    wire [63:0] c_i64_46989432612076912641342_q;
    wire [63:0] c_i64_46992247361844019201358_q;
    wire [63:0] c_i64_46995062111611125761353_q;
    wire [63:0] c_i64_46997876861378232321344_q;
    wire [63:0] c_i64_47000691611145338881348_q;
    wire [63:0] c_i64_47003506360912445441349_q;
    wire [63:0] c_i64_47006321110679552001346_q;
    wire [63:0] c_i64_47009135860446658561347_q;
    wire [63:0] c_i64_47011950610213765121350_q;
    wire [63:0] c_i64_47014765359980871681352_q;
    wire [63:0] c_i64_47017580109747978241354_q;
    wire [63:0] c_i64_47020394859515084801355_q;
    wire [63:0] c_i64_47023209609282191361345_q;
    wire [63:0] c_i64_47026024359049297921360_q;
    wire [63:0] c_i64_47028839108816404481361_q;
    wire [63:0] c_i64_47031653858583511041362_q;
    wire [63:0] c_i64_47034468608350617601363_q;
    wire [63:0] c_i64_47037283358117724161364_q;
    wire [0:0] comparator_q;
    wire [63:0] cpn_i8_q;
    wire [0:0] i_acl_1001_v4l2_ctrl_get_name436_s;
    reg [63:0] i_acl_1001_v4l2_ctrl_get_name436_q;
    wire [0:0] i_acl_1002_v4l2_ctrl_get_name437_q;
    wire [0:0] i_acl_1010_v4l2_ctrl_get_name438_s;
    reg [63:0] i_acl_1010_v4l2_ctrl_get_name438_q;
    wire [0:0] i_acl_1015_v4l2_ctrl_get_name439_q;
    wire [0:0] i_acl_1018_v4l2_ctrl_get_name440_s;
    reg [63:0] i_acl_1018_v4l2_ctrl_get_name440_q;
    wire [0:0] i_acl_1019_v4l2_ctrl_get_name441_q;
    wire [0:0] i_acl_1026_v4l2_ctrl_get_name442_s;
    reg [63:0] i_acl_1026_v4l2_ctrl_get_name442_q;
    wire [0:0] i_acl_1032_v4l2_ctrl_get_name443_q;
    wire [0:0] i_acl_1035_v4l2_ctrl_get_name444_s;
    reg [63:0] i_acl_1035_v4l2_ctrl_get_name444_q;
    wire [0:0] i_acl_1036_v4l2_ctrl_get_name445_q;
    wire [0:0] i_acl_1043_v4l2_ctrl_get_name446_s;
    reg [63:0] i_acl_1043_v4l2_ctrl_get_name446_q;
    wire [0:0] i_acl_1046_v4l2_ctrl_get_name447_qi;
    reg [0:0] i_acl_1046_v4l2_ctrl_get_name447_q;
    wire [0:0] i_acl_1052_v4l2_ctrl_get_name448_s;
    reg [63:0] i_acl_1052_v4l2_ctrl_get_name448_q;
    wire [0:0] i_acl_1053_v4l2_ctrl_get_name449_qi;
    reg [0:0] i_acl_1053_v4l2_ctrl_get_name449_q;
    wire [0:0] i_acl_1061_v4l2_ctrl_get_name450_s;
    reg [63:0] i_acl_1061_v4l2_ctrl_get_name450_q;
    wire [0:0] i_acl_1062_v4l2_ctrl_get_name451_q;
    wire [0:0] i_acl_1069_v4l2_ctrl_get_name452_s;
    reg [63:0] i_acl_1069_v4l2_ctrl_get_name452_q;
    wire [0:0] i_acl_1070_v4l2_ctrl_get_name453_q;
    wire [0:0] i_acl_1077_v4l2_ctrl_get_name454_s;
    reg [63:0] i_acl_1077_v4l2_ctrl_get_name454_q;
    wire [0:0] i_acl_1078_v4l2_ctrl_get_name455_q;
    wire [0:0] i_acl_1086_v4l2_ctrl_get_name456_s;
    reg [63:0] i_acl_1086_v4l2_ctrl_get_name456_q;
    wire [0:0] i_acl_1087_v4l2_ctrl_get_name457_q;
    wire [0:0] i_acl_1094_v4l2_ctrl_get_name458_s;
    reg [63:0] i_acl_1094_v4l2_ctrl_get_name458_q;
    wire [0:0] i_acl_1095_v4l2_ctrl_get_name459_q;
    wire [0:0] i_acl_1102_v4l2_ctrl_get_name460_s;
    reg [63:0] i_acl_1102_v4l2_ctrl_get_name460_q;
    wire [0:0] i_acl_1105_v4l2_ctrl_get_name461_qi;
    reg [0:0] i_acl_1105_v4l2_ctrl_get_name461_q;
    wire [0:0] i_acl_1110_v4l2_ctrl_get_name462_s;
    reg [63:0] i_acl_1110_v4l2_ctrl_get_name462_q;
    wire [0:0] i_acl_1114_v4l2_ctrl_get_name463_qi;
    reg [0:0] i_acl_1114_v4l2_ctrl_get_name463_q;
    wire [0:0] i_acl_1119_v4l2_ctrl_get_name464_s;
    reg [63:0] i_acl_1119_v4l2_ctrl_get_name464_q;
    wire [0:0] i_acl_1120_v4l2_ctrl_get_name465_qi;
    reg [0:0] i_acl_1120_v4l2_ctrl_get_name465_q;
    wire [0:0] i_acl_1128_v4l2_ctrl_get_name466_s;
    reg [63:0] i_acl_1128_v4l2_ctrl_get_name466_q;
    wire [0:0] i_acl_1131_v4l2_ctrl_get_name467_q;
    wire [0:0] i_acl_1137_v4l2_ctrl_get_name468_s;
    reg [63:0] i_acl_1137_v4l2_ctrl_get_name468_q;
    wire [0:0] i_acl_1138_v4l2_ctrl_get_name469_q;
    wire [0:0] i_acl_1145_v4l2_ctrl_get_name470_s;
    reg [63:0] i_acl_1145_v4l2_ctrl_get_name470_q;
    wire [0:0] i_acl_1146_v4l2_ctrl_get_name471_qi;
    reg [0:0] i_acl_1146_v4l2_ctrl_get_name471_q;
    wire [0:0] i_acl_1153_v4l2_ctrl_get_name472_s;
    reg [63:0] i_acl_1153_v4l2_ctrl_get_name472_q;
    wire [0:0] i_acl_1158_v4l2_ctrl_get_name473_q;
    wire [0:0] i_acl_1162_v4l2_ctrl_get_name474_s;
    reg [63:0] i_acl_1162_v4l2_ctrl_get_name474_q;
    wire [0:0] i_acl_1163_v4l2_ctrl_get_name475_qi;
    reg [0:0] i_acl_1163_v4l2_ctrl_get_name475_q;
    wire [0:0] i_acl_1171_v4l2_ctrl_get_name476_s;
    reg [63:0] i_acl_1171_v4l2_ctrl_get_name476_q;
    wire [0:0] i_acl_1173_v4l2_ctrl_get_name477_qi;
    reg [0:0] i_acl_1173_v4l2_ctrl_get_name477_q;
    wire [0:0] i_acl_1179_v4l2_ctrl_get_name478_s;
    reg [63:0] i_acl_1179_v4l2_ctrl_get_name478_q;
    wire [0:0] i_acl_1180_v4l2_ctrl_get_name479_qi;
    reg [0:0] i_acl_1180_v4l2_ctrl_get_name479_q;
    wire [0:0] i_acl_1187_v4l2_ctrl_get_name480_s;
    reg [63:0] i_acl_1187_v4l2_ctrl_get_name480_q;
    wire [0:0] i_acl_1188_v4l2_ctrl_get_name481_q;
    wire [0:0] i_acl_1195_v4l2_ctrl_get_name482_s;
    reg [63:0] i_acl_1195_v4l2_ctrl_get_name482_q;
    wire [0:0] i_acl_1197_v4l2_ctrl_get_name483_q;
    wire [0:0] i_acl_1204_v4l2_ctrl_get_name484_s;
    reg [63:0] i_acl_1204_v4l2_ctrl_get_name484_q;
    wire [0:0] i_acl_1205_v4l2_ctrl_get_name485_q;
    wire [0:0] i_acl_1213_v4l2_ctrl_get_name486_s;
    reg [63:0] i_acl_1213_v4l2_ctrl_get_name486_q;
    wire [0:0] i_acl_1214_v4l2_ctrl_get_name487_q;
    wire [0:0] i_acl_1222_v4l2_ctrl_get_name488_s;
    reg [63:0] i_acl_1222_v4l2_ctrl_get_name488_q;
    wire [0:0] i_acl_1225_v4l2_ctrl_get_name489_qi;
    reg [0:0] i_acl_1225_v4l2_ctrl_get_name489_q;
    wire [0:0] i_acl_1231_v4l2_ctrl_get_name490_s;
    reg [63:0] i_acl_1231_v4l2_ctrl_get_name490_q;
    wire [0:0] i_acl_1240_v4l2_ctrl_get_name493_s;
    reg [63:0] i_acl_1240_v4l2_ctrl_get_name493_q;
    wire [0:0] i_acl_1242_v4l2_ctrl_get_name494_qi;
    reg [0:0] i_acl_1242_v4l2_ctrl_get_name494_q;
    wire [0:0] i_acl_1248_v4l2_ctrl_get_name495_s;
    reg [63:0] i_acl_1248_v4l2_ctrl_get_name495_q;
    wire [0:0] i_acl_1249_v4l2_ctrl_get_name496_qi;
    reg [0:0] i_acl_1249_v4l2_ctrl_get_name496_q;
    wire [0:0] i_acl_1257_v4l2_ctrl_get_name497_s;
    reg [63:0] i_acl_1257_v4l2_ctrl_get_name497_q;
    wire [0:0] i_acl_1260_v4l2_ctrl_get_name498_qi;
    reg [0:0] i_acl_1260_v4l2_ctrl_get_name498_q;
    wire [0:0] i_acl_1266_v4l2_ctrl_get_name499_s;
    reg [63:0] i_acl_1266_v4l2_ctrl_get_name499_q;
    wire [0:0] i_acl_1295_v4l2_ctrl_get_name501_qi;
    reg [0:0] i_acl_1295_v4l2_ctrl_get_name501_q;
    wire [0:0] i_acl_1300_v4l2_ctrl_get_name502_s;
    reg [63:0] i_acl_1300_v4l2_ctrl_get_name502_q;
    wire [0:0] i_acl_1301_v4l2_ctrl_get_name503_qi;
    reg [0:0] i_acl_1301_v4l2_ctrl_get_name503_q;
    wire [0:0] i_acl_1308_v4l2_ctrl_get_name504_s;
    reg [63:0] i_acl_1308_v4l2_ctrl_get_name504_q;
    wire [0:0] i_acl_1309_v4l2_ctrl_get_name505_qi;
    reg [0:0] i_acl_1309_v4l2_ctrl_get_name505_q;
    wire [0:0] i_acl_1316_v4l2_ctrl_get_name506_s;
    reg [63:0] i_acl_1316_v4l2_ctrl_get_name506_q;
    wire [0:0] i_acl_1318_v4l2_ctrl_get_name507_qi;
    reg [0:0] i_acl_1318_v4l2_ctrl_get_name507_q;
    wire [0:0] i_acl_1324_v4l2_ctrl_get_name508_s;
    reg [63:0] i_acl_1324_v4l2_ctrl_get_name508_q;
    wire [0:0] i_acl_1349_v4l2_ctrl_get_name510_q;
    wire [0:0] i_acl_1356_v4l2_ctrl_get_name511_s;
    reg [63:0] i_acl_1356_v4l2_ctrl_get_name511_q;
    wire [0:0] i_acl_1357_v4l2_ctrl_get_name512_q;
    wire [0:0] i_acl_1365_v4l2_ctrl_get_name513_s;
    reg [63:0] i_acl_1365_v4l2_ctrl_get_name513_q;
    wire [0:0] i_acl_1366_v4l2_ctrl_get_name514_qi;
    reg [0:0] i_acl_1366_v4l2_ctrl_get_name514_q;
    wire [0:0] i_acl_1373_v4l2_ctrl_get_name515_s;
    reg [63:0] i_acl_1373_v4l2_ctrl_get_name515_q;
    wire [0:0] i_acl_1378_v4l2_ctrl_get_name516_q;
    wire [0:0] i_acl_1382_v4l2_ctrl_get_name517_s;
    reg [63:0] i_acl_1382_v4l2_ctrl_get_name517_q;
    wire [0:0] i_acl_1386_v4l2_ctrl_get_name518_q;
    wire [0:0] i_acl_1390_v4l2_ctrl_get_name519_s;
    reg [63:0] i_acl_1390_v4l2_ctrl_get_name519_q;
    wire [0:0] i_acl_1391_v4l2_ctrl_get_name520_q;
    wire [0:0] i_acl_1398_v4l2_ctrl_get_name521_s;
    reg [63:0] i_acl_1398_v4l2_ctrl_get_name521_q;
    wire [0:0] i_acl_1407_v4l2_ctrl_get_name524_s;
    reg [63:0] i_acl_1407_v4l2_ctrl_get_name524_q;
    wire [0:0] i_acl_1410_v4l2_ctrl_get_name525_qi;
    reg [0:0] i_acl_1410_v4l2_ctrl_get_name525_q;
    wire [0:0] i_acl_1416_v4l2_ctrl_get_name526_s;
    reg [63:0] i_acl_1416_v4l2_ctrl_get_name526_q;
    wire [0:0] i_acl_1425_v4l2_ctrl_get_name529_s;
    reg [63:0] i_acl_1425_v4l2_ctrl_get_name529_q;
    wire [0:0] i_acl_1433_v4l2_ctrl_get_name532_s;
    reg [63:0] i_acl_1433_v4l2_ctrl_get_name532_q;
    wire [0:0] i_acl_1434_v4l2_ctrl_get_name533_qi;
    reg [0:0] i_acl_1434_v4l2_ctrl_get_name533_q;
    wire [0:0] i_acl_1441_v4l2_ctrl_get_name534_s;
    reg [63:0] i_acl_1441_v4l2_ctrl_get_name534_q;
    wire [0:0] i_acl_1442_v4l2_ctrl_get_name535_q;
    wire [0:0] i_acl_1450_v4l2_ctrl_get_name536_s;
    reg [63:0] i_acl_1450_v4l2_ctrl_get_name536_q;
    wire [0:0] i_acl_1451_v4l2_ctrl_get_name537_q;
    wire [0:0] i_acl_1458_v4l2_ctrl_get_name538_s;
    reg [63:0] i_acl_1458_v4l2_ctrl_get_name538_q;
    wire [0:0] i_acl_1465_v4l2_ctrl_get_name539_q;
    wire [0:0] i_acl_1466_v4l2_ctrl_get_name540_s;
    reg [63:0] i_acl_1466_v4l2_ctrl_get_name540_q;
    wire [0:0] i_acl_1569_v4l2_ctrl_get_name548_q;
    wire [0:0] i_acl_1576_v4l2_ctrl_get_name549_s;
    reg [63:0] i_acl_1576_v4l2_ctrl_get_name549_q;
    wire [0:0] i_acl_1577_v4l2_ctrl_get_name550_q;
    wire [0:0] i_acl_1585_v4l2_ctrl_get_name551_s;
    reg [63:0] i_acl_1585_v4l2_ctrl_get_name551_q;
    wire [0:0] i_acl_1586_v4l2_ctrl_get_name552_q;
    wire [0:0] i_acl_1593_v4l2_ctrl_get_name553_s;
    reg [63:0] i_acl_1593_v4l2_ctrl_get_name553_q;
    wire [0:0] i_acl_1596_v4l2_ctrl_get_name554_qi;
    reg [0:0] i_acl_1596_v4l2_ctrl_get_name554_q;
    wire [0:0] i_acl_1601_v4l2_ctrl_get_name555_s;
    reg [63:0] i_acl_1601_v4l2_ctrl_get_name555_q;
    wire [0:0] i_acl_1605_v4l2_ctrl_get_name556_qi;
    reg [0:0] i_acl_1605_v4l2_ctrl_get_name556_q;
    wire [0:0] i_acl_1610_v4l2_ctrl_get_name557_s;
    reg [63:0] i_acl_1610_v4l2_ctrl_get_name557_q;
    wire [0:0] i_acl_1611_v4l2_ctrl_get_name558_qi;
    reg [0:0] i_acl_1611_v4l2_ctrl_get_name558_q;
    wire [0:0] i_acl_1618_v4l2_ctrl_get_name559_s;
    reg [63:0] i_acl_1618_v4l2_ctrl_get_name559_q;
    wire [0:0] i_acl_1619_v4l2_ctrl_get_name560_qi;
    reg [0:0] i_acl_1619_v4l2_ctrl_get_name560_q;
    wire [0:0] i_acl_1626_v4l2_ctrl_get_name561_s;
    reg [63:0] i_acl_1626_v4l2_ctrl_get_name561_q;
    wire [0:0] i_acl_1628_v4l2_ctrl_get_name562_qi;
    reg [0:0] i_acl_1628_v4l2_ctrl_get_name562_q;
    wire [0:0] i_acl_1634_v4l2_ctrl_get_name563_s;
    reg [63:0] i_acl_1634_v4l2_ctrl_get_name563_q;
    wire [0:0] i_acl_1636_v4l2_ctrl_get_name564_q;
    wire [0:0] i_acl_1642_v4l2_ctrl_get_name565_s;
    reg [63:0] i_acl_1642_v4l2_ctrl_get_name565_q;
    wire [0:0] i_acl_1643_v4l2_ctrl_get_name566_q;
    wire [0:0] i_acl_1650_v4l2_ctrl_get_name567_s;
    reg [63:0] i_acl_1650_v4l2_ctrl_get_name567_q;
    wire [0:0] i_acl_1653_v4l2_ctrl_get_name568_qi;
    reg [0:0] i_acl_1653_v4l2_ctrl_get_name568_q;
    wire [0:0] i_acl_1659_v4l2_ctrl_get_name569_s;
    reg [63:0] i_acl_1659_v4l2_ctrl_get_name569_q;
    wire [0:0] i_acl_1660_v4l2_ctrl_get_name570_qi;
    reg [0:0] i_acl_1660_v4l2_ctrl_get_name570_q;
    wire [0:0] i_acl_1668_v4l2_ctrl_get_name571_s;
    reg [63:0] i_acl_1668_v4l2_ctrl_get_name571_q;
    wire [0:0] i_acl_1770_v4l2_ctrl_get_name577_q;
    wire [0:0] i_acl_1778_v4l2_ctrl_get_name578_s;
    reg [63:0] i_acl_1778_v4l2_ctrl_get_name578_q;
    wire [0:0] i_acl_1782_v4l2_ctrl_get_name579_qi;
    reg [0:0] i_acl_1782_v4l2_ctrl_get_name579_q;
    wire [0:0] i_acl_1787_v4l2_ctrl_get_name580_s;
    reg [63:0] i_acl_1787_v4l2_ctrl_get_name580_q;
    wire [0:0] i_acl_1820_v4l2_ctrl_get_name582_qi;
    reg [0:0] i_acl_1820_v4l2_ctrl_get_name582_q;
    wire [0:0] i_acl_1827_v4l2_ctrl_get_name583_s;
    reg [63:0] i_acl_1827_v4l2_ctrl_get_name583_q;
    wire [0:0] i_acl_2320_v4l2_ctrl_get_name601_qi;
    reg [0:0] i_acl_2320_v4l2_ctrl_get_name601_q;
    wire [0:0] i_acl_2328_v4l2_ctrl_get_name602_s;
    reg [63:0] i_acl_2328_v4l2_ctrl_get_name602_q;
    wire [0:0] i_acl_2329_v4l2_ctrl_get_name603_q;
    wire [0:0] i_acl_2336_v4l2_ctrl_get_name604_s;
    reg [63:0] i_acl_2336_v4l2_ctrl_get_name604_q;
    wire [0:0] i_acl_2337_v4l2_ctrl_get_name605_qi;
    reg [0:0] i_acl_2337_v4l2_ctrl_get_name605_q;
    wire [0:0] i_acl_2345_v4l2_ctrl_get_name606_s;
    reg [63:0] i_acl_2345_v4l2_ctrl_get_name606_q;
    wire [0:0] i_acl_2346_v4l2_ctrl_get_name607_q;
    wire [0:0] i_acl_2353_v4l2_ctrl_get_name608_s;
    reg [63:0] i_acl_2353_v4l2_ctrl_get_name608_q;
    wire [0:0] i_acl_2407_v4l2_ctrl_get_name610_q;
    wire [0:0] i_acl_2413_v4l2_ctrl_get_name611_s;
    reg [63:0] i_acl_2413_v4l2_ctrl_get_name611_q;
    wire [0:0] i_acl_2414_v4l2_ctrl_get_name612_q;
    wire [0:0] i_acl_2421_v4l2_ctrl_get_name613_s;
    reg [63:0] i_acl_2421_v4l2_ctrl_get_name613_q;
    wire [0:0] i_acl_2422_v4l2_ctrl_get_name614_qi;
    reg [0:0] i_acl_2422_v4l2_ctrl_get_name614_q;
    wire [0:0] i_acl_2430_v4l2_ctrl_get_name615_s;
    reg [63:0] i_acl_2430_v4l2_ctrl_get_name615_q;
    wire [0:0] i_acl_2431_v4l2_ctrl_get_name616_q;
    wire [0:0] i_acl_2438_v4l2_ctrl_get_name617_s;
    reg [63:0] i_acl_2438_v4l2_ctrl_get_name617_q;
    wire [0:0] i_acl_2447_v4l2_ctrl_get_name618_s;
    reg [63:0] i_acl_2447_v4l2_ctrl_get_name618_q;
    wire [0:0] i_acl_2448_v4l2_ctrl_get_name619_q;
    wire [0:0] i_acl_2455_v4l2_ctrl_get_name620_s;
    reg [63:0] i_acl_2455_v4l2_ctrl_get_name620_q;
    wire [0:0] i_acl_2463_v4l2_ctrl_get_name623_s;
    reg [63:0] i_acl_2463_v4l2_ctrl_get_name623_q;
    wire [0:0] i_acl_2464_v4l2_ctrl_get_name624_q;
    wire [0:0] i_acl_2471_v4l2_ctrl_get_name625_s;
    reg [63:0] i_acl_2471_v4l2_ctrl_get_name625_q;
    wire [0:0] i_acl_2474_v4l2_ctrl_get_name626_q;
    wire [0:0] i_acl_2479_v4l2_ctrl_get_name627_s;
    reg [63:0] i_acl_2479_v4l2_ctrl_get_name627_q;
    wire [0:0] i_acl_2480_v4l2_ctrl_get_name628_qi;
    reg [0:0] i_acl_2480_v4l2_ctrl_get_name628_q;
    wire [0:0] i_acl_2487_v4l2_ctrl_get_name629_s;
    reg [63:0] i_acl_2487_v4l2_ctrl_get_name629_q;
    wire [0:0] i_acl_2488_v4l2_ctrl_get_name630_q;
    wire [0:0] i_acl_2495_v4l2_ctrl_get_name631_s;
    reg [63:0] i_acl_2495_v4l2_ctrl_get_name631_q;
    wire [0:0] i_acl_2496_v4l2_ctrl_get_name632_qi;
    reg [0:0] i_acl_2496_v4l2_ctrl_get_name632_q;
    wire [0:0] i_acl_2504_v4l2_ctrl_get_name633_s;
    reg [63:0] i_acl_2504_v4l2_ctrl_get_name633_q;
    wire [0:0] i_acl_2505_v4l2_ctrl_get_name634_q;
    wire [0:0] i_acl_2512_v4l2_ctrl_get_name635_s;
    reg [63:0] i_acl_2512_v4l2_ctrl_get_name635_q;
    wire [0:0] i_acl_2516_v4l2_ctrl_get_name636_q;
    wire [0:0] i_acl_2521_v4l2_ctrl_get_name637_s;
    reg [63:0] i_acl_2521_v4l2_ctrl_get_name637_q;
    wire [0:0] i_acl_2522_v4l2_ctrl_get_name638_q;
    wire [0:0] i_acl_2530_v4l2_ctrl_get_name639_s;
    reg [63:0] i_acl_2530_v4l2_ctrl_get_name639_q;
    wire [0:0] i_acl_2534_v4l2_ctrl_get_name640_q;
    wire [0:0] i_acl_2538_v4l2_ctrl_get_name641_s;
    reg [63:0] i_acl_2538_v4l2_ctrl_get_name641_q;
    wire [0:0] i_acl_2546_v4l2_ctrl_get_name644_s;
    reg [63:0] i_acl_2546_v4l2_ctrl_get_name644_q;
    wire [0:0] i_acl_2556_v4l2_ctrl_get_name645_s;
    reg [63:0] i_acl_2556_v4l2_ctrl_get_name645_q;
    wire [0:0] i_acl_2561_v4l2_ctrl_get_name646_qi;
    reg [0:0] i_acl_2561_v4l2_ctrl_get_name646_q;
    wire [0:0] i_acl_2565_v4l2_ctrl_get_name647_s;
    reg [63:0] i_acl_2565_v4l2_ctrl_get_name647_q;
    wire [0:0] i_acl_2566_v4l2_ctrl_get_name648_qi;
    reg [0:0] i_acl_2566_v4l2_ctrl_get_name648_q;
    wire [0:0] i_acl_2573_v4l2_ctrl_get_name649_s;
    reg [63:0] i_acl_2573_v4l2_ctrl_get_name649_q;
    wire [0:0] i_acl_2574_v4l2_ctrl_get_name650_qi;
    reg [0:0] i_acl_2574_v4l2_ctrl_get_name650_q;
    wire [0:0] i_acl_2582_v4l2_ctrl_get_name651_s;
    reg [63:0] i_acl_2582_v4l2_ctrl_get_name651_q;
    wire [0:0] i_acl_2586_v4l2_ctrl_get_name652_qi;
    reg [0:0] i_acl_2586_v4l2_ctrl_get_name652_q;
    wire [0:0] i_acl_2590_v4l2_ctrl_get_name653_s;
    reg [63:0] i_acl_2590_v4l2_ctrl_get_name653_q;
    wire [0:0] i_acl_2599_v4l2_ctrl_get_name656_s;
    reg [63:0] i_acl_2599_v4l2_ctrl_get_name656_q;
    wire [0:0] i_acl_2607_v4l2_ctrl_get_name659_s;
    reg [63:0] i_acl_2607_v4l2_ctrl_get_name659_q;
    wire [0:0] i_acl_2609_v4l2_ctrl_get_name660_q;
    wire [0:0] i_acl_2615_v4l2_ctrl_get_name661_s;
    reg [63:0] i_acl_2615_v4l2_ctrl_get_name661_q;
    wire [0:0] i_acl_2738_v4l2_ctrl_get_name667_q;
    wire [0:0] i_acl_2743_v4l2_ctrl_get_name668_s;
    reg [63:0] i_acl_2743_v4l2_ctrl_get_name668_q;
    wire [0:0] i_acl_2744_v4l2_ctrl_get_name669_qi;
    reg [0:0] i_acl_2744_v4l2_ctrl_get_name669_q;
    wire [0:0] i_acl_2752_v4l2_ctrl_get_name670_s;
    reg [63:0] i_acl_2752_v4l2_ctrl_get_name670_q;
    wire [0:0] i_acl_2755_v4l2_ctrl_get_name671_qi;
    reg [0:0] i_acl_2755_v4l2_ctrl_get_name671_q;
    wire [0:0] i_acl_2760_v4l2_ctrl_get_name672_s;
    reg [63:0] i_acl_2760_v4l2_ctrl_get_name672_q;
    wire [0:0] i_acl_2763_v4l2_ctrl_get_name673_qi;
    reg [0:0] i_acl_2763_v4l2_ctrl_get_name673_q;
    wire [0:0] i_acl_2769_v4l2_ctrl_get_name674_s;
    reg [63:0] i_acl_2769_v4l2_ctrl_get_name674_q;
    wire [0:0] i_acl_2770_v4l2_ctrl_get_name675_qi;
    reg [0:0] i_acl_2770_v4l2_ctrl_get_name675_q;
    wire [0:0] i_acl_2778_v4l2_ctrl_get_name676_s;
    reg [63:0] i_acl_2778_v4l2_ctrl_get_name676_q;
    wire [0:0] i_acl_2779_v4l2_ctrl_get_name677_qi;
    reg [0:0] i_acl_2779_v4l2_ctrl_get_name677_q;
    wire [0:0] i_acl_2786_v4l2_ctrl_get_name678_s;
    reg [63:0] i_acl_2786_v4l2_ctrl_get_name678_q;
    wire [0:0] i_acl_2788_v4l2_ctrl_get_name679_qi;
    reg [0:0] i_acl_2788_v4l2_ctrl_get_name679_q;
    wire [0:0] i_acl_2794_v4l2_ctrl_get_name680_s;
    reg [63:0] i_acl_2794_v4l2_ctrl_get_name680_q;
    wire [0:0] i_acl_2795_v4l2_ctrl_get_name681_qi;
    reg [0:0] i_acl_2795_v4l2_ctrl_get_name681_q;
    wire [0:0] i_acl_2802_v4l2_ctrl_get_name682_s;
    reg [63:0] i_acl_2802_v4l2_ctrl_get_name682_q;
    wire [0:0] i_acl_2853_v4l2_ctrl_get_name684_qi;
    reg [0:0] i_acl_2853_v4l2_ctrl_get_name684_q;
    wire [0:0] i_acl_2861_v4l2_ctrl_get_name685_s;
    reg [63:0] i_acl_2861_v4l2_ctrl_get_name685_q;
    wire [0:0] i_acl_2864_v4l2_ctrl_get_name686_qi;
    reg [0:0] i_acl_2864_v4l2_ctrl_get_name686_q;
    wire [0:0] i_acl_2870_v4l2_ctrl_get_name687_s;
    reg [63:0] i_acl_2870_v4l2_ctrl_get_name687_q;
    wire [0:0] i_acl_2871_v4l2_ctrl_get_name688_qi;
    reg [0:0] i_acl_2871_v4l2_ctrl_get_name688_q;
    wire [0:0] i_acl_2878_v4l2_ctrl_get_name689_s;
    reg [63:0] i_acl_2878_v4l2_ctrl_get_name689_q;
    wire [0:0] i_acl_2879_v4l2_ctrl_get_name690_qi;
    reg [0:0] i_acl_2879_v4l2_ctrl_get_name690_q;
    wire [0:0] i_acl_2886_v4l2_ctrl_get_name691_s;
    reg [63:0] i_acl_2886_v4l2_ctrl_get_name691_q;
    wire [0:0] i_acl_2890_v4l2_ctrl_get_name692_qi;
    reg [0:0] i_acl_2890_v4l2_ctrl_get_name692_q;
    wire [0:0] i_acl_2895_v4l2_ctrl_get_name693_s;
    reg [63:0] i_acl_2895_v4l2_ctrl_get_name693_q;
    wire [0:0] i_acl_2898_v4l2_ctrl_get_name694_qi;
    reg [0:0] i_acl_2898_v4l2_ctrl_get_name694_q;
    wire [0:0] i_acl_2903_v4l2_ctrl_get_name695_s;
    reg [63:0] i_acl_2903_v4l2_ctrl_get_name695_q;
    wire [0:0] i_acl_2904_v4l2_ctrl_get_name696_qi;
    reg [0:0] i_acl_2904_v4l2_ctrl_get_name696_q;
    wire [0:0] i_acl_2912_v4l2_ctrl_get_name697_s;
    reg [63:0] i_acl_2912_v4l2_ctrl_get_name697_q;
    wire [0:0] i_acl_2914_v4l2_ctrl_get_name698_qi;
    reg [0:0] i_acl_2914_v4l2_ctrl_get_name698_q;
    wire [0:0] i_acl_2920_v4l2_ctrl_get_name699_s;
    reg [63:0] i_acl_2920_v4l2_ctrl_get_name699_q;
    wire [0:0] i_acl_2921_v4l2_ctrl_get_name700_qi;
    reg [0:0] i_acl_2921_v4l2_ctrl_get_name700_q;
    wire [0:0] i_acl_2928_v4l2_ctrl_get_name701_s;
    reg [63:0] i_acl_2928_v4l2_ctrl_get_name701_q;
    wire [0:0] i_acl_2929_v4l2_ctrl_get_name702_qi;
    reg [0:0] i_acl_2929_v4l2_ctrl_get_name702_q;
    wire [0:0] i_acl_2936_v4l2_ctrl_get_name703_s;
    reg [63:0] i_acl_2936_v4l2_ctrl_get_name703_q;
    wire [0:0] i_acl_2937_v4l2_ctrl_get_name704_qi;
    reg [0:0] i_acl_2937_v4l2_ctrl_get_name704_q;
    wire [0:0] i_acl_2944_v4l2_ctrl_get_name705_s;
    reg [63:0] i_acl_2944_v4l2_ctrl_get_name705_q;
    wire [0:0] i_acl_2949_v4l2_ctrl_get_name706_qi;
    reg [0:0] i_acl_2949_v4l2_ctrl_get_name706_q;
    wire [0:0] i_acl_2953_v4l2_ctrl_get_name707_s;
    reg [63:0] i_acl_2953_v4l2_ctrl_get_name707_q;
    wire [0:0] i_acl_2954_v4l2_ctrl_get_name708_qi;
    reg [0:0] i_acl_2954_v4l2_ctrl_get_name708_q;
    wire [0:0] i_acl_2962_v4l2_ctrl_get_name709_s;
    reg [63:0] i_acl_2962_v4l2_ctrl_get_name709_q;
    wire [0:0] i_acl_2964_v4l2_ctrl_get_name710_qi;
    reg [0:0] i_acl_2964_v4l2_ctrl_get_name710_q;
    wire [0:0] i_acl_2970_v4l2_ctrl_get_name711_s;
    reg [63:0] i_acl_2970_v4l2_ctrl_get_name711_q;
    wire [0:0] i_acl_2971_v4l2_ctrl_get_name712_qi;
    reg [0:0] i_acl_2971_v4l2_ctrl_get_name712_q;
    wire [0:0] i_acl_2978_v4l2_ctrl_get_name713_s;
    reg [63:0] i_acl_2978_v4l2_ctrl_get_name713_q;
    wire [0:0] i_acl_2979_v4l2_ctrl_get_name714_qi;
    reg [0:0] i_acl_2979_v4l2_ctrl_get_name714_q;
    wire [0:0] i_acl_2987_v4l2_ctrl_get_name715_s;
    reg [63:0] i_acl_2987_v4l2_ctrl_get_name715_q;
    wire [0:0] i_acl_2990_v4l2_ctrl_get_name716_qi;
    reg [0:0] i_acl_2990_v4l2_ctrl_get_name716_q;
    wire [0:0] i_acl_2996_v4l2_ctrl_get_name717_s;
    reg [63:0] i_acl_2996_v4l2_ctrl_get_name717_q;
    wire [0:0] i_acl_2997_v4l2_ctrl_get_name718_qi;
    reg [0:0] i_acl_2997_v4l2_ctrl_get_name718_q;
    wire [0:0] i_acl_3004_v4l2_ctrl_get_name719_s;
    reg [63:0] i_acl_3004_v4l2_ctrl_get_name719_q;
    wire [0:0] i_acl_3005_v4l2_ctrl_get_name720_qi;
    reg [0:0] i_acl_3005_v4l2_ctrl_get_name720_q;
    wire [0:0] i_acl_3013_v4l2_ctrl_get_name721_s;
    reg [63:0] i_acl_3013_v4l2_ctrl_get_name721_q;
    wire [0:0] i_acl_3014_v4l2_ctrl_get_name722_qi;
    reg [0:0] i_acl_3014_v4l2_ctrl_get_name722_q;
    wire [0:0] i_acl_3021_v4l2_ctrl_get_name723_s;
    reg [63:0] i_acl_3021_v4l2_ctrl_get_name723_q;
    wire [0:0] i_acl_3028_v4l2_ctrl_get_name724_qi;
    reg [0:0] i_acl_3028_v4l2_ctrl_get_name724_q;
    wire [0:0] i_acl_3030_v4l2_ctrl_get_name725_s;
    reg [63:0] i_acl_3030_v4l2_ctrl_get_name725_q;
    wire [0:0] i_acl_3031_v4l2_ctrl_get_name726_qi;
    reg [0:0] i_acl_3031_v4l2_ctrl_get_name726_q;
    wire [0:0] i_acl_3038_v4l2_ctrl_get_name727_s;
    reg [63:0] i_acl_3038_v4l2_ctrl_get_name727_q;
    wire [0:0] i_acl_3075_v4l2_ctrl_get_name729_qi;
    reg [0:0] i_acl_3075_v4l2_ctrl_get_name729_q;
    wire [0:0] i_acl_3081_v4l2_ctrl_get_name730_s;
    reg [63:0] i_acl_3081_v4l2_ctrl_get_name730_q;
    wire [0:0] i_acl_3082_v4l2_ctrl_get_name731_qi;
    reg [0:0] i_acl_3082_v4l2_ctrl_get_name731_q;
    wire [0:0] i_acl_3089_v4l2_ctrl_get_name732_s;
    reg [63:0] i_acl_3089_v4l2_ctrl_get_name732_q;
    wire [0:0] i_acl_3098_v4l2_ctrl_get_name735_s;
    reg [63:0] i_acl_3098_v4l2_ctrl_get_name735_q;
    wire [0:0] i_acl_3106_v4l2_ctrl_get_name738_s;
    reg [63:0] i_acl_3106_v4l2_ctrl_get_name738_q;
    wire [0:0] i_acl_3107_v4l2_ctrl_get_name739_qi;
    reg [0:0] i_acl_3107_v4l2_ctrl_get_name739_q;
    wire [0:0] i_acl_3114_v4l2_ctrl_get_name740_s;
    reg [63:0] i_acl_3114_v4l2_ctrl_get_name740_q;
    wire [0:0] i_acl_3115_v4l2_ctrl_get_name741_qi;
    reg [0:0] i_acl_3115_v4l2_ctrl_get_name741_q;
    wire [0:0] i_acl_3123_v4l2_ctrl_get_name742_s;
    reg [63:0] i_acl_3123_v4l2_ctrl_get_name742_q;
    wire [0:0] i_acl_3126_v4l2_ctrl_get_name743_qi;
    reg [0:0] i_acl_3126_v4l2_ctrl_get_name743_q;
    wire [0:0] i_acl_3132_v4l2_ctrl_get_name744_s;
    reg [63:0] i_acl_3132_v4l2_ctrl_get_name744_q;
    wire [0:0] i_acl_3136_v4l2_ctrl_get_name745_qi;
    reg [0:0] i_acl_3136_v4l2_ctrl_get_name745_q;
    wire [0:0] i_acl_3141_v4l2_ctrl_get_name746_s;
    reg [63:0] i_acl_3141_v4l2_ctrl_get_name746_q;
    wire [0:0] i_acl_3143_v4l2_ctrl_get_name747_qi;
    reg [0:0] i_acl_3143_v4l2_ctrl_get_name747_q;
    wire [0:0] i_acl_3149_v4l2_ctrl_get_name748_s;
    reg [63:0] i_acl_3149_v4l2_ctrl_get_name748_q;
    wire [0:0] i_acl_3152_v4l2_ctrl_get_name749_qi;
    reg [0:0] i_acl_3152_v4l2_ctrl_get_name749_q;
    wire [0:0] i_acl_3157_v4l2_ctrl_get_name750_s;
    reg [63:0] i_acl_3157_v4l2_ctrl_get_name750_q;
    wire [0:0] i_acl_3158_v4l2_ctrl_get_name751_qi;
    reg [0:0] i_acl_3158_v4l2_ctrl_get_name751_q;
    wire [0:0] i_acl_3165_v4l2_ctrl_get_name752_s;
    reg [63:0] i_acl_3165_v4l2_ctrl_get_name752_q;
    wire [0:0] i_acl_3166_v4l2_ctrl_get_name753_qi;
    reg [0:0] i_acl_3166_v4l2_ctrl_get_name753_q;
    wire [0:0] i_acl_3173_v4l2_ctrl_get_name754_s;
    reg [63:0] i_acl_3173_v4l2_ctrl_get_name754_q;
    wire [0:0] i_acl_3174_v4l2_ctrl_get_name755_qi;
    reg [0:0] i_acl_3174_v4l2_ctrl_get_name755_q;
    wire [0:0] i_acl_3182_v4l2_ctrl_get_name756_s;
    reg [63:0] i_acl_3182_v4l2_ctrl_get_name756_q;
    wire [0:0] i_acl_3183_v4l2_ctrl_get_name757_qi;
    reg [0:0] i_acl_3183_v4l2_ctrl_get_name757_q;
    wire [0:0] i_acl_3190_v4l2_ctrl_get_name758_s;
    reg [63:0] i_acl_3190_v4l2_ctrl_get_name758_q;
    wire [0:0] i_acl_3191_v4l2_ctrl_get_name759_qi;
    reg [0:0] i_acl_3191_v4l2_ctrl_get_name759_q;
    wire [0:0] i_acl_3198_v4l2_ctrl_get_name760_s;
    reg [63:0] i_acl_3198_v4l2_ctrl_get_name760_q;
    wire [0:0] i_acl_3199_v4l2_ctrl_get_name761_qi;
    reg [0:0] i_acl_3199_v4l2_ctrl_get_name761_q;
    wire [0:0] i_acl_3207_v4l2_ctrl_get_name762_s;
    reg [63:0] i_acl_3207_v4l2_ctrl_get_name762_q;
    wire [0:0] i_acl_3208_v4l2_ctrl_get_name763_qi;
    reg [0:0] i_acl_3208_v4l2_ctrl_get_name763_q;
    wire [0:0] i_acl_3215_v4l2_ctrl_get_name764_s;
    reg [63:0] i_acl_3215_v4l2_ctrl_get_name764_q;
    wire [0:0] i_acl_3378_v4l2_ctrl_get_name772_qi;
    reg [0:0] i_acl_3378_v4l2_ctrl_get_name772_q;
    wire [0:0] i_acl_3381_v4l2_ctrl_get_name773_s;
    reg [63:0] i_acl_3381_v4l2_ctrl_get_name773_q;
    wire [0:0] i_acl_3382_v4l2_ctrl_get_name774_qi;
    reg [0:0] i_acl_3382_v4l2_ctrl_get_name774_q;
    wire [0:0] i_acl_3390_v4l2_ctrl_get_name775_s;
    reg [63:0] i_acl_3390_v4l2_ctrl_get_name775_q;
    wire [0:0] i_acl_3396_v4l2_ctrl_get_name776_qi;
    reg [0:0] i_acl_3396_v4l2_ctrl_get_name776_q;
    wire [0:0] i_acl_3399_v4l2_ctrl_get_name777_s;
    reg [63:0] i_acl_3399_v4l2_ctrl_get_name777_q;
    wire [0:0] i_acl_3401_v4l2_ctrl_get_name778_qi;
    reg [0:0] i_acl_3401_v4l2_ctrl_get_name778_q;
    wire [0:0] i_acl_3408_v4l2_ctrl_get_name779_s;
    reg [63:0] i_acl_3408_v4l2_ctrl_get_name779_q;
    wire [0:0] i_acl_3409_v4l2_ctrl_get_name780_qi;
    reg [0:0] i_acl_3409_v4l2_ctrl_get_name780_q;
    wire [0:0] i_acl_3416_v4l2_ctrl_get_name781_s;
    reg [63:0] i_acl_3416_v4l2_ctrl_get_name781_q;
    wire [0:0] i_acl_3417_v4l2_ctrl_get_name782_q;
    wire [0:0] i_acl_3424_v4l2_ctrl_get_name783_q;
    wire [0:0] i_acl_3432_v4l2_ctrl_get_name784_s;
    reg [0:0] i_acl_3432_v4l2_ctrl_get_name784_q;
    wire [0:0] i_acl_3433_v4l2_ctrl_get_name785_s;
    reg [63:0] i_acl_3433_v4l2_ctrl_get_name785_q;
    wire [0:0] i_acl_658_v4l2_ctrl_get_name350_q;
    wire [0:0] i_acl_663_v4l2_ctrl_get_name351_s;
    reg [63:0] i_acl_663_v4l2_ctrl_get_name351_q;
    wire [0:0] i_acl_664_v4l2_ctrl_get_name352_q;
    wire [0:0] i_acl_671_v4l2_ctrl_get_name353_s;
    reg [63:0] i_acl_671_v4l2_ctrl_get_name353_q;
    wire [0:0] i_acl_680_v4l2_ctrl_get_name356_s;
    reg [63:0] i_acl_680_v4l2_ctrl_get_name356_q;
    wire [0:0] i_acl_681_v4l2_ctrl_get_name357_q;
    wire [0:0] i_acl_688_v4l2_ctrl_get_name358_s;
    reg [63:0] i_acl_688_v4l2_ctrl_get_name358_q;
    wire [0:0] i_acl_691_v4l2_ctrl_get_name359_q;
    wire [0:0] i_acl_697_v4l2_ctrl_get_name360_s;
    reg [63:0] i_acl_697_v4l2_ctrl_get_name360_q;
    wire [0:0] i_acl_699_v4l2_ctrl_get_name361_q;
    wire [0:0] i_acl_706_v4l2_ctrl_get_name362_s;
    reg [63:0] i_acl_706_v4l2_ctrl_get_name362_q;
    wire [0:0] i_acl_707_v4l2_ctrl_get_name363_q;
    wire [0:0] i_acl_715_v4l2_ctrl_get_name364_s;
    reg [63:0] i_acl_715_v4l2_ctrl_get_name364_q;
    wire [0:0] i_acl_717_v4l2_ctrl_get_name365_qi;
    reg [0:0] i_acl_717_v4l2_ctrl_get_name365_q;
    wire [0:0] i_acl_723_v4l2_ctrl_get_name366_s;
    reg [63:0] i_acl_723_v4l2_ctrl_get_name366_q;
    wire [0:0] i_acl_724_v4l2_ctrl_get_name367_q;
    wire [0:0] i_acl_731_v4l2_ctrl_get_name368_s;
    reg [63:0] i_acl_731_v4l2_ctrl_get_name368_q;
    wire [0:0] i_acl_732_v4l2_ctrl_get_name369_q;
    wire [0:0] i_acl_739_v4l2_ctrl_get_name370_s;
    reg [63:0] i_acl_739_v4l2_ctrl_get_name370_q;
    wire [0:0] i_acl_740_v4l2_ctrl_get_name371_q;
    wire [0:0] i_acl_747_v4l2_ctrl_get_name372_s;
    reg [63:0] i_acl_747_v4l2_ctrl_get_name372_q;
    wire [0:0] i_acl_749_v4l2_ctrl_get_name373_qi;
    reg [0:0] i_acl_749_v4l2_ctrl_get_name373_q;
    wire [0:0] i_acl_755_v4l2_ctrl_get_name374_s;
    reg [63:0] i_acl_755_v4l2_ctrl_get_name374_q;
    wire [0:0] i_acl_757_v4l2_ctrl_get_name375_q;
    wire [0:0] i_acl_763_v4l2_ctrl_get_name376_s;
    reg [63:0] i_acl_763_v4l2_ctrl_get_name376_q;
    wire [0:0] i_acl_772_v4l2_ctrl_get_name379_s;
    reg [63:0] i_acl_772_v4l2_ctrl_get_name379_q;
    wire [0:0] i_acl_775_v4l2_ctrl_get_name380_qi;
    reg [0:0] i_acl_775_v4l2_ctrl_get_name380_q;
    wire [0:0] i_acl_780_v4l2_ctrl_get_name381_s;
    reg [63:0] i_acl_780_v4l2_ctrl_get_name381_q;
    wire [0:0] i_acl_786_v4l2_ctrl_get_name382_q;
    wire [0:0] i_acl_788_v4l2_ctrl_get_name383_s;
    reg [63:0] i_acl_788_v4l2_ctrl_get_name383_q;
    wire [0:0] i_acl_791_v4l2_ctrl_get_name384_q;
    wire [0:0] i_acl_797_v4l2_ctrl_get_name385_s;
    reg [63:0] i_acl_797_v4l2_ctrl_get_name385_q;
    wire [0:0] i_acl_798_v4l2_ctrl_get_name386_q;
    wire [0:0] i_acl_805_v4l2_ctrl_get_name387_s;
    reg [63:0] i_acl_805_v4l2_ctrl_get_name387_q;
    wire [0:0] i_acl_806_v4l2_ctrl_get_name388_qi;
    reg [0:0] i_acl_806_v4l2_ctrl_get_name388_q;
    wire [0:0] i_acl_813_v4l2_ctrl_get_name389_s;
    reg [63:0] i_acl_813_v4l2_ctrl_get_name389_q;
    wire [0:0] i_acl_814_v4l2_ctrl_get_name390_qi;
    reg [0:0] i_acl_814_v4l2_ctrl_get_name390_q;
    wire [0:0] i_acl_822_v4l2_ctrl_get_name391_s;
    reg [63:0] i_acl_822_v4l2_ctrl_get_name391_q;
    wire [0:0] i_acl_824_v4l2_ctrl_get_name392_q;
    wire [0:0] i_acl_830_v4l2_ctrl_get_name393_s;
    reg [63:0] i_acl_830_v4l2_ctrl_get_name393_q;
    wire [0:0] i_acl_839_v4l2_ctrl_get_name396_s;
    reg [63:0] i_acl_839_v4l2_ctrl_get_name396_q;
    wire [0:0] i_acl_841_v4l2_ctrl_get_name397_q;
    wire [0:0] i_acl_848_v4l2_ctrl_get_name398_s;
    reg [63:0] i_acl_848_v4l2_ctrl_get_name398_q;
    wire [0:0] i_acl_851_v4l2_ctrl_get_name399_q;
    wire [0:0] i_acl_857_v4l2_ctrl_get_name400_s;
    reg [63:0] i_acl_857_v4l2_ctrl_get_name400_q;
    wire [0:0] i_acl_865_v4l2_ctrl_get_name403_s;
    reg [63:0] i_acl_865_v4l2_ctrl_get_name403_q;
    wire [0:0] i_acl_868_v4l2_ctrl_get_name404_qi;
    reg [0:0] i_acl_868_v4l2_ctrl_get_name404_q;
    wire [0:0] i_acl_874_v4l2_ctrl_get_name405_s;
    reg [63:0] i_acl_874_v4l2_ctrl_get_name405_q;
    wire [0:0] i_acl_875_v4l2_ctrl_get_name406_qi;
    reg [0:0] i_acl_875_v4l2_ctrl_get_name406_q;
    wire [0:0] i_acl_882_v4l2_ctrl_get_name407_s;
    reg [63:0] i_acl_882_v4l2_ctrl_get_name407_q;
    wire [0:0] i_acl_883_v4l2_ctrl_get_name408_qi;
    reg [0:0] i_acl_883_v4l2_ctrl_get_name408_q;
    wire [0:0] i_acl_891_v4l2_ctrl_get_name409_s;
    reg [63:0] i_acl_891_v4l2_ctrl_get_name409_q;
    wire [0:0] i_acl_893_v4l2_ctrl_get_name410_qi;
    reg [0:0] i_acl_893_v4l2_ctrl_get_name410_q;
    wire [0:0] i_acl_899_v4l2_ctrl_get_name411_s;
    reg [63:0] i_acl_899_v4l2_ctrl_get_name411_q;
    wire [0:0] i_acl_900_v4l2_ctrl_get_name412_qi;
    reg [0:0] i_acl_900_v4l2_ctrl_get_name412_q;
    wire [0:0] i_acl_908_v4l2_ctrl_get_name413_s;
    reg [63:0] i_acl_908_v4l2_ctrl_get_name413_q;
    wire [0:0] i_acl_909_v4l2_ctrl_get_name414_q;
    wire [0:0] i_acl_917_v4l2_ctrl_get_name415_s;
    reg [63:0] i_acl_917_v4l2_ctrl_get_name415_q;
    wire [0:0] i_acl_926_v4l2_ctrl_get_name418_s;
    reg [63:0] i_acl_926_v4l2_ctrl_get_name418_q;
    wire [0:0] i_acl_927_v4l2_ctrl_get_name419_qi;
    reg [0:0] i_acl_927_v4l2_ctrl_get_name419_q;
    wire [0:0] i_acl_934_v4l2_ctrl_get_name420_s;
    reg [63:0] i_acl_934_v4l2_ctrl_get_name420_q;
    wire [0:0] i_acl_935_v4l2_ctrl_get_name421_qi;
    reg [0:0] i_acl_935_v4l2_ctrl_get_name421_q;
    wire [0:0] i_acl_942_v4l2_ctrl_get_name422_s;
    reg [63:0] i_acl_942_v4l2_ctrl_get_name422_q;
    wire [0:0] i_acl_943_v4l2_ctrl_get_name423_q;
    wire [0:0] i_acl_951_v4l2_ctrl_get_name424_s;
    reg [63:0] i_acl_951_v4l2_ctrl_get_name424_q;
    wire [0:0] i_acl_953_v4l2_ctrl_get_name425_q;
    wire [0:0] i_acl_959_v4l2_ctrl_get_name426_s;
    reg [63:0] i_acl_959_v4l2_ctrl_get_name426_q;
    wire [0:0] i_acl_960_v4l2_ctrl_get_name427_q;
    wire [0:0] i_acl_967_v4l2_ctrl_get_name428_s;
    reg [63:0] i_acl_967_v4l2_ctrl_get_name428_q;
    wire [0:0] i_acl_971_v4l2_ctrl_get_name429_q;
    wire [0:0] i_acl_975_v4l2_ctrl_get_name430_s;
    reg [63:0] i_acl_975_v4l2_ctrl_get_name430_q;
    wire [0:0] i_acl_976_v4l2_ctrl_get_name431_q;
    wire [0:0] i_acl_984_v4l2_ctrl_get_name432_s;
    reg [63:0] i_acl_984_v4l2_ctrl_get_name432_q;
    wire [0:0] i_acl_987_v4l2_ctrl_get_name433_qi;
    reg [0:0] i_acl_987_v4l2_ctrl_get_name433_q;
    wire [0:0] i_acl_993_v4l2_ctrl_get_name434_s;
    reg [63:0] i_acl_993_v4l2_ctrl_get_name434_q;
    wire [0:0] i_acl_995_v4l2_ctrl_get_name435_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3465_v4l2_ctrl_get_name572_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3638_v4l2_ctrl_get_name765_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q;
    reg [63:0] i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q;
    wire [33:0] i_pivot15_v4l2_ctrl_get_name71_a;
    wire [33:0] i_pivot15_v4l2_ctrl_get_name71_b;
    logic [33:0] i_pivot15_v4l2_ctrl_get_name71_o;
    wire [0:0] i_pivot15_v4l2_ctrl_get_name71_c;
    wire [33:0] i_pivot17_v4l2_ctrl_get_name35_a;
    wire [33:0] i_pivot17_v4l2_ctrl_get_name35_b;
    logic [33:0] i_pivot17_v4l2_ctrl_get_name35_o;
    wire [0:0] i_pivot17_v4l2_ctrl_get_name35_c;
    wire [33:0] i_pivot327_v4l2_ctrl_get_name143_a;
    wire [33:0] i_pivot327_v4l2_ctrl_get_name143_b;
    logic [33:0] i_pivot327_v4l2_ctrl_get_name143_o;
    wire [0:0] i_pivot327_v4l2_ctrl_get_name143_c;
    wire [33:0] i_pivot329_v4l2_ctrl_get_name275_a;
    wire [33:0] i_pivot329_v4l2_ctrl_get_name275_b;
    logic [33:0] i_pivot329_v4l2_ctrl_get_name275_o;
    wire [0:0] i_pivot329_v4l2_ctrl_get_name275_c;
    wire [33:0] i_pivot331_v4l2_ctrl_get_name145_a;
    wire [33:0] i_pivot331_v4l2_ctrl_get_name145_b;
    logic [33:0] i_pivot331_v4l2_ctrl_get_name145_o;
    wire [0:0] i_pivot331_v4l2_ctrl_get_name145_c;
    wire [33:0] i_pivot333_v4l2_ctrl_get_name73_a;
    wire [33:0] i_pivot333_v4l2_ctrl_get_name73_b;
    logic [33:0] i_pivot333_v4l2_ctrl_get_name73_o;
    wire [0:0] i_pivot333_v4l2_ctrl_get_name73_c;
    wire [33:0] i_pivot335_v4l2_ctrl_get_name147_a;
    wire [33:0] i_pivot335_v4l2_ctrl_get_name147_b;
    logic [33:0] i_pivot335_v4l2_ctrl_get_name147_o;
    wire [0:0] i_pivot335_v4l2_ctrl_get_name147_c;
    wire [33:0] i_pivot337_v4l2_ctrl_get_name277_a;
    wire [33:0] i_pivot337_v4l2_ctrl_get_name277_b;
    logic [33:0] i_pivot337_v4l2_ctrl_get_name277_o;
    wire [0:0] i_pivot337_v4l2_ctrl_get_name277_c;
    wire [33:0] i_pivot339_v4l2_ctrl_get_name149_a;
    wire [33:0] i_pivot339_v4l2_ctrl_get_name149_b;
    logic [33:0] i_pivot339_v4l2_ctrl_get_name149_o;
    wire [0:0] i_pivot339_v4l2_ctrl_get_name149_c;
    wire [33:0] i_pivot341_v4l2_ctrl_get_name75_a;
    wire [33:0] i_pivot341_v4l2_ctrl_get_name75_b;
    logic [33:0] i_pivot341_v4l2_ctrl_get_name75_o;
    wire [0:0] i_pivot341_v4l2_ctrl_get_name75_c;
    wire [33:0] i_pivot343_v4l2_ctrl_get_name37_a;
    wire [33:0] i_pivot343_v4l2_ctrl_get_name37_b;
    logic [33:0] i_pivot343_v4l2_ctrl_get_name37_o;
    wire [0:0] i_pivot343_v4l2_ctrl_get_name37_c;
    wire [33:0] i_pivot345_v4l2_ctrl_get_name151_a;
    wire [33:0] i_pivot345_v4l2_ctrl_get_name151_b;
    logic [33:0] i_pivot345_v4l2_ctrl_get_name151_o;
    wire [0:0] i_pivot345_v4l2_ctrl_get_name151_c;
    wire [33:0] i_pivot347_v4l2_ctrl_get_name279_a;
    wire [33:0] i_pivot347_v4l2_ctrl_get_name279_b;
    logic [33:0] i_pivot347_v4l2_ctrl_get_name279_o;
    wire [0:0] i_pivot347_v4l2_ctrl_get_name279_c;
    wire [33:0] i_pivot349_v4l2_ctrl_get_name153_a;
    wire [33:0] i_pivot349_v4l2_ctrl_get_name153_b;
    logic [33:0] i_pivot349_v4l2_ctrl_get_name153_o;
    wire [0:0] i_pivot349_v4l2_ctrl_get_name153_c;
    wire [33:0] i_pivot351_v4l2_ctrl_get_name77_a;
    wire [33:0] i_pivot351_v4l2_ctrl_get_name77_b;
    logic [33:0] i_pivot351_v4l2_ctrl_get_name77_o;
    wire [0:0] i_pivot351_v4l2_ctrl_get_name77_c;
    wire [33:0] i_pivot353_v4l2_ctrl_get_name155_a;
    wire [33:0] i_pivot353_v4l2_ctrl_get_name155_b;
    logic [33:0] i_pivot353_v4l2_ctrl_get_name155_o;
    wire [0:0] i_pivot353_v4l2_ctrl_get_name155_c;
    wire [33:0] i_pivot355_v4l2_ctrl_get_name281_a;
    wire [33:0] i_pivot355_v4l2_ctrl_get_name281_b;
    logic [33:0] i_pivot355_v4l2_ctrl_get_name281_o;
    wire [0:0] i_pivot355_v4l2_ctrl_get_name281_c;
    wire [33:0] i_pivot357_v4l2_ctrl_get_name157_a;
    wire [33:0] i_pivot357_v4l2_ctrl_get_name157_b;
    logic [33:0] i_pivot357_v4l2_ctrl_get_name157_o;
    wire [0:0] i_pivot357_v4l2_ctrl_get_name157_c;
    wire [33:0] i_pivot359_v4l2_ctrl_get_name79_a;
    wire [33:0] i_pivot359_v4l2_ctrl_get_name79_b;
    logic [33:0] i_pivot359_v4l2_ctrl_get_name79_o;
    wire [0:0] i_pivot359_v4l2_ctrl_get_name79_c;
    wire [33:0] i_pivot361_v4l2_ctrl_get_name39_a;
    wire [33:0] i_pivot361_v4l2_ctrl_get_name39_b;
    logic [33:0] i_pivot361_v4l2_ctrl_get_name39_o;
    wire [0:0] i_pivot361_v4l2_ctrl_get_name39_c;
    wire [33:0] i_pivot363_v4l2_ctrl_get_name19_a;
    wire [33:0] i_pivot363_v4l2_ctrl_get_name19_b;
    logic [33:0] i_pivot363_v4l2_ctrl_get_name19_o;
    wire [0:0] i_pivot363_v4l2_ctrl_get_name19_c;
    wire [33:0] i_pivot365_v4l2_ctrl_get_name159_a;
    wire [33:0] i_pivot365_v4l2_ctrl_get_name159_b;
    logic [33:0] i_pivot365_v4l2_ctrl_get_name159_o;
    wire [0:0] i_pivot365_v4l2_ctrl_get_name159_c;
    wire [33:0] i_pivot367_v4l2_ctrl_get_name283_a;
    wire [33:0] i_pivot367_v4l2_ctrl_get_name283_b;
    logic [33:0] i_pivot367_v4l2_ctrl_get_name283_o;
    wire [0:0] i_pivot367_v4l2_ctrl_get_name283_c;
    wire [33:0] i_pivot369_v4l2_ctrl_get_name161_a;
    wire [33:0] i_pivot369_v4l2_ctrl_get_name161_b;
    logic [33:0] i_pivot369_v4l2_ctrl_get_name161_o;
    wire [0:0] i_pivot369_v4l2_ctrl_get_name161_c;
    wire [33:0] i_pivot371_v4l2_ctrl_get_name81_a;
    wire [33:0] i_pivot371_v4l2_ctrl_get_name81_b;
    logic [33:0] i_pivot371_v4l2_ctrl_get_name81_o;
    wire [0:0] i_pivot371_v4l2_ctrl_get_name81_c;
    wire [33:0] i_pivot373_v4l2_ctrl_get_name163_a;
    wire [33:0] i_pivot373_v4l2_ctrl_get_name163_b;
    logic [33:0] i_pivot373_v4l2_ctrl_get_name163_o;
    wire [0:0] i_pivot373_v4l2_ctrl_get_name163_c;
    wire [33:0] i_pivot375_v4l2_ctrl_get_name285_a;
    wire [33:0] i_pivot375_v4l2_ctrl_get_name285_b;
    logic [33:0] i_pivot375_v4l2_ctrl_get_name285_o;
    wire [0:0] i_pivot375_v4l2_ctrl_get_name285_c;
    wire [33:0] i_pivot377_v4l2_ctrl_get_name165_a;
    wire [33:0] i_pivot377_v4l2_ctrl_get_name165_b;
    logic [33:0] i_pivot377_v4l2_ctrl_get_name165_o;
    wire [0:0] i_pivot377_v4l2_ctrl_get_name165_c;
    wire [33:0] i_pivot379_v4l2_ctrl_get_name83_a;
    wire [33:0] i_pivot379_v4l2_ctrl_get_name83_b;
    logic [33:0] i_pivot379_v4l2_ctrl_get_name83_o;
    wire [0:0] i_pivot379_v4l2_ctrl_get_name83_c;
    wire [33:0] i_pivot381_v4l2_ctrl_get_name41_a;
    wire [33:0] i_pivot381_v4l2_ctrl_get_name41_b;
    logic [33:0] i_pivot381_v4l2_ctrl_get_name41_o;
    wire [0:0] i_pivot381_v4l2_ctrl_get_name41_c;
    wire [33:0] i_pivot383_v4l2_ctrl_get_name167_a;
    wire [33:0] i_pivot383_v4l2_ctrl_get_name167_b;
    logic [33:0] i_pivot383_v4l2_ctrl_get_name167_o;
    wire [0:0] i_pivot383_v4l2_ctrl_get_name167_c;
    wire [33:0] i_pivot385_v4l2_ctrl_get_name287_a;
    wire [33:0] i_pivot385_v4l2_ctrl_get_name287_b;
    logic [33:0] i_pivot385_v4l2_ctrl_get_name287_o;
    wire [0:0] i_pivot385_v4l2_ctrl_get_name287_c;
    wire [33:0] i_pivot387_v4l2_ctrl_get_name169_a;
    wire [33:0] i_pivot387_v4l2_ctrl_get_name169_b;
    logic [33:0] i_pivot387_v4l2_ctrl_get_name169_o;
    wire [0:0] i_pivot387_v4l2_ctrl_get_name169_c;
    wire [33:0] i_pivot389_v4l2_ctrl_get_name85_a;
    wire [33:0] i_pivot389_v4l2_ctrl_get_name85_b;
    logic [33:0] i_pivot389_v4l2_ctrl_get_name85_o;
    wire [0:0] i_pivot389_v4l2_ctrl_get_name85_c;
    wire [33:0] i_pivot391_v4l2_ctrl_get_name289_a;
    wire [33:0] i_pivot391_v4l2_ctrl_get_name289_b;
    logic [33:0] i_pivot391_v4l2_ctrl_get_name289_o;
    wire [0:0] i_pivot391_v4l2_ctrl_get_name289_c;
    wire [33:0] i_pivot393_v4l2_ctrl_get_name171_a;
    wire [33:0] i_pivot393_v4l2_ctrl_get_name171_b;
    logic [33:0] i_pivot393_v4l2_ctrl_get_name171_o;
    wire [0:0] i_pivot393_v4l2_ctrl_get_name171_c;
    wire [33:0] i_pivot395_v4l2_ctrl_get_name291_a;
    wire [33:0] i_pivot395_v4l2_ctrl_get_name291_b;
    logic [33:0] i_pivot395_v4l2_ctrl_get_name291_o;
    wire [0:0] i_pivot395_v4l2_ctrl_get_name291_c;
    wire [33:0] i_pivot397_v4l2_ctrl_get_name173_a;
    wire [33:0] i_pivot397_v4l2_ctrl_get_name173_b;
    logic [33:0] i_pivot397_v4l2_ctrl_get_name173_o;
    wire [0:0] i_pivot397_v4l2_ctrl_get_name173_c;
    wire [33:0] i_pivot399_v4l2_ctrl_get_name87_a;
    wire [33:0] i_pivot399_v4l2_ctrl_get_name87_b;
    logic [33:0] i_pivot399_v4l2_ctrl_get_name87_o;
    wire [0:0] i_pivot399_v4l2_ctrl_get_name87_c;
    wire [33:0] i_pivot3_v4l2_ctrl_get_name273_a;
    wire [33:0] i_pivot3_v4l2_ctrl_get_name273_b;
    logic [33:0] i_pivot3_v4l2_ctrl_get_name273_o;
    wire [0:0] i_pivot3_v4l2_ctrl_get_name273_c;
    wire [33:0] i_pivot401_v4l2_ctrl_get_name43_a;
    wire [33:0] i_pivot401_v4l2_ctrl_get_name43_b;
    logic [33:0] i_pivot401_v4l2_ctrl_get_name43_o;
    wire [0:0] i_pivot401_v4l2_ctrl_get_name43_c;
    wire [33:0] i_pivot403_v4l2_ctrl_get_name21_a;
    wire [33:0] i_pivot403_v4l2_ctrl_get_name21_b;
    logic [33:0] i_pivot403_v4l2_ctrl_get_name21_o;
    wire [0:0] i_pivot403_v4l2_ctrl_get_name21_c;
    wire [33:0] i_pivot405_v4l2_ctrl_get_name11_a;
    wire [33:0] i_pivot405_v4l2_ctrl_get_name11_b;
    logic [33:0] i_pivot405_v4l2_ctrl_get_name11_o;
    wire [0:0] i_pivot405_v4l2_ctrl_get_name11_c;
    wire [33:0] i_pivot407_v4l2_ctrl_get_name175_a;
    wire [33:0] i_pivot407_v4l2_ctrl_get_name175_b;
    logic [33:0] i_pivot407_v4l2_ctrl_get_name175_o;
    wire [0:0] i_pivot407_v4l2_ctrl_get_name175_c;
    wire [33:0] i_pivot409_v4l2_ctrl_get_name293_a;
    wire [33:0] i_pivot409_v4l2_ctrl_get_name293_b;
    logic [33:0] i_pivot409_v4l2_ctrl_get_name293_o;
    wire [0:0] i_pivot409_v4l2_ctrl_get_name293_c;
    wire [33:0] i_pivot411_v4l2_ctrl_get_name177_a;
    wire [33:0] i_pivot411_v4l2_ctrl_get_name177_b;
    logic [33:0] i_pivot411_v4l2_ctrl_get_name177_o;
    wire [0:0] i_pivot411_v4l2_ctrl_get_name177_c;
    wire [33:0] i_pivot413_v4l2_ctrl_get_name89_a;
    wire [33:0] i_pivot413_v4l2_ctrl_get_name89_b;
    logic [33:0] i_pivot413_v4l2_ctrl_get_name89_o;
    wire [0:0] i_pivot413_v4l2_ctrl_get_name89_c;
    wire [33:0] i_pivot415_v4l2_ctrl_get_name179_a;
    wire [33:0] i_pivot415_v4l2_ctrl_get_name179_b;
    logic [33:0] i_pivot415_v4l2_ctrl_get_name179_o;
    wire [0:0] i_pivot415_v4l2_ctrl_get_name179_c;
    wire [33:0] i_pivot417_v4l2_ctrl_get_name295_a;
    wire [33:0] i_pivot417_v4l2_ctrl_get_name295_b;
    logic [33:0] i_pivot417_v4l2_ctrl_get_name295_o;
    wire [0:0] i_pivot417_v4l2_ctrl_get_name295_c;
    wire [33:0] i_pivot419_v4l2_ctrl_get_name181_a;
    wire [33:0] i_pivot419_v4l2_ctrl_get_name181_b;
    logic [33:0] i_pivot419_v4l2_ctrl_get_name181_o;
    wire [0:0] i_pivot419_v4l2_ctrl_get_name181_c;
    wire [33:0] i_pivot421_v4l2_ctrl_get_name91_a;
    wire [33:0] i_pivot421_v4l2_ctrl_get_name91_b;
    logic [33:0] i_pivot421_v4l2_ctrl_get_name91_o;
    wire [0:0] i_pivot421_v4l2_ctrl_get_name91_c;
    wire [33:0] i_pivot423_v4l2_ctrl_get_name45_a;
    wire [33:0] i_pivot423_v4l2_ctrl_get_name45_b;
    logic [33:0] i_pivot423_v4l2_ctrl_get_name45_o;
    wire [0:0] i_pivot423_v4l2_ctrl_get_name45_c;
    wire [33:0] i_pivot425_v4l2_ctrl_get_name183_a;
    wire [33:0] i_pivot425_v4l2_ctrl_get_name183_b;
    logic [33:0] i_pivot425_v4l2_ctrl_get_name183_o;
    wire [0:0] i_pivot425_v4l2_ctrl_get_name183_c;
    wire [33:0] i_pivot427_v4l2_ctrl_get_name297_a;
    wire [33:0] i_pivot427_v4l2_ctrl_get_name297_b;
    logic [33:0] i_pivot427_v4l2_ctrl_get_name297_o;
    wire [0:0] i_pivot427_v4l2_ctrl_get_name297_c;
    wire [33:0] i_pivot429_v4l2_ctrl_get_name185_a;
    wire [33:0] i_pivot429_v4l2_ctrl_get_name185_b;
    logic [33:0] i_pivot429_v4l2_ctrl_get_name185_o;
    wire [0:0] i_pivot429_v4l2_ctrl_get_name185_c;
    wire [33:0] i_pivot431_v4l2_ctrl_get_name93_a;
    wire [33:0] i_pivot431_v4l2_ctrl_get_name93_b;
    logic [33:0] i_pivot431_v4l2_ctrl_get_name93_o;
    wire [0:0] i_pivot431_v4l2_ctrl_get_name93_c;
    wire [33:0] i_pivot433_v4l2_ctrl_get_name187_a;
    wire [33:0] i_pivot433_v4l2_ctrl_get_name187_b;
    logic [33:0] i_pivot433_v4l2_ctrl_get_name187_o;
    wire [0:0] i_pivot433_v4l2_ctrl_get_name187_c;
    wire [33:0] i_pivot435_v4l2_ctrl_get_name299_a;
    wire [33:0] i_pivot435_v4l2_ctrl_get_name299_b;
    logic [33:0] i_pivot435_v4l2_ctrl_get_name299_o;
    wire [0:0] i_pivot435_v4l2_ctrl_get_name299_c;
    wire [33:0] i_pivot437_v4l2_ctrl_get_name189_a;
    wire [33:0] i_pivot437_v4l2_ctrl_get_name189_b;
    logic [33:0] i_pivot437_v4l2_ctrl_get_name189_o;
    wire [0:0] i_pivot437_v4l2_ctrl_get_name189_c;
    wire [33:0] i_pivot439_v4l2_ctrl_get_name95_a;
    wire [33:0] i_pivot439_v4l2_ctrl_get_name95_b;
    logic [33:0] i_pivot439_v4l2_ctrl_get_name95_o;
    wire [0:0] i_pivot439_v4l2_ctrl_get_name95_c;
    wire [33:0] i_pivot441_v4l2_ctrl_get_name47_a;
    wire [33:0] i_pivot441_v4l2_ctrl_get_name47_b;
    logic [33:0] i_pivot441_v4l2_ctrl_get_name47_o;
    wire [0:0] i_pivot441_v4l2_ctrl_get_name47_c;
    wire [33:0] i_pivot443_v4l2_ctrl_get_name23_a;
    wire [33:0] i_pivot443_v4l2_ctrl_get_name23_b;
    logic [33:0] i_pivot443_v4l2_ctrl_get_name23_o;
    wire [0:0] i_pivot443_v4l2_ctrl_get_name23_c;
    wire [33:0] i_pivot445_v4l2_ctrl_get_name191_a;
    wire [33:0] i_pivot445_v4l2_ctrl_get_name191_b;
    logic [33:0] i_pivot445_v4l2_ctrl_get_name191_o;
    wire [0:0] i_pivot445_v4l2_ctrl_get_name191_c;
    wire [33:0] i_pivot447_v4l2_ctrl_get_name301_a;
    wire [33:0] i_pivot447_v4l2_ctrl_get_name301_b;
    logic [33:0] i_pivot447_v4l2_ctrl_get_name301_o;
    wire [0:0] i_pivot447_v4l2_ctrl_get_name301_c;
    wire [33:0] i_pivot449_v4l2_ctrl_get_name193_a;
    wire [33:0] i_pivot449_v4l2_ctrl_get_name193_b;
    logic [33:0] i_pivot449_v4l2_ctrl_get_name193_o;
    wire [0:0] i_pivot449_v4l2_ctrl_get_name193_c;
    wire [33:0] i_pivot451_v4l2_ctrl_get_name97_a;
    wire [33:0] i_pivot451_v4l2_ctrl_get_name97_b;
    logic [33:0] i_pivot451_v4l2_ctrl_get_name97_o;
    wire [0:0] i_pivot451_v4l2_ctrl_get_name97_c;
    wire [33:0] i_pivot453_v4l2_ctrl_get_name195_a;
    wire [33:0] i_pivot453_v4l2_ctrl_get_name195_b;
    logic [33:0] i_pivot453_v4l2_ctrl_get_name195_o;
    wire [0:0] i_pivot453_v4l2_ctrl_get_name195_c;
    wire [33:0] i_pivot455_v4l2_ctrl_get_name303_a;
    wire [33:0] i_pivot455_v4l2_ctrl_get_name303_b;
    logic [33:0] i_pivot455_v4l2_ctrl_get_name303_o;
    wire [0:0] i_pivot455_v4l2_ctrl_get_name303_c;
    wire [33:0] i_pivot457_v4l2_ctrl_get_name197_a;
    wire [33:0] i_pivot457_v4l2_ctrl_get_name197_b;
    logic [33:0] i_pivot457_v4l2_ctrl_get_name197_o;
    wire [0:0] i_pivot457_v4l2_ctrl_get_name197_c;
    wire [33:0] i_pivot459_v4l2_ctrl_get_name99_a;
    wire [33:0] i_pivot459_v4l2_ctrl_get_name99_b;
    logic [33:0] i_pivot459_v4l2_ctrl_get_name99_o;
    wire [0:0] i_pivot459_v4l2_ctrl_get_name99_c;
    wire [33:0] i_pivot461_v4l2_ctrl_get_name49_a;
    wire [33:0] i_pivot461_v4l2_ctrl_get_name49_b;
    logic [33:0] i_pivot461_v4l2_ctrl_get_name49_o;
    wire [0:0] i_pivot461_v4l2_ctrl_get_name49_c;
    wire [33:0] i_pivot463_v4l2_ctrl_get_name199_a;
    wire [33:0] i_pivot463_v4l2_ctrl_get_name199_b;
    logic [33:0] i_pivot463_v4l2_ctrl_get_name199_o;
    wire [0:0] i_pivot463_v4l2_ctrl_get_name199_c;
    wire [33:0] i_pivot465_v4l2_ctrl_get_name305_a;
    wire [33:0] i_pivot465_v4l2_ctrl_get_name305_b;
    logic [33:0] i_pivot465_v4l2_ctrl_get_name305_o;
    wire [0:0] i_pivot465_v4l2_ctrl_get_name305_c;
    wire [33:0] i_pivot467_v4l2_ctrl_get_name201_a;
    wire [33:0] i_pivot467_v4l2_ctrl_get_name201_b;
    logic [33:0] i_pivot467_v4l2_ctrl_get_name201_o;
    wire [0:0] i_pivot467_v4l2_ctrl_get_name201_c;
    wire [33:0] i_pivot469_v4l2_ctrl_get_name101_a;
    wire [33:0] i_pivot469_v4l2_ctrl_get_name101_b;
    logic [33:0] i_pivot469_v4l2_ctrl_get_name101_o;
    wire [0:0] i_pivot469_v4l2_ctrl_get_name101_c;
    wire [33:0] i_pivot471_v4l2_ctrl_get_name307_a;
    wire [33:0] i_pivot471_v4l2_ctrl_get_name307_b;
    logic [33:0] i_pivot471_v4l2_ctrl_get_name307_o;
    wire [0:0] i_pivot471_v4l2_ctrl_get_name307_c;
    wire [33:0] i_pivot473_v4l2_ctrl_get_name203_a;
    wire [33:0] i_pivot473_v4l2_ctrl_get_name203_b;
    logic [33:0] i_pivot473_v4l2_ctrl_get_name203_o;
    wire [0:0] i_pivot473_v4l2_ctrl_get_name203_c;
    wire [33:0] i_pivot475_v4l2_ctrl_get_name309_a;
    wire [33:0] i_pivot475_v4l2_ctrl_get_name309_b;
    logic [33:0] i_pivot475_v4l2_ctrl_get_name309_o;
    wire [0:0] i_pivot475_v4l2_ctrl_get_name309_c;
    wire [33:0] i_pivot477_v4l2_ctrl_get_name205_a;
    wire [33:0] i_pivot477_v4l2_ctrl_get_name205_b;
    logic [33:0] i_pivot477_v4l2_ctrl_get_name205_o;
    wire [0:0] i_pivot477_v4l2_ctrl_get_name205_c;
    wire [33:0] i_pivot479_v4l2_ctrl_get_name103_a;
    wire [33:0] i_pivot479_v4l2_ctrl_get_name103_b;
    logic [33:0] i_pivot479_v4l2_ctrl_get_name103_o;
    wire [0:0] i_pivot479_v4l2_ctrl_get_name103_c;
    wire [33:0] i_pivot481_v4l2_ctrl_get_name51_a;
    wire [33:0] i_pivot481_v4l2_ctrl_get_name51_b;
    logic [33:0] i_pivot481_v4l2_ctrl_get_name51_o;
    wire [0:0] i_pivot481_v4l2_ctrl_get_name51_c;
    wire [33:0] i_pivot483_v4l2_ctrl_get_name25_a;
    wire [33:0] i_pivot483_v4l2_ctrl_get_name25_b;
    logic [33:0] i_pivot483_v4l2_ctrl_get_name25_o;
    wire [0:0] i_pivot483_v4l2_ctrl_get_name25_c;
    wire [33:0] i_pivot485_v4l2_ctrl_get_name13_a;
    wire [33:0] i_pivot485_v4l2_ctrl_get_name13_b;
    logic [33:0] i_pivot485_v4l2_ctrl_get_name13_o;
    wire [0:0] i_pivot485_v4l2_ctrl_get_name13_c;
    wire [33:0] i_pivot487_v4l2_ctrl_get_name7_a;
    wire [33:0] i_pivot487_v4l2_ctrl_get_name7_b;
    logic [33:0] i_pivot487_v4l2_ctrl_get_name7_o;
    wire [0:0] i_pivot487_v4l2_ctrl_get_name7_c;
    wire [33:0] i_pivot489_v4l2_ctrl_get_name207_a;
    wire [33:0] i_pivot489_v4l2_ctrl_get_name207_b;
    logic [33:0] i_pivot489_v4l2_ctrl_get_name207_o;
    wire [0:0] i_pivot489_v4l2_ctrl_get_name207_c;
    wire [33:0] i_pivot491_v4l2_ctrl_get_name311_a;
    wire [33:0] i_pivot491_v4l2_ctrl_get_name311_b;
    logic [33:0] i_pivot491_v4l2_ctrl_get_name311_o;
    wire [0:0] i_pivot491_v4l2_ctrl_get_name311_c;
    wire [33:0] i_pivot493_v4l2_ctrl_get_name209_a;
    wire [33:0] i_pivot493_v4l2_ctrl_get_name209_b;
    logic [33:0] i_pivot493_v4l2_ctrl_get_name209_o;
    wire [0:0] i_pivot493_v4l2_ctrl_get_name209_c;
    wire [33:0] i_pivot495_v4l2_ctrl_get_name105_a;
    wire [33:0] i_pivot495_v4l2_ctrl_get_name105_b;
    logic [33:0] i_pivot495_v4l2_ctrl_get_name105_o;
    wire [0:0] i_pivot495_v4l2_ctrl_get_name105_c;
    wire [33:0] i_pivot497_v4l2_ctrl_get_name211_a;
    wire [33:0] i_pivot497_v4l2_ctrl_get_name211_b;
    logic [33:0] i_pivot497_v4l2_ctrl_get_name211_o;
    wire [0:0] i_pivot497_v4l2_ctrl_get_name211_c;
    wire [33:0] i_pivot499_v4l2_ctrl_get_name313_a;
    wire [33:0] i_pivot499_v4l2_ctrl_get_name313_b;
    logic [33:0] i_pivot499_v4l2_ctrl_get_name313_o;
    wire [0:0] i_pivot499_v4l2_ctrl_get_name313_c;
    wire [33:0] i_pivot501_v4l2_ctrl_get_name213_a;
    wire [33:0] i_pivot501_v4l2_ctrl_get_name213_b;
    logic [33:0] i_pivot501_v4l2_ctrl_get_name213_o;
    wire [0:0] i_pivot501_v4l2_ctrl_get_name213_c;
    wire [33:0] i_pivot503_v4l2_ctrl_get_name107_a;
    wire [33:0] i_pivot503_v4l2_ctrl_get_name107_b;
    logic [33:0] i_pivot503_v4l2_ctrl_get_name107_o;
    wire [0:0] i_pivot503_v4l2_ctrl_get_name107_c;
    wire [33:0] i_pivot505_v4l2_ctrl_get_name53_a;
    wire [33:0] i_pivot505_v4l2_ctrl_get_name53_b;
    logic [33:0] i_pivot505_v4l2_ctrl_get_name53_o;
    wire [0:0] i_pivot505_v4l2_ctrl_get_name53_c;
    wire [33:0] i_pivot507_v4l2_ctrl_get_name215_a;
    wire [33:0] i_pivot507_v4l2_ctrl_get_name215_b;
    logic [33:0] i_pivot507_v4l2_ctrl_get_name215_o;
    wire [0:0] i_pivot507_v4l2_ctrl_get_name215_c;
    wire [33:0] i_pivot509_v4l2_ctrl_get_name315_a;
    wire [33:0] i_pivot509_v4l2_ctrl_get_name315_b;
    logic [33:0] i_pivot509_v4l2_ctrl_get_name315_o;
    wire [0:0] i_pivot509_v4l2_ctrl_get_name315_c;
    wire [33:0] i_pivot511_v4l2_ctrl_get_name217_a;
    wire [33:0] i_pivot511_v4l2_ctrl_get_name217_b;
    logic [33:0] i_pivot511_v4l2_ctrl_get_name217_o;
    wire [0:0] i_pivot511_v4l2_ctrl_get_name217_c;
    wire [33:0] i_pivot513_v4l2_ctrl_get_name109_a;
    wire [33:0] i_pivot513_v4l2_ctrl_get_name109_b;
    logic [33:0] i_pivot513_v4l2_ctrl_get_name109_o;
    wire [0:0] i_pivot513_v4l2_ctrl_get_name109_c;
    wire [33:0] i_pivot515_v4l2_ctrl_get_name219_a;
    wire [33:0] i_pivot515_v4l2_ctrl_get_name219_b;
    logic [33:0] i_pivot515_v4l2_ctrl_get_name219_o;
    wire [0:0] i_pivot515_v4l2_ctrl_get_name219_c;
    wire [33:0] i_pivot517_v4l2_ctrl_get_name317_a;
    wire [33:0] i_pivot517_v4l2_ctrl_get_name317_b;
    logic [33:0] i_pivot517_v4l2_ctrl_get_name317_o;
    wire [0:0] i_pivot517_v4l2_ctrl_get_name317_c;
    wire [33:0] i_pivot519_v4l2_ctrl_get_name221_a;
    wire [33:0] i_pivot519_v4l2_ctrl_get_name221_b;
    logic [33:0] i_pivot519_v4l2_ctrl_get_name221_o;
    wire [0:0] i_pivot519_v4l2_ctrl_get_name221_c;
    wire [33:0] i_pivot521_v4l2_ctrl_get_name111_a;
    wire [33:0] i_pivot521_v4l2_ctrl_get_name111_b;
    logic [33:0] i_pivot521_v4l2_ctrl_get_name111_o;
    wire [0:0] i_pivot521_v4l2_ctrl_get_name111_c;
    wire [33:0] i_pivot523_v4l2_ctrl_get_name55_a;
    wire [33:0] i_pivot523_v4l2_ctrl_get_name55_b;
    logic [33:0] i_pivot523_v4l2_ctrl_get_name55_o;
    wire [0:0] i_pivot523_v4l2_ctrl_get_name55_c;
    wire [33:0] i_pivot525_v4l2_ctrl_get_name27_a;
    wire [33:0] i_pivot525_v4l2_ctrl_get_name27_b;
    logic [33:0] i_pivot525_v4l2_ctrl_get_name27_o;
    wire [0:0] i_pivot525_v4l2_ctrl_get_name27_c;
    wire [33:0] i_pivot527_v4l2_ctrl_get_name223_a;
    wire [33:0] i_pivot527_v4l2_ctrl_get_name223_b;
    logic [33:0] i_pivot527_v4l2_ctrl_get_name223_o;
    wire [0:0] i_pivot527_v4l2_ctrl_get_name223_c;
    wire [33:0] i_pivot529_v4l2_ctrl_get_name319_a;
    wire [33:0] i_pivot529_v4l2_ctrl_get_name319_b;
    logic [33:0] i_pivot529_v4l2_ctrl_get_name319_o;
    wire [0:0] i_pivot529_v4l2_ctrl_get_name319_c;
    wire [33:0] i_pivot531_v4l2_ctrl_get_name225_a;
    wire [33:0] i_pivot531_v4l2_ctrl_get_name225_b;
    logic [33:0] i_pivot531_v4l2_ctrl_get_name225_o;
    wire [0:0] i_pivot531_v4l2_ctrl_get_name225_c;
    wire [33:0] i_pivot533_v4l2_ctrl_get_name113_a;
    wire [33:0] i_pivot533_v4l2_ctrl_get_name113_b;
    logic [33:0] i_pivot533_v4l2_ctrl_get_name113_o;
    wire [0:0] i_pivot533_v4l2_ctrl_get_name113_c;
    wire [33:0] i_pivot535_v4l2_ctrl_get_name227_a;
    wire [33:0] i_pivot535_v4l2_ctrl_get_name227_b;
    logic [33:0] i_pivot535_v4l2_ctrl_get_name227_o;
    wire [0:0] i_pivot535_v4l2_ctrl_get_name227_c;
    wire [33:0] i_pivot537_v4l2_ctrl_get_name321_a;
    wire [33:0] i_pivot537_v4l2_ctrl_get_name321_b;
    logic [33:0] i_pivot537_v4l2_ctrl_get_name321_o;
    wire [0:0] i_pivot537_v4l2_ctrl_get_name321_c;
    wire [33:0] i_pivot539_v4l2_ctrl_get_name229_a;
    wire [33:0] i_pivot539_v4l2_ctrl_get_name229_b;
    logic [33:0] i_pivot539_v4l2_ctrl_get_name229_o;
    wire [0:0] i_pivot539_v4l2_ctrl_get_name229_c;
    wire [33:0] i_pivot541_v4l2_ctrl_get_name115_a;
    wire [33:0] i_pivot541_v4l2_ctrl_get_name115_b;
    logic [33:0] i_pivot541_v4l2_ctrl_get_name115_o;
    wire [0:0] i_pivot541_v4l2_ctrl_get_name115_c;
    wire [33:0] i_pivot543_v4l2_ctrl_get_name57_a;
    wire [33:0] i_pivot543_v4l2_ctrl_get_name57_b;
    logic [33:0] i_pivot543_v4l2_ctrl_get_name57_o;
    wire [0:0] i_pivot543_v4l2_ctrl_get_name57_c;
    wire [33:0] i_pivot545_v4l2_ctrl_get_name231_a;
    wire [33:0] i_pivot545_v4l2_ctrl_get_name231_b;
    logic [33:0] i_pivot545_v4l2_ctrl_get_name231_o;
    wire [0:0] i_pivot545_v4l2_ctrl_get_name231_c;
    wire [33:0] i_pivot547_v4l2_ctrl_get_name323_a;
    wire [33:0] i_pivot547_v4l2_ctrl_get_name323_b;
    logic [33:0] i_pivot547_v4l2_ctrl_get_name323_o;
    wire [0:0] i_pivot547_v4l2_ctrl_get_name323_c;
    wire [33:0] i_pivot549_v4l2_ctrl_get_name233_a;
    wire [33:0] i_pivot549_v4l2_ctrl_get_name233_b;
    logic [33:0] i_pivot549_v4l2_ctrl_get_name233_o;
    wire [0:0] i_pivot549_v4l2_ctrl_get_name233_c;
    wire [33:0] i_pivot551_v4l2_ctrl_get_name117_a;
    wire [33:0] i_pivot551_v4l2_ctrl_get_name117_b;
    logic [33:0] i_pivot551_v4l2_ctrl_get_name117_o;
    wire [0:0] i_pivot551_v4l2_ctrl_get_name117_c;
    wire [33:0] i_pivot553_v4l2_ctrl_get_name325_a;
    wire [33:0] i_pivot553_v4l2_ctrl_get_name325_b;
    logic [33:0] i_pivot553_v4l2_ctrl_get_name325_o;
    wire [0:0] i_pivot553_v4l2_ctrl_get_name325_c;
    wire [33:0] i_pivot555_v4l2_ctrl_get_name235_a;
    wire [33:0] i_pivot555_v4l2_ctrl_get_name235_b;
    logic [33:0] i_pivot555_v4l2_ctrl_get_name235_o;
    wire [0:0] i_pivot555_v4l2_ctrl_get_name235_c;
    wire [33:0] i_pivot557_v4l2_ctrl_get_name327_a;
    wire [33:0] i_pivot557_v4l2_ctrl_get_name327_b;
    logic [33:0] i_pivot557_v4l2_ctrl_get_name327_o;
    wire [0:0] i_pivot557_v4l2_ctrl_get_name327_c;
    wire [33:0] i_pivot559_v4l2_ctrl_get_name237_a;
    wire [33:0] i_pivot559_v4l2_ctrl_get_name237_b;
    logic [33:0] i_pivot559_v4l2_ctrl_get_name237_o;
    wire [0:0] i_pivot559_v4l2_ctrl_get_name237_c;
    wire [33:0] i_pivot561_v4l2_ctrl_get_name119_a;
    wire [33:0] i_pivot561_v4l2_ctrl_get_name119_b;
    logic [33:0] i_pivot561_v4l2_ctrl_get_name119_o;
    wire [0:0] i_pivot561_v4l2_ctrl_get_name119_c;
    wire [33:0] i_pivot563_v4l2_ctrl_get_name59_a;
    wire [33:0] i_pivot563_v4l2_ctrl_get_name59_b;
    logic [33:0] i_pivot563_v4l2_ctrl_get_name59_o;
    wire [0:0] i_pivot563_v4l2_ctrl_get_name59_c;
    wire [33:0] i_pivot565_v4l2_ctrl_get_name29_a;
    wire [33:0] i_pivot565_v4l2_ctrl_get_name29_b;
    logic [33:0] i_pivot565_v4l2_ctrl_get_name29_o;
    wire [0:0] i_pivot565_v4l2_ctrl_get_name29_c;
    wire [33:0] i_pivot567_v4l2_ctrl_get_name15_a;
    wire [33:0] i_pivot567_v4l2_ctrl_get_name15_b;
    logic [33:0] i_pivot567_v4l2_ctrl_get_name15_o;
    wire [0:0] i_pivot567_v4l2_ctrl_get_name15_c;
    wire [33:0] i_pivot569_v4l2_ctrl_get_name239_a;
    wire [33:0] i_pivot569_v4l2_ctrl_get_name239_b;
    logic [33:0] i_pivot569_v4l2_ctrl_get_name239_o;
    wire [0:0] i_pivot569_v4l2_ctrl_get_name239_c;
    wire [33:0] i_pivot571_v4l2_ctrl_get_name329_a;
    wire [33:0] i_pivot571_v4l2_ctrl_get_name329_b;
    logic [33:0] i_pivot571_v4l2_ctrl_get_name329_o;
    wire [0:0] i_pivot571_v4l2_ctrl_get_name329_c;
    wire [33:0] i_pivot573_v4l2_ctrl_get_name241_a;
    wire [33:0] i_pivot573_v4l2_ctrl_get_name241_b;
    logic [33:0] i_pivot573_v4l2_ctrl_get_name241_o;
    wire [0:0] i_pivot573_v4l2_ctrl_get_name241_c;
    wire [33:0] i_pivot575_v4l2_ctrl_get_name121_a;
    wire [33:0] i_pivot575_v4l2_ctrl_get_name121_b;
    logic [33:0] i_pivot575_v4l2_ctrl_get_name121_o;
    wire [0:0] i_pivot575_v4l2_ctrl_get_name121_c;
    wire [33:0] i_pivot577_v4l2_ctrl_get_name243_a;
    wire [33:0] i_pivot577_v4l2_ctrl_get_name243_b;
    logic [33:0] i_pivot577_v4l2_ctrl_get_name243_o;
    wire [0:0] i_pivot577_v4l2_ctrl_get_name243_c;
    wire [33:0] i_pivot579_v4l2_ctrl_get_name331_a;
    wire [33:0] i_pivot579_v4l2_ctrl_get_name331_b;
    logic [33:0] i_pivot579_v4l2_ctrl_get_name331_o;
    wire [0:0] i_pivot579_v4l2_ctrl_get_name331_c;
    wire [33:0] i_pivot581_v4l2_ctrl_get_name245_a;
    wire [33:0] i_pivot581_v4l2_ctrl_get_name245_b;
    logic [33:0] i_pivot581_v4l2_ctrl_get_name245_o;
    wire [0:0] i_pivot581_v4l2_ctrl_get_name245_c;
    wire [33:0] i_pivot583_v4l2_ctrl_get_name123_a;
    wire [33:0] i_pivot583_v4l2_ctrl_get_name123_b;
    logic [33:0] i_pivot583_v4l2_ctrl_get_name123_o;
    wire [0:0] i_pivot583_v4l2_ctrl_get_name123_c;
    wire [33:0] i_pivot585_v4l2_ctrl_get_name61_a;
    wire [33:0] i_pivot585_v4l2_ctrl_get_name61_b;
    logic [33:0] i_pivot585_v4l2_ctrl_get_name61_o;
    wire [0:0] i_pivot585_v4l2_ctrl_get_name61_c;
    wire [33:0] i_pivot587_v4l2_ctrl_get_name247_a;
    wire [33:0] i_pivot587_v4l2_ctrl_get_name247_b;
    logic [33:0] i_pivot587_v4l2_ctrl_get_name247_o;
    wire [0:0] i_pivot587_v4l2_ctrl_get_name247_c;
    wire [33:0] i_pivot589_v4l2_ctrl_get_name333_a;
    wire [33:0] i_pivot589_v4l2_ctrl_get_name333_b;
    logic [33:0] i_pivot589_v4l2_ctrl_get_name333_o;
    wire [0:0] i_pivot589_v4l2_ctrl_get_name333_c;
    wire [33:0] i_pivot591_v4l2_ctrl_get_name249_a;
    wire [33:0] i_pivot591_v4l2_ctrl_get_name249_b;
    logic [33:0] i_pivot591_v4l2_ctrl_get_name249_o;
    wire [0:0] i_pivot591_v4l2_ctrl_get_name249_c;
    wire [33:0] i_pivot593_v4l2_ctrl_get_name125_a;
    wire [33:0] i_pivot593_v4l2_ctrl_get_name125_b;
    logic [33:0] i_pivot593_v4l2_ctrl_get_name125_o;
    wire [0:0] i_pivot593_v4l2_ctrl_get_name125_c;
    wire [33:0] i_pivot595_v4l2_ctrl_get_name251_a;
    wire [33:0] i_pivot595_v4l2_ctrl_get_name251_b;
    logic [33:0] i_pivot595_v4l2_ctrl_get_name251_o;
    wire [0:0] i_pivot595_v4l2_ctrl_get_name251_c;
    wire [33:0] i_pivot597_v4l2_ctrl_get_name335_a;
    wire [33:0] i_pivot597_v4l2_ctrl_get_name335_b;
    logic [33:0] i_pivot597_v4l2_ctrl_get_name335_o;
    wire [0:0] i_pivot597_v4l2_ctrl_get_name335_c;
    wire [33:0] i_pivot599_v4l2_ctrl_get_name253_a;
    wire [33:0] i_pivot599_v4l2_ctrl_get_name253_b;
    logic [33:0] i_pivot599_v4l2_ctrl_get_name253_o;
    wire [0:0] i_pivot599_v4l2_ctrl_get_name253_c;
    wire [33:0] i_pivot5_v4l2_ctrl_get_name139_a;
    wire [33:0] i_pivot5_v4l2_ctrl_get_name139_b;
    logic [33:0] i_pivot5_v4l2_ctrl_get_name139_o;
    wire [0:0] i_pivot5_v4l2_ctrl_get_name139_c;
    wire [33:0] i_pivot601_v4l2_ctrl_get_name127_a;
    wire [33:0] i_pivot601_v4l2_ctrl_get_name127_b;
    logic [33:0] i_pivot601_v4l2_ctrl_get_name127_o;
    wire [0:0] i_pivot601_v4l2_ctrl_get_name127_c;
    wire [33:0] i_pivot603_v4l2_ctrl_get_name63_a;
    wire [33:0] i_pivot603_v4l2_ctrl_get_name63_b;
    logic [33:0] i_pivot603_v4l2_ctrl_get_name63_o;
    wire [0:0] i_pivot603_v4l2_ctrl_get_name63_c;
    wire [33:0] i_pivot605_v4l2_ctrl_get_name31_a;
    wire [33:0] i_pivot605_v4l2_ctrl_get_name31_b;
    logic [33:0] i_pivot605_v4l2_ctrl_get_name31_o;
    wire [0:0] i_pivot605_v4l2_ctrl_get_name31_c;
    wire [33:0] i_pivot607_v4l2_ctrl_get_name255_a;
    wire [33:0] i_pivot607_v4l2_ctrl_get_name255_b;
    logic [33:0] i_pivot607_v4l2_ctrl_get_name255_o;
    wire [0:0] i_pivot607_v4l2_ctrl_get_name255_c;
    wire [33:0] i_pivot609_v4l2_ctrl_get_name337_a;
    wire [33:0] i_pivot609_v4l2_ctrl_get_name337_b;
    logic [33:0] i_pivot609_v4l2_ctrl_get_name337_o;
    wire [0:0] i_pivot609_v4l2_ctrl_get_name337_c;
    wire [33:0] i_pivot611_v4l2_ctrl_get_name257_a;
    wire [33:0] i_pivot611_v4l2_ctrl_get_name257_b;
    logic [33:0] i_pivot611_v4l2_ctrl_get_name257_o;
    wire [0:0] i_pivot611_v4l2_ctrl_get_name257_c;
    wire [33:0] i_pivot613_v4l2_ctrl_get_name129_a;
    wire [33:0] i_pivot613_v4l2_ctrl_get_name129_b;
    logic [33:0] i_pivot613_v4l2_ctrl_get_name129_o;
    wire [0:0] i_pivot613_v4l2_ctrl_get_name129_c;
    wire [33:0] i_pivot615_v4l2_ctrl_get_name259_a;
    wire [33:0] i_pivot615_v4l2_ctrl_get_name259_b;
    logic [33:0] i_pivot615_v4l2_ctrl_get_name259_o;
    wire [0:0] i_pivot615_v4l2_ctrl_get_name259_c;
    wire [33:0] i_pivot617_v4l2_ctrl_get_name339_a;
    wire [33:0] i_pivot617_v4l2_ctrl_get_name339_b;
    logic [33:0] i_pivot617_v4l2_ctrl_get_name339_o;
    wire [0:0] i_pivot617_v4l2_ctrl_get_name339_c;
    wire [33:0] i_pivot619_v4l2_ctrl_get_name261_a;
    wire [33:0] i_pivot619_v4l2_ctrl_get_name261_b;
    logic [33:0] i_pivot619_v4l2_ctrl_get_name261_o;
    wire [0:0] i_pivot619_v4l2_ctrl_get_name261_c;
    wire [33:0] i_pivot621_v4l2_ctrl_get_name131_a;
    wire [33:0] i_pivot621_v4l2_ctrl_get_name131_b;
    logic [33:0] i_pivot621_v4l2_ctrl_get_name131_o;
    wire [0:0] i_pivot621_v4l2_ctrl_get_name131_c;
    wire [33:0] i_pivot623_v4l2_ctrl_get_name65_a;
    wire [33:0] i_pivot623_v4l2_ctrl_get_name65_b;
    logic [33:0] i_pivot623_v4l2_ctrl_get_name65_o;
    wire [0:0] i_pivot623_v4l2_ctrl_get_name65_c;
    wire [33:0] i_pivot625_v4l2_ctrl_get_name263_a;
    wire [33:0] i_pivot625_v4l2_ctrl_get_name263_b;
    logic [33:0] i_pivot625_v4l2_ctrl_get_name263_o;
    wire [0:0] i_pivot625_v4l2_ctrl_get_name263_c;
    wire [33:0] i_pivot627_v4l2_ctrl_get_name341_a;
    wire [33:0] i_pivot627_v4l2_ctrl_get_name341_b;
    logic [33:0] i_pivot627_v4l2_ctrl_get_name341_o;
    wire [0:0] i_pivot627_v4l2_ctrl_get_name341_c;
    wire [33:0] i_pivot629_v4l2_ctrl_get_name265_a;
    wire [33:0] i_pivot629_v4l2_ctrl_get_name265_b;
    logic [33:0] i_pivot629_v4l2_ctrl_get_name265_o;
    wire [0:0] i_pivot629_v4l2_ctrl_get_name265_c;
    wire [33:0] i_pivot631_v4l2_ctrl_get_name133_a;
    wire [33:0] i_pivot631_v4l2_ctrl_get_name133_b;
    logic [33:0] i_pivot631_v4l2_ctrl_get_name133_o;
    wire [0:0] i_pivot631_v4l2_ctrl_get_name133_c;
    wire [33:0] i_pivot633_v4l2_ctrl_get_name343_a;
    wire [33:0] i_pivot633_v4l2_ctrl_get_name343_b;
    logic [33:0] i_pivot633_v4l2_ctrl_get_name343_o;
    wire [0:0] i_pivot633_v4l2_ctrl_get_name343_c;
    wire [33:0] i_pivot635_v4l2_ctrl_get_name267_a;
    wire [33:0] i_pivot635_v4l2_ctrl_get_name267_b;
    logic [33:0] i_pivot635_v4l2_ctrl_get_name267_o;
    wire [0:0] i_pivot635_v4l2_ctrl_get_name267_c;
    wire [33:0] i_pivot639_v4l2_ctrl_get_name345_a;
    wire [33:0] i_pivot639_v4l2_ctrl_get_name345_b;
    logic [33:0] i_pivot639_v4l2_ctrl_get_name345_o;
    wire [0:0] i_pivot639_v4l2_ctrl_get_name345_c;
    wire [33:0] i_pivot641_v4l2_ctrl_get_name269_a;
    wire [33:0] i_pivot641_v4l2_ctrl_get_name269_b;
    logic [33:0] i_pivot641_v4l2_ctrl_get_name269_o;
    wire [0:0] i_pivot641_v4l2_ctrl_get_name269_c;
    wire [33:0] i_pivot643_v4l2_ctrl_get_name135_a;
    wire [33:0] i_pivot643_v4l2_ctrl_get_name135_b;
    logic [33:0] i_pivot643_v4l2_ctrl_get_name135_o;
    wire [0:0] i_pivot643_v4l2_ctrl_get_name135_c;
    wire [33:0] i_pivot645_v4l2_ctrl_get_name67_a;
    wire [33:0] i_pivot645_v4l2_ctrl_get_name67_b;
    logic [33:0] i_pivot645_v4l2_ctrl_get_name67_o;
    wire [0:0] i_pivot645_v4l2_ctrl_get_name67_c;
    wire [33:0] i_pivot647_v4l2_ctrl_get_name33_a;
    wire [33:0] i_pivot647_v4l2_ctrl_get_name33_b;
    logic [33:0] i_pivot647_v4l2_ctrl_get_name33_o;
    wire [0:0] i_pivot647_v4l2_ctrl_get_name33_c;
    wire [33:0] i_pivot649_v4l2_ctrl_get_name17_a;
    wire [33:0] i_pivot649_v4l2_ctrl_get_name17_b;
    logic [33:0] i_pivot649_v4l2_ctrl_get_name17_o;
    wire [0:0] i_pivot649_v4l2_ctrl_get_name17_c;
    wire [33:0] i_pivot651_v4l2_ctrl_get_name9_a;
    wire [33:0] i_pivot651_v4l2_ctrl_get_name9_b;
    logic [33:0] i_pivot651_v4l2_ctrl_get_name9_o;
    wire [0:0] i_pivot651_v4l2_ctrl_get_name9_c;
    wire [33:0] i_pivot653_v4l2_ctrl_get_name5_a;
    wire [33:0] i_pivot653_v4l2_ctrl_get_name5_b;
    logic [33:0] i_pivot653_v4l2_ctrl_get_name5_o;
    wire [0:0] i_pivot653_v4l2_ctrl_get_name5_c;
    wire [33:0] i_pivot655_v4l2_ctrl_get_name3_a;
    wire [33:0] i_pivot655_v4l2_ctrl_get_name3_b;
    logic [33:0] i_pivot655_v4l2_ctrl_get_name3_o;
    wire [0:0] i_pivot655_v4l2_ctrl_get_name3_c;
    wire [33:0] i_pivot7_v4l2_ctrl_get_name69_a;
    wire [33:0] i_pivot7_v4l2_ctrl_get_name69_b;
    logic [33:0] i_pivot7_v4l2_ctrl_get_name69_o;
    wire [0:0] i_pivot7_v4l2_ctrl_get_name69_c;
    wire [33:0] i_pivot9_v4l2_ctrl_get_name141_a;
    wire [33:0] i_pivot9_v4l2_ctrl_get_name141_b;
    logic [33:0] i_pivot9_v4l2_ctrl_get_name141_o;
    wire [0:0] i_pivot9_v4l2_ctrl_get_name141_c;
    wire [33:0] i_pivot_v4l2_ctrl_get_name137_a;
    wire [33:0] i_pivot_v4l2_ctrl_get_name137_b;
    logic [33:0] i_pivot_v4l2_ctrl_get_name137_o;
    wire [0:0] i_pivot_v4l2_ctrl_get_name137_c;
    wire [28:0] i_sel_bits3570_v4l2_ctrl_get_name593_vt_const_31_q;
    wire [31:0] i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q;
    wire [2:0] i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b;
    wire [31:0] i_sel_bits_v4l2_ctrl_get_name541_q;
    wire [31:0] i_sel_bits_v4l2_ctrl_get_name541_vt_join_q;
    wire [2:0] i_sel_bits_v4l2_ctrl_get_name541_vt_select_2_b;
    wire [5:0] i_sel_shr3584_v4l2_ctrl_get_name598_vt_const_31_q;
    wire [31:0] i_sel_shr3584_v4l2_ctrl_get_name598_vt_join_q;
    wire [25:0] i_sel_shr3584_v4l2_ctrl_get_name598_vt_select_25_b;
    wire [2:0] i_sel_shr_v4l2_ctrl_get_name545_vt_const_31_q;
    wire [31:0] i_sel_shr_v4l2_ctrl_get_name545_vt_join_q;
    wire [28:0] i_sel_shr_v4l2_ctrl_get_name545_vt_select_28_b;
    wire [0:0] i_switchleaf637_not_v4l2_ctrl_get_name349_q;
    wire [0:0] i_switchleaf637_v4l2_ctrl_get_name347_q;
    wire [0:0] i_switchleaf_v4l2_ctrl_get_name271_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name354_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name377_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name394_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name401_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name416_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name491_qi;
    reg [0:0] i_unnamed_v4l2_ctrl_get_name491_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name522_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name527_qi;
    reg [0:0] i_unnamed_v4l2_ctrl_get_name527_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name530_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name621_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name642_qi;
    reg [0:0] i_unnamed_v4l2_ctrl_get_name642_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name654_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name657_qi;
    reg [0:0] i_unnamed_v4l2_ctrl_get_name657_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name733_qi;
    reg [0:0] i_unnamed_v4l2_ctrl_get_name733_q;
    wire [0:0] i_unnamed_v4l2_ctrl_get_name736_qi;
    reg [0:0] i_unnamed_v4l2_ctrl_get_name736_q;
    wire [31:0] c_i32_128922_recast_x_q;
    wire [31:0] c_i32_129855_recast_x_q;
    wire [31:0] c_i32_130821_recast_x_q;
    wire [31:0] c_i32_131856_recast_x_q;
    wire [31:0] c_i32_132923_recast_x_q;
    wire [31:0] c_i32_133804_recast_x_q;
    wire [31:0] c_i32_134857_recast_x_q;
    wire [31:0] c_i32_135822_recast_x_q;
    wire [31:0] c_i32_1401250_recast_x_q;
    wire [31:0] c_i32_1481326_recast_x_q;
    wire [31:0] c_i32_149989_recast_x_q;
    wire [31:0] c_i32_1501241_recast_x_q;
    wire [31:0] c_i32_151964_recast_x_q;
    wire [31:0] c_i32_152997_recast_x_q;
    wire [31:0] c_i32_164976_recast_x_q;
    wire [31:0] c_i32_1861230_recast_x_q;
    wire [31:0] c_i32_187985_recast_x_q;
    wire [31:0] c_i32_1881324_recast_x_q;
    wire [31:0] c_i32_1921248_recast_x_q;
    wire [31:0] c_i32_2141035_recast_x_q;
    wire [31:0] c_i32_2841064_recast_x_q;
    wire [31:0] c_i32_2861069_recast_x_q;
    wire [31:0] c_i32_2871067_recast_x_q;
    wire [31:0] c_i32_292788_recast_x_q;
    wire [31:0] c_i32_293858_recast_x_q;
    wire [31:0] c_i32_294823_recast_x_q;
    wire [31:0] c_i32_295859_recast_x_q;
    wire [31:0] c_i32_296924_recast_x_q;
    wire [31:0] c_i32_297805_recast_x_q;
    wire [31:0] c_i32_298860_recast_x_q;
    wire [31:0] c_i32_299824_recast_x_q;
    wire [31:0] c_i32_300861_recast_x_q;
    wire [31:0] c_i32_301925_recast_x_q;
    wire [31:0] c_i32_302796_recast_x_q;
    wire [31:0] c_i32_303862_recast_x_q;
    wire [31:0] c_i32_304825_recast_x_q;
    wire [31:0] c_i32_305863_recast_x_q;
    wire [31:0] c_i32_306926_recast_x_q;
    wire [31:0] c_i32_307806_recast_x_q;
    wire [31:0] c_i32_308864_recast_x_q;
    wire [31:0] c_i32_309826_recast_x_q;
    wire [31:0] c_i32_310865_recast_x_q;
    wire [31:0] c_i32_311927_recast_x_q;
    wire [31:0] c_i32_312792_recast_x_q;
    wire [31:0] c_i32_313866_recast_x_q;
    wire [31:0] c_i32_314827_recast_x_q;
    wire [31:0] c_i32_315867_recast_x_q;
    wire [31:0] c_i32_316928_recast_x_q;
    wire [31:0] c_i32_317807_recast_x_q;
    wire [31:0] c_i32_318868_recast_x_q;
    wire [31:0] c_i32_319828_recast_x_q;
    wire [31:0] c_i32_320869_recast_x_q;
    wire [31:0] c_i32_321929_recast_x_q;
    wire [31:0] c_i32_322797_recast_x_q;
    wire [31:0] c_i32_323870_recast_x_q;
    wire [31:0] c_i32_324829_recast_x_q;
    wire [31:0] c_i32_325871_recast_x_q;
    wire [31:0] c_i32_326930_recast_x_q;
    wire [31:0] c_i32_327808_recast_x_q;
    wire [31:0] c_i32_328872_recast_x_q;
    wire [31:0] c_i32_329931_recast_x_q;
    wire [31:0] c_i32_330830_recast_x_q;
    wire [31:0] c_i32_331873_recast_x_q;
    wire [31:0] c_i32_332932_recast_x_q;
    wire [31:0] c_i32_333790_recast_x_q;
    wire [31:0] c_i32_334874_recast_x_q;
    wire [31:0] c_i32_335831_recast_x_q;
    wire [31:0] c_i32_336875_recast_x_q;
    wire [31:0] c_i32_337933_recast_x_q;
    wire [31:0] c_i32_338809_recast_x_q;
    wire [31:0] c_i32_339876_recast_x_q;
    wire [31:0] c_i32_340832_recast_x_q;
    wire [31:0] c_i32_341877_recast_x_q;
    wire [31:0] c_i32_342934_recast_x_q;
    wire [31:0] c_i32_343798_recast_x_q;
    wire [31:0] c_i32_344878_recast_x_q;
    wire [31:0] c_i32_345833_recast_x_q;
    wire [31:0] c_i32_346879_recast_x_q;
    wire [31:0] c_i32_347935_recast_x_q;
    wire [31:0] c_i32_348810_recast_x_q;
    wire [31:0] c_i32_349880_recast_x_q;
    wire [31:0] c_i32_350834_recast_x_q;
    wire [31:0] c_i32_351881_recast_x_q;
    wire [31:0] c_i32_352936_recast_x_q;
    wire [31:0] c_i32_353793_recast_x_q;
    wire [31:0] c_i32_354882_recast_x_q;
    wire [31:0] c_i32_355835_recast_x_q;
    wire [31:0] c_i32_356883_recast_x_q;
    wire [31:0] c_i32_357937_recast_x_q;
    wire [31:0] c_i32_358811_recast_x_q;
    wire [31:0] c_i32_359884_recast_x_q;
    wire [31:0] c_i32_360836_recast_x_q;
    wire [31:0] c_i32_361885_recast_x_q;
    wire [31:0] c_i32_362938_recast_x_q;
    wire [31:0] c_i32_363799_recast_x_q;
    wire [31:0] c_i32_364886_recast_x_q;
    wire [31:0] c_i32_365837_recast_x_q;
    wire [31:0] c_i32_366887_recast_x_q;
    wire [31:0] c_i32_367939_recast_x_q;
    wire [31:0] c_i32_368812_recast_x_q;
    wire [31:0] c_i32_369888_recast_x_q;
    wire [31:0] c_i32_370940_recast_x_q;
    wire [31:0] c_i32_371838_recast_x_q;
    wire [31:0] c_i32_372889_recast_x_q;
    wire [31:0] c_i32_373941_recast_x_q;
    wire [31:0] c_i32_374789_recast_x_q;
    wire [31:0] c_i32_375890_recast_x_q;
    wire [31:0] c_i32_376839_recast_x_q;
    wire [31:0] c_i32_377891_recast_x_q;
    wire [31:0] c_i32_378942_recast_x_q;
    wire [31:0] c_i32_379813_recast_x_q;
    wire [31:0] c_i32_380892_recast_x_q;
    wire [31:0] c_i32_381840_recast_x_q;
    wire [31:0] c_i32_382893_recast_x_q;
    wire [31:0] c_i32_383943_recast_x_q;
    wire [31:0] c_i32_384800_recast_x_q;
    wire [31:0] c_i32_385894_recast_x_q;
    wire [31:0] c_i32_386841_recast_x_q;
    wire [31:0] c_i32_387895_recast_x_q;
    wire [31:0] c_i32_388944_recast_x_q;
    wire [31:0] c_i32_389814_recast_x_q;
    wire [31:0] c_i32_390896_recast_x_q;
    wire [31:0] c_i32_391842_recast_x_q;
    wire [31:0] c_i32_392897_recast_x_q;
    wire [31:0] c_i32_393945_recast_x_q;
    wire [31:0] c_i32_394794_recast_x_q;
    wire [31:0] c_i32_395898_recast_x_q;
    wire [31:0] c_i32_396843_recast_x_q;
    wire [31:0] c_i32_397899_recast_x_q;
    wire [31:0] c_i32_398946_recast_x_q;
    wire [31:0] c_i32_399815_recast_x_q;
    wire [31:0] c_i32_400900_recast_x_q;
    wire [31:0] c_i32_401844_recast_x_q;
    wire [31:0] c_i32_402901_recast_x_q;
    wire [31:0] c_i32_403947_recast_x_q;
    wire [31:0] c_i32_404801_recast_x_q;
    wire [31:0] c_i32_405902_recast_x_q;
    wire [31:0] c_i32_406845_recast_x_q;
    wire [31:0] c_i32_407903_recast_x_q;
    wire [31:0] c_i32_408948_recast_x_q;
    wire [31:0] c_i32_409816_recast_x_q;
    wire [31:0] c_i32_410904_recast_x_q;
    wire [31:0] c_i32_411949_recast_x_q;
    wire [31:0] c_i32_412846_recast_x_q;
    wire [31:0] c_i32_413905_recast_x_q;
    wire [31:0] c_i32_414950_recast_x_q;
    wire [31:0] c_i32_415791_recast_x_q;
    wire [31:0] c_i32_416906_recast_x_q;
    wire [31:0] c_i32_417847_recast_x_q;
    wire [31:0] c_i32_418907_recast_x_q;
    wire [31:0] c_i32_419951_recast_x_q;
    wire [31:0] c_i32_420817_recast_x_q;
    wire [31:0] c_i32_421908_recast_x_q;
    wire [31:0] c_i32_422848_recast_x_q;
    wire [31:0] c_i32_423909_recast_x_q;
    wire [31:0] c_i32_424952_recast_x_q;
    wire [31:0] c_i32_425802_recast_x_q;
    wire [31:0] c_i32_426910_recast_x_q;
    wire [31:0] c_i32_427849_recast_x_q;
    wire [31:0] c_i32_428911_recast_x_q;
    wire [31:0] c_i32_429953_recast_x_q;
    wire [31:0] c_i32_430818_recast_x_q;
    wire [31:0] c_i32_431912_recast_x_q;
    wire [31:0] c_i32_432850_recast_x_q;
    wire [31:0] c_i32_433913_recast_x_q;
    wire [31:0] c_i32_434954_recast_x_q;
    wire [31:0] c_i32_435795_recast_x_q;
    wire [31:0] c_i32_436914_recast_x_q;
    wire [31:0] c_i32_437851_recast_x_q;
    wire [31:0] c_i32_438915_recast_x_q;
    wire [31:0] c_i32_439955_recast_x_q;
    wire [31:0] c_i32_440819_recast_x_q;
    wire [31:0] c_i32_441916_recast_x_q;
    wire [31:0] c_i32_442852_recast_x_q;
    wire [31:0] c_i32_443917_recast_x_q;
    wire [31:0] c_i32_444956_recast_x_q;
    wire [31:0] c_i32_445803_recast_x_q;
    wire [31:0] c_i32_446918_recast_x_q;
    wire [31:0] c_i32_447853_recast_x_q;
    wire [31:0] c_i32_448919_recast_x_q;
    wire [31:0] c_i32_449957_recast_x_q;
    wire [31:0] c_i32_450820_recast_x_q;
    wire [31:0] c_i32_451920_recast_x_q;
    wire [31:0] c_i32_452958_recast_x_q;
    wire [31:0] c_i32_453854_recast_x_q;
    wire [31:0] c_i32_454921_recast_x_q;
    wire [31:0] c_i32_455959_recast_x_q;
    wire [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_qi;
    reg [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_qi;
    reg [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_7_comparator_x_qi;
    reg [0:0] dupName_7_comparator_x_q;
    wire [0:0] dupName_8_comparator_x_qi;
    reg [0:0] dupName_8_comparator_x_q;
    wire [0:0] dupName_9_comparator_x_qi;
    reg [0:0] dupName_9_comparator_x_q;
    wire [0:0] dupName_10_comparator_x_qi;
    reg [0:0] dupName_10_comparator_x_q;
    wire [0:0] dupName_11_comparator_x_qi;
    reg [0:0] dupName_11_comparator_x_q;
    wire [0:0] dupName_17_comparator_x_q;
    wire [0:0] dupName_18_comparator_x_q;
    wire [0:0] dupName_19_comparator_x_q;
    wire [0:0] dupName_21_comparator_x_qi;
    reg [0:0] dupName_21_comparator_x_q;
    wire [0:0] dupName_35_comparator_x_q;
    wire [0:0] dupName_36_comparator_x_q;
    wire [0:0] dupName_37_comparator_x_q;
    wire [0:0] dupName_38_comparator_x_q;
    wire [0:0] dupName_97_comparator_x_q;
    wire [0:0] dupName_98_comparator_x_q;
    wire [0:0] dupName_99_comparator_x_q;
    wire [0:0] dupName_100_comparator_x_q;
    wire [0:0] dupName_101_comparator_x_q;
    wire [0:0] dupName_102_comparator_x_q;
    wire [0:0] dupName_106_comparator_x_q;
    wire [0:0] dupName_107_comparator_x_q;
    wire [0:0] dupName_108_comparator_x_q;
    wire [0:0] dupName_109_comparator_x_q;
    wire [0:0] dupName_110_comparator_x_q;
    wire [0:0] dupName_111_comparator_x_q;
    wire [0:0] dupName_112_comparator_x_q;
    wire [0:0] dupName_113_comparator_x_q;
    wire [0:0] dupName_129_comparator_x_qi;
    reg [0:0] dupName_129_comparator_x_q;
    wire [0:0] dupName_130_comparator_x_qi;
    reg [0:0] dupName_130_comparator_x_q;
    wire [0:0] dupName_131_comparator_x_qi;
    reg [0:0] dupName_131_comparator_x_q;
    wire [0:0] dupName_132_comparator_x_qi;
    reg [0:0] dupName_132_comparator_x_q;
    wire [0:0] dupName_133_comparator_x_qi;
    reg [0:0] dupName_133_comparator_x_q;
    wire [0:0] dupName_134_comparator_x_qi;
    reg [0:0] dupName_134_comparator_x_q;
    wire [0:0] dupName_135_comparator_x_qi;
    reg [0:0] dupName_135_comparator_x_q;
    wire [0:0] dupName_136_comparator_x_qi;
    reg [0:0] dupName_136_comparator_x_q;
    wire [0:0] dupName_137_comparator_x_qi;
    reg [0:0] dupName_137_comparator_x_q;
    wire [0:0] dupName_138_comparator_x_qi;
    reg [0:0] dupName_138_comparator_x_q;
    wire [0:0] dupName_139_comparator_x_qi;
    reg [0:0] dupName_139_comparator_x_q;
    wire [0:0] dupName_140_comparator_x_qi;
    reg [0:0] dupName_140_comparator_x_q;
    wire [0:0] dupName_160_comparator_x_qi;
    reg [0:0] dupName_160_comparator_x_q;
    wire [0:0] dupName_164_comparator_x_qi;
    reg [0:0] dupName_164_comparator_x_q;
    wire [2:0] i_sel_bits3570_v4l2_ctrl_get_name593_BitSelect_for_a_b;
    wire [31:0] i_sel_bits3570_v4l2_ctrl_get_name593_join_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid1519_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1Pad2_uid1520_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
    wire [31:0] rightShiftStage0Idx1_uid1521_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid1524_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_b;
    wire [3:0] rightShiftStage1Idx1Pad4_uid1525_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid1526_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1532_i_sel_shr_v4l2_ctrl_get_name0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1534_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1537_i_sel_shr_v4l2_ctrl_get_name0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1539_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
    reg [31:0] redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [31:0] redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q;
    reg [31:0] redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q;
    reg [31:0] redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q;
    reg [31:0] redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q;
    reg [31:0] redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q;
    reg [31:0] redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q;
    reg [31:0] redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q;
    reg [31:0] redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q;
    reg [31:0] redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q;
    reg [31:0] redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q;
    reg [31:0] redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q;
    reg [31:0] redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q;
    reg [31:0] redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q;
    reg [31:0] redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q;
    reg [31:0] redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q;
    reg [31:0] redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17_q;
    reg [31:0] redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q;
    reg [31:0] redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q;
    reg [31:0] redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q;
    reg [31:0] redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q;
    reg [31:0] redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q;
    reg [31:0] redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q;
    reg [31:0] redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q;
    reg [31:0] redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q;
    reg [0:0] redist26_dupName_164_comparator_x_q_17_q;
    reg [0:0] redist27_dupName_160_comparator_x_q_17_q;
    reg [0:0] redist28_dupName_140_comparator_x_q_4_q;
    reg [0:0] redist28_dupName_140_comparator_x_q_4_delay_0;
    reg [0:0] redist28_dupName_140_comparator_x_q_4_delay_1;
    reg [0:0] redist29_dupName_139_comparator_x_q_4_q;
    reg [0:0] redist29_dupName_139_comparator_x_q_4_delay_0;
    reg [0:0] redist29_dupName_139_comparator_x_q_4_delay_1;
    reg [0:0] redist30_dupName_138_comparator_x_q_4_q;
    reg [0:0] redist30_dupName_138_comparator_x_q_4_delay_0;
    reg [0:0] redist30_dupName_138_comparator_x_q_4_delay_1;
    reg [0:0] redist31_dupName_137_comparator_x_q_4_q;
    reg [0:0] redist31_dupName_137_comparator_x_q_4_delay_0;
    reg [0:0] redist31_dupName_137_comparator_x_q_4_delay_1;
    reg [0:0] redist32_dupName_130_comparator_x_q_9_q;
    reg [0:0] redist33_dupName_130_comparator_x_q_17_q;
    reg [0:0] redist34_dupName_129_comparator_x_q_9_q;
    reg [0:0] redist35_dupName_21_comparator_x_q_3_q;
    reg [0:0] redist35_dupName_21_comparator_x_q_3_delay_0;
    reg [0:0] redist36_dupName_21_comparator_x_q_5_q;
    reg [0:0] redist36_dupName_21_comparator_x_q_5_delay_0;
    reg [0:0] redist37_dupName_21_comparator_x_q_10_q;
    reg [0:0] redist37_dupName_21_comparator_x_q_10_delay_0;
    reg [0:0] redist37_dupName_21_comparator_x_q_10_delay_1;
    reg [0:0] redist37_dupName_21_comparator_x_q_10_delay_2;
    reg [0:0] redist37_dupName_21_comparator_x_q_10_delay_3;
    reg [0:0] redist38_dupName_21_comparator_x_q_18_q;
    reg [0:0] redist39_dupName_19_comparator_x_q_2_q;
    reg [0:0] redist39_dupName_19_comparator_x_q_2_delay_0;
    reg [0:0] redist40_dupName_19_comparator_x_q_9_q;
    reg [0:0] redist41_dupName_19_comparator_x_q_17_q;
    reg [0:0] redist42_dupName_18_comparator_x_q_2_q;
    reg [0:0] redist42_dupName_18_comparator_x_q_2_delay_0;
    reg [0:0] redist43_dupName_18_comparator_x_q_17_q;
    reg [0:0] redist44_dupName_17_comparator_x_q_2_q;
    reg [0:0] redist44_dupName_17_comparator_x_q_2_delay_0;
    reg [0:0] redist45_dupName_11_comparator_x_q_3_q;
    reg [0:0] redist45_dupName_11_comparator_x_q_3_delay_0;
    reg [0:0] redist46_dupName_11_comparator_x_q_5_q;
    reg [0:0] redist46_dupName_11_comparator_x_q_5_delay_0;
    reg [0:0] redist47_dupName_11_comparator_x_q_10_q;
    reg [0:0] redist47_dupName_11_comparator_x_q_10_delay_0;
    reg [0:0] redist47_dupName_11_comparator_x_q_10_delay_1;
    reg [0:0] redist47_dupName_11_comparator_x_q_10_delay_2;
    reg [0:0] redist47_dupName_11_comparator_x_q_10_delay_3;
    reg [0:0] redist48_dupName_11_comparator_x_q_18_q;
    reg [0:0] redist49_dupName_10_comparator_x_q_3_q;
    reg [0:0] redist49_dupName_10_comparator_x_q_3_delay_0;
    reg [0:0] redist50_dupName_10_comparator_x_q_5_q;
    reg [0:0] redist50_dupName_10_comparator_x_q_5_delay_0;
    reg [0:0] redist51_dupName_10_comparator_x_q_10_q;
    reg [0:0] redist51_dupName_10_comparator_x_q_10_delay_0;
    reg [0:0] redist51_dupName_10_comparator_x_q_10_delay_1;
    reg [0:0] redist51_dupName_10_comparator_x_q_10_delay_2;
    reg [0:0] redist51_dupName_10_comparator_x_q_10_delay_3;
    reg [0:0] redist52_dupName_10_comparator_x_q_18_q;
    reg [0:0] redist53_dupName_9_comparator_x_q_3_q;
    reg [0:0] redist53_dupName_9_comparator_x_q_3_delay_0;
    reg [0:0] redist54_dupName_9_comparator_x_q_5_q;
    reg [0:0] redist54_dupName_9_comparator_x_q_5_delay_0;
    reg [0:0] redist55_dupName_9_comparator_x_q_10_q;
    reg [0:0] redist55_dupName_9_comparator_x_q_10_delay_0;
    reg [0:0] redist55_dupName_9_comparator_x_q_10_delay_1;
    reg [0:0] redist55_dupName_9_comparator_x_q_10_delay_2;
    reg [0:0] redist55_dupName_9_comparator_x_q_10_delay_3;
    reg [0:0] redist56_dupName_9_comparator_x_q_18_q;
    reg [0:0] redist57_dupName_8_comparator_x_q_3_q;
    reg [0:0] redist57_dupName_8_comparator_x_q_3_delay_0;
    reg [0:0] redist58_dupName_8_comparator_x_q_5_q;
    reg [0:0] redist58_dupName_8_comparator_x_q_5_delay_0;
    reg [0:0] redist59_dupName_8_comparator_x_q_10_q;
    reg [0:0] redist59_dupName_8_comparator_x_q_10_delay_0;
    reg [0:0] redist59_dupName_8_comparator_x_q_10_delay_1;
    reg [0:0] redist59_dupName_8_comparator_x_q_10_delay_2;
    reg [0:0] redist59_dupName_8_comparator_x_q_10_delay_3;
    reg [0:0] redist60_dupName_8_comparator_x_q_18_q;
    reg [0:0] redist61_dupName_7_comparator_x_q_3_q;
    reg [0:0] redist61_dupName_7_comparator_x_q_3_delay_0;
    reg [0:0] redist62_dupName_7_comparator_x_q_5_q;
    reg [0:0] redist62_dupName_7_comparator_x_q_5_delay_0;
    reg [0:0] redist63_dupName_7_comparator_x_q_10_q;
    reg [0:0] redist63_dupName_7_comparator_x_q_10_delay_0;
    reg [0:0] redist63_dupName_7_comparator_x_q_10_delay_1;
    reg [0:0] redist63_dupName_7_comparator_x_q_10_delay_2;
    reg [0:0] redist63_dupName_7_comparator_x_q_10_delay_3;
    reg [0:0] redist64_dupName_7_comparator_x_q_18_q;
    reg [0:0] redist65_dupName_6_comparator_x_q_3_q;
    reg [0:0] redist65_dupName_6_comparator_x_q_3_delay_0;
    reg [0:0] redist66_dupName_6_comparator_x_q_5_q;
    reg [0:0] redist66_dupName_6_comparator_x_q_5_delay_0;
    reg [0:0] redist67_dupName_6_comparator_x_q_10_q;
    reg [0:0] redist67_dupName_6_comparator_x_q_10_delay_0;
    reg [0:0] redist67_dupName_6_comparator_x_q_10_delay_1;
    reg [0:0] redist67_dupName_6_comparator_x_q_10_delay_2;
    reg [0:0] redist67_dupName_6_comparator_x_q_10_delay_3;
    reg [0:0] redist68_dupName_6_comparator_x_q_18_q;
    reg [0:0] redist69_dupName_5_comparator_x_q_3_q;
    reg [0:0] redist69_dupName_5_comparator_x_q_3_delay_0;
    reg [0:0] redist70_dupName_5_comparator_x_q_5_q;
    reg [0:0] redist70_dupName_5_comparator_x_q_5_delay_0;
    reg [0:0] redist71_dupName_5_comparator_x_q_10_q;
    reg [0:0] redist71_dupName_5_comparator_x_q_10_delay_0;
    reg [0:0] redist71_dupName_5_comparator_x_q_10_delay_1;
    reg [0:0] redist71_dupName_5_comparator_x_q_10_delay_2;
    reg [0:0] redist71_dupName_5_comparator_x_q_10_delay_3;
    reg [0:0] redist72_dupName_5_comparator_x_q_18_q;
    reg [0:0] redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_q;
    reg [0:0] redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_0;
    reg [0:0] redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_1;
    reg [0:0] redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_2;
    reg [0:0] redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_q;
    reg [0:0] redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_0;
    reg [0:0] redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_1;
    reg [0:0] redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_2;
    reg [0:0] redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_q;
    reg [0:0] redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_delay_0;
    reg [2:0] redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_q;
    reg [2:0] redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_0;
    reg [2:0] redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_1;
    reg [2:0] redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_2;
    reg [0:0] redist77_i_pivot9_v4l2_ctrl_get_name141_c_22_q;
    reg [0:0] redist78_i_pivot655_v4l2_ctrl_get_name3_c_7_q;
    reg [0:0] redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_q;
    reg [0:0] redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_0;
    reg [0:0] redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_1;
    reg [0:0] redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_2;
    reg [0:0] redist80_i_pivot639_v4l2_ctrl_get_name345_c_15_q;
    reg [0:0] redist81_i_pivot635_v4l2_ctrl_get_name267_c_23_q;
    reg [0:0] redist82_i_pivot619_v4l2_ctrl_get_name261_c_22_q;
    reg [0:0] redist83_i_pivot615_v4l2_ctrl_get_name259_c_1_q;
    reg [0:0] redist84_i_pivot613_v4l2_ctrl_get_name129_c_18_q;
    reg [0:0] redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_q;
    reg [0:0] redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_delay_0;
    reg [0:0] redist86_i_pivot607_v4l2_ctrl_get_name255_c_1_q;
    reg [0:0] redist87_i_pivot605_v4l2_ctrl_get_name31_c_2_q;
    reg [0:0] redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_q;
    reg [0:0] redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_delay_0;
    reg [0:0] redist89_i_pivot595_v4l2_ctrl_get_name251_c_20_q;
    reg [0:0] redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_q;
    reg [0:0] redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_0;
    reg [0:0] redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_1;
    reg [0:0] redist91_i_pivot589_v4l2_ctrl_get_name333_c_1_q;
    reg [0:0] redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_q;
    reg [0:0] redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_0;
    reg [0:0] redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_1;
    reg [0:0] redist93_i_pivot575_v4l2_ctrl_get_name121_c_25_q;
    reg [0:0] redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_q;
    reg [0:0] redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_0;
    reg [0:0] redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_1;
    reg [0:0] redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_q;
    reg [0:0] redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_0;
    reg [0:0] redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_1;
    reg [0:0] redist96_i_pivot563_v4l2_ctrl_get_name59_c_23_q;
    reg [0:0] redist97_i_pivot555_v4l2_ctrl_get_name235_c_23_q;
    reg [0:0] redist98_i_pivot543_v4l2_ctrl_get_name57_c_22_q;
    reg [0:0] redist99_i_pivot533_v4l2_ctrl_get_name113_c_1_q;
    reg [0:0] redist100_i_pivot529_v4l2_ctrl_get_name319_c_16_q;
    reg [0:0] redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_q;
    reg [0:0] redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_delay_0;
    reg [0:0] redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_q;
    reg [0:0] redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_0;
    reg [0:0] redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_1;
    reg [0:0] redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_2;
    reg [0:0] redist103_i_pivot497_v4l2_ctrl_get_name211_c_2_q;
    reg [0:0] redist104_i_pivot495_v4l2_ctrl_get_name105_c_17_q;
    reg [0:0] redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_q;
    reg [0:0] redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_0;
    reg [0:0] redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_1;
    reg [0:0] redist106_i_pivot483_v4l2_ctrl_get_name25_c_1_q;
    reg [0:0] redist107_i_pivot481_v4l2_ctrl_get_name51_c_20_q;
    reg [0:0] redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_q;
    reg [0:0] redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_0;
    reg [0:0] redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_1;
    reg [0:0] redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_q;
    reg [0:0] redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_delay_0;
    reg [0:0] redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_q;
    reg [0:0] redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_delay_0;
    reg [0:0] redist111_i_pivot469_v4l2_ctrl_get_name101_c_1_q;
    reg [0:0] redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_q;
    reg [0:0] redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_0;
    reg [0:0] redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_1;
    reg [0:0] redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_q;
    reg [0:0] redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_0;
    reg [0:0] redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_1;
    reg [0:0] redist114_i_pivot451_v4l2_ctrl_get_name97_c_20_q;
    reg [0:0] redist115_i_pivot427_v4l2_ctrl_get_name297_c_2_q;
    reg [0:0] redist116_i_pivot415_v4l2_ctrl_get_name179_c_2_q;
    reg [0:0] redist117_i_pivot403_v4l2_ctrl_get_name21_c_6_q;
    reg [0:0] redist118_i_pivot3_v4l2_ctrl_get_name273_c_17_q;
    reg [0:0] redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_q;
    reg [0:0] redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_delay_0;
    reg [0:0] redist120_i_pivot397_v4l2_ctrl_get_name173_c_2_q;
    reg [0:0] redist121_i_pivot387_v4l2_ctrl_get_name169_c_1_q;
    reg [0:0] redist122_i_pivot377_v4l2_ctrl_get_name165_c_8_q;
    reg [0:0] redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_q;
    reg [0:0] redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_delay_0;
    reg [0:0] redist124_i_pivot365_v4l2_ctrl_get_name159_c_1_q;
    reg [0:0] redist125_i_pivot351_v4l2_ctrl_get_name77_c_1_q;
    reg [0:0] redist126_i_pivot347_v4l2_ctrl_get_name279_c_1_q;
    reg [0:0] redist127_i_pivot335_v4l2_ctrl_get_name147_c_1_q;
    reg [0:0] redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_q;
    reg [0:0] redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_0;
    reg [0:0] redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_1;
    reg [0:0] redist129_i_pivot327_v4l2_ctrl_get_name143_c_1_q;
    reg [0:0] redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_q;
    reg [0:0] redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_delay_0;
    reg [0:0] redist131_i_acl_935_v4l2_ctrl_get_name421_q_2_q;
    reg [0:0] redist132_i_acl_900_v4l2_ctrl_get_name412_q_2_q;
    reg [0:0] redist133_i_acl_3432_v4l2_ctrl_get_name784_q_12_q;
    reg [0:0] redist134_i_acl_3409_v4l2_ctrl_get_name780_q_8_q;
    reg [0:0] redist135_i_acl_3401_v4l2_ctrl_get_name778_q_8_q;
    reg [0:0] redist136_i_acl_3396_v4l2_ctrl_get_name776_q_8_q;
    reg [0:0] redist137_i_acl_3382_v4l2_ctrl_get_name774_q_7_q;
    reg [0:0] redist138_i_acl_3378_v4l2_ctrl_get_name772_q_7_q;
    reg [0:0] redist139_i_acl_3208_v4l2_ctrl_get_name763_q_7_q;
    reg [0:0] redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_q;
    reg [0:0] redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_0;
    reg [0:0] redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_1;
    reg [0:0] redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_2;
    reg [0:0] redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_3;
    reg [0:0] redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_q;
    reg [0:0] redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_0;
    reg [0:0] redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_1;
    reg [0:0] redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_2;
    reg [0:0] redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_3;
    reg [0:0] redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_q;
    reg [0:0] redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_0;
    reg [0:0] redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_1;
    reg [0:0] redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_2;
    reg [0:0] redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_3;
    reg [0:0] redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_q;
    reg [0:0] redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_0;
    reg [0:0] redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_1;
    reg [0:0] redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_2;
    reg [0:0] redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_3;
    reg [0:0] redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_q;
    reg [0:0] redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_0;
    reg [0:0] redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_1;
    reg [0:0] redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_2;
    reg [0:0] redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_3;
    reg [0:0] redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_q;
    reg [0:0] redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_0;
    reg [0:0] redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_1;
    reg [0:0] redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_2;
    reg [0:0] redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_3;
    reg [0:0] redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_q;
    reg [0:0] redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_0;
    reg [0:0] redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_1;
    reg [0:0] redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_2;
    reg [0:0] redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_3;
    reg [0:0] redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_q;
    reg [0:0] redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_0;
    reg [0:0] redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_1;
    reg [0:0] redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_2;
    reg [0:0] redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_q;
    reg [0:0] redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_0;
    reg [0:0] redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_1;
    reg [0:0] redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_2;
    reg [0:0] redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_q;
    reg [0:0] redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_0;
    reg [0:0] redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_1;
    reg [0:0] redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_2;
    reg [0:0] redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_q;
    reg [0:0] redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_0;
    reg [0:0] redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_1;
    reg [0:0] redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_2;
    reg [0:0] redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_q;
    reg [0:0] redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_0;
    reg [0:0] redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_1;
    reg [0:0] redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_2;
    reg [0:0] redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_q;
    reg [0:0] redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_0;
    reg [0:0] redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_1;
    reg [0:0] redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_q;
    reg [0:0] redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_0;
    reg [0:0] redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_1;
    reg [0:0] redist154_i_acl_3031_v4l2_ctrl_get_name726_q_23_q;
    reg [0:0] redist155_i_acl_3028_v4l2_ctrl_get_name724_q_26_q;
    reg [0:0] redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_q;
    reg [0:0] redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_0;
    reg [0:0] redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_1;
    reg [0:0] redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_q;
    reg [0:0] redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_delay_0;
    reg [0:0] redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_q;
    reg [0:0] redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_delay_0;
    reg [0:0] redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_q;
    reg [0:0] redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_delay_0;
    reg [0:0] redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_q;
    reg [0:0] redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_delay_0;
    reg [0:0] redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_q;
    reg [0:0] redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_delay_0;
    reg [0:0] redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_q;
    reg [0:0] redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_delay_0;
    reg [0:0] redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_q;
    reg [0:0] redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_delay_0;
    reg [0:0] redist164_i_acl_2949_v4l2_ctrl_get_name706_q_2_q;
    reg [0:0] redist165_i_acl_2937_v4l2_ctrl_get_name704_q_2_q;
    reg [0:0] redist166_i_acl_2929_v4l2_ctrl_get_name702_q_2_q;
    reg [0:0] redist167_i_acl_2921_v4l2_ctrl_get_name700_q_2_q;
    reg [0:0] redist168_i_acl_2914_v4l2_ctrl_get_name698_q_2_q;
    reg [0:0] redist169_i_acl_2904_v4l2_ctrl_get_name696_q_2_q;
    reg [0:0] redist170_i_acl_2898_v4l2_ctrl_get_name694_q_2_q;
    reg [0:0] redist171_i_acl_2320_v4l2_ctrl_get_name601_q_15_q;
    reg [0:0] redist172_i_acl_1820_v4l2_ctrl_get_name582_q_8_q;
    reg [0:0] redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_q;
    reg [0:0] redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_delay_0;
    reg [0:0] redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_q;
    reg [0:0] redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_delay_0;
    reg [0:0] redist175_i_acl_1318_v4l2_ctrl_get_name507_q_2_q;
    wire redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_reset0;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_ia;
    wire [4:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_aa;
    wire [4:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_ab;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_iq;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_q;
    wire [4:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_q;
    (* preserve *) reg [4:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_i;
    reg [4:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_wraddr_q;
    wire [5:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_last_q;
    wire [5:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp_b;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_cmpReg_q;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_notEnable_q;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_sticky_ena_q;
    wire [0:0] redist25_sync_together1366_aunroll_x_in_i_valid_33_enaAnd_q;


    // redist25_sync_together1366_aunroll_x_in_i_valid_33_notEnable(LOGICAL,1724)
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_nor(LOGICAL,1725)
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_nor_q = ~ (redist25_sync_together1366_aunroll_x_in_i_valid_33_notEnable_q | redist25_sync_together1366_aunroll_x_in_i_valid_33_sticky_ena_q);

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_last(CONSTANT,1721)
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_last_q = $unsigned(6'b011110);

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp(LOGICAL,1722)
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp_b = {1'b0, redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_q};
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp_q = $unsigned(redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_last_q == redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_cmpReg(REG,1723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_cmpReg_q <= $unsigned(redist25_sync_together1366_aunroll_x_in_i_valid_33_cmp_q);
        end
    end

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_sticky_ena(REG,1726)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together1366_aunroll_x_in_i_valid_33_nor_q == 1'b1)
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_sticky_ena_q <= $unsigned(redist25_sync_together1366_aunroll_x_in_i_valid_33_cmpReg_q);
        end
    end

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_enaAnd(LOGICAL,1727)
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_enaAnd_q = redist25_sync_together1366_aunroll_x_in_i_valid_33_sticky_ena_q & VCC_q;

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt(COUNTER,1719)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_i <= $unsigned(redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_q = redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_i[4:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_wraddr(REG,1720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist25_sync_together1366_aunroll_x_in_i_valid_33_wraddr_q <= $unsigned(redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_q);
        end
    end

    // redist25_sync_together1366_aunroll_x_in_i_valid_33_mem(DUALMEM,1718)
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_ia = $unsigned(in_i_valid);
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_aa = redist25_sync_together1366_aunroll_x_in_i_valid_33_wraddr_q;
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_ab = redist25_sync_together1366_aunroll_x_in_i_valid_33_rdcnt_q;
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_dmem (
        .clocken1(redist25_sync_together1366_aunroll_x_in_i_valid_33_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_aa),
        .data_a(redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_ab),
        .q_b(redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_q = redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_iq[0:0];

    // cpn_i8(CONSTANT,361)
    assign cpn_i8_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_47037283358117724161364(CONSTANT,359)
    assign c_i64_47037283358117724161364_q = $unsigned(64'b0100000101000111000000000000000000000000000000000000000000000000);

    // c_i64_47034468608350617601363(CONSTANT,358)
    assign c_i64_47034468608350617601363_q = $unsigned(64'b0100000101000110000000000000000000000000000000000000000000000000);

    // c_i64_47031653858583511041362(CONSTANT,357)
    assign c_i64_47031653858583511041362_q = $unsigned(64'b0100000101000101000000000000000000000000000000000000000000000000);

    // c_i64_47028839108816404481361(CONSTANT,356)
    assign c_i64_47028839108816404481361_q = $unsigned(64'b0100000101000100000000000000000000000000000000000000000000000000);

    // c_i64_47026024359049297921360(CONSTANT,355)
    assign c_i64_47026024359049297921360_q = $unsigned(64'b0100000101000011000000000000000000000000000000000000000000000000);

    // c_i64_46986617862309806081340(CONSTANT,341)
    assign c_i64_46986617862309806081340_q = $unsigned(64'b0100000100110101000000000000000000000000000000000000000000000000);

    // c_i64_46983803112542699521339(CONSTANT,340)
    assign c_i64_46983803112542699521339_q = $unsigned(64'b0100000100110100000000000000000000000000000000000000000000000000);

    // c_i64_46980988362775592961338(CONSTANT,339)
    assign c_i64_46980988362775592961338_q = $unsigned(64'b0100000100110011000000000000000000000000000000000000000000000000);

    // c_i64_46978173613008486401337(CONSTANT,338)
    assign c_i64_46978173613008486401337_q = $unsigned(64'b0100000100110010000000000000000000000000000000000000000000000000);

    // c_i64_46975358863241379841336(CONSTANT,337)
    assign c_i64_46975358863241379841336_q = $unsigned(64'b0100000100110001000000000000000000000000000000000000000000000000);

    // c_i64_46972544113474273281335(CONSTANT,336)
    assign c_i64_46972544113474273281335_q = $unsigned(64'b0100000100110000000000000000000000000000000000000000000000000000);

    // c_i64_46969729363707166721334(CONSTANT,335)
    assign c_i64_46969729363707166721334_q = $unsigned(64'b0100000100101111000000000000000000000000000000000000000000000000);

    // c_i64_46966914613940060161333(CONSTANT,334)
    assign c_i64_46966914613940060161333_q = $unsigned(64'b0100000100101110000000000000000000000000000000000000000000000000);

    // c_i64_46964099864172953601332(CONSTANT,333)
    assign c_i64_46964099864172953601332_q = $unsigned(64'b0100000100101101000000000000000000000000000000000000000000000000);

    // c_i64_46961285114405847041331(CONSTANT,332)
    assign c_i64_46961285114405847041331_q = $unsigned(64'b0100000100101100000000000000000000000000000000000000000000000000);

    // c_i64_46958470364638740481330(CONSTANT,331)
    assign c_i64_46958470364638740481330_q = $unsigned(64'b0100000100101011000000000000000000000000000000000000000000000000);

    // c_i64_46955655614871633921329(CONSTANT,330)
    assign c_i64_46955655614871633921329_q = $unsigned(64'b0100000100101010000000000000000000000000000000000000000000000000);

    // c_i64_46952840865104527361328(CONSTANT,329)
    assign c_i64_46952840865104527361328_q = $unsigned(64'b0100000100101001000000000000000000000000000000000000000000000000);

    // c_i64_46950026115337420801327(CONSTANT,328)
    assign c_i64_46950026115337420801327_q = $unsigned(64'b0100000100101000000000000000000000000000000000000000000000000000);

    // c_i64_46947211365570314241325(CONSTANT,327)
    assign c_i64_46947211365570314241325_q = $unsigned(64'b0100000100100111000000000000000000000000000000000000000000000000);

    // c_i64_46944396615803207681323(CONSTANT,326)
    assign c_i64_46944396615803207681323_q = $unsigned(64'b0100000100100110000000000000000000000000000000000000000000000000);

    // c_i64_46941581866036101121322(CONSTANT,325)
    assign c_i64_46941581866036101121322_q = $unsigned(64'b0100000100100101000000000000000000000000000000000000000000000000);

    // c_i64_46927508117200568321312(CONSTANT,320)
    assign c_i64_46927508117200568321312_q = $unsigned(64'b0100000100100000000000000000000000000000000000000000000000000000);

    // c_i64_46924693367433461761311(CONSTANT,319)
    assign c_i64_46924693367433461761311_q = $unsigned(64'b0100000100011111000000000000000000000000000000000000000000000000);

    // c_i64_46921878617666355201310(CONSTANT,318)
    assign c_i64_46921878617666355201310_q = $unsigned(64'b0100000100011110000000000000000000000000000000000000000000000000);

    // c_i64_46919063867899248641309(CONSTANT,317)
    assign c_i64_46919063867899248641309_q = $unsigned(64'b0100000100011101000000000000000000000000000000000000000000000000);

    // c_i64_46916249118132142081308(CONSTANT,316)
    assign c_i64_46916249118132142081308_q = $unsigned(64'b0100000100011100000000000000000000000000000000000000000000000000);

    // c_i64_46913434368365035521307(CONSTANT,315)
    assign c_i64_46913434368365035521307_q = $unsigned(64'b0100000100011011000000000000000000000000000000000000000000000000);

    // c_i64_46910619618597928961306(CONSTANT,314)
    assign c_i64_46910619618597928961306_q = $unsigned(64'b0100000100011010000000000000000000000000000000000000000000000000);

    // c_i64_46907804868830822401305(CONSTANT,313)
    assign c_i64_46907804868830822401305_q = $unsigned(64'b0100000100011001000000000000000000000000000000000000000000000000);

    // c_i64_46904990119063715841304(CONSTANT,312)
    assign c_i64_46904990119063715841304_q = $unsigned(64'b0100000100011000000000000000000000000000000000000000000000000000);

    // c_i64_46902175369296609281303(CONSTANT,311)
    assign c_i64_46902175369296609281303_q = $unsigned(64'b0100000100010111000000000000000000000000000000000000000000000000);

    // c_i64_46899360619529502721302(CONSTANT,310)
    assign c_i64_46899360619529502721302_q = $unsigned(64'b0100000100010110000000000000000000000000000000000000000000000000);

    // c_i64_46896545869762396161301(CONSTANT,309)
    assign c_i64_46896545869762396161301_q = $unsigned(64'b0100000100010101000000000000000000000000000000000000000000000000);

    // c_i64_46893731119995289601300(CONSTANT,308)
    assign c_i64_46893731119995289601300_q = $unsigned(64'b0100000100010100000000000000000000000000000000000000000000000000);

    // c_i64_46890916370228183041299(CONSTANT,307)
    assign c_i64_46890916370228183041299_q = $unsigned(64'b0100000100010011000000000000000000000000000000000000000000000000);

    // c_i64_46888101620461076481298(CONSTANT,306)
    assign c_i64_46888101620461076481298_q = $unsigned(64'b0100000100010010000000000000000000000000000000000000000000000000);

    // c_i64_46885286870693969921297(CONSTANT,305)
    assign c_i64_46885286870693969921297_q = $unsigned(64'b0100000100010001000000000000000000000000000000000000000000000000);

    // c_i64_46882472120926863361296(CONSTANT,304)
    assign c_i64_46882472120926863361296_q = $unsigned(64'b0100000100010000000000000000000000000000000000000000000000000000);

    // c_i64_46879657371159756801295(CONSTANT,303)
    assign c_i64_46879657371159756801295_q = $unsigned(64'b0100000100001111000000000000000000000000000000000000000000000000);

    // c_i64_46876842621392650241294(CONSTANT,302)
    assign c_i64_46876842621392650241294_q = $unsigned(64'b0100000100001110000000000000000000000000000000000000000000000000);

    // c_i64_46874027871625543681293(CONSTANT,301)
    assign c_i64_46874027871625543681293_q = $unsigned(64'b0100000100001101000000000000000000000000000000000000000000000000);

    // c_i64_46871213121858437121292(CONSTANT,300)
    assign c_i64_46871213121858437121292_q = $unsigned(64'b0100000100001100000000000000000000000000000000000000000000000000);

    // c_i64_46868398372091330561291(CONSTANT,299)
    assign c_i64_46868398372091330561291_q = $unsigned(64'b0100000100001011000000000000000000000000000000000000000000000000);

    // c_i64_46848695123721584641277(CONSTANT,292)
    assign c_i64_46848695123721584641277_q = $unsigned(64'b0100000100000100000000000000000000000000000000000000000000000000);

    // c_i64_46845880373954478081276(CONSTANT,291)
    assign c_i64_46845880373954478081276_q = $unsigned(64'b0100000100000011000000000000000000000000000000000000000000000000);

    // c_i64_46843065624187371521275(CONSTANT,290)
    assign c_i64_46843065624187371521275_q = $unsigned(64'b0100000100000010000000000000000000000000000000000000000000000000);

    // c_i64_46840250874420264961274(CONSTANT,289)
    assign c_i64_46840250874420264961274_q = $unsigned(64'b0100000100000001000000000000000000000000000000000000000000000000);

    // c_i64_46837436124653158401273(CONSTANT,288)
    assign c_i64_46837436124653158401273_q = $unsigned(64'b0100000100000000000000000000000000000000000000000000000000000000);

    // c_i64_46834621374886051841272(CONSTANT,287)
    assign c_i64_46834621374886051841272_q = $unsigned(64'b0100000011111111000000000000000000000000000000000000000000000000);

    // c_i64_46831806625118945281271(CONSTANT,286)
    assign c_i64_46831806625118945281271_q = $unsigned(64'b0100000011111110000000000000000000000000000000000000000000000000);

    // c_i64_46828991875351838721270(CONSTANT,285)
    assign c_i64_46828991875351838721270_q = $unsigned(64'b0100000011111101000000000000000000000000000000000000000000000000);

    // c_i64_46786770628845240321252(CONSTANT,270)
    assign c_i64_46786770628845240321252_q = $unsigned(64'b0100000011101110000000000000000000000000000000000000000000000000);

    // c_i64_46783955879078133761251(CONSTANT,269)
    assign c_i64_46783955879078133761251_q = $unsigned(64'b0100000011101101000000000000000000000000000000000000000000000000);

    // c_i64_46781141129311027201249(CONSTANT,268)
    assign c_i64_46781141129311027201249_q = $unsigned(64'b0100000011101100000000000000000000000000000000000000000000000000);

    // c_i64_46778326379543920641247(CONSTANT,267)
    assign c_i64_46778326379543920641247_q = $unsigned(64'b0100000011101011000000000000000000000000000000000000000000000000);

    // c_i64_46775511629776814081246(CONSTANT,266)
    assign c_i64_46775511629776814081246_q = $unsigned(64'b0100000011101010000000000000000000000000000000000000000000000000);

    // c_i64_46772696880009707521245(CONSTANT,265)
    assign c_i64_46772696880009707521245_q = $unsigned(64'b0100000011101001000000000000000000000000000000000000000000000000);

    // c_i64_46769882130242600961244(CONSTANT,264)
    assign c_i64_46769882130242600961244_q = $unsigned(64'b0100000011101000000000000000000000000000000000000000000000000000);

    // c_i64_46767067380475494401243(CONSTANT,263)
    assign c_i64_46767067380475494401243_q = $unsigned(64'b0100000011100111000000000000000000000000000000000000000000000000);

    // c_i64_46764252630708387841242(CONSTANT,262)
    assign c_i64_46764252630708387841242_q = $unsigned(64'b0100000011100110000000000000000000000000000000000000000000000000);

    // c_i64_46761437880941281281240(CONSTANT,261)
    assign c_i64_46761437880941281281240_q = $unsigned(64'b0100000011100101000000000000000000000000000000000000000000000000);

    // c_i64_46758623131174174721239(CONSTANT,260)
    assign c_i64_46758623131174174721239_q = $unsigned(64'b0100000011100100000000000000000000000000000000000000000000000000);

    // c_i64_46755808381407068161238(CONSTANT,259)
    assign c_i64_46755808381407068161238_q = $unsigned(64'b0100000011100011000000000000000000000000000000000000000000000000);

    // c_i64_46752993631639961601237(CONSTANT,258)
    assign c_i64_46752993631639961601237_q = $unsigned(64'b0100000011100010000000000000000000000000000000000000000000000000);

    // c_i64_46750178881872855041236(CONSTANT,257)
    assign c_i64_46750178881872855041236_q = $unsigned(64'b0100000011100001000000000000000000000000000000000000000000000000);

    // c_i64_46747364132105748481235(CONSTANT,256)
    assign c_i64_46747364132105748481235_q = $unsigned(64'b0100000011100000000000000000000000000000000000000000000000000000);

    // c_i64_46744549382338641921234(CONSTANT,255)
    assign c_i64_46744549382338641921234_q = $unsigned(64'b0100000011011111000000000000000000000000000000000000000000000000);

    // c_i64_46741734632571535361233(CONSTANT,254)
    assign c_i64_46741734632571535361233_q = $unsigned(64'b0100000011011110000000000000000000000000000000000000000000000000);

    // c_i64_46738919882804428801232(CONSTANT,253)
    assign c_i64_46738919882804428801232_q = $unsigned(64'b0100000011011101000000000000000000000000000000000000000000000000);

    // c_i64_46736105133037322241231(CONSTANT,252)
    assign c_i64_46736105133037322241231_q = $unsigned(64'b0100000011011100000000000000000000000000000000000000000000000000);

    // c_i64_46733290383270215681229(CONSTANT,251)
    assign c_i64_46733290383270215681229_q = $unsigned(64'b0100000011011011000000000000000000000000000000000000000000000000);

    // c_i64_46730475633503109121228(CONSTANT,250)
    assign c_i64_46730475633503109121228_q = $unsigned(64'b0100000011011010000000000000000000000000000000000000000000000000);

    // c_i64_46727660883736002561227(CONSTANT,249)
    assign c_i64_46727660883736002561227_q = $unsigned(64'b0100000011011001000000000000000000000000000000000000000000000000);

    // c_i64_46724846133968896001226(CONSTANT,248)
    assign c_i64_46724846133968896001226_q = $unsigned(64'b0100000011011000000000000000000000000000000000000000000000000000);

    // c_i64_46722031384201789441225(CONSTANT,247)
    assign c_i64_46722031384201789441225_q = $unsigned(64'b0100000011010111000000000000000000000000000000000000000000000000);

    // c_i64_46719216634434682881224(CONSTANT,246)
    assign c_i64_46719216634434682881224_q = $unsigned(64'b0100000011010110000000000000000000000000000000000000000000000000);

    // c_i64_46699513386064936961210(CONSTANT,239)
    assign c_i64_46699513386064936961210_q = $unsigned(64'b0100000011001111000000000000000000000000000000000000000000000000);

    // c_i64_46696698636297830401209(CONSTANT,238)
    assign c_i64_46696698636297830401209_q = $unsigned(64'b0100000011001110000000000000000000000000000000000000000000000000);

    // c_i64_46693883886530723841208(CONSTANT,237)
    assign c_i64_46693883886530723841208_q = $unsigned(64'b0100000011001101000000000000000000000000000000000000000000000000);

    // c_i64_46691069136763617281207(CONSTANT,236)
    assign c_i64_46691069136763617281207_q = $unsigned(64'b0100000011001100000000000000000000000000000000000000000000000000);

    // c_i64_46524998900504330241137(CONSTANT,177)
    assign c_i64_46524998900504330241137_q = $unsigned(64'b0100000010010001000000000000000000000000000000000000000000000000);

    // c_i64_46510925151668797441127(CONSTANT,172)
    assign c_i64_46510925151668797441127_q = $unsigned(64'b0100000010001100000000000000000000000000000000000000000000000000);

    // c_i64_46508110401901690881126(CONSTANT,171)
    assign c_i64_46508110401901690881126_q = $unsigned(64'b0100000010001011000000000000000000000000000000000000000000000000);

    // c_i64_46471518654929305601110(CONSTANT,158)
    assign c_i64_46471518654929305601110_q = $unsigned(64'b0100000001111110000000000000000000000000000000000000000000000000);

    // c_i64_46468703905162199041109(CONSTANT,157)
    assign c_i64_46468703905162199041109_q = $unsigned(64'b0100000001111101000000000000000000000000000000000000000000000000);

    // c_i64_46465889155395092481108(CONSTANT,156)
    assign c_i64_46465889155395092481108_q = $unsigned(64'b0100000001111100000000000000000000000000000000000000000000000000);

    // c_i64_46463074405627985921107(CONSTANT,155)
    assign c_i64_46463074405627985921107_q = $unsigned(64'b0100000001111011000000000000000000000000000000000000000000000000);

    // c_i64_46460259655860879361106(CONSTANT,154)
    assign c_i64_46460259655860879361106_q = $unsigned(64'b0100000001111010000000000000000000000000000000000000000000000000);

    // c_i64_46457444906093772801105(CONSTANT,153)
    assign c_i64_46457444906093772801105_q = $unsigned(64'b0100000001111001000000000000000000000000000000000000000000000000);

    // c_i64_46454630156326666241104(CONSTANT,152)
    assign c_i64_46454630156326666241104_q = $unsigned(64'b0100000001111000000000000000000000000000000000000000000000000000);

    // c_i64_46451815406559559681103(CONSTANT,151)
    assign c_i64_46451815406559559681103_q = $unsigned(64'b0100000001110111000000000000000000000000000000000000000000000000);

    // c_i64_46449000656792453121102(CONSTANT,150)
    assign c_i64_46449000656792453121102_q = $unsigned(64'b0100000001110110000000000000000000000000000000000000000000000000);

    // c_i64_46446185907025346561101(CONSTANT,149)
    assign c_i64_46446185907025346561101_q = $unsigned(64'b0100000001110101000000000000000000000000000000000000000000000000);

    // c_i64_46443371157258240001100(CONSTANT,148)
    assign c_i64_46443371157258240001100_q = $unsigned(64'b0100000001110100000000000000000000000000000000000000000000000000);

    // c_i64_46440556407491133441099(CONSTANT,147)
    assign c_i64_46440556407491133441099_q = $unsigned(64'b0100000001110011000000000000000000000000000000000000000000000000);

    // c_i64_46403964660518748161074(CONSTANT,134)
    assign c_i64_46403964660518748161074_q = $unsigned(64'b0100000001100110000000000000000000000000000000000000000000000000);

    // c_i64_46401149910751641601073(CONSTANT,133)
    assign c_i64_46401149910751641601073_q = $unsigned(64'b0100000001100101000000000000000000000000000000000000000000000000);

    // c_i64_46398335160984535041072(CONSTANT,132)
    assign c_i64_46398335160984535041072_q = $unsigned(64'b0100000001100100000000000000000000000000000000000000000000000000);

    // c_i64_46395520411217428481071(CONSTANT,131)
    assign c_i64_46395520411217428481071_q = $unsigned(64'b0100000001100011000000000000000000000000000000000000000000000000);

    // c_i64_46392705661450321921070(CONSTANT,130)
    assign c_i64_46392705661450321921070_q = $unsigned(64'b0100000001100010000000000000000000000000000000000000000000000000);

    // c_i64_46389890911683215361068(CONSTANT,129)
    assign c_i64_46389890911683215361068_q = $unsigned(64'b0100000001100001000000000000000000000000000000000000000000000000);

    // c_i64_46387076161916108801066(CONSTANT,128)
    assign c_i64_46387076161916108801066_q = $unsigned(64'b0100000001100000000000000000000000000000000000000000000000000000);

    // c_i64_46384261412149002241065(CONSTANT,127)
    assign c_i64_46384261412149002241065_q = $unsigned(64'b0100000001011111000000000000000000000000000000000000000000000000);

    // c_i64_46381446662381895681063(CONSTANT,126)
    assign c_i64_46381446662381895681063_q = $unsigned(64'b0100000001011110000000000000000000000000000000000000000000000000);

    // c_i64_46378631912614789121062(CONSTANT,125)
    assign c_i64_46378631912614789121062_q = $unsigned(64'b0100000001011101000000000000000000000000000000000000000000000000);

    // c_i64_46375817162847682561061(CONSTANT,124)
    assign c_i64_46375817162847682561061_q = $unsigned(64'b0100000001011100000000000000000000000000000000000000000000000000);

    // c_i64_46373002413080576001060(CONSTANT,123)
    assign c_i64_46373002413080576001060_q = $unsigned(64'b0100000001011011000000000000000000000000000000000000000000000000);

    // c_i64_46370187663313469441059(CONSTANT,122)
    assign c_i64_46370187663313469441059_q = $unsigned(64'b0100000001011010000000000000000000000000000000000000000000000000);

    // c_i64_46367372913546362881058(CONSTANT,121)
    assign c_i64_46367372913546362881058_q = $unsigned(64'b0100000001011001000000000000000000000000000000000000000000000000);

    // c_i64_46356113914477936641050(CONSTANT,117)
    assign c_i64_46356113914477936641050_q = $unsigned(64'b0100000001010101000000000000000000000000000000000000000000000000);

    // c_i64_46353299164710830081049(CONSTANT,116)
    assign c_i64_46353299164710830081049_q = $unsigned(64'b0100000001010100000000000000000000000000000000000000000000000000);

    // c_i64_46350484414943723521048(CONSTANT,115)
    assign c_i64_46350484414943723521048_q = $unsigned(64'b0100000001010011000000000000000000000000000000000000000000000000);

    // c_i64_46347669665176616961047(CONSTANT,114)
    assign c_i64_46347669665176616961047_q = $unsigned(64'b0100000001010010000000000000000000000000000000000000000000000000);

    // c_i64_46336410666108190721039(CONSTANT,110)
    assign c_i64_46336410666108190721039_q = $unsigned(64'b0100000001001110000000000000000000000000000000000000000000000000);

    // c_i64_46333595916341084161038(CONSTANT,109)
    assign c_i64_46333595916341084161038_q = $unsigned(64'b0100000001001101000000000000000000000000000000000000000000000000);

    // c_i64_46330781166573977601037(CONSTANT,108)
    assign c_i64_46330781166573977601037_q = $unsigned(64'b0100000001001100000000000000000000000000000000000000000000000000);

    // c_i64_46327966416806871041036(CONSTANT,107)
    assign c_i64_46327966416806871041036_q = $unsigned(64'b0100000001001011000000000000000000000000000000000000000000000000);

    // c_i64_46325151667039764481034(CONSTANT,106)
    assign c_i64_46325151667039764481034_q = $unsigned(64'b0100000001001010000000000000000000000000000000000000000000000000);

    // c_i64_46322336917272657921033(CONSTANT,105)
    assign c_i64_46322336917272657921033_q = $unsigned(64'b0100000001001001000000000000000000000000000000000000000000000000);

    // c_i64_46319522167505551361032(CONSTANT,104)
    assign c_i64_46319522167505551361032_q = $unsigned(64'b0100000001001000000000000000000000000000000000000000000000000000);

    // c_i64_46316707417738444801031(CONSTANT,103)
    assign c_i64_46316707417738444801031_q = $unsigned(64'b0100000001000111000000000000000000000000000000000000000000000000);

    // c_i64_46313892667971338241030(CONSTANT,102)
    assign c_i64_46313892667971338241030_q = $unsigned(64'b0100000001000110000000000000000000000000000000000000000000000000);

    // c_i64_46311077918204231681029(CONSTANT,101)
    assign c_i64_46311077918204231681029_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // c_i64_46308263168437125121028(CONSTANT,100)
    assign c_i64_46308263168437125121028_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // c_i64_46305448418670018561027(CONSTANT,99)
    assign c_i64_46305448418670018561027_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // c_i64_46302633668902912001026(CONSTANT,98)
    assign c_i64_46302633668902912001026_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // c_i64_46299818919135805441025(CONSTANT,97)
    assign c_i64_46299818919135805441025_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // c_i64_46297004169368698881024(CONSTANT,96)
    assign c_i64_46297004169368698881024_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // c_i64_46294189419601592321023(CONSTANT,95)
    assign c_i64_46294189419601592321023_q = $unsigned(64'b0100000000111111000000000000000000000000000000000000000000000000);

    // c_i64_46291374669834485761022(CONSTANT,94)
    assign c_i64_46291374669834485761022_q = $unsigned(64'b0100000000111110000000000000000000000000000000000000000000000000);

    // c_i64_46288559920067379201021(CONSTANT,93)
    assign c_i64_46288559920067379201021_q = $unsigned(64'b0100000000111101000000000000000000000000000000000000000000000000);

    // c_i64_46285745170300272641020(CONSTANT,92)
    assign c_i64_46285745170300272641020_q = $unsigned(64'b0100000000111100000000000000000000000000000000000000000000000000);

    // c_i64_46282930420533166081019(CONSTANT,91)
    assign c_i64_46282930420533166081019_q = $unsigned(64'b0100000000111011000000000000000000000000000000000000000000000000);

    // c_i64_46280115670766059521018(CONSTANT,90)
    assign c_i64_46280115670766059521018_q = $unsigned(64'b0100000000111010000000000000000000000000000000000000000000000000);

    // c_i64_46277300920998952961017(CONSTANT,89)
    assign c_i64_46277300920998952961017_q = $unsigned(64'b0100000000111001000000000000000000000000000000000000000000000000);

    // c_i64_46274486171231846401016(CONSTANT,88)
    assign c_i64_46274486171231846401016_q = $unsigned(64'b0100000000111000000000000000000000000000000000000000000000000000);

    // c_i64_46271671421464739841015(CONSTANT,87)
    assign c_i64_46271671421464739841015_q = $unsigned(64'b0100000000110111000000000000000000000000000000000000000000000000);

    // c_i64_46268856671697633281014(CONSTANT,86)
    assign c_i64_46268856671697633281014_q = $unsigned(64'b0100000000110110000000000000000000000000000000000000000000000000);

    // c_i64_46266041921930526721013(CONSTANT,85)
    assign c_i64_46266041921930526721013_q = $unsigned(64'b0100000000110101000000000000000000000000000000000000000000000000);

    // c_i64_46263227172163420161012(CONSTANT,84)
    assign c_i64_46263227172163420161012_q = $unsigned(64'b0100000000110100000000000000000000000000000000000000000000000000);

    // c_i64_46260412422396313601011(CONSTANT,83)
    assign c_i64_46260412422396313601011_q = $unsigned(64'b0100000000110011000000000000000000000000000000000000000000000000);

    // c_i64_46257597672629207041010(CONSTANT,82)
    assign c_i64_46257597672629207041010_q = $unsigned(64'b0100000000110010000000000000000000000000000000000000000000000000);

    // c_i64_46254782922862100481009(CONSTANT,81)
    assign c_i64_46254782922862100481009_q = $unsigned(64'b0100000000110001000000000000000000000000000000000000000000000000);

    // c_i64_46251968173094993921008(CONSTANT,80)
    assign c_i64_46251968173094993921008_q = $unsigned(64'b0100000000110000000000000000000000000000000000000000000000000000);

    // c_i64_46249153423327887361007(CONSTANT,79)
    assign c_i64_46249153423327887361007_q = $unsigned(64'b0100000000101111000000000000000000000000000000000000000000000000);

    // c_i64_46246338673560780801006(CONSTANT,78)
    assign c_i64_46246338673560780801006_q = $unsigned(64'b0100000000101110000000000000000000000000000000000000000000000000);

    // c_i64_46243523923793674241005(CONSTANT,77)
    assign c_i64_46243523923793674241005_q = $unsigned(64'b0100000000101101000000000000000000000000000000000000000000000000);

    // c_i64_46240709174026567681004(CONSTANT,76)
    assign c_i64_46240709174026567681004_q = $unsigned(64'b0100000000101100000000000000000000000000000000000000000000000000);

    // c_i64_46237894424259461121003(CONSTANT,75)
    assign c_i64_46237894424259461121003_q = $unsigned(64'b0100000000101011000000000000000000000000000000000000000000000000);

    // c_i64_46235079674492354561002(CONSTANT,74)
    assign c_i64_46235079674492354561002_q = $unsigned(64'b0100000000101010000000000000000000000000000000000000000000000000);

    // c_i64_46232264924725248001001(CONSTANT,73)
    assign c_i64_46232264924725248001001_q = $unsigned(64'b0100000000101001000000000000000000000000000000000000000000000000);

    // c_i64_46229450174958141441000(CONSTANT,72)
    assign c_i64_46229450174958141441000_q = $unsigned(64'b0100000000101000000000000000000000000000000000000000000000000000);

    // c_i64_4622663542519103488999(CONSTANT,71)
    assign c_i64_4622663542519103488999_q = $unsigned(64'b0100000000100111000000000000000000000000000000000000000000000000);

    // c_i64_4622382067542392832998(CONSTANT,70)
    assign c_i64_4622382067542392832998_q = $unsigned(64'b0100000000100110000000000000000000000000000000000000000000000000);

    // c_i64_4622100592565682176996(CONSTANT,69)
    assign c_i64_4622100592565682176996_q = $unsigned(64'b0100000000100101000000000000000000000000000000000000000000000000);

    // c_i64_4621819117588971520995(CONSTANT,68)
    assign c_i64_4621819117588971520995_q = $unsigned(64'b0100000000100100000000000000000000000000000000000000000000000000);

    // c_i64_4621537642612260864994(CONSTANT,67)
    assign c_i64_4621537642612260864994_q = $unsigned(64'b0100000000100011000000000000000000000000000000000000000000000000);

    // c_i64_4621256167635550208993(CONSTANT,66)
    assign c_i64_4621256167635550208993_q = $unsigned(64'b0100000000100010000000000000000000000000000000000000000000000000);

    // c_i64_4620974692658839552992(CONSTANT,65)
    assign c_i64_4620974692658839552992_q = $unsigned(64'b0100000000100001000000000000000000000000000000000000000000000000);

    // c_i64_4620693217682128896991(CONSTANT,64)
    assign c_i64_4620693217682128896991_q = $unsigned(64'b0100000000100000000000000000000000000000000000000000000000000000);

    // c_i64_4620411742705418240990(CONSTANT,63)
    assign c_i64_4620411742705418240990_q = $unsigned(64'b0100000000011111000000000000000000000000000000000000000000000000);

    // c_i64_4620130267728707584988(CONSTANT,62)
    assign c_i64_4620130267728707584988_q = $unsigned(64'b0100000000011110000000000000000000000000000000000000000000000000);

    // c_i64_4619848792751996928987(CONSTANT,61)
    assign c_i64_4619848792751996928987_q = $unsigned(64'b0100000000011101000000000000000000000000000000000000000000000000);

    // c_i64_4619567317775286272986(CONSTANT,60)
    assign c_i64_4619567317775286272986_q = $unsigned(64'b0100000000011100000000000000000000000000000000000000000000000000);

    // c_i64_4619285842798575616984(CONSTANT,59)
    assign c_i64_4619285842798575616984_q = $unsigned(64'b0100000000011011000000000000000000000000000000000000000000000000);

    // c_i64_4619004367821864960983(CONSTANT,58)
    assign c_i64_4619004367821864960983_q = $unsigned(64'b0100000000011010000000000000000000000000000000000000000000000000);

    // c_i64_4618722892845154304982(CONSTANT,57)
    assign c_i64_4618722892845154304982_q = $unsigned(64'b0100000000011001000000000000000000000000000000000000000000000000);

    // c_i64_4618441417868443648981(CONSTANT,56)
    assign c_i64_4618441417868443648981_q = $unsigned(64'b0100000000011000000000000000000000000000000000000000000000000000);

    // c_i64_4618159942891732992980(CONSTANT,55)
    assign c_i64_4618159942891732992980_q = $unsigned(64'b0100000000010111000000000000000000000000000000000000000000000000);

    // c_i64_4617878467915022336979(CONSTANT,54)
    assign c_i64_4617878467915022336979_q = $unsigned(64'b0100000000010110000000000000000000000000000000000000000000000000);

    // c_i64_4617596992938311680978(CONSTANT,53)
    assign c_i64_4617596992938311680978_q = $unsigned(64'b0100000000010101000000000000000000000000000000000000000000000000);

    // c_i64_4617315517961601024977(CONSTANT,52)
    assign c_i64_4617315517961601024977_q = $unsigned(64'b0100000000010100000000000000000000000000000000000000000000000000);

    // c_i64_4617034042984890368975(CONSTANT,51)
    assign c_i64_4617034042984890368975_q = $unsigned(64'b0100000000010011000000000000000000000000000000000000000000000000);

    // c_i64_4616752568008179712974(CONSTANT,50)
    assign c_i64_4616752568008179712974_q = $unsigned(64'b0100000000010010000000000000000000000000000000000000000000000000);

    // c_i64_4616471093031469056973(CONSTANT,49)
    assign c_i64_4616471093031469056973_q = $unsigned(64'b0100000000010001000000000000000000000000000000000000000000000000);

    // c_i64_4616189618054758400972(CONSTANT,48)
    assign c_i64_4616189618054758400972_q = $unsigned(64'b0100000000010000000000000000000000000000000000000000000000000000);

    // c_i64_4615908143078047744971(CONSTANT,47)
    assign c_i64_4615908143078047744971_q = $unsigned(64'b0100000000001111000000000000000000000000000000000000000000000000);

    // c_i64_4615626668101337088970(CONSTANT,46)
    assign c_i64_4615626668101337088970_q = $unsigned(64'b0100000000001110000000000000000000000000000000000000000000000000);

    // c_i64_4615345193124626432969(CONSTANT,45)
    assign c_i64_4615345193124626432969_q = $unsigned(64'b0100000000001101000000000000000000000000000000000000000000000000);

    // c_i64_4615063718147915776968(CONSTANT,44)
    assign c_i64_4615063718147915776968_q = $unsigned(64'b0100000000001100000000000000000000000000000000000000000000000000);

    // c_i64_4614782243171205120967(CONSTANT,43)
    assign c_i64_4614782243171205120967_q = $unsigned(64'b0100000000001011000000000000000000000000000000000000000000000000);

    // c_i64_4614500768194494464966(CONSTANT,42)
    assign c_i64_4614500768194494464966_q = $unsigned(64'b0100000000001010000000000000000000000000000000000000000000000000);

    // c_i64_4614219293217783808965(CONSTANT,41)
    assign c_i64_4614219293217783808965_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // c_i64_4613937818241073152963(CONSTANT,40)
    assign c_i64_4613937818241073152963_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // c_i64_4613656343264362496962(CONSTANT,39)
    assign c_i64_4613656343264362496962_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // c_i64_4613374868287651840961(CONSTANT,38)
    assign c_i64_4613374868287651840961_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // c_i32_425802_recast_x(CONSTANT,1305)
    assign c_i32_425802_recast_x_q = $unsigned(32'b00000000000000000000000110101001);

    // i_pivot605_v4l2_ctrl_get_name31(COMPARE,900)@1 + 1
    assign i_pivot605_v4l2_ctrl_get_name31_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot605_v4l2_ctrl_get_name31_b = $unsigned({{2{c_i32_425802_recast_x_q[31]}}, c_i32_425802_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot605_v4l2_ctrl_get_name31_o <= 34'b0;
        end
        else
        begin
            i_pivot605_v4l2_ctrl_get_name31_o <= $unsigned($signed(i_pivot605_v4l2_ctrl_get_name31_a) - $signed(i_pivot605_v4l2_ctrl_get_name31_b));
        end
    end
    assign i_pivot605_v4l2_ctrl_get_name31_c[0] = i_pivot605_v4l2_ctrl_get_name31_o[33];

    // c_i32_424952_recast_x(CONSTANT,1304)
    assign c_i32_424952_recast_x_q = $unsigned(32'b00000000000000000000000110101000);

    // i_pivot579_v4l2_ctrl_get_name331(COMPARE,886)@1 + 1
    assign i_pivot579_v4l2_ctrl_get_name331_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot579_v4l2_ctrl_get_name331_b = $unsigned({{2{c_i32_424952_recast_x_q[31]}}, c_i32_424952_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot579_v4l2_ctrl_get_name331_o <= 34'b0;
        end
        else
        begin
            i_pivot579_v4l2_ctrl_get_name331_o <= $unsigned($signed(i_pivot579_v4l2_ctrl_get_name331_a) - $signed(i_pivot579_v4l2_ctrl_get_name331_b));
        end
    end
    assign i_pivot579_v4l2_ctrl_get_name331_c[0] = i_pivot579_v4l2_ctrl_get_name331_o[33];

    // i_acl_658_v4l2_ctrl_get_name350(LOGICAL,645)@2
    assign i_acl_658_v4l2_ctrl_get_name350_q = i_pivot579_v4l2_ctrl_get_name331_c ^ i_pivot605_v4l2_ctrl_get_name31_c;

    // i_acl_663_v4l2_ctrl_get_name351(MUX,646)@2
    assign i_acl_663_v4l2_ctrl_get_name351_s = i_acl_658_v4l2_ctrl_get_name350_q;
    always @(i_acl_663_v4l2_ctrl_get_name351_s or c_i64_4613374868287651840961_q or c_i64_4613656343264362496962_q)
    begin
        unique case (i_acl_663_v4l2_ctrl_get_name351_s)
            1'b0 : i_acl_663_v4l2_ctrl_get_name351_q = c_i64_4613374868287651840961_q;
            1'b1 : i_acl_663_v4l2_ctrl_get_name351_q = c_i64_4613656343264362496962_q;
            default : i_acl_663_v4l2_ctrl_get_name351_q = 64'b0;
        endcase
    end

    // c_i32_418907_recast_x(CONSTANT,1298)
    assign c_i32_418907_recast_x_q = $unsigned(32'b00000000000000000000000110100010);

    // i_pivot573_v4l2_ctrl_get_name241(COMPARE,883)@1 + 1
    assign i_pivot573_v4l2_ctrl_get_name241_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot573_v4l2_ctrl_get_name241_b = $unsigned({{2{c_i32_418907_recast_x_q[31]}}, c_i32_418907_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot573_v4l2_ctrl_get_name241_o <= 34'b0;
        end
        else
        begin
            i_pivot573_v4l2_ctrl_get_name241_o <= $unsigned($signed(i_pivot573_v4l2_ctrl_get_name241_a) - $signed(i_pivot573_v4l2_ctrl_get_name241_b));
        end
    end
    assign i_pivot573_v4l2_ctrl_get_name241_c[0] = i_pivot573_v4l2_ctrl_get_name241_o[33];

    // c_i32_417847_recast_x(CONSTANT,1297)
    assign c_i32_417847_recast_x_q = $unsigned(32'b00000000000000000000000110100001);

    // i_pivot575_v4l2_ctrl_get_name121(COMPARE,884)@1 + 1
    assign i_pivot575_v4l2_ctrl_get_name121_a = $unsigned({{2{in_c1_eni1_1_tpl[31]}}, in_c1_eni1_1_tpl});
    assign i_pivot575_v4l2_ctrl_get_name121_b = $unsigned({{2{c_i32_417847_recast_x_q[31]}}, c_i32_417847_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot575_v4l2_ctrl_get_name121_o <= 34'b0;
        end
        else
        begin
            i_pivot575_v4l2_ctrl_get_name121_o <= $unsigned($signed(i_pivot575_v4l2_ctrl_get_name121_a) - $signed(i_pivot575_v4l2_ctrl_get_name121_b));
        end
    end
    assign i_pivot575_v4l2_ctrl_get_name121_c[0] = i_pivot575_v4l2_ctrl_get_name121_o[33];

    // i_acl_664_v4l2_ctrl_get_name352(LOGICAL,647)@2
    assign i_acl_664_v4l2_ctrl_get_name352_q = i_pivot575_v4l2_ctrl_get_name121_c ^ i_pivot573_v4l2_ctrl_get_name241_c;

    // i_acl_671_v4l2_ctrl_get_name353(MUX,648)@2
    assign i_acl_671_v4l2_ctrl_get_name353_s = i_acl_664_v4l2_ctrl_get_name352_q;
    always @(i_acl_671_v4l2_ctrl_get_name353_s or i_acl_663_v4l2_ctrl_get_name351_q or c_i64_4613937818241073152963_q)
    begin
        unique case (i_acl_671_v4l2_ctrl_get_name353_s)
            1'b0 : i_acl_671_v4l2_ctrl_get_name353_q = i_acl_663_v4l2_ctrl_get_name351_q;
            1'b1 : i_acl_671_v4l2_ctrl_get_name353_q = c_i64_4613937818241073152963_q;
            default : i_acl_671_v4l2_ctrl_get_name353_q = 64'b0;
        endcase
    end

    // c_i32_151964_recast_x(CONSTANT,1161)
    assign c_i32_151964_recast_x_q = $unsigned(32'b00000000000000000000000010010111);

    // redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,1542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_unnamed_v4l2_ctrl_get_name354(LOGICAL,945)@2
    assign i_unnamed_v4l2_ctrl_get_name354_q = $unsigned(redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q == c_i32_151964_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_680_v4l2_ctrl_get_name356(MUX,649)@2
    assign i_acl_680_v4l2_ctrl_get_name356_s = i_unnamed_v4l2_ctrl_get_name354_q;
    always @(i_acl_680_v4l2_ctrl_get_name356_s or i_acl_671_v4l2_ctrl_get_name353_q or c_i64_4614219293217783808965_q)
    begin
        unique case (i_acl_680_v4l2_ctrl_get_name356_s)
            1'b0 : i_acl_680_v4l2_ctrl_get_name356_q = i_acl_671_v4l2_ctrl_get_name353_q;
            1'b1 : i_acl_680_v4l2_ctrl_get_name356_q = c_i64_4614219293217783808965_q;
            default : i_acl_680_v4l2_ctrl_get_name356_q = 64'b0;
        endcase
    end

    // c_i32_372889_recast_x(CONSTANT,1252)
    assign c_i32_372889_recast_x_q = $unsigned(32'b00000000000000000000000101110100);

    // i_pivot477_v4l2_ctrl_get_name205(COMPARE,835)@2
    assign i_pivot477_v4l2_ctrl_get_name205_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot477_v4l2_ctrl_get_name205_b = $unsigned({{2{c_i32_372889_recast_x_q[31]}}, c_i32_372889_recast_x_q});
    assign i_pivot477_v4l2_ctrl_get_name205_o = $unsigned($signed(i_pivot477_v4l2_ctrl_get_name205_a) - $signed(i_pivot477_v4l2_ctrl_get_name205_b));
    assign i_pivot477_v4l2_ctrl_get_name205_c[0] = i_pivot477_v4l2_ctrl_get_name205_o[33];

    // c_i32_371838_recast_x(CONSTANT,1251)
    assign c_i32_371838_recast_x_q = $unsigned(32'b00000000000000000000000101110011);

    // i_pivot479_v4l2_ctrl_get_name103(COMPARE,836)@2
    assign i_pivot479_v4l2_ctrl_get_name103_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot479_v4l2_ctrl_get_name103_b = $unsigned({{2{c_i32_371838_recast_x_q[31]}}, c_i32_371838_recast_x_q});
    assign i_pivot479_v4l2_ctrl_get_name103_o = $unsigned($signed(i_pivot479_v4l2_ctrl_get_name103_a) - $signed(i_pivot479_v4l2_ctrl_get_name103_b));
    assign i_pivot479_v4l2_ctrl_get_name103_c[0] = i_pivot479_v4l2_ctrl_get_name103_o[33];

    // i_acl_681_v4l2_ctrl_get_name357(LOGICAL,650)@2
    assign i_acl_681_v4l2_ctrl_get_name357_q = i_pivot479_v4l2_ctrl_get_name103_c ^ i_pivot477_v4l2_ctrl_get_name205_c;

    // i_acl_688_v4l2_ctrl_get_name358(MUX,651)@2
    assign i_acl_688_v4l2_ctrl_get_name358_s = i_acl_681_v4l2_ctrl_get_name357_q;
    always @(i_acl_688_v4l2_ctrl_get_name358_s or i_acl_680_v4l2_ctrl_get_name356_q or c_i64_4614500768194494464966_q)
    begin
        unique case (i_acl_688_v4l2_ctrl_get_name358_s)
            1'b0 : i_acl_688_v4l2_ctrl_get_name358_q = i_acl_680_v4l2_ctrl_get_name356_q;
            1'b1 : i_acl_688_v4l2_ctrl_get_name358_q = c_i64_4614500768194494464966_q;
            default : i_acl_688_v4l2_ctrl_get_name358_q = 64'b0;
        endcase
    end

    // c_i32_440819_recast_x(CONSTANT,1320)
    assign c_i32_440819_recast_x_q = $unsigned(32'b00000000000000000000000110111000);

    // i_pivot623_v4l2_ctrl_get_name65(COMPARE,909)@2
    assign i_pivot623_v4l2_ctrl_get_name65_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot623_v4l2_ctrl_get_name65_b = $unsigned({{2{c_i32_440819_recast_x_q[31]}}, c_i32_440819_recast_x_q});
    assign i_pivot623_v4l2_ctrl_get_name65_o = $unsigned($signed(i_pivot623_v4l2_ctrl_get_name65_a) - $signed(i_pivot623_v4l2_ctrl_get_name65_b));
    assign i_pivot623_v4l2_ctrl_get_name65_c[0] = i_pivot623_v4l2_ctrl_get_name65_o[33];

    // c_i32_439955_recast_x(CONSTANT,1319)
    assign c_i32_439955_recast_x_q = $unsigned(32'b00000000000000000000000110110111);

    // i_pivot609_v4l2_ctrl_get_name337(COMPARE,902)@2
    assign i_pivot609_v4l2_ctrl_get_name337_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot609_v4l2_ctrl_get_name337_b = $unsigned({{2{c_i32_439955_recast_x_q[31]}}, c_i32_439955_recast_x_q});
    assign i_pivot609_v4l2_ctrl_get_name337_o = $unsigned($signed(i_pivot609_v4l2_ctrl_get_name337_a) - $signed(i_pivot609_v4l2_ctrl_get_name337_b));
    assign i_pivot609_v4l2_ctrl_get_name337_c[0] = i_pivot609_v4l2_ctrl_get_name337_o[33];

    // i_acl_691_v4l2_ctrl_get_name359(LOGICAL,652)@2
    assign i_acl_691_v4l2_ctrl_get_name359_q = i_pivot609_v4l2_ctrl_get_name337_c ^ i_pivot623_v4l2_ctrl_get_name65_c;

    // i_acl_697_v4l2_ctrl_get_name360(MUX,653)@2 + 1
    assign i_acl_697_v4l2_ctrl_get_name360_s = i_acl_691_v4l2_ctrl_get_name359_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_697_v4l2_ctrl_get_name360_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_697_v4l2_ctrl_get_name360_s)
                1'b0 : i_acl_697_v4l2_ctrl_get_name360_q <= i_acl_688_v4l2_ctrl_get_name358_q;
                1'b1 : i_acl_697_v4l2_ctrl_get_name360_q <= c_i64_4614782243171205120967_q;
                default : i_acl_697_v4l2_ctrl_get_name360_q <= 64'b0;
            endcase
        end
    end

    // c_i32_453854_recast_x(CONSTANT,1333)
    assign c_i32_453854_recast_x_q = $unsigned(32'b00000000000000000000000111000101);

    // i_pivot643_v4l2_ctrl_get_name135(COMPARE,918)@2 + 1
    assign i_pivot643_v4l2_ctrl_get_name135_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot643_v4l2_ctrl_get_name135_b = $unsigned({{2{c_i32_453854_recast_x_q[31]}}, c_i32_453854_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot643_v4l2_ctrl_get_name135_o <= 34'b0;
        end
        else
        begin
            i_pivot643_v4l2_ctrl_get_name135_o <= $unsigned($signed(i_pivot643_v4l2_ctrl_get_name135_a) - $signed(i_pivot643_v4l2_ctrl_get_name135_b));
        end
    end
    assign i_pivot643_v4l2_ctrl_get_name135_c[0] = i_pivot643_v4l2_ctrl_get_name135_o[33];

    // c_i32_452958_recast_x(CONSTANT,1332)
    assign c_i32_452958_recast_x_q = $unsigned(32'b00000000000000000000000111000100);

    // i_pivot633_v4l2_ctrl_get_name343(COMPARE,914)@2 + 1
    assign i_pivot633_v4l2_ctrl_get_name343_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot633_v4l2_ctrl_get_name343_b = $unsigned({{2{c_i32_452958_recast_x_q[31]}}, c_i32_452958_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot633_v4l2_ctrl_get_name343_o <= 34'b0;
        end
        else
        begin
            i_pivot633_v4l2_ctrl_get_name343_o <= $unsigned($signed(i_pivot633_v4l2_ctrl_get_name343_a) - $signed(i_pivot633_v4l2_ctrl_get_name343_b));
        end
    end
    assign i_pivot633_v4l2_ctrl_get_name343_c[0] = i_pivot633_v4l2_ctrl_get_name343_o[33];

    // i_acl_699_v4l2_ctrl_get_name361(LOGICAL,654)@3
    assign i_acl_699_v4l2_ctrl_get_name361_q = i_pivot633_v4l2_ctrl_get_name343_c ^ i_pivot643_v4l2_ctrl_get_name135_c;

    // i_acl_706_v4l2_ctrl_get_name362(MUX,655)@3
    assign i_acl_706_v4l2_ctrl_get_name362_s = i_acl_699_v4l2_ctrl_get_name361_q;
    always @(i_acl_706_v4l2_ctrl_get_name362_s or i_acl_697_v4l2_ctrl_get_name360_q or c_i64_4615063718147915776968_q)
    begin
        unique case (i_acl_706_v4l2_ctrl_get_name362_s)
            1'b0 : i_acl_706_v4l2_ctrl_get_name362_q = i_acl_697_v4l2_ctrl_get_name360_q;
            1'b1 : i_acl_706_v4l2_ctrl_get_name362_q = c_i64_4615063718147915776968_q;
            default : i_acl_706_v4l2_ctrl_get_name362_q = 64'b0;
        endcase
    end

    // c_i32_451920_recast_x(CONSTANT,1331)
    assign c_i32_451920_recast_x_q = $unsigned(32'b00000000000000000000000111000011);

    // i_pivot635_v4l2_ctrl_get_name267(COMPARE,915)@2 + 1
    assign i_pivot635_v4l2_ctrl_get_name267_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot635_v4l2_ctrl_get_name267_b = $unsigned({{2{c_i32_451920_recast_x_q[31]}}, c_i32_451920_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot635_v4l2_ctrl_get_name267_o <= 34'b0;
        end
        else
        begin
            i_pivot635_v4l2_ctrl_get_name267_o <= $unsigned($signed(i_pivot635_v4l2_ctrl_get_name267_a) - $signed(i_pivot635_v4l2_ctrl_get_name267_b));
        end
    end
    assign i_pivot635_v4l2_ctrl_get_name267_c[0] = i_pivot635_v4l2_ctrl_get_name267_o[33];

    // i_acl_707_v4l2_ctrl_get_name363(LOGICAL,656)@3
    assign i_acl_707_v4l2_ctrl_get_name363_q = i_pivot635_v4l2_ctrl_get_name267_c ^ i_pivot633_v4l2_ctrl_get_name343_c;

    // i_acl_715_v4l2_ctrl_get_name364(MUX,657)@3
    assign i_acl_715_v4l2_ctrl_get_name364_s = i_acl_707_v4l2_ctrl_get_name363_q;
    always @(i_acl_715_v4l2_ctrl_get_name364_s or i_acl_706_v4l2_ctrl_get_name362_q or c_i64_4615345193124626432969_q)
    begin
        unique case (i_acl_715_v4l2_ctrl_get_name364_s)
            1'b0 : i_acl_715_v4l2_ctrl_get_name364_q = i_acl_706_v4l2_ctrl_get_name362_q;
            1'b1 : i_acl_715_v4l2_ctrl_get_name364_q = c_i64_4615345193124626432969_q;
            default : i_acl_715_v4l2_ctrl_get_name364_q = 64'b0;
        endcase
    end

    // c_i32_441916_recast_x(CONSTANT,1321)
    assign c_i32_441916_recast_x_q = $unsigned(32'b00000000000000000000000110111001);

    // i_pivot615_v4l2_ctrl_get_name259(COMPARE,905)@2
    assign i_pivot615_v4l2_ctrl_get_name259_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot615_v4l2_ctrl_get_name259_b = $unsigned({{2{c_i32_441916_recast_x_q[31]}}, c_i32_441916_recast_x_q});
    assign i_pivot615_v4l2_ctrl_get_name259_o = $unsigned($signed(i_pivot615_v4l2_ctrl_get_name259_a) - $signed(i_pivot615_v4l2_ctrl_get_name259_b));
    assign i_pivot615_v4l2_ctrl_get_name259_c[0] = i_pivot615_v4l2_ctrl_get_name259_o[33];

    // i_acl_717_v4l2_ctrl_get_name365(LOGICAL,658)@2 + 1
    assign i_acl_717_v4l2_ctrl_get_name365_qi = i_pivot623_v4l2_ctrl_get_name65_c ^ i_pivot615_v4l2_ctrl_get_name259_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_717_v4l2_ctrl_get_name365_delay ( .xin(i_acl_717_v4l2_ctrl_get_name365_qi), .xout(i_acl_717_v4l2_ctrl_get_name365_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_723_v4l2_ctrl_get_name366(MUX,659)@3
    assign i_acl_723_v4l2_ctrl_get_name366_s = i_acl_717_v4l2_ctrl_get_name365_q;
    always @(i_acl_723_v4l2_ctrl_get_name366_s or i_acl_715_v4l2_ctrl_get_name364_q or c_i64_4615626668101337088970_q)
    begin
        unique case (i_acl_723_v4l2_ctrl_get_name366_s)
            1'b0 : i_acl_723_v4l2_ctrl_get_name366_q = i_acl_715_v4l2_ctrl_get_name364_q;
            1'b1 : i_acl_723_v4l2_ctrl_get_name366_q = c_i64_4615626668101337088970_q;
            default : i_acl_723_v4l2_ctrl_get_name366_q = 64'b0;
        endcase
    end

    // c_i32_442852_recast_x(CONSTANT,1322)
    assign c_i32_442852_recast_x_q = $unsigned(32'b00000000000000000000000110111010);

    // i_pivot621_v4l2_ctrl_get_name131(COMPARE,908)@2 + 1
    assign i_pivot621_v4l2_ctrl_get_name131_a = $unsigned({{2{redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_pivot621_v4l2_ctrl_get_name131_b = $unsigned({{2{c_i32_442852_recast_x_q[31]}}, c_i32_442852_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot621_v4l2_ctrl_get_name131_o <= 34'b0;
        end
        else
        begin
            i_pivot621_v4l2_ctrl_get_name131_o <= $unsigned($signed(i_pivot621_v4l2_ctrl_get_name131_a) - $signed(i_pivot621_v4l2_ctrl_get_name131_b));
        end
    end
    assign i_pivot621_v4l2_ctrl_get_name131_c[0] = i_pivot621_v4l2_ctrl_get_name131_o[33];

    // redist83_i_pivot615_v4l2_ctrl_get_name259_c_1(DELAY,1625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_pivot615_v4l2_ctrl_get_name259_c_1_q <= '0;
        end
        else
        begin
            redist83_i_pivot615_v4l2_ctrl_get_name259_c_1_q <= $unsigned(i_pivot615_v4l2_ctrl_get_name259_c);
        end
    end

    // i_acl_724_v4l2_ctrl_get_name367(LOGICAL,660)@3
    assign i_acl_724_v4l2_ctrl_get_name367_q = redist83_i_pivot615_v4l2_ctrl_get_name259_c_1_q ^ i_pivot621_v4l2_ctrl_get_name131_c;

    // i_acl_731_v4l2_ctrl_get_name368(MUX,661)@3
    assign i_acl_731_v4l2_ctrl_get_name368_s = i_acl_724_v4l2_ctrl_get_name367_q;
    always @(i_acl_731_v4l2_ctrl_get_name368_s or i_acl_723_v4l2_ctrl_get_name366_q or c_i64_4615908143078047744971_q)
    begin
        unique case (i_acl_731_v4l2_ctrl_get_name368_s)
            1'b0 : i_acl_731_v4l2_ctrl_get_name368_q = i_acl_723_v4l2_ctrl_get_name366_q;
            1'b1 : i_acl_731_v4l2_ctrl_get_name368_q = c_i64_4615908143078047744971_q;
            default : i_acl_731_v4l2_ctrl_get_name368_q = 64'b0;
        endcase
    end

    // c_i32_443917_recast_x(CONSTANT,1323)
    assign c_i32_443917_recast_x_q = $unsigned(32'b00000000000000000000000110111011);

    // redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2(DELAY,1543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_1_q);
        end
    end

    // i_pivot619_v4l2_ctrl_get_name261(COMPARE,907)@3
    assign i_pivot619_v4l2_ctrl_get_name261_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot619_v4l2_ctrl_get_name261_b = $unsigned({{2{c_i32_443917_recast_x_q[31]}}, c_i32_443917_recast_x_q});
    assign i_pivot619_v4l2_ctrl_get_name261_o = $unsigned($signed(i_pivot619_v4l2_ctrl_get_name261_a) - $signed(i_pivot619_v4l2_ctrl_get_name261_b));
    assign i_pivot619_v4l2_ctrl_get_name261_c[0] = i_pivot619_v4l2_ctrl_get_name261_o[33];

    // i_acl_732_v4l2_ctrl_get_name369(LOGICAL,662)@3
    assign i_acl_732_v4l2_ctrl_get_name369_q = i_pivot621_v4l2_ctrl_get_name131_c ^ i_pivot619_v4l2_ctrl_get_name261_c;

    // i_acl_739_v4l2_ctrl_get_name370(MUX,663)@3
    assign i_acl_739_v4l2_ctrl_get_name370_s = i_acl_732_v4l2_ctrl_get_name369_q;
    always @(i_acl_739_v4l2_ctrl_get_name370_s or i_acl_731_v4l2_ctrl_get_name368_q or c_i64_4616189618054758400972_q)
    begin
        unique case (i_acl_739_v4l2_ctrl_get_name370_s)
            1'b0 : i_acl_739_v4l2_ctrl_get_name370_q = i_acl_731_v4l2_ctrl_get_name368_q;
            1'b1 : i_acl_739_v4l2_ctrl_get_name370_q = c_i64_4616189618054758400972_q;
            default : i_acl_739_v4l2_ctrl_get_name370_q = 64'b0;
        endcase
    end

    // c_i32_427849_recast_x(CONSTANT,1307)
    assign c_i32_427849_recast_x_q = $unsigned(32'b00000000000000000000000110101011);

    // i_pivot593_v4l2_ctrl_get_name125(COMPARE,893)@3
    assign i_pivot593_v4l2_ctrl_get_name125_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot593_v4l2_ctrl_get_name125_b = $unsigned({{2{c_i32_427849_recast_x_q[31]}}, c_i32_427849_recast_x_q});
    assign i_pivot593_v4l2_ctrl_get_name125_o = $unsigned($signed(i_pivot593_v4l2_ctrl_get_name125_a) - $signed(i_pivot593_v4l2_ctrl_get_name125_b));
    assign i_pivot593_v4l2_ctrl_get_name125_c[0] = i_pivot593_v4l2_ctrl_get_name125_o[33];

    // c_i32_426910_recast_x(CONSTANT,1306)
    assign c_i32_426910_recast_x_q = $unsigned(32'b00000000000000000000000110101010);

    // i_pivot587_v4l2_ctrl_get_name247(COMPARE,890)@3
    assign i_pivot587_v4l2_ctrl_get_name247_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot587_v4l2_ctrl_get_name247_b = $unsigned({{2{c_i32_426910_recast_x_q[31]}}, c_i32_426910_recast_x_q});
    assign i_pivot587_v4l2_ctrl_get_name247_o = $unsigned($signed(i_pivot587_v4l2_ctrl_get_name247_a) - $signed(i_pivot587_v4l2_ctrl_get_name247_b));
    assign i_pivot587_v4l2_ctrl_get_name247_c[0] = i_pivot587_v4l2_ctrl_get_name247_o[33];

    // i_acl_740_v4l2_ctrl_get_name371(LOGICAL,664)@3
    assign i_acl_740_v4l2_ctrl_get_name371_q = i_pivot587_v4l2_ctrl_get_name247_c ^ i_pivot593_v4l2_ctrl_get_name125_c;

    // i_acl_747_v4l2_ctrl_get_name372(MUX,665)@3 + 1
    assign i_acl_747_v4l2_ctrl_get_name372_s = i_acl_740_v4l2_ctrl_get_name371_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_747_v4l2_ctrl_get_name372_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_747_v4l2_ctrl_get_name372_s)
                1'b0 : i_acl_747_v4l2_ctrl_get_name372_q <= i_acl_739_v4l2_ctrl_get_name370_q;
                1'b1 : i_acl_747_v4l2_ctrl_get_name372_q <= c_i64_4616471093031469056973_q;
                default : i_acl_747_v4l2_ctrl_get_name372_q <= 64'b0;
            endcase
        end
    end

    // c_i32_431912_recast_x(CONSTANT,1311)
    assign c_i32_431912_recast_x_q = $unsigned(32'b00000000000000000000000110101111);

    // i_pivot595_v4l2_ctrl_get_name251(COMPARE,894)@3
    assign i_pivot595_v4l2_ctrl_get_name251_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot595_v4l2_ctrl_get_name251_b = $unsigned({{2{c_i32_431912_recast_x_q[31]}}, c_i32_431912_recast_x_q});
    assign i_pivot595_v4l2_ctrl_get_name251_o = $unsigned($signed(i_pivot595_v4l2_ctrl_get_name251_a) - $signed(i_pivot595_v4l2_ctrl_get_name251_b));
    assign i_pivot595_v4l2_ctrl_get_name251_c[0] = i_pivot595_v4l2_ctrl_get_name251_o[33];

    // c_i32_430818_recast_x(CONSTANT,1310)
    assign c_i32_430818_recast_x_q = $unsigned(32'b00000000000000000000000110101110);

    // i_pivot603_v4l2_ctrl_get_name63(COMPARE,899)@3
    assign i_pivot603_v4l2_ctrl_get_name63_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot603_v4l2_ctrl_get_name63_b = $unsigned({{2{c_i32_430818_recast_x_q[31]}}, c_i32_430818_recast_x_q});
    assign i_pivot603_v4l2_ctrl_get_name63_o = $unsigned($signed(i_pivot603_v4l2_ctrl_get_name63_a) - $signed(i_pivot603_v4l2_ctrl_get_name63_b));
    assign i_pivot603_v4l2_ctrl_get_name63_c[0] = i_pivot603_v4l2_ctrl_get_name63_o[33];

    // i_acl_749_v4l2_ctrl_get_name373(LOGICAL,666)@3 + 1
    assign i_acl_749_v4l2_ctrl_get_name373_qi = i_pivot603_v4l2_ctrl_get_name63_c ^ i_pivot595_v4l2_ctrl_get_name251_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_749_v4l2_ctrl_get_name373_delay ( .xin(i_acl_749_v4l2_ctrl_get_name373_qi), .xout(i_acl_749_v4l2_ctrl_get_name373_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_755_v4l2_ctrl_get_name374(MUX,667)@4
    assign i_acl_755_v4l2_ctrl_get_name374_s = i_acl_749_v4l2_ctrl_get_name373_q;
    always @(i_acl_755_v4l2_ctrl_get_name374_s or i_acl_747_v4l2_ctrl_get_name372_q or c_i64_4616752568008179712974_q)
    begin
        unique case (i_acl_755_v4l2_ctrl_get_name374_s)
            1'b0 : i_acl_755_v4l2_ctrl_get_name374_q = i_acl_747_v4l2_ctrl_get_name372_q;
            1'b1 : i_acl_755_v4l2_ctrl_get_name374_q = c_i64_4616752568008179712974_q;
            default : i_acl_755_v4l2_ctrl_get_name374_q = 64'b0;
        endcase
    end

    // c_i32_410904_recast_x(CONSTANT,1290)
    assign c_i32_410904_recast_x_q = $unsigned(32'b00000000000000000000000110011010);

    // i_pivot555_v4l2_ctrl_get_name235(COMPARE,874)@3 + 1
    assign i_pivot555_v4l2_ctrl_get_name235_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot555_v4l2_ctrl_get_name235_b = $unsigned({{2{c_i32_410904_recast_x_q[31]}}, c_i32_410904_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot555_v4l2_ctrl_get_name235_o <= 34'b0;
        end
        else
        begin
            i_pivot555_v4l2_ctrl_get_name235_o <= $unsigned($signed(i_pivot555_v4l2_ctrl_get_name235_a) - $signed(i_pivot555_v4l2_ctrl_get_name235_b));
        end
    end
    assign i_pivot555_v4l2_ctrl_get_name235_c[0] = i_pivot555_v4l2_ctrl_get_name235_o[33];

    // c_i32_409816_recast_x(CONSTANT,1289)
    assign c_i32_409816_recast_x_q = $unsigned(32'b00000000000000000000000110011001);

    // i_pivot563_v4l2_ctrl_get_name59(COMPARE,878)@3 + 1
    assign i_pivot563_v4l2_ctrl_get_name59_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot563_v4l2_ctrl_get_name59_b = $unsigned({{2{c_i32_409816_recast_x_q[31]}}, c_i32_409816_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot563_v4l2_ctrl_get_name59_o <= 34'b0;
        end
        else
        begin
            i_pivot563_v4l2_ctrl_get_name59_o <= $unsigned($signed(i_pivot563_v4l2_ctrl_get_name59_a) - $signed(i_pivot563_v4l2_ctrl_get_name59_b));
        end
    end
    assign i_pivot563_v4l2_ctrl_get_name59_c[0] = i_pivot563_v4l2_ctrl_get_name59_o[33];

    // i_acl_757_v4l2_ctrl_get_name375(LOGICAL,668)@4
    assign i_acl_757_v4l2_ctrl_get_name375_q = i_pivot563_v4l2_ctrl_get_name59_c ^ i_pivot555_v4l2_ctrl_get_name235_c;

    // i_acl_763_v4l2_ctrl_get_name376(MUX,669)@4
    assign i_acl_763_v4l2_ctrl_get_name376_s = i_acl_757_v4l2_ctrl_get_name375_q;
    always @(i_acl_763_v4l2_ctrl_get_name376_s or i_acl_755_v4l2_ctrl_get_name374_q or c_i64_4617034042984890368975_q)
    begin
        unique case (i_acl_763_v4l2_ctrl_get_name376_s)
            1'b0 : i_acl_763_v4l2_ctrl_get_name376_q = i_acl_755_v4l2_ctrl_get_name374_q;
            1'b1 : i_acl_763_v4l2_ctrl_get_name376_q = c_i64_4617034042984890368975_q;
            default : i_acl_763_v4l2_ctrl_get_name376_q = 64'b0;
        endcase
    end

    // c_i32_164976_recast_x(CONSTANT,1163)
    assign c_i32_164976_recast_x_q = $unsigned(32'b00000000000000000000000010100100);

    // redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3(DELAY,1544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q <= $unsigned(redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q);
        end
    end

    // i_unnamed_v4l2_ctrl_get_name377(LOGICAL,946)@4
    assign i_unnamed_v4l2_ctrl_get_name377_q = $unsigned(redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q == c_i32_164976_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_772_v4l2_ctrl_get_name379(MUX,670)@4
    assign i_acl_772_v4l2_ctrl_get_name379_s = i_unnamed_v4l2_ctrl_get_name377_q;
    always @(i_acl_772_v4l2_ctrl_get_name379_s or i_acl_763_v4l2_ctrl_get_name376_q or c_i64_4617315517961601024977_q)
    begin
        unique case (i_acl_772_v4l2_ctrl_get_name379_s)
            1'b0 : i_acl_772_v4l2_ctrl_get_name379_q = i_acl_763_v4l2_ctrl_get_name376_q;
            1'b1 : i_acl_772_v4l2_ctrl_get_name379_q = c_i64_4617315517961601024977_q;
            default : i_acl_772_v4l2_ctrl_get_name379_q = 64'b0;
        endcase
    end

    // redist87_i_pivot605_v4l2_ctrl_get_name31_c_2(DELAY,1629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_pivot605_v4l2_ctrl_get_name31_c_2_q <= '0;
        end
        else
        begin
            redist87_i_pivot605_v4l2_ctrl_get_name31_c_2_q <= $unsigned(i_pivot605_v4l2_ctrl_get_name31_c);
        end
    end

    // i_acl_775_v4l2_ctrl_get_name380(LOGICAL,671)@3 + 1
    assign i_acl_775_v4l2_ctrl_get_name380_qi = redist87_i_pivot605_v4l2_ctrl_get_name31_c_2_q ^ i_pivot587_v4l2_ctrl_get_name247_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_775_v4l2_ctrl_get_name380_delay ( .xin(i_acl_775_v4l2_ctrl_get_name380_qi), .xout(i_acl_775_v4l2_ctrl_get_name380_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_780_v4l2_ctrl_get_name381(MUX,672)@4
    assign i_acl_780_v4l2_ctrl_get_name381_s = i_acl_775_v4l2_ctrl_get_name380_q;
    always @(i_acl_780_v4l2_ctrl_get_name381_s or i_acl_772_v4l2_ctrl_get_name379_q or c_i64_4617596992938311680978_q)
    begin
        unique case (i_acl_780_v4l2_ctrl_get_name381_s)
            1'b0 : i_acl_780_v4l2_ctrl_get_name381_q = i_acl_772_v4l2_ctrl_get_name379_q;
            1'b1 : i_acl_780_v4l2_ctrl_get_name381_q = c_i64_4617596992938311680978_q;
            default : i_acl_780_v4l2_ctrl_get_name381_q = 64'b0;
        endcase
    end

    // c_i32_375890_recast_x(CONSTANT,1255)
    assign c_i32_375890_recast_x_q = $unsigned(32'b00000000000000000000000101110111);

    // i_pivot489_v4l2_ctrl_get_name207(COMPARE,841)@3 + 1
    assign i_pivot489_v4l2_ctrl_get_name207_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot489_v4l2_ctrl_get_name207_b = $unsigned({{2{c_i32_375890_recast_x_q[31]}}, c_i32_375890_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot489_v4l2_ctrl_get_name207_o <= 34'b0;
        end
        else
        begin
            i_pivot489_v4l2_ctrl_get_name207_o <= $unsigned($signed(i_pivot489_v4l2_ctrl_get_name207_a) - $signed(i_pivot489_v4l2_ctrl_get_name207_b));
        end
    end
    assign i_pivot489_v4l2_ctrl_get_name207_c[0] = i_pivot489_v4l2_ctrl_get_name207_o[33];

    // c_i32_374789_recast_x(CONSTANT,1254)
    assign c_i32_374789_recast_x_q = $unsigned(32'b00000000000000000000000101110110);

    // i_pivot653_v4l2_ctrl_get_name5(COMPARE,923)@3 + 1
    assign i_pivot653_v4l2_ctrl_get_name5_a = $unsigned({{2{redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q[31]}}, redist1_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_2_q});
    assign i_pivot653_v4l2_ctrl_get_name5_b = $unsigned({{2{c_i32_374789_recast_x_q[31]}}, c_i32_374789_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot653_v4l2_ctrl_get_name5_o <= 34'b0;
        end
        else
        begin
            i_pivot653_v4l2_ctrl_get_name5_o <= $unsigned($signed(i_pivot653_v4l2_ctrl_get_name5_a) - $signed(i_pivot653_v4l2_ctrl_get_name5_b));
        end
    end
    assign i_pivot653_v4l2_ctrl_get_name5_c[0] = i_pivot653_v4l2_ctrl_get_name5_o[33];

    // i_acl_786_v4l2_ctrl_get_name382(LOGICAL,673)@4
    assign i_acl_786_v4l2_ctrl_get_name382_q = i_pivot653_v4l2_ctrl_get_name5_c ^ i_pivot489_v4l2_ctrl_get_name207_c;

    // i_acl_788_v4l2_ctrl_get_name383(MUX,674)@4
    assign i_acl_788_v4l2_ctrl_get_name383_s = i_acl_786_v4l2_ctrl_get_name382_q;
    always @(i_acl_788_v4l2_ctrl_get_name383_s or i_acl_780_v4l2_ctrl_get_name381_q or c_i64_4617878467915022336979_q)
    begin
        unique case (i_acl_788_v4l2_ctrl_get_name383_s)
            1'b0 : i_acl_788_v4l2_ctrl_get_name383_q = i_acl_780_v4l2_ctrl_get_name381_q;
            1'b1 : i_acl_788_v4l2_ctrl_get_name383_q = c_i64_4617878467915022336979_q;
            default : i_acl_788_v4l2_ctrl_get_name383_q = 64'b0;
        endcase
    end

    // c_i32_399815_recast_x(CONSTANT,1279)
    assign c_i32_399815_recast_x_q = $unsigned(32'b00000000000000000000000110001111);

    // i_pivot543_v4l2_ctrl_get_name57(COMPARE,868)@4
    assign i_pivot543_v4l2_ctrl_get_name57_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot543_v4l2_ctrl_get_name57_b = $unsigned({{2{c_i32_399815_recast_x_q[31]}}, c_i32_399815_recast_x_q});
    assign i_pivot543_v4l2_ctrl_get_name57_o = $unsigned($signed(i_pivot543_v4l2_ctrl_get_name57_a) - $signed(i_pivot543_v4l2_ctrl_get_name57_b));
    assign i_pivot543_v4l2_ctrl_get_name57_c[0] = i_pivot543_v4l2_ctrl_get_name57_o[33];

    // c_i32_398946_recast_x(CONSTANT,1278)
    assign c_i32_398946_recast_x_q = $unsigned(32'b00000000000000000000000110001110);

    // i_pivot529_v4l2_ctrl_get_name319(COMPARE,861)@4
    assign i_pivot529_v4l2_ctrl_get_name319_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot529_v4l2_ctrl_get_name319_b = $unsigned({{2{c_i32_398946_recast_x_q[31]}}, c_i32_398946_recast_x_q});
    assign i_pivot529_v4l2_ctrl_get_name319_o = $unsigned($signed(i_pivot529_v4l2_ctrl_get_name319_a) - $signed(i_pivot529_v4l2_ctrl_get_name319_b));
    assign i_pivot529_v4l2_ctrl_get_name319_c[0] = i_pivot529_v4l2_ctrl_get_name319_o[33];

    // i_acl_791_v4l2_ctrl_get_name384(LOGICAL,675)@4
    assign i_acl_791_v4l2_ctrl_get_name384_q = i_pivot529_v4l2_ctrl_get_name319_c ^ i_pivot543_v4l2_ctrl_get_name57_c;

    // i_acl_797_v4l2_ctrl_get_name385(MUX,676)@4
    assign i_acl_797_v4l2_ctrl_get_name385_s = i_acl_791_v4l2_ctrl_get_name384_q;
    always @(i_acl_797_v4l2_ctrl_get_name385_s or i_acl_788_v4l2_ctrl_get_name383_q or c_i64_4618159942891732992980_q)
    begin
        unique case (i_acl_797_v4l2_ctrl_get_name385_s)
            1'b0 : i_acl_797_v4l2_ctrl_get_name385_q = i_acl_788_v4l2_ctrl_get_name383_q;
            1'b1 : i_acl_797_v4l2_ctrl_get_name385_q = c_i64_4618159942891732992980_q;
            default : i_acl_797_v4l2_ctrl_get_name385_q = 64'b0;
        endcase
    end

    // c_i32_438915_recast_x(CONSTANT,1318)
    assign c_i32_438915_recast_x_q = $unsigned(32'b00000000000000000000000110110110);

    // i_pivot611_v4l2_ctrl_get_name257(COMPARE,903)@4
    assign i_pivot611_v4l2_ctrl_get_name257_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot611_v4l2_ctrl_get_name257_b = $unsigned({{2{c_i32_438915_recast_x_q[31]}}, c_i32_438915_recast_x_q});
    assign i_pivot611_v4l2_ctrl_get_name257_o = $unsigned($signed(i_pivot611_v4l2_ctrl_get_name257_a) - $signed(i_pivot611_v4l2_ctrl_get_name257_b));
    assign i_pivot611_v4l2_ctrl_get_name257_c[0] = i_pivot611_v4l2_ctrl_get_name257_o[33];

    // c_i32_437851_recast_x(CONSTANT,1317)
    assign c_i32_437851_recast_x_q = $unsigned(32'b00000000000000000000000110110101);

    // i_pivot613_v4l2_ctrl_get_name129(COMPARE,904)@4
    assign i_pivot613_v4l2_ctrl_get_name129_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot613_v4l2_ctrl_get_name129_b = $unsigned({{2{c_i32_437851_recast_x_q[31]}}, c_i32_437851_recast_x_q});
    assign i_pivot613_v4l2_ctrl_get_name129_o = $unsigned($signed(i_pivot613_v4l2_ctrl_get_name129_a) - $signed(i_pivot613_v4l2_ctrl_get_name129_b));
    assign i_pivot613_v4l2_ctrl_get_name129_c[0] = i_pivot613_v4l2_ctrl_get_name129_o[33];

    // i_acl_798_v4l2_ctrl_get_name386(LOGICAL,677)@4
    assign i_acl_798_v4l2_ctrl_get_name386_q = i_pivot613_v4l2_ctrl_get_name129_c ^ i_pivot611_v4l2_ctrl_get_name257_c;

    // i_acl_805_v4l2_ctrl_get_name387(MUX,678)@4 + 1
    assign i_acl_805_v4l2_ctrl_get_name387_s = i_acl_798_v4l2_ctrl_get_name386_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_805_v4l2_ctrl_get_name387_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_805_v4l2_ctrl_get_name387_s)
                1'b0 : i_acl_805_v4l2_ctrl_get_name387_q <= i_acl_797_v4l2_ctrl_get_name385_q;
                1'b1 : i_acl_805_v4l2_ctrl_get_name387_q <= c_i64_4618441417868443648981_q;
                default : i_acl_805_v4l2_ctrl_get_name387_q <= 64'b0;
            endcase
        end
    end

    // c_i32_376839_recast_x(CONSTANT,1256)
    assign c_i32_376839_recast_x_q = $unsigned(32'b00000000000000000000000101111000);

    // i_pivot495_v4l2_ctrl_get_name105(COMPARE,844)@4
    assign i_pivot495_v4l2_ctrl_get_name105_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot495_v4l2_ctrl_get_name105_b = $unsigned({{2{c_i32_376839_recast_x_q[31]}}, c_i32_376839_recast_x_q});
    assign i_pivot495_v4l2_ctrl_get_name105_o = $unsigned($signed(i_pivot495_v4l2_ctrl_get_name105_a) - $signed(i_pivot495_v4l2_ctrl_get_name105_b));
    assign i_pivot495_v4l2_ctrl_get_name105_c[0] = i_pivot495_v4l2_ctrl_get_name105_o[33];

    // i_acl_806_v4l2_ctrl_get_name388(LOGICAL,679)@4 + 1
    assign i_acl_806_v4l2_ctrl_get_name388_qi = i_pivot489_v4l2_ctrl_get_name207_c ^ i_pivot495_v4l2_ctrl_get_name105_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_806_v4l2_ctrl_get_name388_delay ( .xin(i_acl_806_v4l2_ctrl_get_name388_qi), .xout(i_acl_806_v4l2_ctrl_get_name388_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_813_v4l2_ctrl_get_name389(MUX,680)@5
    assign i_acl_813_v4l2_ctrl_get_name389_s = i_acl_806_v4l2_ctrl_get_name388_q;
    always @(i_acl_813_v4l2_ctrl_get_name389_s or i_acl_805_v4l2_ctrl_get_name387_q or c_i64_4618722892845154304982_q)
    begin
        unique case (i_acl_813_v4l2_ctrl_get_name389_s)
            1'b0 : i_acl_813_v4l2_ctrl_get_name389_q = i_acl_805_v4l2_ctrl_get_name387_q;
            1'b1 : i_acl_813_v4l2_ctrl_get_name389_q = c_i64_4618722892845154304982_q;
            default : i_acl_813_v4l2_ctrl_get_name389_q = 64'b0;
        endcase
    end

    // c_i32_373941_recast_x(CONSTANT,1253)
    assign c_i32_373941_recast_x_q = $unsigned(32'b00000000000000000000000101110101);

    // i_pivot475_v4l2_ctrl_get_name309(COMPARE,834)@4
    assign i_pivot475_v4l2_ctrl_get_name309_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot475_v4l2_ctrl_get_name309_b = $unsigned({{2{c_i32_373941_recast_x_q[31]}}, c_i32_373941_recast_x_q});
    assign i_pivot475_v4l2_ctrl_get_name309_o = $unsigned($signed(i_pivot475_v4l2_ctrl_get_name309_a) - $signed(i_pivot475_v4l2_ctrl_get_name309_b));
    assign i_pivot475_v4l2_ctrl_get_name309_c[0] = i_pivot475_v4l2_ctrl_get_name309_o[33];

    // redist109_i_pivot477_v4l2_ctrl_get_name205_c_2(DELAY,1651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_delay_0 <= '0;
            redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_q <= '0;
        end
        else
        begin
            redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_delay_0 <= $unsigned(i_pivot477_v4l2_ctrl_get_name205_c);
            redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_q <= redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_delay_0;
        end
    end

    // i_acl_814_v4l2_ctrl_get_name390(LOGICAL,681)@4 + 1
    assign i_acl_814_v4l2_ctrl_get_name390_qi = redist109_i_pivot477_v4l2_ctrl_get_name205_c_2_q ^ i_pivot475_v4l2_ctrl_get_name309_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_814_v4l2_ctrl_get_name390_delay ( .xin(i_acl_814_v4l2_ctrl_get_name390_qi), .xout(i_acl_814_v4l2_ctrl_get_name390_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_822_v4l2_ctrl_get_name391(MUX,682)@5
    assign i_acl_822_v4l2_ctrl_get_name391_s = i_acl_814_v4l2_ctrl_get_name390_q;
    always @(i_acl_822_v4l2_ctrl_get_name391_s or i_acl_813_v4l2_ctrl_get_name389_q or c_i64_4619004367821864960983_q)
    begin
        unique case (i_acl_822_v4l2_ctrl_get_name391_s)
            1'b0 : i_acl_822_v4l2_ctrl_get_name391_q = i_acl_813_v4l2_ctrl_get_name389_q;
            1'b1 : i_acl_822_v4l2_ctrl_get_name391_q = c_i64_4619004367821864960983_q;
            default : i_acl_822_v4l2_ctrl_get_name391_q = 64'b0;
        endcase
    end

    // c_i32_134857_recast_x(CONSTANT,1155)
    assign c_i32_134857_recast_x_q = $unsigned(32'b00000000000000000000000010000110);

    // i_pivot9_v4l2_ctrl_get_name141(COMPARE,926)@4 + 1
    assign i_pivot9_v4l2_ctrl_get_name141_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot9_v4l2_ctrl_get_name141_b = $unsigned({{2{c_i32_134857_recast_x_q[31]}}, c_i32_134857_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot9_v4l2_ctrl_get_name141_o <= 34'b0;
        end
        else
        begin
            i_pivot9_v4l2_ctrl_get_name141_o <= $unsigned($signed(i_pivot9_v4l2_ctrl_get_name141_a) - $signed(i_pivot9_v4l2_ctrl_get_name141_b));
        end
    end
    assign i_pivot9_v4l2_ctrl_get_name141_c[0] = i_pivot9_v4l2_ctrl_get_name141_o[33];

    // c_i32_133804_recast_x(CONSTANT,1154)
    assign c_i32_133804_recast_x_q = $unsigned(32'b00000000000000000000000010000101);

    // i_pivot17_v4l2_ctrl_get_name35(COMPARE,758)@4 + 1
    assign i_pivot17_v4l2_ctrl_get_name35_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot17_v4l2_ctrl_get_name35_b = $unsigned({{2{c_i32_133804_recast_x_q[31]}}, c_i32_133804_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot17_v4l2_ctrl_get_name35_o <= 34'b0;
        end
        else
        begin
            i_pivot17_v4l2_ctrl_get_name35_o <= $unsigned($signed(i_pivot17_v4l2_ctrl_get_name35_a) - $signed(i_pivot17_v4l2_ctrl_get_name35_b));
        end
    end
    assign i_pivot17_v4l2_ctrl_get_name35_c[0] = i_pivot17_v4l2_ctrl_get_name35_o[33];

    // i_acl_824_v4l2_ctrl_get_name392(LOGICAL,683)@5
    assign i_acl_824_v4l2_ctrl_get_name392_q = i_pivot17_v4l2_ctrl_get_name35_c ^ i_pivot9_v4l2_ctrl_get_name141_c;

    // i_acl_830_v4l2_ctrl_get_name393(MUX,684)@5
    assign i_acl_830_v4l2_ctrl_get_name393_s = i_acl_824_v4l2_ctrl_get_name392_q;
    always @(i_acl_830_v4l2_ctrl_get_name393_s or i_acl_822_v4l2_ctrl_get_name391_q or c_i64_4619285842798575616984_q)
    begin
        unique case (i_acl_830_v4l2_ctrl_get_name393_s)
            1'b0 : i_acl_830_v4l2_ctrl_get_name393_q = i_acl_822_v4l2_ctrl_get_name391_q;
            1'b1 : i_acl_830_v4l2_ctrl_get_name393_q = c_i64_4619285842798575616984_q;
            default : i_acl_830_v4l2_ctrl_get_name393_q = 64'b0;
        endcase
    end

    // c_i32_187985_recast_x(CONSTANT,1165)
    assign c_i32_187985_recast_x_q = $unsigned(32'b00000000000000000000000010111011);

    // redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4(DELAY,1545)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q <= '0;
        end
        else
        begin
            redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q <= $unsigned(redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q);
        end
    end

    // i_unnamed_v4l2_ctrl_get_name394(LOGICAL,947)@5
    assign i_unnamed_v4l2_ctrl_get_name394_q = $unsigned(redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q == c_i32_187985_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_839_v4l2_ctrl_get_name396(MUX,685)@5
    assign i_acl_839_v4l2_ctrl_get_name396_s = i_unnamed_v4l2_ctrl_get_name394_q;
    always @(i_acl_839_v4l2_ctrl_get_name396_s or i_acl_830_v4l2_ctrl_get_name393_q or c_i64_4619567317775286272986_q)
    begin
        unique case (i_acl_839_v4l2_ctrl_get_name396_s)
            1'b0 : i_acl_839_v4l2_ctrl_get_name396_q = i_acl_830_v4l2_ctrl_get_name393_q;
            1'b1 : i_acl_839_v4l2_ctrl_get_name396_q = c_i64_4619567317775286272986_q;
            default : i_acl_839_v4l2_ctrl_get_name396_q = 64'b0;
        endcase
    end

    // redist108_i_pivot479_v4l2_ctrl_get_name103_c_3(DELAY,1650)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_0 <= '0;
            redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_1 <= '0;
            redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_q <= '0;
        end
        else
        begin
            redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_0 <= $unsigned(i_pivot479_v4l2_ctrl_get_name103_c);
            redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_1 <= redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_0;
            redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_q <= redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_delay_1;
        end
    end

    // c_i32_370940_recast_x(CONSTANT,1250)
    assign c_i32_370940_recast_x_q = $unsigned(32'b00000000000000000000000101110010);

    // i_pivot471_v4l2_ctrl_get_name307(COMPARE,832)@4 + 1
    assign i_pivot471_v4l2_ctrl_get_name307_a = $unsigned({{2{redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q[31]}}, redist2_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_3_q});
    assign i_pivot471_v4l2_ctrl_get_name307_b = $unsigned({{2{c_i32_370940_recast_x_q[31]}}, c_i32_370940_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot471_v4l2_ctrl_get_name307_o <= 34'b0;
        end
        else
        begin
            i_pivot471_v4l2_ctrl_get_name307_o <= $unsigned($signed(i_pivot471_v4l2_ctrl_get_name307_a) - $signed(i_pivot471_v4l2_ctrl_get_name307_b));
        end
    end
    assign i_pivot471_v4l2_ctrl_get_name307_c[0] = i_pivot471_v4l2_ctrl_get_name307_o[33];

    // i_acl_841_v4l2_ctrl_get_name397(LOGICAL,686)@5
    assign i_acl_841_v4l2_ctrl_get_name397_q = i_pivot471_v4l2_ctrl_get_name307_c ^ redist108_i_pivot479_v4l2_ctrl_get_name103_c_3_q;

    // i_acl_848_v4l2_ctrl_get_name398(MUX,687)@5
    assign i_acl_848_v4l2_ctrl_get_name398_s = i_acl_841_v4l2_ctrl_get_name397_q;
    always @(i_acl_848_v4l2_ctrl_get_name398_s or i_acl_839_v4l2_ctrl_get_name396_q or c_i64_4619848792751996928987_q)
    begin
        unique case (i_acl_848_v4l2_ctrl_get_name398_s)
            1'b0 : i_acl_848_v4l2_ctrl_get_name398_q = i_acl_839_v4l2_ctrl_get_name396_q;
            1'b1 : i_acl_848_v4l2_ctrl_get_name398_q = c_i64_4619848792751996928987_q;
            default : i_acl_848_v4l2_ctrl_get_name398_q = 64'b0;
        endcase
    end

    // c_i32_132923_recast_x(CONSTANT,1153)
    assign c_i32_132923_recast_x_q = $unsigned(32'b00000000000000000000000010000100);

    // i_pivot3_v4l2_ctrl_get_name273(COMPARE,796)@5
    assign i_pivot3_v4l2_ctrl_get_name273_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot3_v4l2_ctrl_get_name273_b = $unsigned({{2{c_i32_132923_recast_x_q[31]}}, c_i32_132923_recast_x_q});
    assign i_pivot3_v4l2_ctrl_get_name273_o = $unsigned($signed(i_pivot3_v4l2_ctrl_get_name273_a) - $signed(i_pivot3_v4l2_ctrl_get_name273_b));
    assign i_pivot3_v4l2_ctrl_get_name273_c[0] = i_pivot3_v4l2_ctrl_get_name273_o[33];

    // i_acl_851_v4l2_ctrl_get_name399(LOGICAL,688)@5
    assign i_acl_851_v4l2_ctrl_get_name399_q = i_pivot3_v4l2_ctrl_get_name273_c ^ i_pivot17_v4l2_ctrl_get_name35_c;

    // i_acl_857_v4l2_ctrl_get_name400(MUX,689)@5
    assign i_acl_857_v4l2_ctrl_get_name400_s = i_acl_851_v4l2_ctrl_get_name399_q;
    always @(i_acl_857_v4l2_ctrl_get_name400_s or i_acl_848_v4l2_ctrl_get_name398_q or c_i64_4620130267728707584988_q)
    begin
        unique case (i_acl_857_v4l2_ctrl_get_name400_s)
            1'b0 : i_acl_857_v4l2_ctrl_get_name400_q = i_acl_848_v4l2_ctrl_get_name398_q;
            1'b1 : i_acl_857_v4l2_ctrl_get_name400_q = c_i64_4620130267728707584988_q;
            default : i_acl_857_v4l2_ctrl_get_name400_q = 64'b0;
        endcase
    end

    // c_i32_149989_recast_x(CONSTANT,1159)
    assign c_i32_149989_recast_x_q = $unsigned(32'b00000000000000000000000010010101);

    // i_unnamed_v4l2_ctrl_get_name401(LOGICAL,948)@5
    assign i_unnamed_v4l2_ctrl_get_name401_q = $unsigned(redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q == c_i32_149989_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_865_v4l2_ctrl_get_name403(MUX,690)@5 + 1
    assign i_acl_865_v4l2_ctrl_get_name403_s = i_unnamed_v4l2_ctrl_get_name401_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_865_v4l2_ctrl_get_name403_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_865_v4l2_ctrl_get_name403_s)
                1'b0 : i_acl_865_v4l2_ctrl_get_name403_q <= i_acl_857_v4l2_ctrl_get_name400_q;
                1'b1 : i_acl_865_v4l2_ctrl_get_name403_q <= c_i64_4620411742705418240990_q;
                default : i_acl_865_v4l2_ctrl_get_name403_q <= 64'b0;
            endcase
        end
    end

    // redist88_i_pivot603_v4l2_ctrl_get_name63_c_2(DELAY,1630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_delay_0 <= '0;
            redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_q <= '0;
        end
        else
        begin
            redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_delay_0 <= $unsigned(i_pivot603_v4l2_ctrl_get_name63_c);
            redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_q <= redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_delay_0;
        end
    end

    // c_i32_429953_recast_x(CONSTANT,1309)
    assign c_i32_429953_recast_x_q = $unsigned(32'b00000000000000000000000110101101);

    // i_pivot589_v4l2_ctrl_get_name333(COMPARE,891)@5
    assign i_pivot589_v4l2_ctrl_get_name333_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot589_v4l2_ctrl_get_name333_b = $unsigned({{2{c_i32_429953_recast_x_q[31]}}, c_i32_429953_recast_x_q});
    assign i_pivot589_v4l2_ctrl_get_name333_o = $unsigned($signed(i_pivot589_v4l2_ctrl_get_name333_a) - $signed(i_pivot589_v4l2_ctrl_get_name333_b));
    assign i_pivot589_v4l2_ctrl_get_name333_c[0] = i_pivot589_v4l2_ctrl_get_name333_o[33];

    // i_acl_868_v4l2_ctrl_get_name404(LOGICAL,691)@5 + 1
    assign i_acl_868_v4l2_ctrl_get_name404_qi = i_pivot589_v4l2_ctrl_get_name333_c ^ redist88_i_pivot603_v4l2_ctrl_get_name63_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_868_v4l2_ctrl_get_name404_delay ( .xin(i_acl_868_v4l2_ctrl_get_name404_qi), .xout(i_acl_868_v4l2_ctrl_get_name404_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_874_v4l2_ctrl_get_name405(MUX,692)@6
    assign i_acl_874_v4l2_ctrl_get_name405_s = i_acl_868_v4l2_ctrl_get_name404_q;
    always @(i_acl_874_v4l2_ctrl_get_name405_s or i_acl_865_v4l2_ctrl_get_name403_q or c_i64_4620693217682128896991_q)
    begin
        unique case (i_acl_874_v4l2_ctrl_get_name405_s)
            1'b0 : i_acl_874_v4l2_ctrl_get_name405_q = i_acl_865_v4l2_ctrl_get_name403_q;
            1'b1 : i_acl_874_v4l2_ctrl_get_name405_q = c_i64_4620693217682128896991_q;
            default : i_acl_874_v4l2_ctrl_get_name405_q = 64'b0;
        endcase
    end

    // c_i32_423909_recast_x(CONSTANT,1303)
    assign c_i32_423909_recast_x_q = $unsigned(32'b00000000000000000000000110100111);

    // i_pivot581_v4l2_ctrl_get_name245(COMPARE,887)@5
    assign i_pivot581_v4l2_ctrl_get_name245_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot581_v4l2_ctrl_get_name245_b = $unsigned({{2{c_i32_423909_recast_x_q[31]}}, c_i32_423909_recast_x_q});
    assign i_pivot581_v4l2_ctrl_get_name245_o = $unsigned($signed(i_pivot581_v4l2_ctrl_get_name245_a) - $signed(i_pivot581_v4l2_ctrl_get_name245_b));
    assign i_pivot581_v4l2_ctrl_get_name245_c[0] = i_pivot581_v4l2_ctrl_get_name245_o[33];

    // c_i32_422848_recast_x(CONSTANT,1302)
    assign c_i32_422848_recast_x_q = $unsigned(32'b00000000000000000000000110100110);

    // i_pivot583_v4l2_ctrl_get_name123(COMPARE,888)@5
    assign i_pivot583_v4l2_ctrl_get_name123_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot583_v4l2_ctrl_get_name123_b = $unsigned({{2{c_i32_422848_recast_x_q[31]}}, c_i32_422848_recast_x_q});
    assign i_pivot583_v4l2_ctrl_get_name123_o = $unsigned($signed(i_pivot583_v4l2_ctrl_get_name123_a) - $signed(i_pivot583_v4l2_ctrl_get_name123_b));
    assign i_pivot583_v4l2_ctrl_get_name123_c[0] = i_pivot583_v4l2_ctrl_get_name123_o[33];

    // i_acl_875_v4l2_ctrl_get_name406(LOGICAL,693)@5 + 1
    assign i_acl_875_v4l2_ctrl_get_name406_qi = i_pivot583_v4l2_ctrl_get_name123_c ^ i_pivot581_v4l2_ctrl_get_name245_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_875_v4l2_ctrl_get_name406_delay ( .xin(i_acl_875_v4l2_ctrl_get_name406_qi), .xout(i_acl_875_v4l2_ctrl_get_name406_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_882_v4l2_ctrl_get_name407(MUX,694)@6
    assign i_acl_882_v4l2_ctrl_get_name407_s = i_acl_875_v4l2_ctrl_get_name406_q;
    always @(i_acl_882_v4l2_ctrl_get_name407_s or i_acl_874_v4l2_ctrl_get_name405_q or c_i64_4620974692658839552992_q)
    begin
        unique case (i_acl_882_v4l2_ctrl_get_name407_s)
            1'b0 : i_acl_882_v4l2_ctrl_get_name407_q = i_acl_874_v4l2_ctrl_get_name405_q;
            1'b1 : i_acl_882_v4l2_ctrl_get_name407_q = c_i64_4620974692658839552992_q;
            default : i_acl_882_v4l2_ctrl_get_name407_q = 64'b0;
        endcase
    end

    // c_i32_419951_recast_x(CONSTANT,1299)
    assign c_i32_419951_recast_x_q = $unsigned(32'b00000000000000000000000110100011);

    // i_pivot571_v4l2_ctrl_get_name329(COMPARE,882)@5
    assign i_pivot571_v4l2_ctrl_get_name329_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot571_v4l2_ctrl_get_name329_b = $unsigned({{2{c_i32_419951_recast_x_q[31]}}, c_i32_419951_recast_x_q});
    assign i_pivot571_v4l2_ctrl_get_name329_o = $unsigned($signed(i_pivot571_v4l2_ctrl_get_name329_a) - $signed(i_pivot571_v4l2_ctrl_get_name329_b));
    assign i_pivot571_v4l2_ctrl_get_name329_c[0] = i_pivot571_v4l2_ctrl_get_name329_o[33];

    // redist94_i_pivot573_v4l2_ctrl_get_name241_c_4(DELAY,1636)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_0 <= '0;
            redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_1 <= '0;
            redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_q <= '0;
        end
        else
        begin
            redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_0 <= $unsigned(i_pivot573_v4l2_ctrl_get_name241_c);
            redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_1 <= redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_0;
            redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_q <= redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_delay_1;
        end
    end

    // i_acl_883_v4l2_ctrl_get_name408(LOGICAL,695)@5 + 1
    assign i_acl_883_v4l2_ctrl_get_name408_qi = redist94_i_pivot573_v4l2_ctrl_get_name241_c_4_q ^ i_pivot571_v4l2_ctrl_get_name329_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_883_v4l2_ctrl_get_name408_delay ( .xin(i_acl_883_v4l2_ctrl_get_name408_qi), .xout(i_acl_883_v4l2_ctrl_get_name408_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_891_v4l2_ctrl_get_name409(MUX,696)@6
    assign i_acl_891_v4l2_ctrl_get_name409_s = i_acl_883_v4l2_ctrl_get_name408_q;
    always @(i_acl_891_v4l2_ctrl_get_name409_s or i_acl_882_v4l2_ctrl_get_name407_q or c_i64_4621256167635550208993_q)
    begin
        unique case (i_acl_891_v4l2_ctrl_get_name409_s)
            1'b0 : i_acl_891_v4l2_ctrl_get_name409_q = i_acl_882_v4l2_ctrl_get_name407_q;
            1'b1 : i_acl_891_v4l2_ctrl_get_name409_q = c_i64_4621256167635550208993_q;
            default : i_acl_891_v4l2_ctrl_get_name409_q = 64'b0;
        endcase
    end

    // c_i32_421908_recast_x(CONSTANT,1301)
    assign c_i32_421908_recast_x_q = $unsigned(32'b00000000000000000000000110100101);

    // i_pivot577_v4l2_ctrl_get_name243(COMPARE,885)@5
    assign i_pivot577_v4l2_ctrl_get_name243_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot577_v4l2_ctrl_get_name243_b = $unsigned({{2{c_i32_421908_recast_x_q[31]}}, c_i32_421908_recast_x_q});
    assign i_pivot577_v4l2_ctrl_get_name243_o = $unsigned($signed(i_pivot577_v4l2_ctrl_get_name243_a) - $signed(i_pivot577_v4l2_ctrl_get_name243_b));
    assign i_pivot577_v4l2_ctrl_get_name243_c[0] = i_pivot577_v4l2_ctrl_get_name243_o[33];

    // c_i32_420817_recast_x(CONSTANT,1300)
    assign c_i32_420817_recast_x_q = $unsigned(32'b00000000000000000000000110100100);

    // i_pivot585_v4l2_ctrl_get_name61(COMPARE,889)@5
    assign i_pivot585_v4l2_ctrl_get_name61_a = $unsigned({{2{redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q[31]}}, redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q});
    assign i_pivot585_v4l2_ctrl_get_name61_b = $unsigned({{2{c_i32_420817_recast_x_q[31]}}, c_i32_420817_recast_x_q});
    assign i_pivot585_v4l2_ctrl_get_name61_o = $unsigned($signed(i_pivot585_v4l2_ctrl_get_name61_a) - $signed(i_pivot585_v4l2_ctrl_get_name61_b));
    assign i_pivot585_v4l2_ctrl_get_name61_c[0] = i_pivot585_v4l2_ctrl_get_name61_o[33];

    // i_acl_893_v4l2_ctrl_get_name410(LOGICAL,697)@5 + 1
    assign i_acl_893_v4l2_ctrl_get_name410_qi = i_pivot585_v4l2_ctrl_get_name61_c ^ i_pivot577_v4l2_ctrl_get_name243_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_893_v4l2_ctrl_get_name410_delay ( .xin(i_acl_893_v4l2_ctrl_get_name410_qi), .xout(i_acl_893_v4l2_ctrl_get_name410_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_899_v4l2_ctrl_get_name411(MUX,698)@6
    assign i_acl_899_v4l2_ctrl_get_name411_s = i_acl_893_v4l2_ctrl_get_name410_q;
    always @(i_acl_899_v4l2_ctrl_get_name411_s or i_acl_891_v4l2_ctrl_get_name409_q or c_i64_4621537642612260864994_q)
    begin
        unique case (i_acl_899_v4l2_ctrl_get_name411_s)
            1'b0 : i_acl_899_v4l2_ctrl_get_name411_q = i_acl_891_v4l2_ctrl_get_name409_q;
            1'b1 : i_acl_899_v4l2_ctrl_get_name411_q = c_i64_4621537642612260864994_q;
            default : i_acl_899_v4l2_ctrl_get_name411_q = 64'b0;
        endcase
    end

    // redist85_i_pivot609_v4l2_ctrl_get_name337_c_2(DELAY,1627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_delay_0 <= '0;
            redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_q <= '0;
        end
        else
        begin
            redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_delay_0 <= $unsigned(i_pivot609_v4l2_ctrl_get_name337_c);
            redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_q <= redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_delay_0;
        end
    end

    // i_acl_900_v4l2_ctrl_get_name412(LOGICAL,699)@4 + 1
    assign i_acl_900_v4l2_ctrl_get_name412_qi = i_pivot611_v4l2_ctrl_get_name257_c ^ redist85_i_pivot609_v4l2_ctrl_get_name337_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_900_v4l2_ctrl_get_name412_delay ( .xin(i_acl_900_v4l2_ctrl_get_name412_qi), .xout(i_acl_900_v4l2_ctrl_get_name412_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist132_i_acl_900_v4l2_ctrl_get_name412_q_2(DELAY,1674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist132_i_acl_900_v4l2_ctrl_get_name412_q_2_q <= '0;
        end
        else
        begin
            redist132_i_acl_900_v4l2_ctrl_get_name412_q_2_q <= $unsigned(i_acl_900_v4l2_ctrl_get_name412_q);
        end
    end

    // i_acl_908_v4l2_ctrl_get_name413(MUX,700)@6
    assign i_acl_908_v4l2_ctrl_get_name413_s = redist132_i_acl_900_v4l2_ctrl_get_name412_q_2_q;
    always @(i_acl_908_v4l2_ctrl_get_name413_s or i_acl_899_v4l2_ctrl_get_name411_q or c_i64_4621819117588971520995_q)
    begin
        unique case (i_acl_908_v4l2_ctrl_get_name413_s)
            1'b0 : i_acl_908_v4l2_ctrl_get_name413_q = i_acl_899_v4l2_ctrl_get_name411_q;
            1'b1 : i_acl_908_v4l2_ctrl_get_name413_q = c_i64_4621819117588971520995_q;
            default : i_acl_908_v4l2_ctrl_get_name413_q = 64'b0;
        endcase
    end

    // redist91_i_pivot589_v4l2_ctrl_get_name333_c_1(DELAY,1633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_pivot589_v4l2_ctrl_get_name333_c_1_q <= '0;
        end
        else
        begin
            redist91_i_pivot589_v4l2_ctrl_get_name333_c_1_q <= $unsigned(i_pivot589_v4l2_ctrl_get_name333_c);
        end
    end

    // c_i32_428911_recast_x(CONSTANT,1308)
    assign c_i32_428911_recast_x_q = $unsigned(32'b00000000000000000000000110101100);

    // redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5(DELAY,1546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q <= $unsigned(redist3_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_4_q);
        end
    end

    // i_pivot591_v4l2_ctrl_get_name249(COMPARE,892)@6
    assign i_pivot591_v4l2_ctrl_get_name249_a = $unsigned({{2{redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot591_v4l2_ctrl_get_name249_b = $unsigned({{2{c_i32_428911_recast_x_q[31]}}, c_i32_428911_recast_x_q});
    assign i_pivot591_v4l2_ctrl_get_name249_o = $unsigned($signed(i_pivot591_v4l2_ctrl_get_name249_a) - $signed(i_pivot591_v4l2_ctrl_get_name249_b));
    assign i_pivot591_v4l2_ctrl_get_name249_c[0] = i_pivot591_v4l2_ctrl_get_name249_o[33];

    // i_acl_909_v4l2_ctrl_get_name414(LOGICAL,701)@6
    assign i_acl_909_v4l2_ctrl_get_name414_q = i_pivot591_v4l2_ctrl_get_name249_c ^ redist91_i_pivot589_v4l2_ctrl_get_name333_c_1_q;

    // i_acl_917_v4l2_ctrl_get_name415(MUX,702)@6
    assign i_acl_917_v4l2_ctrl_get_name415_s = i_acl_909_v4l2_ctrl_get_name414_q;
    always @(i_acl_917_v4l2_ctrl_get_name415_s or i_acl_908_v4l2_ctrl_get_name413_q or c_i64_4622100592565682176996_q)
    begin
        unique case (i_acl_917_v4l2_ctrl_get_name415_s)
            1'b0 : i_acl_917_v4l2_ctrl_get_name415_q = i_acl_908_v4l2_ctrl_get_name413_q;
            1'b1 : i_acl_917_v4l2_ctrl_get_name415_q = c_i64_4622100592565682176996_q;
            default : i_acl_917_v4l2_ctrl_get_name415_q = 64'b0;
        endcase
    end

    // c_i32_152997_recast_x(CONSTANT,1162)
    assign c_i32_152997_recast_x_q = $unsigned(32'b00000000000000000000000010011000);

    // i_unnamed_v4l2_ctrl_get_name416(LOGICAL,949)@6
    assign i_unnamed_v4l2_ctrl_get_name416_q = $unsigned(redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q == c_i32_152997_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_926_v4l2_ctrl_get_name418(MUX,703)@6 + 1
    assign i_acl_926_v4l2_ctrl_get_name418_s = i_unnamed_v4l2_ctrl_get_name416_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_926_v4l2_ctrl_get_name418_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_926_v4l2_ctrl_get_name418_s)
                1'b0 : i_acl_926_v4l2_ctrl_get_name418_q <= i_acl_917_v4l2_ctrl_get_name415_q;
                1'b1 : i_acl_926_v4l2_ctrl_get_name418_q <= c_i64_4622382067542392832998_q;
                default : i_acl_926_v4l2_ctrl_get_name418_q <= 64'b0;
            endcase
        end
    end

    // redist90_i_pivot593_v4l2_ctrl_get_name125_c_3(DELAY,1632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_0 <= '0;
            redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_1 <= '0;
            redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_q <= '0;
        end
        else
        begin
            redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_0 <= $unsigned(i_pivot593_v4l2_ctrl_get_name125_c);
            redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_1 <= redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_0;
            redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_q <= redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_delay_1;
        end
    end

    // i_acl_927_v4l2_ctrl_get_name419(LOGICAL,704)@6 + 1
    assign i_acl_927_v4l2_ctrl_get_name419_qi = redist90_i_pivot593_v4l2_ctrl_get_name125_c_3_q ^ i_pivot591_v4l2_ctrl_get_name249_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_927_v4l2_ctrl_get_name419_delay ( .xin(i_acl_927_v4l2_ctrl_get_name419_qi), .xout(i_acl_927_v4l2_ctrl_get_name419_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_934_v4l2_ctrl_get_name420(MUX,705)@7
    assign i_acl_934_v4l2_ctrl_get_name420_s = i_acl_927_v4l2_ctrl_get_name419_q;
    always @(i_acl_934_v4l2_ctrl_get_name420_s or i_acl_926_v4l2_ctrl_get_name418_q or c_i64_4622663542519103488999_q)
    begin
        unique case (i_acl_934_v4l2_ctrl_get_name420_s)
            1'b0 : i_acl_934_v4l2_ctrl_get_name420_q = i_acl_926_v4l2_ctrl_get_name418_q;
            1'b1 : i_acl_934_v4l2_ctrl_get_name420_q = c_i64_4622663542519103488999_q;
            default : i_acl_934_v4l2_ctrl_get_name420_q = 64'b0;
        endcase
    end

    // i_acl_935_v4l2_ctrl_get_name421(LOGICAL,706)@5 + 1
    assign i_acl_935_v4l2_ctrl_get_name421_qi = i_pivot577_v4l2_ctrl_get_name243_c ^ i_pivot583_v4l2_ctrl_get_name123_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_935_v4l2_ctrl_get_name421_delay ( .xin(i_acl_935_v4l2_ctrl_get_name421_qi), .xout(i_acl_935_v4l2_ctrl_get_name421_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist131_i_acl_935_v4l2_ctrl_get_name421_q_2(DELAY,1673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist131_i_acl_935_v4l2_ctrl_get_name421_q_2_q <= '0;
        end
        else
        begin
            redist131_i_acl_935_v4l2_ctrl_get_name421_q_2_q <= $unsigned(i_acl_935_v4l2_ctrl_get_name421_q);
        end
    end

    // i_acl_942_v4l2_ctrl_get_name422(MUX,707)@7
    assign i_acl_942_v4l2_ctrl_get_name422_s = redist131_i_acl_935_v4l2_ctrl_get_name421_q_2_q;
    always @(i_acl_942_v4l2_ctrl_get_name422_s or i_acl_934_v4l2_ctrl_get_name420_q or c_i64_46229450174958141441000_q)
    begin
        unique case (i_acl_942_v4l2_ctrl_get_name422_s)
            1'b0 : i_acl_942_v4l2_ctrl_get_name422_q = i_acl_934_v4l2_ctrl_get_name420_q;
            1'b1 : i_acl_942_v4l2_ctrl_get_name422_q = c_i64_46229450174958141441000_q;
            default : i_acl_942_v4l2_ctrl_get_name422_q = 64'b0;
        endcase
    end

    // redist110_i_pivot471_v4l2_ctrl_get_name307_c_3(DELAY,1652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_delay_0 <= '0;
            redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_q <= '0;
        end
        else
        begin
            redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_delay_0 <= $unsigned(i_pivot471_v4l2_ctrl_get_name307_c);
            redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_q <= redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_delay_0;
        end
    end

    // c_i32_369888_recast_x(CONSTANT,1249)
    assign c_i32_369888_recast_x_q = $unsigned(32'b00000000000000000000000101110001);

    // i_pivot473_v4l2_ctrl_get_name203(COMPARE,833)@6 + 1
    assign i_pivot473_v4l2_ctrl_get_name203_a = $unsigned({{2{redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot473_v4l2_ctrl_get_name203_b = $unsigned({{2{c_i32_369888_recast_x_q[31]}}, c_i32_369888_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot473_v4l2_ctrl_get_name203_o <= 34'b0;
        end
        else
        begin
            i_pivot473_v4l2_ctrl_get_name203_o <= $unsigned($signed(i_pivot473_v4l2_ctrl_get_name203_a) - $signed(i_pivot473_v4l2_ctrl_get_name203_b));
        end
    end
    assign i_pivot473_v4l2_ctrl_get_name203_c[0] = i_pivot473_v4l2_ctrl_get_name203_o[33];

    // i_acl_943_v4l2_ctrl_get_name423(LOGICAL,708)@7
    assign i_acl_943_v4l2_ctrl_get_name423_q = i_pivot473_v4l2_ctrl_get_name203_c ^ redist110_i_pivot471_v4l2_ctrl_get_name307_c_3_q;

    // i_acl_951_v4l2_ctrl_get_name424(MUX,709)@7
    assign i_acl_951_v4l2_ctrl_get_name424_s = i_acl_943_v4l2_ctrl_get_name423_q;
    always @(i_acl_951_v4l2_ctrl_get_name424_s or i_acl_942_v4l2_ctrl_get_name422_q or c_i64_46232264924725248001001_q)
    begin
        unique case (i_acl_951_v4l2_ctrl_get_name424_s)
            1'b0 : i_acl_951_v4l2_ctrl_get_name424_q = i_acl_942_v4l2_ctrl_get_name422_q;
            1'b1 : i_acl_951_v4l2_ctrl_get_name424_q = c_i64_46232264924725248001001_q;
            default : i_acl_951_v4l2_ctrl_get_name424_q = 64'b0;
        endcase
    end

    // c_i32_368812_recast_x(CONSTANT,1248)
    assign c_i32_368812_recast_x_q = $unsigned(32'b00000000000000000000000101110000);

    // i_pivot481_v4l2_ctrl_get_name51(COMPARE,837)@6 + 1
    assign i_pivot481_v4l2_ctrl_get_name51_a = $unsigned({{2{redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot481_v4l2_ctrl_get_name51_b = $unsigned({{2{c_i32_368812_recast_x_q[31]}}, c_i32_368812_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot481_v4l2_ctrl_get_name51_o <= 34'b0;
        end
        else
        begin
            i_pivot481_v4l2_ctrl_get_name51_o <= $unsigned($signed(i_pivot481_v4l2_ctrl_get_name51_a) - $signed(i_pivot481_v4l2_ctrl_get_name51_b));
        end
    end
    assign i_pivot481_v4l2_ctrl_get_name51_c[0] = i_pivot481_v4l2_ctrl_get_name51_o[33];

    // i_acl_953_v4l2_ctrl_get_name425(LOGICAL,710)@7
    assign i_acl_953_v4l2_ctrl_get_name425_q = i_pivot481_v4l2_ctrl_get_name51_c ^ i_pivot473_v4l2_ctrl_get_name203_c;

    // i_acl_959_v4l2_ctrl_get_name426(MUX,711)@7
    assign i_acl_959_v4l2_ctrl_get_name426_s = i_acl_953_v4l2_ctrl_get_name425_q;
    always @(i_acl_959_v4l2_ctrl_get_name426_s or i_acl_951_v4l2_ctrl_get_name424_q or c_i64_46235079674492354561002_q)
    begin
        unique case (i_acl_959_v4l2_ctrl_get_name426_s)
            1'b0 : i_acl_959_v4l2_ctrl_get_name426_q = i_acl_951_v4l2_ctrl_get_name424_q;
            1'b1 : i_acl_959_v4l2_ctrl_get_name426_q = c_i64_46235079674492354561002_q;
            default : i_acl_959_v4l2_ctrl_get_name426_q = 64'b0;
        endcase
    end

    // c_i32_355835_recast_x(CONSTANT,1235)
    assign c_i32_355835_recast_x_q = $unsigned(32'b00000000000000000000000101100011);

    // i_pivot451_v4l2_ctrl_get_name97(COMPARE,822)@6 + 1
    assign i_pivot451_v4l2_ctrl_get_name97_a = $unsigned({{2{redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot451_v4l2_ctrl_get_name97_b = $unsigned({{2{c_i32_355835_recast_x_q[31]}}, c_i32_355835_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot451_v4l2_ctrl_get_name97_o <= 34'b0;
        end
        else
        begin
            i_pivot451_v4l2_ctrl_get_name97_o <= $unsigned($signed(i_pivot451_v4l2_ctrl_get_name97_a) - $signed(i_pivot451_v4l2_ctrl_get_name97_b));
        end
    end
    assign i_pivot451_v4l2_ctrl_get_name97_c[0] = i_pivot451_v4l2_ctrl_get_name97_o[33];

    // c_i32_354882_recast_x(CONSTANT,1234)
    assign c_i32_354882_recast_x_q = $unsigned(32'b00000000000000000000000101100010);

    // i_pivot445_v4l2_ctrl_get_name191(COMPARE,819)@6 + 1
    assign i_pivot445_v4l2_ctrl_get_name191_a = $unsigned({{2{redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q[31]}}, redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q});
    assign i_pivot445_v4l2_ctrl_get_name191_b = $unsigned({{2{c_i32_354882_recast_x_q[31]}}, c_i32_354882_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot445_v4l2_ctrl_get_name191_o <= 34'b0;
        end
        else
        begin
            i_pivot445_v4l2_ctrl_get_name191_o <= $unsigned($signed(i_pivot445_v4l2_ctrl_get_name191_a) - $signed(i_pivot445_v4l2_ctrl_get_name191_b));
        end
    end
    assign i_pivot445_v4l2_ctrl_get_name191_c[0] = i_pivot445_v4l2_ctrl_get_name191_o[33];

    // i_acl_960_v4l2_ctrl_get_name427(LOGICAL,712)@7
    assign i_acl_960_v4l2_ctrl_get_name427_q = i_pivot445_v4l2_ctrl_get_name191_c ^ i_pivot451_v4l2_ctrl_get_name97_c;

    // i_acl_967_v4l2_ctrl_get_name428(MUX,713)@7
    assign i_acl_967_v4l2_ctrl_get_name428_s = i_acl_960_v4l2_ctrl_get_name427_q;
    always @(i_acl_967_v4l2_ctrl_get_name428_s or i_acl_959_v4l2_ctrl_get_name426_q or c_i64_46237894424259461121003_q)
    begin
        unique case (i_acl_967_v4l2_ctrl_get_name428_s)
            1'b0 : i_acl_967_v4l2_ctrl_get_name428_q = i_acl_959_v4l2_ctrl_get_name426_q;
            1'b1 : i_acl_967_v4l2_ctrl_get_name428_q = c_i64_46237894424259461121003_q;
            default : i_acl_967_v4l2_ctrl_get_name428_q = 64'b0;
        endcase
    end

    // c_i32_353793_recast_x(CONSTANT,1233)
    assign c_i32_353793_recast_x_q = $unsigned(32'b00000000000000000000000101100001);

    // redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6(DELAY,1547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q <= '0;
        end
        else
        begin
            redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q <= $unsigned(redist4_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_5_q);
        end
    end

    // i_pivot485_v4l2_ctrl_get_name13(COMPARE,839)@7
    assign i_pivot485_v4l2_ctrl_get_name13_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot485_v4l2_ctrl_get_name13_b = $unsigned({{2{c_i32_353793_recast_x_q[31]}}, c_i32_353793_recast_x_q});
    assign i_pivot485_v4l2_ctrl_get_name13_o = $unsigned($signed(i_pivot485_v4l2_ctrl_get_name13_a) - $signed(i_pivot485_v4l2_ctrl_get_name13_b));
    assign i_pivot485_v4l2_ctrl_get_name13_c[0] = i_pivot485_v4l2_ctrl_get_name13_o[33];

    // i_acl_971_v4l2_ctrl_get_name429(LOGICAL,714)@7
    assign i_acl_971_v4l2_ctrl_get_name429_q = i_pivot485_v4l2_ctrl_get_name13_c ^ i_pivot445_v4l2_ctrl_get_name191_c;

    // i_acl_975_v4l2_ctrl_get_name430(MUX,715)@7
    assign i_acl_975_v4l2_ctrl_get_name430_s = i_acl_971_v4l2_ctrl_get_name429_q;
    always @(i_acl_975_v4l2_ctrl_get_name430_s or i_acl_967_v4l2_ctrl_get_name428_q or c_i64_46240709174026567681004_q)
    begin
        unique case (i_acl_975_v4l2_ctrl_get_name430_s)
            1'b0 : i_acl_975_v4l2_ctrl_get_name430_q = i_acl_967_v4l2_ctrl_get_name428_q;
            1'b1 : i_acl_975_v4l2_ctrl_get_name430_q = c_i64_46240709174026567681004_q;
            default : i_acl_975_v4l2_ctrl_get_name430_q = 64'b0;
        endcase
    end

    // c_i32_455959_recast_x(CONSTANT,1335)
    assign c_i32_455959_recast_x_q = $unsigned(32'b00000000000000000000000111000111);

    // i_pivot639_v4l2_ctrl_get_name345(COMPARE,916)@7
    assign i_pivot639_v4l2_ctrl_get_name345_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot639_v4l2_ctrl_get_name345_b = $unsigned({{2{c_i32_455959_recast_x_q[31]}}, c_i32_455959_recast_x_q});
    assign i_pivot639_v4l2_ctrl_get_name345_o = $unsigned($signed(i_pivot639_v4l2_ctrl_get_name345_a) - $signed(i_pivot639_v4l2_ctrl_get_name345_b));
    assign i_pivot639_v4l2_ctrl_get_name345_c[0] = i_pivot639_v4l2_ctrl_get_name345_o[33];

    // c_i32_454921_recast_x(CONSTANT,1334)
    assign c_i32_454921_recast_x_q = $unsigned(32'b00000000000000000000000111000110);

    // i_pivot641_v4l2_ctrl_get_name269(COMPARE,917)@7
    assign i_pivot641_v4l2_ctrl_get_name269_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot641_v4l2_ctrl_get_name269_b = $unsigned({{2{c_i32_454921_recast_x_q[31]}}, c_i32_454921_recast_x_q});
    assign i_pivot641_v4l2_ctrl_get_name269_o = $unsigned($signed(i_pivot641_v4l2_ctrl_get_name269_a) - $signed(i_pivot641_v4l2_ctrl_get_name269_b));
    assign i_pivot641_v4l2_ctrl_get_name269_c[0] = i_pivot641_v4l2_ctrl_get_name269_o[33];

    // i_acl_976_v4l2_ctrl_get_name431(LOGICAL,716)@7
    assign i_acl_976_v4l2_ctrl_get_name431_q = i_pivot641_v4l2_ctrl_get_name269_c ^ i_pivot639_v4l2_ctrl_get_name345_c;

    // i_acl_984_v4l2_ctrl_get_name432(MUX,717)@7 + 1
    assign i_acl_984_v4l2_ctrl_get_name432_s = i_acl_976_v4l2_ctrl_get_name431_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_984_v4l2_ctrl_get_name432_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_984_v4l2_ctrl_get_name432_s)
                1'b0 : i_acl_984_v4l2_ctrl_get_name432_q <= i_acl_975_v4l2_ctrl_get_name430_q;
                1'b1 : i_acl_984_v4l2_ctrl_get_name432_q <= c_i64_46243523923793674241005_q;
                default : i_acl_984_v4l2_ctrl_get_name432_q <= 64'b0;
            endcase
        end
    end

    // i_acl_987_v4l2_ctrl_get_name433(LOGICAL,718)@5 + 1
    assign i_acl_987_v4l2_ctrl_get_name433_qi = i_pivot571_v4l2_ctrl_get_name329_c ^ i_pivot585_v4l2_ctrl_get_name61_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_987_v4l2_ctrl_get_name433_delay ( .xin(i_acl_987_v4l2_ctrl_get_name433_qi), .xout(i_acl_987_v4l2_ctrl_get_name433_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist130_i_acl_987_v4l2_ctrl_get_name433_q_3(DELAY,1672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_delay_0 <= '0;
            redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_q <= '0;
        end
        else
        begin
            redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_delay_0 <= $unsigned(i_acl_987_v4l2_ctrl_get_name433_q);
            redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_q <= redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_delay_0;
        end
    end

    // i_acl_993_v4l2_ctrl_get_name434(MUX,719)@8
    assign i_acl_993_v4l2_ctrl_get_name434_s = redist130_i_acl_987_v4l2_ctrl_get_name433_q_3_q;
    always @(i_acl_993_v4l2_ctrl_get_name434_s or i_acl_984_v4l2_ctrl_get_name432_q or c_i64_46246338673560780801006_q)
    begin
        unique case (i_acl_993_v4l2_ctrl_get_name434_s)
            1'b0 : i_acl_993_v4l2_ctrl_get_name434_q = i_acl_984_v4l2_ctrl_get_name432_q;
            1'b1 : i_acl_993_v4l2_ctrl_get_name434_q = c_i64_46246338673560780801006_q;
            default : i_acl_993_v4l2_ctrl_get_name434_q = 64'b0;
        endcase
    end

    // c_i32_339876_recast_x(CONSTANT,1219)
    assign c_i32_339876_recast_x_q = $unsigned(32'b00000000000000000000000101010011);

    // i_pivot415_v4l2_ctrl_get_name179(COMPARE,804)@7 + 1
    assign i_pivot415_v4l2_ctrl_get_name179_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot415_v4l2_ctrl_get_name179_b = $unsigned({{2{c_i32_339876_recast_x_q[31]}}, c_i32_339876_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot415_v4l2_ctrl_get_name179_o <= 34'b0;
        end
        else
        begin
            i_pivot415_v4l2_ctrl_get_name179_o <= $unsigned($signed(i_pivot415_v4l2_ctrl_get_name179_a) - $signed(i_pivot415_v4l2_ctrl_get_name179_b));
        end
    end
    assign i_pivot415_v4l2_ctrl_get_name179_c[0] = i_pivot415_v4l2_ctrl_get_name179_o[33];

    // c_i32_338809_recast_x(CONSTANT,1218)
    assign c_i32_338809_recast_x_q = $unsigned(32'b00000000000000000000000101010010);

    // i_pivot423_v4l2_ctrl_get_name45(COMPARE,808)@7 + 1
    assign i_pivot423_v4l2_ctrl_get_name45_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot423_v4l2_ctrl_get_name45_b = $unsigned({{2{c_i32_338809_recast_x_q[31]}}, c_i32_338809_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot423_v4l2_ctrl_get_name45_o <= 34'b0;
        end
        else
        begin
            i_pivot423_v4l2_ctrl_get_name45_o <= $unsigned($signed(i_pivot423_v4l2_ctrl_get_name45_a) - $signed(i_pivot423_v4l2_ctrl_get_name45_b));
        end
    end
    assign i_pivot423_v4l2_ctrl_get_name45_c[0] = i_pivot423_v4l2_ctrl_get_name45_o[33];

    // i_acl_995_v4l2_ctrl_get_name435(LOGICAL,720)@8
    assign i_acl_995_v4l2_ctrl_get_name435_q = i_pivot423_v4l2_ctrl_get_name45_c ^ i_pivot415_v4l2_ctrl_get_name179_c;

    // i_acl_1001_v4l2_ctrl_get_name436(MUX,362)@8
    assign i_acl_1001_v4l2_ctrl_get_name436_s = i_acl_995_v4l2_ctrl_get_name435_q;
    always @(i_acl_1001_v4l2_ctrl_get_name436_s or i_acl_993_v4l2_ctrl_get_name434_q or c_i64_46249153423327887361007_q)
    begin
        unique case (i_acl_1001_v4l2_ctrl_get_name436_s)
            1'b0 : i_acl_1001_v4l2_ctrl_get_name436_q = i_acl_993_v4l2_ctrl_get_name434_q;
            1'b1 : i_acl_1001_v4l2_ctrl_get_name436_q = c_i64_46249153423327887361007_q;
            default : i_acl_1001_v4l2_ctrl_get_name436_q = 64'b0;
        endcase
    end

    // c_i32_332932_recast_x(CONSTANT,1212)
    assign c_i32_332932_recast_x_q = $unsigned(32'b00000000000000000000000101001100);

    // i_pivot395_v4l2_ctrl_get_name291(COMPARE,793)@7 + 1
    assign i_pivot395_v4l2_ctrl_get_name291_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot395_v4l2_ctrl_get_name291_b = $unsigned({{2{c_i32_332932_recast_x_q[31]}}, c_i32_332932_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot395_v4l2_ctrl_get_name291_o <= 34'b0;
        end
        else
        begin
            i_pivot395_v4l2_ctrl_get_name291_o <= $unsigned($signed(i_pivot395_v4l2_ctrl_get_name291_a) - $signed(i_pivot395_v4l2_ctrl_get_name291_b));
        end
    end
    assign i_pivot395_v4l2_ctrl_get_name291_c[0] = i_pivot395_v4l2_ctrl_get_name291_o[33];

    // c_i32_331873_recast_x(CONSTANT,1211)
    assign c_i32_331873_recast_x_q = $unsigned(32'b00000000000000000000000101001011);

    // i_pivot397_v4l2_ctrl_get_name173(COMPARE,794)@7 + 1
    assign i_pivot397_v4l2_ctrl_get_name173_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot397_v4l2_ctrl_get_name173_b = $unsigned({{2{c_i32_331873_recast_x_q[31]}}, c_i32_331873_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot397_v4l2_ctrl_get_name173_o <= 34'b0;
        end
        else
        begin
            i_pivot397_v4l2_ctrl_get_name173_o <= $unsigned($signed(i_pivot397_v4l2_ctrl_get_name173_a) - $signed(i_pivot397_v4l2_ctrl_get_name173_b));
        end
    end
    assign i_pivot397_v4l2_ctrl_get_name173_c[0] = i_pivot397_v4l2_ctrl_get_name173_o[33];

    // i_acl_1002_v4l2_ctrl_get_name437(LOGICAL,363)@8
    assign i_acl_1002_v4l2_ctrl_get_name437_q = i_pivot397_v4l2_ctrl_get_name173_c ^ i_pivot395_v4l2_ctrl_get_name291_c;

    // i_acl_1010_v4l2_ctrl_get_name438(MUX,364)@8
    assign i_acl_1010_v4l2_ctrl_get_name438_s = i_acl_1002_v4l2_ctrl_get_name437_q;
    always @(i_acl_1010_v4l2_ctrl_get_name438_s or i_acl_1001_v4l2_ctrl_get_name436_q or c_i64_46251968173094993921008_q)
    begin
        unique case (i_acl_1010_v4l2_ctrl_get_name438_s)
            1'b0 : i_acl_1010_v4l2_ctrl_get_name438_q = i_acl_1001_v4l2_ctrl_get_name436_q;
            1'b1 : i_acl_1010_v4l2_ctrl_get_name438_q = c_i64_46251968173094993921008_q;
            default : i_acl_1010_v4l2_ctrl_get_name438_q = 64'b0;
        endcase
    end

    // c_i32_334874_recast_x(CONSTANT,1214)
    assign c_i32_334874_recast_x_q = $unsigned(32'b00000000000000000000000101001110);

    // i_pivot407_v4l2_ctrl_get_name175(COMPARE,800)@7 + 1
    assign i_pivot407_v4l2_ctrl_get_name175_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot407_v4l2_ctrl_get_name175_b = $unsigned({{2{c_i32_334874_recast_x_q[31]}}, c_i32_334874_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot407_v4l2_ctrl_get_name175_o <= 34'b0;
        end
        else
        begin
            i_pivot407_v4l2_ctrl_get_name175_o <= $unsigned($signed(i_pivot407_v4l2_ctrl_get_name175_a) - $signed(i_pivot407_v4l2_ctrl_get_name175_b));
        end
    end
    assign i_pivot407_v4l2_ctrl_get_name175_c[0] = i_pivot407_v4l2_ctrl_get_name175_o[33];

    // c_i32_333790_recast_x(CONSTANT,1213)
    assign c_i32_333790_recast_x_q = $unsigned(32'b00000000000000000000000101001101);

    // i_pivot487_v4l2_ctrl_get_name7(COMPARE,840)@7 + 1
    assign i_pivot487_v4l2_ctrl_get_name7_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot487_v4l2_ctrl_get_name7_b = $unsigned({{2{c_i32_333790_recast_x_q[31]}}, c_i32_333790_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot487_v4l2_ctrl_get_name7_o <= 34'b0;
        end
        else
        begin
            i_pivot487_v4l2_ctrl_get_name7_o <= $unsigned($signed(i_pivot487_v4l2_ctrl_get_name7_a) - $signed(i_pivot487_v4l2_ctrl_get_name7_b));
        end
    end
    assign i_pivot487_v4l2_ctrl_get_name7_c[0] = i_pivot487_v4l2_ctrl_get_name7_o[33];

    // i_acl_1015_v4l2_ctrl_get_name439(LOGICAL,365)@8
    assign i_acl_1015_v4l2_ctrl_get_name439_q = i_pivot487_v4l2_ctrl_get_name7_c ^ i_pivot407_v4l2_ctrl_get_name175_c;

    // i_acl_1018_v4l2_ctrl_get_name440(MUX,366)@8
    assign i_acl_1018_v4l2_ctrl_get_name440_s = i_acl_1015_v4l2_ctrl_get_name439_q;
    always @(i_acl_1018_v4l2_ctrl_get_name440_s or i_acl_1010_v4l2_ctrl_get_name438_q or c_i64_46254782922862100481009_q)
    begin
        unique case (i_acl_1018_v4l2_ctrl_get_name440_s)
            1'b0 : i_acl_1018_v4l2_ctrl_get_name440_q = i_acl_1010_v4l2_ctrl_get_name438_q;
            1'b1 : i_acl_1018_v4l2_ctrl_get_name440_q = c_i64_46254782922862100481009_q;
            default : i_acl_1018_v4l2_ctrl_get_name440_q = 64'b0;
        endcase
    end

    // c_i32_336875_recast_x(CONSTANT,1216)
    assign c_i32_336875_recast_x_q = $unsigned(32'b00000000000000000000000101010000);

    // i_pivot411_v4l2_ctrl_get_name177(COMPARE,802)@7 + 1
    assign i_pivot411_v4l2_ctrl_get_name177_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot411_v4l2_ctrl_get_name177_b = $unsigned({{2{c_i32_336875_recast_x_q[31]}}, c_i32_336875_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot411_v4l2_ctrl_get_name177_o <= 34'b0;
        end
        else
        begin
            i_pivot411_v4l2_ctrl_get_name177_o <= $unsigned($signed(i_pivot411_v4l2_ctrl_get_name177_a) - $signed(i_pivot411_v4l2_ctrl_get_name177_b));
        end
    end
    assign i_pivot411_v4l2_ctrl_get_name177_c[0] = i_pivot411_v4l2_ctrl_get_name177_o[33];

    // c_i32_335831_recast_x(CONSTANT,1215)
    assign c_i32_335831_recast_x_q = $unsigned(32'b00000000000000000000000101001111);

    // i_pivot413_v4l2_ctrl_get_name89(COMPARE,803)@7 + 1
    assign i_pivot413_v4l2_ctrl_get_name89_a = $unsigned({{2{redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q[31]}}, redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q});
    assign i_pivot413_v4l2_ctrl_get_name89_b = $unsigned({{2{c_i32_335831_recast_x_q[31]}}, c_i32_335831_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot413_v4l2_ctrl_get_name89_o <= 34'b0;
        end
        else
        begin
            i_pivot413_v4l2_ctrl_get_name89_o <= $unsigned($signed(i_pivot413_v4l2_ctrl_get_name89_a) - $signed(i_pivot413_v4l2_ctrl_get_name89_b));
        end
    end
    assign i_pivot413_v4l2_ctrl_get_name89_c[0] = i_pivot413_v4l2_ctrl_get_name89_o[33];

    // i_acl_1019_v4l2_ctrl_get_name441(LOGICAL,367)@8
    assign i_acl_1019_v4l2_ctrl_get_name441_q = i_pivot413_v4l2_ctrl_get_name89_c ^ i_pivot411_v4l2_ctrl_get_name177_c;

    // i_acl_1026_v4l2_ctrl_get_name442(MUX,368)@8
    assign i_acl_1026_v4l2_ctrl_get_name442_s = i_acl_1019_v4l2_ctrl_get_name441_q;
    always @(i_acl_1026_v4l2_ctrl_get_name442_s or i_acl_1018_v4l2_ctrl_get_name440_q or c_i64_46257597672629207041010_q)
    begin
        unique case (i_acl_1026_v4l2_ctrl_get_name442_s)
            1'b0 : i_acl_1026_v4l2_ctrl_get_name442_q = i_acl_1018_v4l2_ctrl_get_name440_q;
            1'b1 : i_acl_1026_v4l2_ctrl_get_name442_q = c_i64_46257597672629207041010_q;
            default : i_acl_1026_v4l2_ctrl_get_name442_q = 64'b0;
        endcase
    end

    // i_acl_1032_v4l2_ctrl_get_name443(LOGICAL,369)@8
    assign i_acl_1032_v4l2_ctrl_get_name443_q = i_pivot395_v4l2_ctrl_get_name291_c ^ i_pivot487_v4l2_ctrl_get_name7_c;

    // i_acl_1035_v4l2_ctrl_get_name444(MUX,370)@8
    assign i_acl_1035_v4l2_ctrl_get_name444_s = i_acl_1032_v4l2_ctrl_get_name443_q;
    always @(i_acl_1035_v4l2_ctrl_get_name444_s or i_acl_1026_v4l2_ctrl_get_name442_q or c_i64_46260412422396313601011_q)
    begin
        unique case (i_acl_1035_v4l2_ctrl_get_name444_s)
            1'b0 : i_acl_1035_v4l2_ctrl_get_name444_q = i_acl_1026_v4l2_ctrl_get_name442_q;
            1'b1 : i_acl_1035_v4l2_ctrl_get_name444_q = c_i64_46260412422396313601011_q;
            default : i_acl_1035_v4l2_ctrl_get_name444_q = 64'b0;
        endcase
    end

    // i_acl_1036_v4l2_ctrl_get_name445(LOGICAL,371)@8
    assign i_acl_1036_v4l2_ctrl_get_name445_q = i_pivot407_v4l2_ctrl_get_name175_c ^ i_pivot413_v4l2_ctrl_get_name89_c;

    // i_acl_1043_v4l2_ctrl_get_name446(MUX,372)@8 + 1
    assign i_acl_1043_v4l2_ctrl_get_name446_s = i_acl_1036_v4l2_ctrl_get_name445_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1043_v4l2_ctrl_get_name446_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1043_v4l2_ctrl_get_name446_s)
                1'b0 : i_acl_1043_v4l2_ctrl_get_name446_q <= i_acl_1035_v4l2_ctrl_get_name444_q;
                1'b1 : i_acl_1043_v4l2_ctrl_get_name446_q <= c_i64_46263227172163420161012_q;
                default : i_acl_1043_v4l2_ctrl_get_name446_q <= 64'b0;
            endcase
        end
    end

    // c_i32_337933_recast_x(CONSTANT,1217)
    assign c_i32_337933_recast_x_q = $unsigned(32'b00000000000000000000000101010001);

    // redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7(DELAY,1548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q <= '0;
        end
        else
        begin
            redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q <= $unsigned(redist5_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_6_q);
        end
    end

    // i_pivot409_v4l2_ctrl_get_name293(COMPARE,801)@8
    assign i_pivot409_v4l2_ctrl_get_name293_a = $unsigned({{2{redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot409_v4l2_ctrl_get_name293_b = $unsigned({{2{c_i32_337933_recast_x_q[31]}}, c_i32_337933_recast_x_q});
    assign i_pivot409_v4l2_ctrl_get_name293_o = $unsigned($signed(i_pivot409_v4l2_ctrl_get_name293_a) - $signed(i_pivot409_v4l2_ctrl_get_name293_b));
    assign i_pivot409_v4l2_ctrl_get_name293_c[0] = i_pivot409_v4l2_ctrl_get_name293_o[33];

    // i_acl_1046_v4l2_ctrl_get_name447(LOGICAL,373)@8 + 1
    assign i_acl_1046_v4l2_ctrl_get_name447_qi = i_pivot409_v4l2_ctrl_get_name293_c ^ i_pivot423_v4l2_ctrl_get_name45_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1046_v4l2_ctrl_get_name447_delay ( .xin(i_acl_1046_v4l2_ctrl_get_name447_qi), .xout(i_acl_1046_v4l2_ctrl_get_name447_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1052_v4l2_ctrl_get_name448(MUX,374)@9
    assign i_acl_1052_v4l2_ctrl_get_name448_s = i_acl_1046_v4l2_ctrl_get_name447_q;
    always @(i_acl_1052_v4l2_ctrl_get_name448_s or i_acl_1043_v4l2_ctrl_get_name446_q or c_i64_46266041921930526721013_q)
    begin
        unique case (i_acl_1052_v4l2_ctrl_get_name448_s)
            1'b0 : i_acl_1052_v4l2_ctrl_get_name448_q = i_acl_1043_v4l2_ctrl_get_name446_q;
            1'b1 : i_acl_1052_v4l2_ctrl_get_name448_q = c_i64_46266041921930526721013_q;
            default : i_acl_1052_v4l2_ctrl_get_name448_q = 64'b0;
        endcase
    end

    // i_acl_1053_v4l2_ctrl_get_name449(LOGICAL,375)@8 + 1
    assign i_acl_1053_v4l2_ctrl_get_name449_qi = i_pivot411_v4l2_ctrl_get_name177_c ^ i_pivot409_v4l2_ctrl_get_name293_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1053_v4l2_ctrl_get_name449_delay ( .xin(i_acl_1053_v4l2_ctrl_get_name449_qi), .xout(i_acl_1053_v4l2_ctrl_get_name449_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1061_v4l2_ctrl_get_name450(MUX,376)@9
    assign i_acl_1061_v4l2_ctrl_get_name450_s = i_acl_1053_v4l2_ctrl_get_name449_q;
    always @(i_acl_1061_v4l2_ctrl_get_name450_s or i_acl_1052_v4l2_ctrl_get_name448_q or c_i64_46268856671697633281014_q)
    begin
        unique case (i_acl_1061_v4l2_ctrl_get_name450_s)
            1'b0 : i_acl_1061_v4l2_ctrl_get_name450_q = i_acl_1052_v4l2_ctrl_get_name448_q;
            1'b1 : i_acl_1061_v4l2_ctrl_get_name450_q = c_i64_46268856671697633281014_q;
            default : i_acl_1061_v4l2_ctrl_get_name450_q = 64'b0;
        endcase
    end

    // redist120_i_pivot397_v4l2_ctrl_get_name173_c_2(DELAY,1662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_i_pivot397_v4l2_ctrl_get_name173_c_2_q <= '0;
        end
        else
        begin
            redist120_i_pivot397_v4l2_ctrl_get_name173_c_2_q <= $unsigned(i_pivot397_v4l2_ctrl_get_name173_c);
        end
    end

    // c_i32_330830_recast_x(CONSTANT,1210)
    assign c_i32_330830_recast_x_q = $unsigned(32'b00000000000000000000000101001010);

    // i_pivot399_v4l2_ctrl_get_name87(COMPARE,795)@8 + 1
    assign i_pivot399_v4l2_ctrl_get_name87_a = $unsigned({{2{redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot399_v4l2_ctrl_get_name87_b = $unsigned({{2{c_i32_330830_recast_x_q[31]}}, c_i32_330830_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot399_v4l2_ctrl_get_name87_o <= 34'b0;
        end
        else
        begin
            i_pivot399_v4l2_ctrl_get_name87_o <= $unsigned($signed(i_pivot399_v4l2_ctrl_get_name87_a) - $signed(i_pivot399_v4l2_ctrl_get_name87_b));
        end
    end
    assign i_pivot399_v4l2_ctrl_get_name87_c[0] = i_pivot399_v4l2_ctrl_get_name87_o[33];

    // i_acl_1062_v4l2_ctrl_get_name451(LOGICAL,377)@9
    assign i_acl_1062_v4l2_ctrl_get_name451_q = i_pivot399_v4l2_ctrl_get_name87_c ^ redist120_i_pivot397_v4l2_ctrl_get_name173_c_2_q;

    // i_acl_1069_v4l2_ctrl_get_name452(MUX,378)@9
    assign i_acl_1069_v4l2_ctrl_get_name452_s = i_acl_1062_v4l2_ctrl_get_name451_q;
    always @(i_acl_1069_v4l2_ctrl_get_name452_s or i_acl_1061_v4l2_ctrl_get_name450_q or c_i64_46271671421464739841015_q)
    begin
        unique case (i_acl_1069_v4l2_ctrl_get_name452_s)
            1'b0 : i_acl_1069_v4l2_ctrl_get_name452_q = i_acl_1061_v4l2_ctrl_get_name450_q;
            1'b1 : i_acl_1069_v4l2_ctrl_get_name452_q = c_i64_46271671421464739841015_q;
            default : i_acl_1069_v4l2_ctrl_get_name452_q = 64'b0;
        endcase
    end

    // c_i32_340832_recast_x(CONSTANT,1220)
    assign c_i32_340832_recast_x_q = $unsigned(32'b00000000000000000000000101010100);

    // i_pivot421_v4l2_ctrl_get_name91(COMPARE,807)@8 + 1
    assign i_pivot421_v4l2_ctrl_get_name91_a = $unsigned({{2{redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot421_v4l2_ctrl_get_name91_b = $unsigned({{2{c_i32_340832_recast_x_q[31]}}, c_i32_340832_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot421_v4l2_ctrl_get_name91_o <= 34'b0;
        end
        else
        begin
            i_pivot421_v4l2_ctrl_get_name91_o <= $unsigned($signed(i_pivot421_v4l2_ctrl_get_name91_a) - $signed(i_pivot421_v4l2_ctrl_get_name91_b));
        end
    end
    assign i_pivot421_v4l2_ctrl_get_name91_c[0] = i_pivot421_v4l2_ctrl_get_name91_o[33];

    // redist116_i_pivot415_v4l2_ctrl_get_name179_c_2(DELAY,1658)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_pivot415_v4l2_ctrl_get_name179_c_2_q <= '0;
        end
        else
        begin
            redist116_i_pivot415_v4l2_ctrl_get_name179_c_2_q <= $unsigned(i_pivot415_v4l2_ctrl_get_name179_c);
        end
    end

    // i_acl_1070_v4l2_ctrl_get_name453(LOGICAL,379)@9
    assign i_acl_1070_v4l2_ctrl_get_name453_q = redist116_i_pivot415_v4l2_ctrl_get_name179_c_2_q ^ i_pivot421_v4l2_ctrl_get_name91_c;

    // i_acl_1077_v4l2_ctrl_get_name454(MUX,380)@9
    assign i_acl_1077_v4l2_ctrl_get_name454_s = i_acl_1070_v4l2_ctrl_get_name453_q;
    always @(i_acl_1077_v4l2_ctrl_get_name454_s or i_acl_1069_v4l2_ctrl_get_name452_q or c_i64_46274486171231846401016_q)
    begin
        unique case (i_acl_1077_v4l2_ctrl_get_name454_s)
            1'b0 : i_acl_1077_v4l2_ctrl_get_name454_q = i_acl_1069_v4l2_ctrl_get_name452_q;
            1'b1 : i_acl_1077_v4l2_ctrl_get_name454_q = c_i64_46274486171231846401016_q;
            default : i_acl_1077_v4l2_ctrl_get_name454_q = 64'b0;
        endcase
    end

    // c_i32_347935_recast_x(CONSTANT,1227)
    assign c_i32_347935_recast_x_q = $unsigned(32'b00000000000000000000000101011011);

    // i_pivot427_v4l2_ctrl_get_name297(COMPARE,810)@8 + 1
    assign i_pivot427_v4l2_ctrl_get_name297_a = $unsigned({{2{redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot427_v4l2_ctrl_get_name297_b = $unsigned({{2{c_i32_347935_recast_x_q[31]}}, c_i32_347935_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot427_v4l2_ctrl_get_name297_o <= 34'b0;
        end
        else
        begin
            i_pivot427_v4l2_ctrl_get_name297_o <= $unsigned($signed(i_pivot427_v4l2_ctrl_get_name297_a) - $signed(i_pivot427_v4l2_ctrl_get_name297_b));
        end
    end
    assign i_pivot427_v4l2_ctrl_get_name297_c[0] = i_pivot427_v4l2_ctrl_get_name297_o[33];

    // c_i32_346879_recast_x(CONSTANT,1226)
    assign c_i32_346879_recast_x_q = $unsigned(32'b00000000000000000000000101011010);

    // i_pivot429_v4l2_ctrl_get_name185(COMPARE,811)@8 + 1
    assign i_pivot429_v4l2_ctrl_get_name185_a = $unsigned({{2{redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q[31]}}, redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q});
    assign i_pivot429_v4l2_ctrl_get_name185_b = $unsigned({{2{c_i32_346879_recast_x_q[31]}}, c_i32_346879_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot429_v4l2_ctrl_get_name185_o <= 34'b0;
        end
        else
        begin
            i_pivot429_v4l2_ctrl_get_name185_o <= $unsigned($signed(i_pivot429_v4l2_ctrl_get_name185_a) - $signed(i_pivot429_v4l2_ctrl_get_name185_b));
        end
    end
    assign i_pivot429_v4l2_ctrl_get_name185_c[0] = i_pivot429_v4l2_ctrl_get_name185_o[33];

    // i_acl_1078_v4l2_ctrl_get_name455(LOGICAL,381)@9
    assign i_acl_1078_v4l2_ctrl_get_name455_q = i_pivot429_v4l2_ctrl_get_name185_c ^ i_pivot427_v4l2_ctrl_get_name297_c;

    // i_acl_1086_v4l2_ctrl_get_name456(MUX,382)@9
    assign i_acl_1086_v4l2_ctrl_get_name456_s = i_acl_1078_v4l2_ctrl_get_name455_q;
    always @(i_acl_1086_v4l2_ctrl_get_name456_s or i_acl_1077_v4l2_ctrl_get_name454_q or c_i64_46277300920998952961017_q)
    begin
        unique case (i_acl_1086_v4l2_ctrl_get_name456_s)
            1'b0 : i_acl_1086_v4l2_ctrl_get_name456_q = i_acl_1077_v4l2_ctrl_get_name454_q;
            1'b1 : i_acl_1086_v4l2_ctrl_get_name456_q = c_i64_46277300920998952961017_q;
            default : i_acl_1086_v4l2_ctrl_get_name456_q = 64'b0;
        endcase
    end

    // c_i32_345833_recast_x(CONSTANT,1225)
    assign c_i32_345833_recast_x_q = $unsigned(32'b00000000000000000000000101011001);

    // redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8(DELAY,1549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q <= '0;
        end
        else
        begin
            redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q <= $unsigned(redist6_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_7_q);
        end
    end

    // i_pivot431_v4l2_ctrl_get_name93(COMPARE,812)@9
    assign i_pivot431_v4l2_ctrl_get_name93_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot431_v4l2_ctrl_get_name93_b = $unsigned({{2{c_i32_345833_recast_x_q[31]}}, c_i32_345833_recast_x_q});
    assign i_pivot431_v4l2_ctrl_get_name93_o = $unsigned($signed(i_pivot431_v4l2_ctrl_get_name93_a) - $signed(i_pivot431_v4l2_ctrl_get_name93_b));
    assign i_pivot431_v4l2_ctrl_get_name93_c[0] = i_pivot431_v4l2_ctrl_get_name93_o[33];

    // i_acl_1087_v4l2_ctrl_get_name457(LOGICAL,383)@9
    assign i_acl_1087_v4l2_ctrl_get_name457_q = i_pivot431_v4l2_ctrl_get_name93_c ^ i_pivot429_v4l2_ctrl_get_name185_c;

    // i_acl_1094_v4l2_ctrl_get_name458(MUX,384)@9
    assign i_acl_1094_v4l2_ctrl_get_name458_s = i_acl_1087_v4l2_ctrl_get_name457_q;
    always @(i_acl_1094_v4l2_ctrl_get_name458_s or i_acl_1086_v4l2_ctrl_get_name456_q or c_i64_46280115670766059521018_q)
    begin
        unique case (i_acl_1094_v4l2_ctrl_get_name458_s)
            1'b0 : i_acl_1094_v4l2_ctrl_get_name458_q = i_acl_1086_v4l2_ctrl_get_name456_q;
            1'b1 : i_acl_1094_v4l2_ctrl_get_name458_q = c_i64_46280115670766059521018_q;
            default : i_acl_1094_v4l2_ctrl_get_name458_q = 64'b0;
        endcase
    end

    // c_i32_344878_recast_x(CONSTANT,1224)
    assign c_i32_344878_recast_x_q = $unsigned(32'b00000000000000000000000101011000);

    // i_pivot425_v4l2_ctrl_get_name183(COMPARE,809)@9
    assign i_pivot425_v4l2_ctrl_get_name183_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot425_v4l2_ctrl_get_name183_b = $unsigned({{2{c_i32_344878_recast_x_q[31]}}, c_i32_344878_recast_x_q});
    assign i_pivot425_v4l2_ctrl_get_name183_o = $unsigned($signed(i_pivot425_v4l2_ctrl_get_name183_a) - $signed(i_pivot425_v4l2_ctrl_get_name183_b));
    assign i_pivot425_v4l2_ctrl_get_name183_c[0] = i_pivot425_v4l2_ctrl_get_name183_o[33];

    // i_acl_1095_v4l2_ctrl_get_name459(LOGICAL,385)@9
    assign i_acl_1095_v4l2_ctrl_get_name459_q = i_pivot425_v4l2_ctrl_get_name183_c ^ i_pivot431_v4l2_ctrl_get_name93_c;

    // i_acl_1102_v4l2_ctrl_get_name460(MUX,386)@9 + 1
    assign i_acl_1102_v4l2_ctrl_get_name460_s = i_acl_1095_v4l2_ctrl_get_name459_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1102_v4l2_ctrl_get_name460_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1102_v4l2_ctrl_get_name460_s)
                1'b0 : i_acl_1102_v4l2_ctrl_get_name460_q <= i_acl_1094_v4l2_ctrl_get_name458_q;
                1'b1 : i_acl_1102_v4l2_ctrl_get_name460_q <= c_i64_46282930420533166081019_q;
                default : i_acl_1102_v4l2_ctrl_get_name460_q <= 64'b0;
            endcase
        end
    end

    // c_i32_343798_recast_x(CONSTANT,1223)
    assign c_i32_343798_recast_x_q = $unsigned(32'b00000000000000000000000101010111);

    // i_pivot443_v4l2_ctrl_get_name23(COMPARE,818)@9
    assign i_pivot443_v4l2_ctrl_get_name23_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot443_v4l2_ctrl_get_name23_b = $unsigned({{2{c_i32_343798_recast_x_q[31]}}, c_i32_343798_recast_x_q});
    assign i_pivot443_v4l2_ctrl_get_name23_o = $unsigned($signed(i_pivot443_v4l2_ctrl_get_name23_a) - $signed(i_pivot443_v4l2_ctrl_get_name23_b));
    assign i_pivot443_v4l2_ctrl_get_name23_c[0] = i_pivot443_v4l2_ctrl_get_name23_o[33];

    // i_acl_1105_v4l2_ctrl_get_name461(LOGICAL,387)@9 + 1
    assign i_acl_1105_v4l2_ctrl_get_name461_qi = i_pivot443_v4l2_ctrl_get_name23_c ^ i_pivot425_v4l2_ctrl_get_name183_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1105_v4l2_ctrl_get_name461_delay ( .xin(i_acl_1105_v4l2_ctrl_get_name461_qi), .xout(i_acl_1105_v4l2_ctrl_get_name461_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1110_v4l2_ctrl_get_name462(MUX,388)@10
    assign i_acl_1110_v4l2_ctrl_get_name462_s = i_acl_1105_v4l2_ctrl_get_name461_q;
    always @(i_acl_1110_v4l2_ctrl_get_name462_s or i_acl_1102_v4l2_ctrl_get_name460_q or c_i64_46285745170300272641020_q)
    begin
        unique case (i_acl_1110_v4l2_ctrl_get_name462_s)
            1'b0 : i_acl_1110_v4l2_ctrl_get_name462_q = i_acl_1102_v4l2_ctrl_get_name460_q;
            1'b1 : i_acl_1110_v4l2_ctrl_get_name462_q = c_i64_46285745170300272641020_q;
            default : i_acl_1110_v4l2_ctrl_get_name462_q = 64'b0;
        endcase
    end

    // c_i32_342934_recast_x(CONSTANT,1222)
    assign c_i32_342934_recast_x_q = $unsigned(32'b00000000000000000000000101010110);

    // i_pivot417_v4l2_ctrl_get_name295(COMPARE,805)@9
    assign i_pivot417_v4l2_ctrl_get_name295_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot417_v4l2_ctrl_get_name295_b = $unsigned({{2{c_i32_342934_recast_x_q[31]}}, c_i32_342934_recast_x_q});
    assign i_pivot417_v4l2_ctrl_get_name295_o = $unsigned($signed(i_pivot417_v4l2_ctrl_get_name295_a) - $signed(i_pivot417_v4l2_ctrl_get_name295_b));
    assign i_pivot417_v4l2_ctrl_get_name295_c[0] = i_pivot417_v4l2_ctrl_get_name295_o[33];

    // i_acl_1114_v4l2_ctrl_get_name463(LOGICAL,389)@9 + 1
    assign i_acl_1114_v4l2_ctrl_get_name463_qi = i_pivot417_v4l2_ctrl_get_name295_c ^ i_pivot443_v4l2_ctrl_get_name23_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1114_v4l2_ctrl_get_name463_delay ( .xin(i_acl_1114_v4l2_ctrl_get_name463_qi), .xout(i_acl_1114_v4l2_ctrl_get_name463_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1119_v4l2_ctrl_get_name464(MUX,390)@10
    assign i_acl_1119_v4l2_ctrl_get_name464_s = i_acl_1114_v4l2_ctrl_get_name463_q;
    always @(i_acl_1119_v4l2_ctrl_get_name464_s or i_acl_1110_v4l2_ctrl_get_name462_q or c_i64_46288559920067379201021_q)
    begin
        unique case (i_acl_1119_v4l2_ctrl_get_name464_s)
            1'b0 : i_acl_1119_v4l2_ctrl_get_name464_q = i_acl_1110_v4l2_ctrl_get_name462_q;
            1'b1 : i_acl_1119_v4l2_ctrl_get_name464_q = c_i64_46288559920067379201021_q;
            default : i_acl_1119_v4l2_ctrl_get_name464_q = 64'b0;
        endcase
    end

    // c_i32_341877_recast_x(CONSTANT,1221)
    assign c_i32_341877_recast_x_q = $unsigned(32'b00000000000000000000000101010101);

    // i_pivot419_v4l2_ctrl_get_name181(COMPARE,806)@9
    assign i_pivot419_v4l2_ctrl_get_name181_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot419_v4l2_ctrl_get_name181_b = $unsigned({{2{c_i32_341877_recast_x_q[31]}}, c_i32_341877_recast_x_q});
    assign i_pivot419_v4l2_ctrl_get_name181_o = $unsigned($signed(i_pivot419_v4l2_ctrl_get_name181_a) - $signed(i_pivot419_v4l2_ctrl_get_name181_b));
    assign i_pivot419_v4l2_ctrl_get_name181_c[0] = i_pivot419_v4l2_ctrl_get_name181_o[33];

    // i_acl_1120_v4l2_ctrl_get_name465(LOGICAL,391)@9 + 1
    assign i_acl_1120_v4l2_ctrl_get_name465_qi = i_pivot419_v4l2_ctrl_get_name181_c ^ i_pivot417_v4l2_ctrl_get_name295_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1120_v4l2_ctrl_get_name465_delay ( .xin(i_acl_1120_v4l2_ctrl_get_name465_qi), .xout(i_acl_1120_v4l2_ctrl_get_name465_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1128_v4l2_ctrl_get_name466(MUX,392)@10
    assign i_acl_1128_v4l2_ctrl_get_name466_s = i_acl_1120_v4l2_ctrl_get_name465_q;
    always @(i_acl_1128_v4l2_ctrl_get_name466_s or i_acl_1119_v4l2_ctrl_get_name464_q or c_i64_46291374669834485761022_q)
    begin
        unique case (i_acl_1128_v4l2_ctrl_get_name466_s)
            1'b0 : i_acl_1128_v4l2_ctrl_get_name466_q = i_acl_1119_v4l2_ctrl_get_name464_q;
            1'b1 : i_acl_1128_v4l2_ctrl_get_name466_q = c_i64_46291374669834485761022_q;
            default : i_acl_1128_v4l2_ctrl_get_name466_q = 64'b0;
        endcase
    end

    // c_i32_348810_recast_x(CONSTANT,1228)
    assign c_i32_348810_recast_x_q = $unsigned(32'b00000000000000000000000101011100);

    // i_pivot441_v4l2_ctrl_get_name47(COMPARE,817)@9 + 1
    assign i_pivot441_v4l2_ctrl_get_name47_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot441_v4l2_ctrl_get_name47_b = $unsigned({{2{c_i32_348810_recast_x_q[31]}}, c_i32_348810_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot441_v4l2_ctrl_get_name47_o <= 34'b0;
        end
        else
        begin
            i_pivot441_v4l2_ctrl_get_name47_o <= $unsigned($signed(i_pivot441_v4l2_ctrl_get_name47_a) - $signed(i_pivot441_v4l2_ctrl_get_name47_b));
        end
    end
    assign i_pivot441_v4l2_ctrl_get_name47_c[0] = i_pivot441_v4l2_ctrl_get_name47_o[33];

    // redist115_i_pivot427_v4l2_ctrl_get_name297_c_2(DELAY,1657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_pivot427_v4l2_ctrl_get_name297_c_2_q <= '0;
        end
        else
        begin
            redist115_i_pivot427_v4l2_ctrl_get_name297_c_2_q <= $unsigned(i_pivot427_v4l2_ctrl_get_name297_c);
        end
    end

    // i_acl_1131_v4l2_ctrl_get_name467(LOGICAL,393)@10
    assign i_acl_1131_v4l2_ctrl_get_name467_q = redist115_i_pivot427_v4l2_ctrl_get_name297_c_2_q ^ i_pivot441_v4l2_ctrl_get_name47_c;

    // i_acl_1137_v4l2_ctrl_get_name468(MUX,394)@10
    assign i_acl_1137_v4l2_ctrl_get_name468_s = i_acl_1131_v4l2_ctrl_get_name467_q;
    always @(i_acl_1137_v4l2_ctrl_get_name468_s or i_acl_1128_v4l2_ctrl_get_name466_q or c_i64_46294189419601592321023_q)
    begin
        unique case (i_acl_1137_v4l2_ctrl_get_name468_s)
            1'b0 : i_acl_1137_v4l2_ctrl_get_name468_q = i_acl_1128_v4l2_ctrl_get_name466_q;
            1'b1 : i_acl_1137_v4l2_ctrl_get_name468_q = c_i64_46294189419601592321023_q;
            default : i_acl_1137_v4l2_ctrl_get_name468_q = 64'b0;
        endcase
    end

    // c_i32_351881_recast_x(CONSTANT,1231)
    assign c_i32_351881_recast_x_q = $unsigned(32'b00000000000000000000000101011111);

    // i_pivot437_v4l2_ctrl_get_name189(COMPARE,815)@9 + 1
    assign i_pivot437_v4l2_ctrl_get_name189_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot437_v4l2_ctrl_get_name189_b = $unsigned({{2{c_i32_351881_recast_x_q[31]}}, c_i32_351881_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot437_v4l2_ctrl_get_name189_o <= 34'b0;
        end
        else
        begin
            i_pivot437_v4l2_ctrl_get_name189_o <= $unsigned($signed(i_pivot437_v4l2_ctrl_get_name189_a) - $signed(i_pivot437_v4l2_ctrl_get_name189_b));
        end
    end
    assign i_pivot437_v4l2_ctrl_get_name189_c[0] = i_pivot437_v4l2_ctrl_get_name189_o[33];

    // c_i32_350834_recast_x(CONSTANT,1230)
    assign c_i32_350834_recast_x_q = $unsigned(32'b00000000000000000000000101011110);

    // i_pivot439_v4l2_ctrl_get_name95(COMPARE,816)@9 + 1
    assign i_pivot439_v4l2_ctrl_get_name95_a = $unsigned({{2{redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q[31]}}, redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q});
    assign i_pivot439_v4l2_ctrl_get_name95_b = $unsigned({{2{c_i32_350834_recast_x_q[31]}}, c_i32_350834_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot439_v4l2_ctrl_get_name95_o <= 34'b0;
        end
        else
        begin
            i_pivot439_v4l2_ctrl_get_name95_o <= $unsigned($signed(i_pivot439_v4l2_ctrl_get_name95_a) - $signed(i_pivot439_v4l2_ctrl_get_name95_b));
        end
    end
    assign i_pivot439_v4l2_ctrl_get_name95_c[0] = i_pivot439_v4l2_ctrl_get_name95_o[33];

    // i_acl_1138_v4l2_ctrl_get_name469(LOGICAL,395)@10
    assign i_acl_1138_v4l2_ctrl_get_name469_q = i_pivot439_v4l2_ctrl_get_name95_c ^ i_pivot437_v4l2_ctrl_get_name189_c;

    // i_acl_1145_v4l2_ctrl_get_name470(MUX,396)@10
    assign i_acl_1145_v4l2_ctrl_get_name470_s = i_acl_1138_v4l2_ctrl_get_name469_q;
    always @(i_acl_1145_v4l2_ctrl_get_name470_s or i_acl_1137_v4l2_ctrl_get_name468_q or c_i64_46297004169368698881024_q)
    begin
        unique case (i_acl_1145_v4l2_ctrl_get_name470_s)
            1'b0 : i_acl_1145_v4l2_ctrl_get_name470_q = i_acl_1137_v4l2_ctrl_get_name468_q;
            1'b1 : i_acl_1145_v4l2_ctrl_get_name470_q = c_i64_46297004169368698881024_q;
            default : i_acl_1145_v4l2_ctrl_get_name470_q = 64'b0;
        endcase
    end

    // i_acl_1146_v4l2_ctrl_get_name471(LOGICAL,397)@9 + 1
    assign i_acl_1146_v4l2_ctrl_get_name471_qi = i_pivot421_v4l2_ctrl_get_name91_c ^ i_pivot419_v4l2_ctrl_get_name181_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1146_v4l2_ctrl_get_name471_delay ( .xin(i_acl_1146_v4l2_ctrl_get_name471_qi), .xout(i_acl_1146_v4l2_ctrl_get_name471_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1153_v4l2_ctrl_get_name472(MUX,398)@10
    assign i_acl_1153_v4l2_ctrl_get_name472_s = i_acl_1146_v4l2_ctrl_get_name471_q;
    always @(i_acl_1153_v4l2_ctrl_get_name472_s or i_acl_1145_v4l2_ctrl_get_name470_q or c_i64_46299818919135805441025_q)
    begin
        unique case (i_acl_1153_v4l2_ctrl_get_name472_s)
            1'b0 : i_acl_1153_v4l2_ctrl_get_name472_q = i_acl_1145_v4l2_ctrl_get_name470_q;
            1'b1 : i_acl_1153_v4l2_ctrl_get_name472_q = c_i64_46299818919135805441025_q;
            default : i_acl_1153_v4l2_ctrl_get_name472_q = 64'b0;
        endcase
    end

    // redist105_i_pivot485_v4l2_ctrl_get_name13_c_3(DELAY,1647)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_0 <= '0;
            redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_1 <= '0;
            redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_q <= '0;
        end
        else
        begin
            redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_0 <= $unsigned(i_pivot485_v4l2_ctrl_get_name13_c);
            redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_1 <= redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_0;
            redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_q <= redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_delay_1;
        end
    end

    // c_i32_352936_recast_x(CONSTANT,1232)
    assign c_i32_352936_recast_x_q = $unsigned(32'b00000000000000000000000101100000);

    // redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9(DELAY,1550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q <= '0;
        end
        else
        begin
            redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q <= $unsigned(redist7_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_8_q);
        end
    end

    // i_pivot435_v4l2_ctrl_get_name299(COMPARE,814)@10
    assign i_pivot435_v4l2_ctrl_get_name299_a = $unsigned({{2{redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot435_v4l2_ctrl_get_name299_b = $unsigned({{2{c_i32_352936_recast_x_q[31]}}, c_i32_352936_recast_x_q});
    assign i_pivot435_v4l2_ctrl_get_name299_o = $unsigned($signed(i_pivot435_v4l2_ctrl_get_name299_a) - $signed(i_pivot435_v4l2_ctrl_get_name299_b));
    assign i_pivot435_v4l2_ctrl_get_name299_c[0] = i_pivot435_v4l2_ctrl_get_name299_o[33];

    // i_acl_1158_v4l2_ctrl_get_name473(LOGICAL,399)@10
    assign i_acl_1158_v4l2_ctrl_get_name473_q = i_pivot435_v4l2_ctrl_get_name299_c ^ redist105_i_pivot485_v4l2_ctrl_get_name13_c_3_q;

    // i_acl_1162_v4l2_ctrl_get_name474(MUX,400)@10 + 1
    assign i_acl_1162_v4l2_ctrl_get_name474_s = i_acl_1158_v4l2_ctrl_get_name473_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1162_v4l2_ctrl_get_name474_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1162_v4l2_ctrl_get_name474_s)
                1'b0 : i_acl_1162_v4l2_ctrl_get_name474_q <= i_acl_1153_v4l2_ctrl_get_name472_q;
                1'b1 : i_acl_1162_v4l2_ctrl_get_name474_q <= c_i64_46302633668902912001026_q;
                default : i_acl_1162_v4l2_ctrl_get_name474_q <= 64'b0;
            endcase
        end
    end

    // i_acl_1163_v4l2_ctrl_get_name475(LOGICAL,401)@10 + 1
    assign i_acl_1163_v4l2_ctrl_get_name475_qi = i_pivot437_v4l2_ctrl_get_name189_c ^ i_pivot435_v4l2_ctrl_get_name299_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1163_v4l2_ctrl_get_name475_delay ( .xin(i_acl_1163_v4l2_ctrl_get_name475_qi), .xout(i_acl_1163_v4l2_ctrl_get_name475_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1171_v4l2_ctrl_get_name476(MUX,402)@11
    assign i_acl_1171_v4l2_ctrl_get_name476_s = i_acl_1163_v4l2_ctrl_get_name475_q;
    always @(i_acl_1171_v4l2_ctrl_get_name476_s or i_acl_1162_v4l2_ctrl_get_name474_q or c_i64_46305448418670018561027_q)
    begin
        unique case (i_acl_1171_v4l2_ctrl_get_name476_s)
            1'b0 : i_acl_1171_v4l2_ctrl_get_name476_q = i_acl_1162_v4l2_ctrl_get_name474_q;
            1'b1 : i_acl_1171_v4l2_ctrl_get_name476_q = c_i64_46305448418670018561027_q;
            default : i_acl_1171_v4l2_ctrl_get_name476_q = 64'b0;
        endcase
    end

    // c_i32_349880_recast_x(CONSTANT,1229)
    assign c_i32_349880_recast_x_q = $unsigned(32'b00000000000000000000000101011101);

    // i_pivot433_v4l2_ctrl_get_name187(COMPARE,813)@10
    assign i_pivot433_v4l2_ctrl_get_name187_a = $unsigned({{2{redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot433_v4l2_ctrl_get_name187_b = $unsigned({{2{c_i32_349880_recast_x_q[31]}}, c_i32_349880_recast_x_q});
    assign i_pivot433_v4l2_ctrl_get_name187_o = $unsigned($signed(i_pivot433_v4l2_ctrl_get_name187_a) - $signed(i_pivot433_v4l2_ctrl_get_name187_b));
    assign i_pivot433_v4l2_ctrl_get_name187_c[0] = i_pivot433_v4l2_ctrl_get_name187_o[33];

    // i_acl_1173_v4l2_ctrl_get_name477(LOGICAL,403)@10 + 1
    assign i_acl_1173_v4l2_ctrl_get_name477_qi = i_pivot441_v4l2_ctrl_get_name47_c ^ i_pivot433_v4l2_ctrl_get_name187_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1173_v4l2_ctrl_get_name477_delay ( .xin(i_acl_1173_v4l2_ctrl_get_name477_qi), .xout(i_acl_1173_v4l2_ctrl_get_name477_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1179_v4l2_ctrl_get_name478(MUX,404)@11
    assign i_acl_1179_v4l2_ctrl_get_name478_s = i_acl_1173_v4l2_ctrl_get_name477_q;
    always @(i_acl_1179_v4l2_ctrl_get_name478_s or i_acl_1171_v4l2_ctrl_get_name476_q or c_i64_46308263168437125121028_q)
    begin
        unique case (i_acl_1179_v4l2_ctrl_get_name478_s)
            1'b0 : i_acl_1179_v4l2_ctrl_get_name478_q = i_acl_1171_v4l2_ctrl_get_name476_q;
            1'b1 : i_acl_1179_v4l2_ctrl_get_name478_q = c_i64_46308263168437125121028_q;
            default : i_acl_1179_v4l2_ctrl_get_name478_q = 64'b0;
        endcase
    end

    // i_acl_1180_v4l2_ctrl_get_name479(LOGICAL,405)@10 + 1
    assign i_acl_1180_v4l2_ctrl_get_name479_qi = i_pivot433_v4l2_ctrl_get_name187_c ^ i_pivot439_v4l2_ctrl_get_name95_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1180_v4l2_ctrl_get_name479_delay ( .xin(i_acl_1180_v4l2_ctrl_get_name479_qi), .xout(i_acl_1180_v4l2_ctrl_get_name479_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1187_v4l2_ctrl_get_name480(MUX,406)@11
    assign i_acl_1187_v4l2_ctrl_get_name480_s = i_acl_1180_v4l2_ctrl_get_name479_q;
    always @(i_acl_1187_v4l2_ctrl_get_name480_s or i_acl_1179_v4l2_ctrl_get_name478_q or c_i64_46311077918204231681029_q)
    begin
        unique case (i_acl_1187_v4l2_ctrl_get_name480_s)
            1'b0 : i_acl_1187_v4l2_ctrl_get_name480_q = i_acl_1179_v4l2_ctrl_get_name478_q;
            1'b1 : i_acl_1187_v4l2_ctrl_get_name480_q = c_i64_46311077918204231681029_q;
            default : i_acl_1187_v4l2_ctrl_get_name480_q = 64'b0;
        endcase
    end

    // c_i32_320869_recast_x(CONSTANT,1200)
    assign c_i32_320869_recast_x_q = $unsigned(32'b00000000000000000000000101000000);

    // i_pivot377_v4l2_ctrl_get_name165(COMPARE,784)@10 + 1
    assign i_pivot377_v4l2_ctrl_get_name165_a = $unsigned({{2{redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot377_v4l2_ctrl_get_name165_b = $unsigned({{2{c_i32_320869_recast_x_q[31]}}, c_i32_320869_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot377_v4l2_ctrl_get_name165_o <= 34'b0;
        end
        else
        begin
            i_pivot377_v4l2_ctrl_get_name165_o <= $unsigned($signed(i_pivot377_v4l2_ctrl_get_name165_a) - $signed(i_pivot377_v4l2_ctrl_get_name165_b));
        end
    end
    assign i_pivot377_v4l2_ctrl_get_name165_c[0] = i_pivot377_v4l2_ctrl_get_name165_o[33];

    // c_i32_319828_recast_x(CONSTANT,1199)
    assign c_i32_319828_recast_x_q = $unsigned(32'b00000000000000000000000100111111);

    // i_pivot379_v4l2_ctrl_get_name83(COMPARE,785)@10 + 1
    assign i_pivot379_v4l2_ctrl_get_name83_a = $unsigned({{2{redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot379_v4l2_ctrl_get_name83_b = $unsigned({{2{c_i32_319828_recast_x_q[31]}}, c_i32_319828_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot379_v4l2_ctrl_get_name83_o <= 34'b0;
        end
        else
        begin
            i_pivot379_v4l2_ctrl_get_name83_o <= $unsigned($signed(i_pivot379_v4l2_ctrl_get_name83_a) - $signed(i_pivot379_v4l2_ctrl_get_name83_b));
        end
    end
    assign i_pivot379_v4l2_ctrl_get_name83_c[0] = i_pivot379_v4l2_ctrl_get_name83_o[33];

    // i_acl_1188_v4l2_ctrl_get_name481(LOGICAL,407)@11
    assign i_acl_1188_v4l2_ctrl_get_name481_q = i_pivot379_v4l2_ctrl_get_name83_c ^ i_pivot377_v4l2_ctrl_get_name165_c;

    // i_acl_1195_v4l2_ctrl_get_name482(MUX,408)@11
    assign i_acl_1195_v4l2_ctrl_get_name482_s = i_acl_1188_v4l2_ctrl_get_name481_q;
    always @(i_acl_1195_v4l2_ctrl_get_name482_s or i_acl_1187_v4l2_ctrl_get_name480_q or c_i64_46313892667971338241030_q)
    begin
        unique case (i_acl_1195_v4l2_ctrl_get_name482_s)
            1'b0 : i_acl_1195_v4l2_ctrl_get_name482_q = i_acl_1187_v4l2_ctrl_get_name480_q;
            1'b1 : i_acl_1195_v4l2_ctrl_get_name482_q = c_i64_46313892667971338241030_q;
            default : i_acl_1195_v4l2_ctrl_get_name482_q = 64'b0;
        endcase
    end

    // redist119_i_pivot399_v4l2_ctrl_get_name87_c_3(DELAY,1661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_delay_0 <= '0;
            redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_q <= '0;
        end
        else
        begin
            redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_delay_0 <= $unsigned(i_pivot399_v4l2_ctrl_get_name87_c);
            redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_q <= redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_delay_0;
        end
    end

    // c_i32_329931_recast_x(CONSTANT,1209)
    assign c_i32_329931_recast_x_q = $unsigned(32'b00000000000000000000000101001001);

    // i_pivot391_v4l2_ctrl_get_name289(COMPARE,791)@10 + 1
    assign i_pivot391_v4l2_ctrl_get_name289_a = $unsigned({{2{redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q[31]}}, redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q});
    assign i_pivot391_v4l2_ctrl_get_name289_b = $unsigned({{2{c_i32_329931_recast_x_q[31]}}, c_i32_329931_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot391_v4l2_ctrl_get_name289_o <= 34'b0;
        end
        else
        begin
            i_pivot391_v4l2_ctrl_get_name289_o <= $unsigned($signed(i_pivot391_v4l2_ctrl_get_name289_a) - $signed(i_pivot391_v4l2_ctrl_get_name289_b));
        end
    end
    assign i_pivot391_v4l2_ctrl_get_name289_c[0] = i_pivot391_v4l2_ctrl_get_name289_o[33];

    // i_acl_1197_v4l2_ctrl_get_name483(LOGICAL,409)@11
    assign i_acl_1197_v4l2_ctrl_get_name483_q = i_pivot391_v4l2_ctrl_get_name289_c ^ redist119_i_pivot399_v4l2_ctrl_get_name87_c_3_q;

    // i_acl_1204_v4l2_ctrl_get_name484(MUX,410)@11
    assign i_acl_1204_v4l2_ctrl_get_name484_s = i_acl_1197_v4l2_ctrl_get_name483_q;
    always @(i_acl_1204_v4l2_ctrl_get_name484_s or i_acl_1195_v4l2_ctrl_get_name482_q or c_i64_46316707417738444801031_q)
    begin
        unique case (i_acl_1204_v4l2_ctrl_get_name484_s)
            1'b0 : i_acl_1204_v4l2_ctrl_get_name484_q = i_acl_1195_v4l2_ctrl_get_name482_q;
            1'b1 : i_acl_1204_v4l2_ctrl_get_name484_q = c_i64_46316707417738444801031_q;
            default : i_acl_1204_v4l2_ctrl_get_name484_q = 64'b0;
        endcase
    end

    // c_i32_326930_recast_x(CONSTANT,1206)
    assign c_i32_326930_recast_x_q = $unsigned(32'b00000000000000000000000101000110);

    // redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10(DELAY,1551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q <= '0;
        end
        else
        begin
            redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q <= $unsigned(redist8_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_9_q);
        end
    end

    // i_pivot385_v4l2_ctrl_get_name287(COMPARE,788)@11
    assign i_pivot385_v4l2_ctrl_get_name287_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot385_v4l2_ctrl_get_name287_b = $unsigned({{2{c_i32_326930_recast_x_q[31]}}, c_i32_326930_recast_x_q});
    assign i_pivot385_v4l2_ctrl_get_name287_o = $unsigned($signed(i_pivot385_v4l2_ctrl_get_name287_a) - $signed(i_pivot385_v4l2_ctrl_get_name287_b));
    assign i_pivot385_v4l2_ctrl_get_name287_c[0] = i_pivot385_v4l2_ctrl_get_name287_o[33];

    // c_i32_325871_recast_x(CONSTANT,1205)
    assign c_i32_325871_recast_x_q = $unsigned(32'b00000000000000000000000101000101);

    // i_pivot387_v4l2_ctrl_get_name169(COMPARE,789)@11
    assign i_pivot387_v4l2_ctrl_get_name169_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot387_v4l2_ctrl_get_name169_b = $unsigned({{2{c_i32_325871_recast_x_q[31]}}, c_i32_325871_recast_x_q});
    assign i_pivot387_v4l2_ctrl_get_name169_o = $unsigned($signed(i_pivot387_v4l2_ctrl_get_name169_a) - $signed(i_pivot387_v4l2_ctrl_get_name169_b));
    assign i_pivot387_v4l2_ctrl_get_name169_c[0] = i_pivot387_v4l2_ctrl_get_name169_o[33];

    // i_acl_1205_v4l2_ctrl_get_name485(LOGICAL,411)@11
    assign i_acl_1205_v4l2_ctrl_get_name485_q = i_pivot387_v4l2_ctrl_get_name169_c ^ i_pivot385_v4l2_ctrl_get_name287_c;

    // i_acl_1213_v4l2_ctrl_get_name486(MUX,412)@11
    assign i_acl_1213_v4l2_ctrl_get_name486_s = i_acl_1205_v4l2_ctrl_get_name485_q;
    always @(i_acl_1213_v4l2_ctrl_get_name486_s or i_acl_1204_v4l2_ctrl_get_name484_q or c_i64_46319522167505551361032_q)
    begin
        unique case (i_acl_1213_v4l2_ctrl_get_name486_s)
            1'b0 : i_acl_1213_v4l2_ctrl_get_name486_q = i_acl_1204_v4l2_ctrl_get_name484_q;
            1'b1 : i_acl_1213_v4l2_ctrl_get_name486_q = c_i64_46319522167505551361032_q;
            default : i_acl_1213_v4l2_ctrl_get_name486_q = 64'b0;
        endcase
    end

    // c_i32_316928_recast_x(CONSTANT,1196)
    assign c_i32_316928_recast_x_q = $unsigned(32'b00000000000000000000000100111100);

    // i_pivot367_v4l2_ctrl_get_name283(COMPARE,779)@11
    assign i_pivot367_v4l2_ctrl_get_name283_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot367_v4l2_ctrl_get_name283_b = $unsigned({{2{c_i32_316928_recast_x_q[31]}}, c_i32_316928_recast_x_q});
    assign i_pivot367_v4l2_ctrl_get_name283_o = $unsigned($signed(i_pivot367_v4l2_ctrl_get_name283_a) - $signed(i_pivot367_v4l2_ctrl_get_name283_b));
    assign i_pivot367_v4l2_ctrl_get_name283_c[0] = i_pivot367_v4l2_ctrl_get_name283_o[33];

    // c_i32_315867_recast_x(CONSTANT,1195)
    assign c_i32_315867_recast_x_q = $unsigned(32'b00000000000000000000000100111011);

    // i_pivot369_v4l2_ctrl_get_name161(COMPARE,780)@11
    assign i_pivot369_v4l2_ctrl_get_name161_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot369_v4l2_ctrl_get_name161_b = $unsigned({{2{c_i32_315867_recast_x_q[31]}}, c_i32_315867_recast_x_q});
    assign i_pivot369_v4l2_ctrl_get_name161_o = $unsigned($signed(i_pivot369_v4l2_ctrl_get_name161_a) - $signed(i_pivot369_v4l2_ctrl_get_name161_b));
    assign i_pivot369_v4l2_ctrl_get_name161_c[0] = i_pivot369_v4l2_ctrl_get_name161_o[33];

    // i_acl_1214_v4l2_ctrl_get_name487(LOGICAL,413)@11
    assign i_acl_1214_v4l2_ctrl_get_name487_q = i_pivot369_v4l2_ctrl_get_name161_c ^ i_pivot367_v4l2_ctrl_get_name283_c;

    // i_acl_1222_v4l2_ctrl_get_name488(MUX,414)@11 + 1
    assign i_acl_1222_v4l2_ctrl_get_name488_s = i_acl_1214_v4l2_ctrl_get_name487_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1222_v4l2_ctrl_get_name488_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1222_v4l2_ctrl_get_name488_s)
                1'b0 : i_acl_1222_v4l2_ctrl_get_name488_q <= i_acl_1213_v4l2_ctrl_get_name486_q;
                1'b1 : i_acl_1222_v4l2_ctrl_get_name488_q <= c_i64_46322336917272657921033_q;
                default : i_acl_1222_v4l2_ctrl_get_name488_q <= 64'b0;
            endcase
        end
    end

    // c_i32_317807_recast_x(CONSTANT,1197)
    assign c_i32_317807_recast_x_q = $unsigned(32'b00000000000000000000000100111101);

    // i_pivot381_v4l2_ctrl_get_name41(COMPARE,786)@11
    assign i_pivot381_v4l2_ctrl_get_name41_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot381_v4l2_ctrl_get_name41_b = $unsigned({{2{c_i32_317807_recast_x_q[31]}}, c_i32_317807_recast_x_q});
    assign i_pivot381_v4l2_ctrl_get_name41_o = $unsigned($signed(i_pivot381_v4l2_ctrl_get_name41_a) - $signed(i_pivot381_v4l2_ctrl_get_name41_b));
    assign i_pivot381_v4l2_ctrl_get_name41_c[0] = i_pivot381_v4l2_ctrl_get_name41_o[33];

    // i_acl_1225_v4l2_ctrl_get_name489(LOGICAL,415)@11 + 1
    assign i_acl_1225_v4l2_ctrl_get_name489_qi = i_pivot367_v4l2_ctrl_get_name283_c ^ i_pivot381_v4l2_ctrl_get_name41_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1225_v4l2_ctrl_get_name489_delay ( .xin(i_acl_1225_v4l2_ctrl_get_name489_qi), .xout(i_acl_1225_v4l2_ctrl_get_name489_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1231_v4l2_ctrl_get_name490(MUX,416)@12
    assign i_acl_1231_v4l2_ctrl_get_name490_s = i_acl_1225_v4l2_ctrl_get_name489_q;
    always @(i_acl_1231_v4l2_ctrl_get_name490_s or i_acl_1222_v4l2_ctrl_get_name488_q or c_i64_46325151667039764481034_q)
    begin
        unique case (i_acl_1231_v4l2_ctrl_get_name490_s)
            1'b0 : i_acl_1231_v4l2_ctrl_get_name490_q = i_acl_1222_v4l2_ctrl_get_name488_q;
            1'b1 : i_acl_1231_v4l2_ctrl_get_name490_q = c_i64_46325151667039764481034_q;
            default : i_acl_1231_v4l2_ctrl_get_name490_q = 64'b0;
        endcase
    end

    // c_i32_2141035_recast_x(CONSTANT,1168)
    assign c_i32_2141035_recast_x_q = $unsigned(32'b00000000000000000000000011010110);

    // i_unnamed_v4l2_ctrl_get_name491(LOGICAL,950)@11 + 1
    assign i_unnamed_v4l2_ctrl_get_name491_qi = $unsigned(redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q == c_i32_2141035_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_v4l2_ctrl_get_name491_delay ( .xin(i_unnamed_v4l2_ctrl_get_name491_qi), .xout(i_unnamed_v4l2_ctrl_get_name491_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1240_v4l2_ctrl_get_name493(MUX,417)@12
    assign i_acl_1240_v4l2_ctrl_get_name493_s = i_unnamed_v4l2_ctrl_get_name491_q;
    always @(i_acl_1240_v4l2_ctrl_get_name493_s or i_acl_1231_v4l2_ctrl_get_name490_q or c_i64_46327966416806871041036_q)
    begin
        unique case (i_acl_1240_v4l2_ctrl_get_name493_s)
            1'b0 : i_acl_1240_v4l2_ctrl_get_name493_q = i_acl_1231_v4l2_ctrl_get_name490_q;
            1'b1 : i_acl_1240_v4l2_ctrl_get_name493_q = c_i64_46327966416806871041036_q;
            default : i_acl_1240_v4l2_ctrl_get_name493_q = 64'b0;
        endcase
    end

    // c_i32_328872_recast_x(CONSTANT,1208)
    assign c_i32_328872_recast_x_q = $unsigned(32'b00000000000000000000000101001000);

    // i_pivot393_v4l2_ctrl_get_name171(COMPARE,792)@11
    assign i_pivot393_v4l2_ctrl_get_name171_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot393_v4l2_ctrl_get_name171_b = $unsigned({{2{c_i32_328872_recast_x_q[31]}}, c_i32_328872_recast_x_q});
    assign i_pivot393_v4l2_ctrl_get_name171_o = $unsigned($signed(i_pivot393_v4l2_ctrl_get_name171_a) - $signed(i_pivot393_v4l2_ctrl_get_name171_b));
    assign i_pivot393_v4l2_ctrl_get_name171_c[0] = i_pivot393_v4l2_ctrl_get_name171_o[33];

    // c_i32_327808_recast_x(CONSTANT,1207)
    assign c_i32_327808_recast_x_q = $unsigned(32'b00000000000000000000000101000111);

    // i_pivot401_v4l2_ctrl_get_name43(COMPARE,797)@11
    assign i_pivot401_v4l2_ctrl_get_name43_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot401_v4l2_ctrl_get_name43_b = $unsigned({{2{c_i32_327808_recast_x_q[31]}}, c_i32_327808_recast_x_q});
    assign i_pivot401_v4l2_ctrl_get_name43_o = $unsigned($signed(i_pivot401_v4l2_ctrl_get_name43_a) - $signed(i_pivot401_v4l2_ctrl_get_name43_b));
    assign i_pivot401_v4l2_ctrl_get_name43_c[0] = i_pivot401_v4l2_ctrl_get_name43_o[33];

    // i_acl_1242_v4l2_ctrl_get_name494(LOGICAL,418)@11 + 1
    assign i_acl_1242_v4l2_ctrl_get_name494_qi = i_pivot401_v4l2_ctrl_get_name43_c ^ i_pivot393_v4l2_ctrl_get_name171_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1242_v4l2_ctrl_get_name494_delay ( .xin(i_acl_1242_v4l2_ctrl_get_name494_qi), .xout(i_acl_1242_v4l2_ctrl_get_name494_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1248_v4l2_ctrl_get_name495(MUX,419)@12
    assign i_acl_1248_v4l2_ctrl_get_name495_s = i_acl_1242_v4l2_ctrl_get_name494_q;
    always @(i_acl_1248_v4l2_ctrl_get_name495_s or i_acl_1240_v4l2_ctrl_get_name493_q or c_i64_46330781166573977601037_q)
    begin
        unique case (i_acl_1248_v4l2_ctrl_get_name495_s)
            1'b0 : i_acl_1248_v4l2_ctrl_get_name495_q = i_acl_1240_v4l2_ctrl_get_name493_q;
            1'b1 : i_acl_1248_v4l2_ctrl_get_name495_q = c_i64_46330781166573977601037_q;
            default : i_acl_1248_v4l2_ctrl_get_name495_q = 64'b0;
        endcase
    end

    // i_acl_1249_v4l2_ctrl_get_name496(LOGICAL,420)@11 + 1
    assign i_acl_1249_v4l2_ctrl_get_name496_qi = i_pivot393_v4l2_ctrl_get_name171_c ^ i_pivot391_v4l2_ctrl_get_name289_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1249_v4l2_ctrl_get_name496_delay ( .xin(i_acl_1249_v4l2_ctrl_get_name496_qi), .xout(i_acl_1249_v4l2_ctrl_get_name496_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1257_v4l2_ctrl_get_name497(MUX,421)@12
    assign i_acl_1257_v4l2_ctrl_get_name497_s = i_acl_1249_v4l2_ctrl_get_name496_q;
    always @(i_acl_1257_v4l2_ctrl_get_name497_s or i_acl_1248_v4l2_ctrl_get_name495_q or c_i64_46333595916341084161038_q)
    begin
        unique case (i_acl_1257_v4l2_ctrl_get_name497_s)
            1'b0 : i_acl_1257_v4l2_ctrl_get_name497_q = i_acl_1248_v4l2_ctrl_get_name495_q;
            1'b1 : i_acl_1257_v4l2_ctrl_get_name497_q = c_i64_46333595916341084161038_q;
            default : i_acl_1257_v4l2_ctrl_get_name497_q = 64'b0;
        endcase
    end

    // i_acl_1260_v4l2_ctrl_get_name498(LOGICAL,422)@11 + 1
    assign i_acl_1260_v4l2_ctrl_get_name498_qi = i_pivot385_v4l2_ctrl_get_name287_c ^ i_pivot401_v4l2_ctrl_get_name43_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1260_v4l2_ctrl_get_name498_delay ( .xin(i_acl_1260_v4l2_ctrl_get_name498_qi), .xout(i_acl_1260_v4l2_ctrl_get_name498_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1266_v4l2_ctrl_get_name499(MUX,423)@12
    assign i_acl_1266_v4l2_ctrl_get_name499_s = i_acl_1260_v4l2_ctrl_get_name498_q;
    always @(i_acl_1266_v4l2_ctrl_get_name499_s or i_acl_1257_v4l2_ctrl_get_name497_q or c_i64_46336410666108190721039_q)
    begin
        unique case (i_acl_1266_v4l2_ctrl_get_name499_s)
            1'b0 : i_acl_1266_v4l2_ctrl_get_name499_q = i_acl_1257_v4l2_ctrl_get_name497_q;
            1'b1 : i_acl_1266_v4l2_ctrl_get_name499_q = c_i64_46336410666108190721039_q;
            default : i_acl_1266_v4l2_ctrl_get_name499_q = 64'b0;
        endcase
    end

    // c_i64_46342040165642403841043(CONSTANT,112)
    assign c_i64_46342040165642403841043_q = $unsigned(64'b0100000001010000000000000000000000000000000000000000000000000000);

    // c_i32_2191046(CONSTANT,29)
    assign c_i32_2191046_q = $unsigned(32'b00000000000000000000000011011011);

    // redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11(DELAY,1552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q <= '0;
        end
        else
        begin
            redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q <= $unsigned(redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q);
        end
    end

    // dupName_1_comparator_x(LOGICAL,1338)@12
    assign dupName_1_comparator_x_q = $unsigned(redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q == c_i32_2191046_q ? 1'b1 : 1'b0);

    // c_i64_46344854915409510401042(CONSTANT,113)
    assign c_i64_46344854915409510401042_q = $unsigned(64'b0100000001010001000000000000000000000000000000000000000000000000);

    // c_i32_2181045(CONSTANT,28)
    assign c_i32_2181045_q = $unsigned(32'b00000000000000000000000011011010);

    // dupName_0_comparator_x(LOGICAL,1336)@12
    assign dupName_0_comparator_x_q = $unsigned(redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q == c_i32_2181045_q ? 1'b1 : 1'b0);

    // c_i64_46339225415875297281041(CONSTANT,111)
    assign c_i64_46339225415875297281041_q = $unsigned(64'b0100000001001111000000000000000000000000000000000000000000000000);

    // c_i32_2111044(CONSTANT,24)
    assign c_i32_2111044_q = $unsigned(32'b00000000000000000000000011010011);

    // comparator(LOGICAL,360)@12
    assign comparator_q = $unsigned(redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q == c_i32_2111044_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500(SELECTOR,734)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q <= 64'b0;
        end
        else
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q <= i_acl_1266_v4l2_ctrl_get_name499_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q <= c_i64_46342040165642403841043_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q <= c_i64_46344854915409510401042_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q <= c_i64_46339225415875297281041_q;
            end
        end
    end

    // c_i32_323870_recast_x(CONSTANT,1203)
    assign c_i32_323870_recast_x_q = $unsigned(32'b00000000000000000000000101000011);

    // i_pivot383_v4l2_ctrl_get_name167(COMPARE,787)@12
    assign i_pivot383_v4l2_ctrl_get_name167_a = $unsigned({{2{redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot383_v4l2_ctrl_get_name167_b = $unsigned({{2{c_i32_323870_recast_x_q[31]}}, c_i32_323870_recast_x_q});
    assign i_pivot383_v4l2_ctrl_get_name167_o = $unsigned($signed(i_pivot383_v4l2_ctrl_get_name167_a) - $signed(i_pivot383_v4l2_ctrl_get_name167_b));
    assign i_pivot383_v4l2_ctrl_get_name167_c[0] = i_pivot383_v4l2_ctrl_get_name167_o[33];

    // c_i32_322797_recast_x(CONSTANT,1202)
    assign c_i32_322797_recast_x_q = $unsigned(32'b00000000000000000000000101000010);

    // i_pivot403_v4l2_ctrl_get_name21(COMPARE,798)@12
    assign i_pivot403_v4l2_ctrl_get_name21_a = $unsigned({{2{redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot403_v4l2_ctrl_get_name21_b = $unsigned({{2{c_i32_322797_recast_x_q[31]}}, c_i32_322797_recast_x_q});
    assign i_pivot403_v4l2_ctrl_get_name21_o = $unsigned($signed(i_pivot403_v4l2_ctrl_get_name21_a) - $signed(i_pivot403_v4l2_ctrl_get_name21_b));
    assign i_pivot403_v4l2_ctrl_get_name21_c[0] = i_pivot403_v4l2_ctrl_get_name21_o[33];

    // i_acl_1295_v4l2_ctrl_get_name501(LOGICAL,424)@12 + 1
    assign i_acl_1295_v4l2_ctrl_get_name501_qi = i_pivot403_v4l2_ctrl_get_name21_c ^ i_pivot383_v4l2_ctrl_get_name167_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1295_v4l2_ctrl_get_name501_delay ( .xin(i_acl_1295_v4l2_ctrl_get_name501_qi), .xout(i_acl_1295_v4l2_ctrl_get_name501_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1300_v4l2_ctrl_get_name502(MUX,425)@13
    assign i_acl_1300_v4l2_ctrl_get_name502_s = i_acl_1295_v4l2_ctrl_get_name501_q;
    always @(i_acl_1300_v4l2_ctrl_get_name502_s or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q or c_i64_46347669665176616961047_q)
    begin
        unique case (i_acl_1300_v4l2_ctrl_get_name502_s)
            1'b0 : i_acl_1300_v4l2_ctrl_get_name502_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt_v4l2_ctrl_get_name500_q;
            1'b1 : i_acl_1300_v4l2_ctrl_get_name502_q = c_i64_46347669665176616961047_q;
            default : i_acl_1300_v4l2_ctrl_get_name502_q = 64'b0;
        endcase
    end

    // c_i32_324829_recast_x(CONSTANT,1204)
    assign c_i32_324829_recast_x_q = $unsigned(32'b00000000000000000000000101000100);

    // i_pivot389_v4l2_ctrl_get_name85(COMPARE,790)@12
    assign i_pivot389_v4l2_ctrl_get_name85_a = $unsigned({{2{redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q[31]}}, redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q});
    assign i_pivot389_v4l2_ctrl_get_name85_b = $unsigned({{2{c_i32_324829_recast_x_q[31]}}, c_i32_324829_recast_x_q});
    assign i_pivot389_v4l2_ctrl_get_name85_o = $unsigned($signed(i_pivot389_v4l2_ctrl_get_name85_a) - $signed(i_pivot389_v4l2_ctrl_get_name85_b));
    assign i_pivot389_v4l2_ctrl_get_name85_c[0] = i_pivot389_v4l2_ctrl_get_name85_o[33];

    // i_acl_1301_v4l2_ctrl_get_name503(LOGICAL,426)@12 + 1
    assign i_acl_1301_v4l2_ctrl_get_name503_qi = i_pivot383_v4l2_ctrl_get_name167_c ^ i_pivot389_v4l2_ctrl_get_name85_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1301_v4l2_ctrl_get_name503_delay ( .xin(i_acl_1301_v4l2_ctrl_get_name503_qi), .xout(i_acl_1301_v4l2_ctrl_get_name503_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1308_v4l2_ctrl_get_name504(MUX,427)@13
    assign i_acl_1308_v4l2_ctrl_get_name504_s = i_acl_1301_v4l2_ctrl_get_name503_q;
    always @(i_acl_1308_v4l2_ctrl_get_name504_s or i_acl_1300_v4l2_ctrl_get_name502_q or c_i64_46350484414943723521048_q)
    begin
        unique case (i_acl_1308_v4l2_ctrl_get_name504_s)
            1'b0 : i_acl_1308_v4l2_ctrl_get_name504_q = i_acl_1300_v4l2_ctrl_get_name502_q;
            1'b1 : i_acl_1308_v4l2_ctrl_get_name504_q = c_i64_46350484414943723521048_q;
            default : i_acl_1308_v4l2_ctrl_get_name504_q = 64'b0;
        endcase
    end

    // redist121_i_pivot387_v4l2_ctrl_get_name169_c_1(DELAY,1663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist121_i_pivot387_v4l2_ctrl_get_name169_c_1_q <= '0;
        end
        else
        begin
            redist121_i_pivot387_v4l2_ctrl_get_name169_c_1_q <= $unsigned(i_pivot387_v4l2_ctrl_get_name169_c);
        end
    end

    // i_acl_1309_v4l2_ctrl_get_name505(LOGICAL,428)@12 + 1
    assign i_acl_1309_v4l2_ctrl_get_name505_qi = i_pivot389_v4l2_ctrl_get_name85_c ^ redist121_i_pivot387_v4l2_ctrl_get_name169_c_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1309_v4l2_ctrl_get_name505_delay ( .xin(i_acl_1309_v4l2_ctrl_get_name505_qi), .xout(i_acl_1309_v4l2_ctrl_get_name505_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1316_v4l2_ctrl_get_name506(MUX,429)@13
    assign i_acl_1316_v4l2_ctrl_get_name506_s = i_acl_1309_v4l2_ctrl_get_name505_q;
    always @(i_acl_1316_v4l2_ctrl_get_name506_s or i_acl_1308_v4l2_ctrl_get_name504_q or c_i64_46353299164710830081049_q)
    begin
        unique case (i_acl_1316_v4l2_ctrl_get_name506_s)
            1'b0 : i_acl_1316_v4l2_ctrl_get_name506_q = i_acl_1308_v4l2_ctrl_get_name504_q;
            1'b1 : i_acl_1316_v4l2_ctrl_get_name506_q = c_i64_46353299164710830081049_q;
            default : i_acl_1316_v4l2_ctrl_get_name506_q = 64'b0;
        endcase
    end

    // c_i32_318868_recast_x(CONSTANT,1198)
    assign c_i32_318868_recast_x_q = $unsigned(32'b00000000000000000000000100111110);

    // i_pivot373_v4l2_ctrl_get_name163(COMPARE,782)@11
    assign i_pivot373_v4l2_ctrl_get_name163_a = $unsigned({{2{redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q[31]}}, redist9_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_10_q});
    assign i_pivot373_v4l2_ctrl_get_name163_b = $unsigned({{2{c_i32_318868_recast_x_q[31]}}, c_i32_318868_recast_x_q});
    assign i_pivot373_v4l2_ctrl_get_name163_o = $unsigned($signed(i_pivot373_v4l2_ctrl_get_name163_a) - $signed(i_pivot373_v4l2_ctrl_get_name163_b));
    assign i_pivot373_v4l2_ctrl_get_name163_c[0] = i_pivot373_v4l2_ctrl_get_name163_o[33];

    // i_acl_1318_v4l2_ctrl_get_name507(LOGICAL,430)@11 + 1
    assign i_acl_1318_v4l2_ctrl_get_name507_qi = i_pivot381_v4l2_ctrl_get_name41_c ^ i_pivot373_v4l2_ctrl_get_name163_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1318_v4l2_ctrl_get_name507_delay ( .xin(i_acl_1318_v4l2_ctrl_get_name507_qi), .xout(i_acl_1318_v4l2_ctrl_get_name507_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist175_i_acl_1318_v4l2_ctrl_get_name507_q_2(DELAY,1717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist175_i_acl_1318_v4l2_ctrl_get_name507_q_2_q <= '0;
        end
        else
        begin
            redist175_i_acl_1318_v4l2_ctrl_get_name507_q_2_q <= $unsigned(i_acl_1318_v4l2_ctrl_get_name507_q);
        end
    end

    // i_acl_1324_v4l2_ctrl_get_name508(MUX,431)@13
    assign i_acl_1324_v4l2_ctrl_get_name508_s = redist175_i_acl_1318_v4l2_ctrl_get_name507_q_2_q;
    always @(i_acl_1324_v4l2_ctrl_get_name508_s or i_acl_1316_v4l2_ctrl_get_name506_q or c_i64_46356113914477936641050_q)
    begin
        unique case (i_acl_1324_v4l2_ctrl_get_name508_s)
            1'b0 : i_acl_1324_v4l2_ctrl_get_name508_q = i_acl_1316_v4l2_ctrl_get_name506_q;
            1'b1 : i_acl_1324_v4l2_ctrl_get_name508_q = c_i64_46356113914477936641050_q;
            default : i_acl_1324_v4l2_ctrl_get_name508_q = 64'b0;
        endcase
    end

    // c_i64_46361743414012149761054(CONSTANT,119)
    assign c_i64_46361743414012149761054_q = $unsigned(64'b0100000001010111000000000000000000000000000000000000000000000000);

    // c_i32_2761057(CONSTANT,32)
    assign c_i32_2761057_q = $unsigned(32'b00000000000000000000000100010100);

    // redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12(DELAY,1553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q <= '0;
        end
        else
        begin
            redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q <= $unsigned(redist10_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_11_q);
        end
    end

    // dupName_4_comparator_x(LOGICAL,1341)@13
    assign dupName_4_comparator_x_q = $unsigned(redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q == c_i32_2761057_q ? 1'b1 : 1'b0);

    // c_i64_46364558163779256321053(CONSTANT,120)
    assign c_i64_46364558163779256321053_q = $unsigned(64'b0100000001011000000000000000000000000000000000000000000000000000);

    // c_i32_2321056(CONSTANT,31)
    assign c_i32_2321056_q = $unsigned(32'b00000000000000000000000011101000);

    // dupName_3_comparator_x(LOGICAL,1340)@13
    assign dupName_3_comparator_x_q = $unsigned(redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q == c_i32_2321056_q ? 1'b1 : 1'b0);

    // c_i64_46358928664245043201052(CONSTANT,118)
    assign c_i64_46358928664245043201052_q = $unsigned(64'b0100000001010110000000000000000000000000000000000000000000000000);

    // c_i32_2311055(CONSTANT,30)
    assign c_i32_2311055_q = $unsigned(32'b00000000000000000000000011100111);

    // dupName_2_comparator_x(LOGICAL,1339)@13
    assign dupName_2_comparator_x_q = $unsigned(redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q == c_i32_2311055_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509(SELECTOR,725)@13
    always @(dupName_2_comparator_x_q or c_i64_46358928664245043201052_q or dupName_3_comparator_x_q or c_i64_46364558163779256321053_q or dupName_4_comparator_x_q or c_i64_46361743414012149761054_q or i_acl_1324_v4l2_ctrl_get_name508_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509_q = i_acl_1324_v4l2_ctrl_get_name508_q;
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509_q = c_i64_46361743414012149761054_q;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509_q = c_i64_46364558163779256321053_q;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509_q = c_i64_46358928664245043201052_q;
        end
    end

    // c_i32_314827_recast_x(CONSTANT,1194)
    assign c_i32_314827_recast_x_q = $unsigned(32'b00000000000000000000000100111010);

    // i_pivot371_v4l2_ctrl_get_name81(COMPARE,781)@13
    assign i_pivot371_v4l2_ctrl_get_name81_a = $unsigned({{2{redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot371_v4l2_ctrl_get_name81_b = $unsigned({{2{c_i32_314827_recast_x_q[31]}}, c_i32_314827_recast_x_q});
    assign i_pivot371_v4l2_ctrl_get_name81_o = $unsigned($signed(i_pivot371_v4l2_ctrl_get_name81_a) - $signed(i_pivot371_v4l2_ctrl_get_name81_b));
    assign i_pivot371_v4l2_ctrl_get_name81_c[0] = i_pivot371_v4l2_ctrl_get_name81_o[33];

    // c_i32_313866_recast_x(CONSTANT,1193)
    assign c_i32_313866_recast_x_q = $unsigned(32'b00000000000000000000000100111001);

    // i_pivot365_v4l2_ctrl_get_name159(COMPARE,778)@13
    assign i_pivot365_v4l2_ctrl_get_name159_a = $unsigned({{2{redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot365_v4l2_ctrl_get_name159_b = $unsigned({{2{c_i32_313866_recast_x_q[31]}}, c_i32_313866_recast_x_q});
    assign i_pivot365_v4l2_ctrl_get_name159_o = $unsigned($signed(i_pivot365_v4l2_ctrl_get_name159_a) - $signed(i_pivot365_v4l2_ctrl_get_name159_b));
    assign i_pivot365_v4l2_ctrl_get_name159_c[0] = i_pivot365_v4l2_ctrl_get_name159_o[33];

    // i_acl_1349_v4l2_ctrl_get_name510(LOGICAL,432)@13
    assign i_acl_1349_v4l2_ctrl_get_name510_q = i_pivot365_v4l2_ctrl_get_name159_c ^ i_pivot371_v4l2_ctrl_get_name81_c;

    // i_acl_1356_v4l2_ctrl_get_name511(MUX,433)@13 + 1
    assign i_acl_1356_v4l2_ctrl_get_name511_s = i_acl_1349_v4l2_ctrl_get_name510_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1356_v4l2_ctrl_get_name511_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1356_v4l2_ctrl_get_name511_s)
                1'b0 : i_acl_1356_v4l2_ctrl_get_name511_q <= i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3439_v4l2_ctrl_get_name509_q;
                1'b1 : i_acl_1356_v4l2_ctrl_get_name511_q <= c_i64_46367372913546362881058_q;
                default : i_acl_1356_v4l2_ctrl_get_name511_q <= 64'b0;
            endcase
        end
    end

    // c_i32_311927_recast_x(CONSTANT,1191)
    assign c_i32_311927_recast_x_q = $unsigned(32'b00000000000000000000000100110111);

    // i_pivot355_v4l2_ctrl_get_name281(COMPARE,773)@13 + 1
    assign i_pivot355_v4l2_ctrl_get_name281_a = $unsigned({{2{redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot355_v4l2_ctrl_get_name281_b = $unsigned({{2{c_i32_311927_recast_x_q[31]}}, c_i32_311927_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot355_v4l2_ctrl_get_name281_o <= 34'b0;
        end
        else
        begin
            i_pivot355_v4l2_ctrl_get_name281_o <= $unsigned($signed(i_pivot355_v4l2_ctrl_get_name281_a) - $signed(i_pivot355_v4l2_ctrl_get_name281_b));
        end
    end
    assign i_pivot355_v4l2_ctrl_get_name281_c[0] = i_pivot355_v4l2_ctrl_get_name281_o[33];

    // c_i32_310865_recast_x(CONSTANT,1190)
    assign c_i32_310865_recast_x_q = $unsigned(32'b00000000000000000000000100110110);

    // i_pivot357_v4l2_ctrl_get_name157(COMPARE,774)@13 + 1
    assign i_pivot357_v4l2_ctrl_get_name157_a = $unsigned({{2{redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot357_v4l2_ctrl_get_name157_b = $unsigned({{2{c_i32_310865_recast_x_q[31]}}, c_i32_310865_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot357_v4l2_ctrl_get_name157_o <= 34'b0;
        end
        else
        begin
            i_pivot357_v4l2_ctrl_get_name157_o <= $unsigned($signed(i_pivot357_v4l2_ctrl_get_name157_a) - $signed(i_pivot357_v4l2_ctrl_get_name157_b));
        end
    end
    assign i_pivot357_v4l2_ctrl_get_name157_c[0] = i_pivot357_v4l2_ctrl_get_name157_o[33];

    // i_acl_1357_v4l2_ctrl_get_name512(LOGICAL,434)@14
    assign i_acl_1357_v4l2_ctrl_get_name512_q = i_pivot357_v4l2_ctrl_get_name157_c ^ i_pivot355_v4l2_ctrl_get_name281_c;

    // i_acl_1365_v4l2_ctrl_get_name513(MUX,435)@14
    assign i_acl_1365_v4l2_ctrl_get_name513_s = i_acl_1357_v4l2_ctrl_get_name512_q;
    always @(i_acl_1365_v4l2_ctrl_get_name513_s or i_acl_1356_v4l2_ctrl_get_name511_q or c_i64_46370187663313469441059_q)
    begin
        unique case (i_acl_1365_v4l2_ctrl_get_name513_s)
            1'b0 : i_acl_1365_v4l2_ctrl_get_name513_q = i_acl_1356_v4l2_ctrl_get_name511_q;
            1'b1 : i_acl_1365_v4l2_ctrl_get_name513_q = c_i64_46370187663313469441059_q;
            default : i_acl_1365_v4l2_ctrl_get_name513_q = 64'b0;
        endcase
    end

    // redist123_i_pivot369_v4l2_ctrl_get_name161_c_2(DELAY,1665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_delay_0 <= '0;
            redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_q <= '0;
        end
        else
        begin
            redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_delay_0 <= $unsigned(i_pivot369_v4l2_ctrl_get_name161_c);
            redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_q <= redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_delay_0;
        end
    end

    // i_acl_1366_v4l2_ctrl_get_name514(LOGICAL,436)@13 + 1
    assign i_acl_1366_v4l2_ctrl_get_name514_qi = i_pivot371_v4l2_ctrl_get_name81_c ^ redist123_i_pivot369_v4l2_ctrl_get_name161_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1366_v4l2_ctrl_get_name514_delay ( .xin(i_acl_1366_v4l2_ctrl_get_name514_qi), .xout(i_acl_1366_v4l2_ctrl_get_name514_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1373_v4l2_ctrl_get_name515(MUX,437)@14
    assign i_acl_1373_v4l2_ctrl_get_name515_s = i_acl_1366_v4l2_ctrl_get_name514_q;
    always @(i_acl_1373_v4l2_ctrl_get_name515_s or i_acl_1365_v4l2_ctrl_get_name513_q or c_i64_46373002413080576001060_q)
    begin
        unique case (i_acl_1373_v4l2_ctrl_get_name515_s)
            1'b0 : i_acl_1373_v4l2_ctrl_get_name515_q = i_acl_1365_v4l2_ctrl_get_name513_q;
            1'b1 : i_acl_1373_v4l2_ctrl_get_name515_q = c_i64_46373002413080576001060_q;
            default : i_acl_1373_v4l2_ctrl_get_name515_q = 64'b0;
        endcase
    end

    // c_i32_312792_recast_x(CONSTANT,1192)
    assign c_i32_312792_recast_x_q = $unsigned(32'b00000000000000000000000100111000);

    // i_pivot405_v4l2_ctrl_get_name11(COMPARE,799)@13 + 1
    assign i_pivot405_v4l2_ctrl_get_name11_a = $unsigned({{2{redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q[31]}}, redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q});
    assign i_pivot405_v4l2_ctrl_get_name11_b = $unsigned({{2{c_i32_312792_recast_x_q[31]}}, c_i32_312792_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot405_v4l2_ctrl_get_name11_o <= 34'b0;
        end
        else
        begin
            i_pivot405_v4l2_ctrl_get_name11_o <= $unsigned($signed(i_pivot405_v4l2_ctrl_get_name11_a) - $signed(i_pivot405_v4l2_ctrl_get_name11_b));
        end
    end
    assign i_pivot405_v4l2_ctrl_get_name11_c[0] = i_pivot405_v4l2_ctrl_get_name11_o[33];

    // i_acl_1378_v4l2_ctrl_get_name516(LOGICAL,438)@14
    assign i_acl_1378_v4l2_ctrl_get_name516_q = i_pivot355_v4l2_ctrl_get_name281_c ^ i_pivot405_v4l2_ctrl_get_name11_c;

    // i_acl_1382_v4l2_ctrl_get_name517(MUX,439)@14
    assign i_acl_1382_v4l2_ctrl_get_name517_s = i_acl_1378_v4l2_ctrl_get_name516_q;
    always @(i_acl_1382_v4l2_ctrl_get_name517_s or i_acl_1373_v4l2_ctrl_get_name515_q or c_i64_46375817162847682561061_q)
    begin
        unique case (i_acl_1382_v4l2_ctrl_get_name517_s)
            1'b0 : i_acl_1382_v4l2_ctrl_get_name517_q = i_acl_1373_v4l2_ctrl_get_name515_q;
            1'b1 : i_acl_1382_v4l2_ctrl_get_name517_q = c_i64_46375817162847682561061_q;
            default : i_acl_1382_v4l2_ctrl_get_name517_q = 64'b0;
        endcase
    end

    // redist124_i_pivot365_v4l2_ctrl_get_name159_c_1(DELAY,1666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_i_pivot365_v4l2_ctrl_get_name159_c_1_q <= '0;
        end
        else
        begin
            redist124_i_pivot365_v4l2_ctrl_get_name159_c_1_q <= $unsigned(i_pivot365_v4l2_ctrl_get_name159_c);
        end
    end

    // i_acl_1386_v4l2_ctrl_get_name518(LOGICAL,440)@14
    assign i_acl_1386_v4l2_ctrl_get_name518_q = i_pivot405_v4l2_ctrl_get_name11_c ^ redist124_i_pivot365_v4l2_ctrl_get_name159_c_1_q;

    // i_acl_1390_v4l2_ctrl_get_name519(MUX,441)@14
    assign i_acl_1390_v4l2_ctrl_get_name519_s = i_acl_1386_v4l2_ctrl_get_name518_q;
    always @(i_acl_1390_v4l2_ctrl_get_name519_s or i_acl_1382_v4l2_ctrl_get_name517_q or c_i64_46378631912614789121062_q)
    begin
        unique case (i_acl_1390_v4l2_ctrl_get_name519_s)
            1'b0 : i_acl_1390_v4l2_ctrl_get_name519_q = i_acl_1382_v4l2_ctrl_get_name517_q;
            1'b1 : i_acl_1390_v4l2_ctrl_get_name519_q = c_i64_46378631912614789121062_q;
            default : i_acl_1390_v4l2_ctrl_get_name519_q = 64'b0;
        endcase
    end

    // c_i32_294823_recast_x(CONSTANT,1174)
    assign c_i32_294823_recast_x_q = $unsigned(32'b00000000000000000000000100100110);

    // redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13(DELAY,1554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q <= '0;
        end
        else
        begin
            redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q <= $unsigned(redist11_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_12_q);
        end
    end

    // i_pivot333_v4l2_ctrl_get_name73(COMPARE,762)@14
    assign i_pivot333_v4l2_ctrl_get_name73_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot333_v4l2_ctrl_get_name73_b = $unsigned({{2{c_i32_294823_recast_x_q[31]}}, c_i32_294823_recast_x_q});
    assign i_pivot333_v4l2_ctrl_get_name73_o = $unsigned($signed(i_pivot333_v4l2_ctrl_get_name73_a) - $signed(i_pivot333_v4l2_ctrl_get_name73_b));
    assign i_pivot333_v4l2_ctrl_get_name73_c[0] = i_pivot333_v4l2_ctrl_get_name73_o[33];

    // c_i32_293858_recast_x(CONSTANT,1173)
    assign c_i32_293858_recast_x_q = $unsigned(32'b00000000000000000000000100100101);

    // i_pivot327_v4l2_ctrl_get_name143(COMPARE,759)@14
    assign i_pivot327_v4l2_ctrl_get_name143_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot327_v4l2_ctrl_get_name143_b = $unsigned({{2{c_i32_293858_recast_x_q[31]}}, c_i32_293858_recast_x_q});
    assign i_pivot327_v4l2_ctrl_get_name143_o = $unsigned($signed(i_pivot327_v4l2_ctrl_get_name143_a) - $signed(i_pivot327_v4l2_ctrl_get_name143_b));
    assign i_pivot327_v4l2_ctrl_get_name143_c[0] = i_pivot327_v4l2_ctrl_get_name143_o[33];

    // i_acl_1391_v4l2_ctrl_get_name520(LOGICAL,442)@14
    assign i_acl_1391_v4l2_ctrl_get_name520_q = i_pivot327_v4l2_ctrl_get_name143_c ^ i_pivot333_v4l2_ctrl_get_name73_c;

    // i_acl_1398_v4l2_ctrl_get_name521(MUX,443)@14
    assign i_acl_1398_v4l2_ctrl_get_name521_s = i_acl_1391_v4l2_ctrl_get_name520_q;
    always @(i_acl_1398_v4l2_ctrl_get_name521_s or i_acl_1390_v4l2_ctrl_get_name519_q or c_i64_46381446662381895681063_q)
    begin
        unique case (i_acl_1398_v4l2_ctrl_get_name521_s)
            1'b0 : i_acl_1398_v4l2_ctrl_get_name521_q = i_acl_1390_v4l2_ctrl_get_name519_q;
            1'b1 : i_acl_1398_v4l2_ctrl_get_name521_q = c_i64_46381446662381895681063_q;
            default : i_acl_1398_v4l2_ctrl_get_name521_q = 64'b0;
        endcase
    end

    // c_i32_2841064_recast_x(CONSTANT,1169)
    assign c_i32_2841064_recast_x_q = $unsigned(32'b00000000000000000000000100011100);

    // i_unnamed_v4l2_ctrl_get_name522(LOGICAL,951)@14
    assign i_unnamed_v4l2_ctrl_get_name522_q = $unsigned(redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q == c_i32_2841064_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1407_v4l2_ctrl_get_name524(MUX,444)@14 + 1
    assign i_acl_1407_v4l2_ctrl_get_name524_s = i_unnamed_v4l2_ctrl_get_name522_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1407_v4l2_ctrl_get_name524_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1407_v4l2_ctrl_get_name524_s)
                1'b0 : i_acl_1407_v4l2_ctrl_get_name524_q <= i_acl_1398_v4l2_ctrl_get_name521_q;
                1'b1 : i_acl_1407_v4l2_ctrl_get_name524_q <= c_i64_46384261412149002241065_q;
                default : i_acl_1407_v4l2_ctrl_get_name524_q <= 64'b0;
            endcase
        end
    end

    // c_i32_307806_recast_x(CONSTANT,1187)
    assign c_i32_307806_recast_x_q = $unsigned(32'b00000000000000000000000100110011);

    // i_pivot361_v4l2_ctrl_get_name39(COMPARE,776)@14
    assign i_pivot361_v4l2_ctrl_get_name39_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot361_v4l2_ctrl_get_name39_b = $unsigned({{2{c_i32_307806_recast_x_q[31]}}, c_i32_307806_recast_x_q});
    assign i_pivot361_v4l2_ctrl_get_name39_o = $unsigned($signed(i_pivot361_v4l2_ctrl_get_name39_a) - $signed(i_pivot361_v4l2_ctrl_get_name39_b));
    assign i_pivot361_v4l2_ctrl_get_name39_c[0] = i_pivot361_v4l2_ctrl_get_name39_o[33];

    // c_i32_306926_recast_x(CONSTANT,1186)
    assign c_i32_306926_recast_x_q = $unsigned(32'b00000000000000000000000100110010);

    // i_pivot347_v4l2_ctrl_get_name279(COMPARE,769)@14
    assign i_pivot347_v4l2_ctrl_get_name279_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot347_v4l2_ctrl_get_name279_b = $unsigned({{2{c_i32_306926_recast_x_q[31]}}, c_i32_306926_recast_x_q});
    assign i_pivot347_v4l2_ctrl_get_name279_o = $unsigned($signed(i_pivot347_v4l2_ctrl_get_name279_a) - $signed(i_pivot347_v4l2_ctrl_get_name279_b));
    assign i_pivot347_v4l2_ctrl_get_name279_c[0] = i_pivot347_v4l2_ctrl_get_name279_o[33];

    // i_acl_1410_v4l2_ctrl_get_name525(LOGICAL,445)@14 + 1
    assign i_acl_1410_v4l2_ctrl_get_name525_qi = i_pivot347_v4l2_ctrl_get_name279_c ^ i_pivot361_v4l2_ctrl_get_name39_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1410_v4l2_ctrl_get_name525_delay ( .xin(i_acl_1410_v4l2_ctrl_get_name525_qi), .xout(i_acl_1410_v4l2_ctrl_get_name525_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1416_v4l2_ctrl_get_name526(MUX,446)@15
    assign i_acl_1416_v4l2_ctrl_get_name526_s = i_acl_1410_v4l2_ctrl_get_name525_q;
    always @(i_acl_1416_v4l2_ctrl_get_name526_s or i_acl_1407_v4l2_ctrl_get_name524_q or c_i64_46387076161916108801066_q)
    begin
        unique case (i_acl_1416_v4l2_ctrl_get_name526_s)
            1'b0 : i_acl_1416_v4l2_ctrl_get_name526_q = i_acl_1407_v4l2_ctrl_get_name524_q;
            1'b1 : i_acl_1416_v4l2_ctrl_get_name526_q = c_i64_46387076161916108801066_q;
            default : i_acl_1416_v4l2_ctrl_get_name526_q = 64'b0;
        endcase
    end

    // c_i32_2871067_recast_x(CONSTANT,1171)
    assign c_i32_2871067_recast_x_q = $unsigned(32'b00000000000000000000000100011111);

    // i_unnamed_v4l2_ctrl_get_name527(LOGICAL,952)@14 + 1
    assign i_unnamed_v4l2_ctrl_get_name527_qi = $unsigned(redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q == c_i32_2871067_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_v4l2_ctrl_get_name527_delay ( .xin(i_unnamed_v4l2_ctrl_get_name527_qi), .xout(i_unnamed_v4l2_ctrl_get_name527_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1425_v4l2_ctrl_get_name529(MUX,447)@15
    assign i_acl_1425_v4l2_ctrl_get_name529_s = i_unnamed_v4l2_ctrl_get_name527_q;
    always @(i_acl_1425_v4l2_ctrl_get_name529_s or i_acl_1416_v4l2_ctrl_get_name526_q or c_i64_46389890911683215361068_q)
    begin
        unique case (i_acl_1425_v4l2_ctrl_get_name529_s)
            1'b0 : i_acl_1425_v4l2_ctrl_get_name529_q = i_acl_1416_v4l2_ctrl_get_name526_q;
            1'b1 : i_acl_1425_v4l2_ctrl_get_name529_q = c_i64_46389890911683215361068_q;
            default : i_acl_1425_v4l2_ctrl_get_name529_q = 64'b0;
        endcase
    end

    // c_i32_2861069_recast_x(CONSTANT,1170)
    assign c_i32_2861069_recast_x_q = $unsigned(32'b00000000000000000000000100011110);

    // redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14(DELAY,1555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q <= '0;
        end
        else
        begin
            redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q <= $unsigned(redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q);
        end
    end

    // i_unnamed_v4l2_ctrl_get_name530(LOGICAL,953)@15
    assign i_unnamed_v4l2_ctrl_get_name530_q = $unsigned(redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q == c_i32_2861069_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1433_v4l2_ctrl_get_name532(MUX,448)@15
    assign i_acl_1433_v4l2_ctrl_get_name532_s = i_unnamed_v4l2_ctrl_get_name530_q;
    always @(i_acl_1433_v4l2_ctrl_get_name532_s or i_acl_1425_v4l2_ctrl_get_name529_q or c_i64_46392705661450321921070_q)
    begin
        unique case (i_acl_1433_v4l2_ctrl_get_name532_s)
            1'b0 : i_acl_1433_v4l2_ctrl_get_name532_q = i_acl_1425_v4l2_ctrl_get_name529_q;
            1'b1 : i_acl_1433_v4l2_ctrl_get_name532_q = c_i64_46392705661450321921070_q;
            default : i_acl_1433_v4l2_ctrl_get_name532_q = 64'b0;
        endcase
    end

    // c_i32_309826_recast_x(CONSTANT,1189)
    assign c_i32_309826_recast_x_q = $unsigned(32'b00000000000000000000000100110101);

    // i_pivot359_v4l2_ctrl_get_name79(COMPARE,775)@14
    assign i_pivot359_v4l2_ctrl_get_name79_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot359_v4l2_ctrl_get_name79_b = $unsigned({{2{c_i32_309826_recast_x_q[31]}}, c_i32_309826_recast_x_q});
    assign i_pivot359_v4l2_ctrl_get_name79_o = $unsigned($signed(i_pivot359_v4l2_ctrl_get_name79_a) - $signed(i_pivot359_v4l2_ctrl_get_name79_b));
    assign i_pivot359_v4l2_ctrl_get_name79_c[0] = i_pivot359_v4l2_ctrl_get_name79_o[33];

    // i_acl_1434_v4l2_ctrl_get_name533(LOGICAL,449)@14 + 1
    assign i_acl_1434_v4l2_ctrl_get_name533_qi = i_pivot359_v4l2_ctrl_get_name79_c ^ i_pivot357_v4l2_ctrl_get_name157_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1434_v4l2_ctrl_get_name533_delay ( .xin(i_acl_1434_v4l2_ctrl_get_name533_qi), .xout(i_acl_1434_v4l2_ctrl_get_name533_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1441_v4l2_ctrl_get_name534(MUX,450)@15
    assign i_acl_1441_v4l2_ctrl_get_name534_s = i_acl_1434_v4l2_ctrl_get_name533_q;
    always @(i_acl_1441_v4l2_ctrl_get_name534_s or i_acl_1433_v4l2_ctrl_get_name532_q or c_i64_46395520411217428481071_q)
    begin
        unique case (i_acl_1441_v4l2_ctrl_get_name534_s)
            1'b0 : i_acl_1441_v4l2_ctrl_get_name534_q = i_acl_1433_v4l2_ctrl_get_name532_q;
            1'b1 : i_acl_1441_v4l2_ctrl_get_name534_q = c_i64_46395520411217428481071_q;
            default : i_acl_1441_v4l2_ctrl_get_name534_q = 64'b0;
        endcase
    end

    // redist126_i_pivot347_v4l2_ctrl_get_name279_c_1(DELAY,1668)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_i_pivot347_v4l2_ctrl_get_name279_c_1_q <= '0;
        end
        else
        begin
            redist126_i_pivot347_v4l2_ctrl_get_name279_c_1_q <= $unsigned(i_pivot347_v4l2_ctrl_get_name279_c);
        end
    end

    // c_i32_305863_recast_x(CONSTANT,1185)
    assign c_i32_305863_recast_x_q = $unsigned(32'b00000000000000000000000100110001);

    // i_pivot349_v4l2_ctrl_get_name153(COMPARE,770)@14 + 1
    assign i_pivot349_v4l2_ctrl_get_name153_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot349_v4l2_ctrl_get_name153_b = $unsigned({{2{c_i32_305863_recast_x_q[31]}}, c_i32_305863_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot349_v4l2_ctrl_get_name153_o <= 34'b0;
        end
        else
        begin
            i_pivot349_v4l2_ctrl_get_name153_o <= $unsigned($signed(i_pivot349_v4l2_ctrl_get_name153_a) - $signed(i_pivot349_v4l2_ctrl_get_name153_b));
        end
    end
    assign i_pivot349_v4l2_ctrl_get_name153_c[0] = i_pivot349_v4l2_ctrl_get_name153_o[33];

    // i_acl_1442_v4l2_ctrl_get_name535(LOGICAL,451)@15
    assign i_acl_1442_v4l2_ctrl_get_name535_q = i_pivot349_v4l2_ctrl_get_name153_c ^ redist126_i_pivot347_v4l2_ctrl_get_name279_c_1_q;

    // i_acl_1450_v4l2_ctrl_get_name536(MUX,452)@15
    assign i_acl_1450_v4l2_ctrl_get_name536_s = i_acl_1442_v4l2_ctrl_get_name535_q;
    always @(i_acl_1450_v4l2_ctrl_get_name536_s or i_acl_1441_v4l2_ctrl_get_name534_q or c_i64_46398335160984535041072_q)
    begin
        unique case (i_acl_1450_v4l2_ctrl_get_name536_s)
            1'b0 : i_acl_1450_v4l2_ctrl_get_name536_q = i_acl_1441_v4l2_ctrl_get_name534_q;
            1'b1 : i_acl_1450_v4l2_ctrl_get_name536_q = c_i64_46398335160984535041072_q;
            default : i_acl_1450_v4l2_ctrl_get_name536_q = 64'b0;
        endcase
    end

    // c_i32_304825_recast_x(CONSTANT,1184)
    assign c_i32_304825_recast_x_q = $unsigned(32'b00000000000000000000000100110000);

    // i_pivot351_v4l2_ctrl_get_name77(COMPARE,771)@15
    assign i_pivot351_v4l2_ctrl_get_name77_a = $unsigned({{2{redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot351_v4l2_ctrl_get_name77_b = $unsigned({{2{c_i32_304825_recast_x_q[31]}}, c_i32_304825_recast_x_q});
    assign i_pivot351_v4l2_ctrl_get_name77_o = $unsigned($signed(i_pivot351_v4l2_ctrl_get_name77_a) - $signed(i_pivot351_v4l2_ctrl_get_name77_b));
    assign i_pivot351_v4l2_ctrl_get_name77_c[0] = i_pivot351_v4l2_ctrl_get_name77_o[33];

    // i_acl_1451_v4l2_ctrl_get_name537(LOGICAL,453)@15
    assign i_acl_1451_v4l2_ctrl_get_name537_q = i_pivot351_v4l2_ctrl_get_name77_c ^ i_pivot349_v4l2_ctrl_get_name153_c;

    // i_acl_1458_v4l2_ctrl_get_name538(MUX,454)@15
    assign i_acl_1458_v4l2_ctrl_get_name538_s = i_acl_1451_v4l2_ctrl_get_name537_q;
    always @(i_acl_1458_v4l2_ctrl_get_name538_s or i_acl_1450_v4l2_ctrl_get_name536_q or c_i64_46401149910751641601073_q)
    begin
        unique case (i_acl_1458_v4l2_ctrl_get_name538_s)
            1'b0 : i_acl_1458_v4l2_ctrl_get_name538_q = i_acl_1450_v4l2_ctrl_get_name536_q;
            1'b1 : i_acl_1458_v4l2_ctrl_get_name538_q = c_i64_46401149910751641601073_q;
            default : i_acl_1458_v4l2_ctrl_get_name538_q = 64'b0;
        endcase
    end

    // redist129_i_pivot327_v4l2_ctrl_get_name143_c_1(DELAY,1671)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist129_i_pivot327_v4l2_ctrl_get_name143_c_1_q <= '0;
        end
        else
        begin
            redist129_i_pivot327_v4l2_ctrl_get_name143_c_1_q <= $unsigned(i_pivot327_v4l2_ctrl_get_name143_c);
        end
    end

    // c_i32_292788_recast_x(CONSTANT,1172)
    assign c_i32_292788_recast_x_q = $unsigned(32'b00000000000000000000000100100100);

    // i_pivot655_v4l2_ctrl_get_name3(COMPARE,924)@15
    assign i_pivot655_v4l2_ctrl_get_name3_a = $unsigned({{2{redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot655_v4l2_ctrl_get_name3_b = $unsigned({{2{c_i32_292788_recast_x_q[31]}}, c_i32_292788_recast_x_q});
    assign i_pivot655_v4l2_ctrl_get_name3_o = $unsigned($signed(i_pivot655_v4l2_ctrl_get_name3_a) - $signed(i_pivot655_v4l2_ctrl_get_name3_b));
    assign i_pivot655_v4l2_ctrl_get_name3_c[0] = i_pivot655_v4l2_ctrl_get_name3_o[33];

    // i_acl_1465_v4l2_ctrl_get_name539(LOGICAL,455)@15
    assign i_acl_1465_v4l2_ctrl_get_name539_q = i_pivot655_v4l2_ctrl_get_name3_c ^ redist129_i_pivot327_v4l2_ctrl_get_name143_c_1_q;

    // i_acl_1466_v4l2_ctrl_get_name540(MUX,456)@15 + 1
    assign i_acl_1466_v4l2_ctrl_get_name540_s = i_acl_1465_v4l2_ctrl_get_name539_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1466_v4l2_ctrl_get_name540_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1466_v4l2_ctrl_get_name540_s)
                1'b0 : i_acl_1466_v4l2_ctrl_get_name540_q <= i_acl_1458_v4l2_ctrl_get_name538_q;
                1'b1 : i_acl_1466_v4l2_ctrl_get_name540_q <= c_i64_46403964660518748161074_q;
                default : i_acl_1466_v4l2_ctrl_get_name540_q <= 64'b0;
            endcase
        end
    end

    // c_i64_46406779410285854721096(CONSTANT,135)
    assign c_i64_46406779410285854721096_q = $unsigned(64'b0100000001100111000000000000000000000000000000000000000000000000);

    // c_i32_31091(CONSTANT,33)
    assign c_i32_31091_q = $unsigned(32'b00000000000000000000000000000011);

    // i_sel_bits3570_v4l2_ctrl_get_name593_vt_const_31(CONSTANT,929)
    assign i_sel_bits3570_v4l2_ctrl_get_name593_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // c_i32_71075(CONSTANT,37)
    assign c_i32_71075_q = $unsigned(32'b00000000000000000000000000000111);

    // i_sel_bits_v4l2_ctrl_get_name541(LOGICAL,932)@15
    assign i_sel_bits_v4l2_ctrl_get_name541_q = redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q & c_i32_71075_q;

    // i_sel_bits_v4l2_ctrl_get_name541_vt_select_2(BITSELECT,935)@15
    assign i_sel_bits_v4l2_ctrl_get_name541_vt_select_2_b = i_sel_bits_v4l2_ctrl_get_name541_q[2:0];

    // i_sel_bits_v4l2_ctrl_get_name541_vt_join(BITJOIN,934)@15
    assign i_sel_bits_v4l2_ctrl_get_name541_vt_join_q = {i_sel_bits3570_v4l2_ctrl_get_name593_vt_const_31_q, i_sel_bits_v4l2_ctrl_get_name541_vt_select_2_b};

    // dupName_11_comparator_x(LOGICAL,1348)@15 + 1
    assign dupName_11_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_31091_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_11_comparator_x_delay ( .xin(dupName_11_comparator_x_qi), .xout(dupName_11_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46409594160052961281095(CONSTANT,136)
    assign c_i64_46409594160052961281095_q = $unsigned(64'b0100000001101000000000000000000000000000000000000000000000000000);

    // c_i32_21090(CONSTANT,23)
    assign c_i32_21090_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_10_comparator_x(LOGICAL,1347)@15 + 1
    assign dupName_10_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_21090_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_10_comparator_x_delay ( .xin(dupName_10_comparator_x_qi), .xout(dupName_10_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46412408909820067841094(CONSTANT,137)
    assign c_i64_46412408909820067841094_q = $unsigned(64'b0100000001101001000000000000000000000000000000000000000000000000);

    // c_i32_11089(CONSTANT,5)
    assign c_i32_11089_q = $unsigned(32'b00000000000000000000000000000001);

    // dupName_9_comparator_x(LOGICAL,1346)@15 + 1
    assign dupName_9_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_11089_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_9_comparator_x_delay ( .xin(dupName_9_comparator_x_qi), .xout(dupName_9_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46415223659587174401093(CONSTANT,138)
    assign c_i64_46415223659587174401093_q = $unsigned(64'b0100000001101010000000000000000000000000000000000000000000000000);

    // c_i32_01088(CONSTANT,4)
    assign c_i32_01088_q = $unsigned(32'b00000000000000000000000000000000);

    // dupName_8_comparator_x(LOGICAL,1345)@15 + 1
    assign dupName_8_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_01088_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_8_comparator_x_delay ( .xin(dupName_8_comparator_x_qi), .xout(dupName_8_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544(SELECTOR,735)@16
    always @(dupName_8_comparator_x_q or c_i64_46415223659587174401093_q or dupName_9_comparator_x_q or c_i64_46412408909820067841094_q or dupName_10_comparator_x_q or c_i64_46409594160052961281095_q or dupName_11_comparator_x_q or c_i64_46406779410285854721096_q or i_acl_1466_v4l2_ctrl_get_name540_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q = i_acl_1466_v4l2_ctrl_get_name540_q;
        if (dupName_11_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q = c_i64_46406779410285854721096_q;
        end
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q = c_i64_46409594160052961281095_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q = c_i64_46412408909820067841094_q;
        end
        if (dupName_8_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q = c_i64_46415223659587174401093_q;
        end
    end

    // c_i32_41098(CONSTANT,34)
    assign c_i32_41098_q = $unsigned(32'b00000000000000000000000000000100);

    // i_sel_shr_v4l2_ctrl_get_name545_vt_const_31(CONSTANT,939)
    assign i_sel_shr_v4l2_ctrl_get_name545_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage0Idx1Pad2_uid1520_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(CONSTANT,1519)
    assign rightShiftStage0Idx1Pad2_uid1520_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid1537_i_sel_shr_v4l2_ctrl_get_name0_shift_x(BITSELECT,1536)@16
    assign rightShiftStage1Idx1Rng2_uid1537_i_sel_shr_v4l2_ctrl_get_name0_shift_x_b = rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1539_i_sel_shr_v4l2_ctrl_get_name0_shift_x(BITJOIN,1538)@16
    assign rightShiftStage1Idx1_uid1539_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = {rightShiftStage0Idx1Pad2_uid1520_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q, rightShiftStage1Idx1Rng2_uid1537_i_sel_shr_v4l2_ctrl_get_name0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1532_i_sel_shr_v4l2_ctrl_get_name0_shift_x(BITSELECT,1531)@16
    assign rightShiftStage0Idx1Rng1_uid1532_i_sel_shr_v4l2_ctrl_get_name0_shift_x_b = redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q[31:1];

    // rightShiftStage0Idx1_uid1534_i_sel_shr_v4l2_ctrl_get_name0_shift_x(BITJOIN,1533)@16
    assign rightShiftStage0Idx1_uid1534_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1532_i_sel_shr_v4l2_ctrl_get_name0_shift_x_b};

    // redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15(DELAY,1556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q <= '0;
        end
        else
        begin
            redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q <= $unsigned(redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q);
        end
    end

    // rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x(MUX,1535)@16
    assign rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s or redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q or rightShiftStage0Idx1_uid1534_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s)
            1'b0 : rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q;
            1'b1 : rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = rightShiftStage0Idx1_uid1534_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
            default : rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x(MUX,1540)@16
    assign rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s or rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q or rightShiftStage1Idx1_uid1539_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_s)
            1'b0 : rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = rightShiftStage0_uid1536_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
            1'b1 : rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = rightShiftStage1Idx1_uid1539_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q;
            default : rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr_v4l2_ctrl_get_name545_vt_select_28(BITSELECT,941)@16
    assign i_sel_shr_v4l2_ctrl_get_name545_vt_select_28_b = rightShiftStage1_uid1541_i_sel_shr_v4l2_ctrl_get_name0_shift_x_q[28:0];

    // i_sel_shr_v4l2_ctrl_get_name545_vt_join(BITJOIN,940)@16
    assign i_sel_shr_v4l2_ctrl_get_name545_vt_join_q = {i_sel_shr_v4l2_ctrl_get_name545_vt_const_31_q, i_sel_shr_v4l2_ctrl_get_name545_vt_select_28_b};

    // dupName_19_comparator_x(LOGICAL,1356)@16
    assign dupName_19_comparator_x_q = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_41098_q ? 1'b1 : 1'b0);

    // c_i64_46418038409354280961087(CONSTANT,139)
    assign c_i64_46418038409354280961087_q = $unsigned(64'b0100000001101011000000000000000000000000000000000000000000000000);

    // c_i32_51080(CONSTANT,35)
    assign c_i32_51080_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_5_comparator_x(LOGICAL,1342)@15 + 1
    assign dupName_5_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_51080_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_5_comparator_x_delay ( .xin(dupName_5_comparator_x_qi), .xout(dupName_5_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46437741657724026881086(CONSTANT,146)
    assign c_i64_46437741657724026881086_q = $unsigned(64'b0100000001110010000000000000000000000000000000000000000000000000);

    // c_i64_46434926907956920321085(CONSTANT,145)
    assign c_i64_46434926907956920321085_q = $unsigned(64'b0100000001110001000000000000000000000000000000000000000000000000);

    // c_i64_46432112158189813761084(CONSTANT,144)
    assign c_i64_46432112158189813761084_q = $unsigned(64'b0100000001110000000000000000000000000000000000000000000000000000);

    // c_i64_46420853159121387521083(CONSTANT,140)
    assign c_i64_46420853159121387521083_q = $unsigned(64'b0100000001101100000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543(SELECTOR,742)@16
    always @(dupName_8_comparator_x_q or c_i64_46420853159121387521083_q or dupName_9_comparator_x_q or c_i64_46432112158189813761084_q or dupName_10_comparator_x_q or c_i64_46434926907956920321085_q or dupName_11_comparator_x_q or c_i64_46437741657724026881086_q or dupName_5_comparator_x_q or c_i64_46418038409354280961087_q or i_acl_1466_v4l2_ctrl_get_name540_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q = i_acl_1466_v4l2_ctrl_get_name540_q;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q = c_i64_46418038409354280961087_q;
        end
        if (dupName_11_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q = c_i64_46437741657724026881086_q;
        end
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q = c_i64_46434926907956920321085_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q = c_i64_46432112158189813761084_q;
        end
        if (dupName_8_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q = c_i64_46420853159121387521083_q;
        end
    end

    // dupName_18_comparator_x(LOGICAL,1355)@16
    assign dupName_18_comparator_x_q = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_31091_q ? 1'b1 : 1'b0);

    // c_i64_46423667908888494081079(CONSTANT,141)
    assign c_i64_46423667908888494081079_q = $unsigned(64'b0100000001101101000000000000000000000000000000000000000000000000);

    // dupName_7_comparator_x(LOGICAL,1344)@15 + 1
    assign dupName_7_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_71075_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_7_comparator_x_delay ( .xin(dupName_7_comparator_x_qi), .xout(dupName_7_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46426482658655600641078(CONSTANT,142)
    assign c_i64_46426482658655600641078_q = $unsigned(64'b0100000001101110000000000000000000000000000000000000000000000000);

    // c_i32_61081(CONSTANT,36)
    assign c_i32_61081_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_6_comparator_x(LOGICAL,1343)@15 + 1
    assign dupName_6_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_61081_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_6_comparator_x_delay ( .xin(dupName_6_comparator_x_qi), .xout(dupName_6_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46429297408422707201077(CONSTANT,143)
    assign c_i64_46429297408422707201077_q = $unsigned(64'b0100000001101111000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542(SELECTOR,726)@16
    always @(dupName_5_comparator_x_q or c_i64_46429297408422707201077_q or dupName_6_comparator_x_q or c_i64_46426482658655600641078_q or dupName_7_comparator_x_q or c_i64_46423667908888494081079_q or i_acl_1466_v4l2_ctrl_get_name540_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q = i_acl_1466_v4l2_ctrl_get_name540_q;
        if (dupName_7_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q = c_i64_46423667908888494081079_q;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q = c_i64_46426482658655600641078_q;
        end
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q = c_i64_46429297408422707201077_q;
        end
    end

    // dupName_17_comparator_x(LOGICAL,1354)@16
    assign dupName_17_comparator_x_q = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_21090_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547(SELECTOR,727)@16
    always @(dupName_17_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q or dupName_18_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q or dupName_19_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q or i_acl_1466_v4l2_ctrl_get_name540_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q = i_acl_1466_v4l2_ctrl_get_name540_q;
        if (dupName_19_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3456_v4l2_ctrl_get_name544_q;
        end
        if (dupName_18_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q = i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3450_v4l2_ctrl_get_name543_q;
        end
        if (dupName_17_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3443_v4l2_ctrl_get_name542_q;
        end
    end

    // redist125_i_pivot351_v4l2_ctrl_get_name77_c_1(DELAY,1667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist125_i_pivot351_v4l2_ctrl_get_name77_c_1_q <= '0;
        end
        else
        begin
            redist125_i_pivot351_v4l2_ctrl_get_name77_c_1_q <= $unsigned(i_pivot351_v4l2_ctrl_get_name77_c);
        end
    end

    // c_i32_303862_recast_x(CONSTANT,1183)
    assign c_i32_303862_recast_x_q = $unsigned(32'b00000000000000000000000100101111);

    // i_pivot345_v4l2_ctrl_get_name151(COMPARE,768)@15 + 1
    assign i_pivot345_v4l2_ctrl_get_name151_a = $unsigned({{2{redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q[31]}}, redist13_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_14_q});
    assign i_pivot345_v4l2_ctrl_get_name151_b = $unsigned({{2{c_i32_303862_recast_x_q[31]}}, c_i32_303862_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot345_v4l2_ctrl_get_name151_o <= 34'b0;
        end
        else
        begin
            i_pivot345_v4l2_ctrl_get_name151_o <= $unsigned($signed(i_pivot345_v4l2_ctrl_get_name151_a) - $signed(i_pivot345_v4l2_ctrl_get_name151_b));
        end
    end
    assign i_pivot345_v4l2_ctrl_get_name151_c[0] = i_pivot345_v4l2_ctrl_get_name151_o[33];

    // i_acl_1569_v4l2_ctrl_get_name548(LOGICAL,457)@16
    assign i_acl_1569_v4l2_ctrl_get_name548_q = i_pivot345_v4l2_ctrl_get_name151_c ^ redist125_i_pivot351_v4l2_ctrl_get_name77_c_1_q;

    // i_acl_1576_v4l2_ctrl_get_name549(MUX,458)@16
    assign i_acl_1576_v4l2_ctrl_get_name549_s = i_acl_1569_v4l2_ctrl_get_name548_q;
    always @(i_acl_1576_v4l2_ctrl_get_name549_s or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q or c_i64_46440556407491133441099_q)
    begin
        unique case (i_acl_1576_v4l2_ctrl_get_name549_s)
            1'b0 : i_acl_1576_v4l2_ctrl_get_name549_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3461_v4l2_ctrl_get_name547_q;
            1'b1 : i_acl_1576_v4l2_ctrl_get_name549_q = c_i64_46440556407491133441099_q;
            default : i_acl_1576_v4l2_ctrl_get_name549_q = 64'b0;
        endcase
    end

    // c_i32_301925_recast_x(CONSTANT,1181)
    assign c_i32_301925_recast_x_q = $unsigned(32'b00000000000000000000000100101101);

    // i_pivot337_v4l2_ctrl_get_name277(COMPARE,764)@16
    assign i_pivot337_v4l2_ctrl_get_name277_a = $unsigned({{2{redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot337_v4l2_ctrl_get_name277_b = $unsigned({{2{c_i32_301925_recast_x_q[31]}}, c_i32_301925_recast_x_q});
    assign i_pivot337_v4l2_ctrl_get_name277_o = $unsigned($signed(i_pivot337_v4l2_ctrl_get_name277_a) - $signed(i_pivot337_v4l2_ctrl_get_name277_b));
    assign i_pivot337_v4l2_ctrl_get_name277_c[0] = i_pivot337_v4l2_ctrl_get_name277_o[33];

    // c_i32_300861_recast_x(CONSTANT,1180)
    assign c_i32_300861_recast_x_q = $unsigned(32'b00000000000000000000000100101100);

    // i_pivot339_v4l2_ctrl_get_name149(COMPARE,765)@16
    assign i_pivot339_v4l2_ctrl_get_name149_a = $unsigned({{2{redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot339_v4l2_ctrl_get_name149_b = $unsigned({{2{c_i32_300861_recast_x_q[31]}}, c_i32_300861_recast_x_q});
    assign i_pivot339_v4l2_ctrl_get_name149_o = $unsigned($signed(i_pivot339_v4l2_ctrl_get_name149_a) - $signed(i_pivot339_v4l2_ctrl_get_name149_b));
    assign i_pivot339_v4l2_ctrl_get_name149_c[0] = i_pivot339_v4l2_ctrl_get_name149_o[33];

    // i_acl_1577_v4l2_ctrl_get_name550(LOGICAL,459)@16
    assign i_acl_1577_v4l2_ctrl_get_name550_q = i_pivot339_v4l2_ctrl_get_name149_c ^ i_pivot337_v4l2_ctrl_get_name277_c;

    // i_acl_1585_v4l2_ctrl_get_name551(MUX,460)@16
    assign i_acl_1585_v4l2_ctrl_get_name551_s = i_acl_1577_v4l2_ctrl_get_name550_q;
    always @(i_acl_1585_v4l2_ctrl_get_name551_s or i_acl_1576_v4l2_ctrl_get_name549_q or c_i64_46443371157258240001100_q)
    begin
        unique case (i_acl_1585_v4l2_ctrl_get_name551_s)
            1'b0 : i_acl_1585_v4l2_ctrl_get_name551_q = i_acl_1576_v4l2_ctrl_get_name549_q;
            1'b1 : i_acl_1585_v4l2_ctrl_get_name551_q = c_i64_46443371157258240001100_q;
            default : i_acl_1585_v4l2_ctrl_get_name551_q = 64'b0;
        endcase
    end

    // c_i32_299824_recast_x(CONSTANT,1179)
    assign c_i32_299824_recast_x_q = $unsigned(32'b00000000000000000000000100101011);

    // i_pivot341_v4l2_ctrl_get_name75(COMPARE,766)@16
    assign i_pivot341_v4l2_ctrl_get_name75_a = $unsigned({{2{redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot341_v4l2_ctrl_get_name75_b = $unsigned({{2{c_i32_299824_recast_x_q[31]}}, c_i32_299824_recast_x_q});
    assign i_pivot341_v4l2_ctrl_get_name75_o = $unsigned($signed(i_pivot341_v4l2_ctrl_get_name75_a) - $signed(i_pivot341_v4l2_ctrl_get_name75_b));
    assign i_pivot341_v4l2_ctrl_get_name75_c[0] = i_pivot341_v4l2_ctrl_get_name75_o[33];

    // c_i32_298860_recast_x(CONSTANT,1178)
    assign c_i32_298860_recast_x_q = $unsigned(32'b00000000000000000000000100101010);

    // i_pivot335_v4l2_ctrl_get_name147(COMPARE,763)@16
    assign i_pivot335_v4l2_ctrl_get_name147_a = $unsigned({{2{redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot335_v4l2_ctrl_get_name147_b = $unsigned({{2{c_i32_298860_recast_x_q[31]}}, c_i32_298860_recast_x_q});
    assign i_pivot335_v4l2_ctrl_get_name147_o = $unsigned($signed(i_pivot335_v4l2_ctrl_get_name147_a) - $signed(i_pivot335_v4l2_ctrl_get_name147_b));
    assign i_pivot335_v4l2_ctrl_get_name147_c[0] = i_pivot335_v4l2_ctrl_get_name147_o[33];

    // i_acl_1586_v4l2_ctrl_get_name552(LOGICAL,461)@16
    assign i_acl_1586_v4l2_ctrl_get_name552_q = i_pivot335_v4l2_ctrl_get_name147_c ^ i_pivot341_v4l2_ctrl_get_name75_c;

    // i_acl_1593_v4l2_ctrl_get_name553(MUX,462)@16 + 1
    assign i_acl_1593_v4l2_ctrl_get_name553_s = i_acl_1586_v4l2_ctrl_get_name552_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1593_v4l2_ctrl_get_name553_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1593_v4l2_ctrl_get_name553_s)
                1'b0 : i_acl_1593_v4l2_ctrl_get_name553_q <= i_acl_1585_v4l2_ctrl_get_name551_q;
                1'b1 : i_acl_1593_v4l2_ctrl_get_name553_q <= c_i64_46446185907025346561101_q;
                default : i_acl_1593_v4l2_ctrl_get_name553_q <= 64'b0;
            endcase
        end
    end

    // c_i32_302796_recast_x(CONSTANT,1182)
    assign c_i32_302796_recast_x_q = $unsigned(32'b00000000000000000000000100101110);

    // i_pivot363_v4l2_ctrl_get_name19(COMPARE,777)@16
    assign i_pivot363_v4l2_ctrl_get_name19_a = $unsigned({{2{redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q[31]}}, redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q});
    assign i_pivot363_v4l2_ctrl_get_name19_b = $unsigned({{2{c_i32_302796_recast_x_q[31]}}, c_i32_302796_recast_x_q});
    assign i_pivot363_v4l2_ctrl_get_name19_o = $unsigned($signed(i_pivot363_v4l2_ctrl_get_name19_a) - $signed(i_pivot363_v4l2_ctrl_get_name19_b));
    assign i_pivot363_v4l2_ctrl_get_name19_c[0] = i_pivot363_v4l2_ctrl_get_name19_o[33];

    // i_acl_1596_v4l2_ctrl_get_name554(LOGICAL,463)@16 + 1
    assign i_acl_1596_v4l2_ctrl_get_name554_qi = i_pivot363_v4l2_ctrl_get_name19_c ^ i_pivot345_v4l2_ctrl_get_name151_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1596_v4l2_ctrl_get_name554_delay ( .xin(i_acl_1596_v4l2_ctrl_get_name554_qi), .xout(i_acl_1596_v4l2_ctrl_get_name554_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1601_v4l2_ctrl_get_name555(MUX,464)@17
    assign i_acl_1601_v4l2_ctrl_get_name555_s = i_acl_1596_v4l2_ctrl_get_name554_q;
    always @(i_acl_1601_v4l2_ctrl_get_name555_s or i_acl_1593_v4l2_ctrl_get_name553_q or c_i64_46449000656792453121102_q)
    begin
        unique case (i_acl_1601_v4l2_ctrl_get_name555_s)
            1'b0 : i_acl_1601_v4l2_ctrl_get_name555_q = i_acl_1593_v4l2_ctrl_get_name553_q;
            1'b1 : i_acl_1601_v4l2_ctrl_get_name555_q = c_i64_46449000656792453121102_q;
            default : i_acl_1601_v4l2_ctrl_get_name555_q = 64'b0;
        endcase
    end

    // i_acl_1605_v4l2_ctrl_get_name556(LOGICAL,465)@16 + 1
    assign i_acl_1605_v4l2_ctrl_get_name556_qi = i_pivot337_v4l2_ctrl_get_name277_c ^ i_pivot363_v4l2_ctrl_get_name19_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1605_v4l2_ctrl_get_name556_delay ( .xin(i_acl_1605_v4l2_ctrl_get_name556_qi), .xout(i_acl_1605_v4l2_ctrl_get_name556_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1610_v4l2_ctrl_get_name557(MUX,466)@17
    assign i_acl_1610_v4l2_ctrl_get_name557_s = i_acl_1605_v4l2_ctrl_get_name556_q;
    always @(i_acl_1610_v4l2_ctrl_get_name557_s or i_acl_1601_v4l2_ctrl_get_name555_q or c_i64_46451815406559559681103_q)
    begin
        unique case (i_acl_1610_v4l2_ctrl_get_name557_s)
            1'b0 : i_acl_1610_v4l2_ctrl_get_name557_q = i_acl_1601_v4l2_ctrl_get_name555_q;
            1'b1 : i_acl_1610_v4l2_ctrl_get_name557_q = c_i64_46451815406559559681103_q;
            default : i_acl_1610_v4l2_ctrl_get_name557_q = 64'b0;
        endcase
    end

    // i_acl_1611_v4l2_ctrl_get_name558(LOGICAL,467)@16 + 1
    assign i_acl_1611_v4l2_ctrl_get_name558_qi = i_pivot341_v4l2_ctrl_get_name75_c ^ i_pivot339_v4l2_ctrl_get_name149_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1611_v4l2_ctrl_get_name558_delay ( .xin(i_acl_1611_v4l2_ctrl_get_name558_qi), .xout(i_acl_1611_v4l2_ctrl_get_name558_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1618_v4l2_ctrl_get_name559(MUX,468)@17
    assign i_acl_1618_v4l2_ctrl_get_name559_s = i_acl_1611_v4l2_ctrl_get_name558_q;
    always @(i_acl_1618_v4l2_ctrl_get_name559_s or i_acl_1610_v4l2_ctrl_get_name557_q or c_i64_46454630156326666241104_q)
    begin
        unique case (i_acl_1618_v4l2_ctrl_get_name559_s)
            1'b0 : i_acl_1618_v4l2_ctrl_get_name559_q = i_acl_1610_v4l2_ctrl_get_name557_q;
            1'b1 : i_acl_1618_v4l2_ctrl_get_name559_q = c_i64_46454630156326666241104_q;
            default : i_acl_1618_v4l2_ctrl_get_name559_q = 64'b0;
        endcase
    end

    // c_i32_308864_recast_x(CONSTANT,1188)
    assign c_i32_308864_recast_x_q = $unsigned(32'b00000000000000000000000100110100);

    // i_pivot353_v4l2_ctrl_get_name155(COMPARE,772)@14
    assign i_pivot353_v4l2_ctrl_get_name155_a = $unsigned({{2{redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q[31]}}, redist12_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_13_q});
    assign i_pivot353_v4l2_ctrl_get_name155_b = $unsigned({{2{c_i32_308864_recast_x_q[31]}}, c_i32_308864_recast_x_q});
    assign i_pivot353_v4l2_ctrl_get_name155_o = $unsigned($signed(i_pivot353_v4l2_ctrl_get_name155_a) - $signed(i_pivot353_v4l2_ctrl_get_name155_b));
    assign i_pivot353_v4l2_ctrl_get_name155_c[0] = i_pivot353_v4l2_ctrl_get_name155_o[33];

    // i_acl_1619_v4l2_ctrl_get_name560(LOGICAL,469)@14 + 1
    assign i_acl_1619_v4l2_ctrl_get_name560_qi = i_pivot353_v4l2_ctrl_get_name155_c ^ i_pivot359_v4l2_ctrl_get_name79_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1619_v4l2_ctrl_get_name560_delay ( .xin(i_acl_1619_v4l2_ctrl_get_name560_qi), .xout(i_acl_1619_v4l2_ctrl_get_name560_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3(DELAY,1716)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_delay_0 <= '0;
            redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_q <= '0;
        end
        else
        begin
            redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_delay_0 <= $unsigned(i_acl_1619_v4l2_ctrl_get_name560_q);
            redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_q <= redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_delay_0;
        end
    end

    // i_acl_1626_v4l2_ctrl_get_name561(MUX,470)@17
    assign i_acl_1626_v4l2_ctrl_get_name561_s = redist174_i_acl_1619_v4l2_ctrl_get_name560_q_3_q;
    always @(i_acl_1626_v4l2_ctrl_get_name561_s or i_acl_1618_v4l2_ctrl_get_name559_q or c_i64_46457444906093772801105_q)
    begin
        unique case (i_acl_1626_v4l2_ctrl_get_name561_s)
            1'b0 : i_acl_1626_v4l2_ctrl_get_name561_q = i_acl_1618_v4l2_ctrl_get_name559_q;
            1'b1 : i_acl_1626_v4l2_ctrl_get_name561_q = c_i64_46457444906093772801105_q;
            default : i_acl_1626_v4l2_ctrl_get_name561_q = 64'b0;
        endcase
    end

    // i_acl_1628_v4l2_ctrl_get_name562(LOGICAL,471)@14 + 1
    assign i_acl_1628_v4l2_ctrl_get_name562_qi = i_pivot361_v4l2_ctrl_get_name39_c ^ i_pivot353_v4l2_ctrl_get_name155_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1628_v4l2_ctrl_get_name562_delay ( .xin(i_acl_1628_v4l2_ctrl_get_name562_qi), .xout(i_acl_1628_v4l2_ctrl_get_name562_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3(DELAY,1715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_delay_0 <= '0;
            redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_q <= '0;
        end
        else
        begin
            redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_delay_0 <= $unsigned(i_acl_1628_v4l2_ctrl_get_name562_q);
            redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_q <= redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_delay_0;
        end
    end

    // i_acl_1634_v4l2_ctrl_get_name563(MUX,472)@17
    assign i_acl_1634_v4l2_ctrl_get_name563_s = redist173_i_acl_1628_v4l2_ctrl_get_name562_q_3_q;
    always @(i_acl_1634_v4l2_ctrl_get_name563_s or i_acl_1626_v4l2_ctrl_get_name561_q or c_i64_46460259655860879361106_q)
    begin
        unique case (i_acl_1634_v4l2_ctrl_get_name563_s)
            1'b0 : i_acl_1634_v4l2_ctrl_get_name563_q = i_acl_1626_v4l2_ctrl_get_name561_q;
            1'b1 : i_acl_1634_v4l2_ctrl_get_name563_q = c_i64_46460259655860879361106_q;
            default : i_acl_1634_v4l2_ctrl_get_name563_q = 64'b0;
        endcase
    end

    // redist127_i_pivot335_v4l2_ctrl_get_name147_c_1(DELAY,1669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_i_pivot335_v4l2_ctrl_get_name147_c_1_q <= '0;
        end
        else
        begin
            redist127_i_pivot335_v4l2_ctrl_get_name147_c_1_q <= $unsigned(i_pivot335_v4l2_ctrl_get_name147_c);
        end
    end

    // c_i32_297805_recast_x(CONSTANT,1177)
    assign c_i32_297805_recast_x_q = $unsigned(32'b00000000000000000000000100101001);

    // redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16(DELAY,1557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q <= '0;
        end
        else
        begin
            redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q <= $unsigned(redist14_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_15_q);
        end
    end

    // i_pivot343_v4l2_ctrl_get_name37(COMPARE,767)@17
    assign i_pivot343_v4l2_ctrl_get_name37_a = $unsigned({{2{redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot343_v4l2_ctrl_get_name37_b = $unsigned({{2{c_i32_297805_recast_x_q[31]}}, c_i32_297805_recast_x_q});
    assign i_pivot343_v4l2_ctrl_get_name37_o = $unsigned($signed(i_pivot343_v4l2_ctrl_get_name37_a) - $signed(i_pivot343_v4l2_ctrl_get_name37_b));
    assign i_pivot343_v4l2_ctrl_get_name37_c[0] = i_pivot343_v4l2_ctrl_get_name37_o[33];

    // i_acl_1636_v4l2_ctrl_get_name564(LOGICAL,473)@17
    assign i_acl_1636_v4l2_ctrl_get_name564_q = i_pivot343_v4l2_ctrl_get_name37_c ^ redist127_i_pivot335_v4l2_ctrl_get_name147_c_1_q;

    // i_acl_1642_v4l2_ctrl_get_name565(MUX,474)@17
    assign i_acl_1642_v4l2_ctrl_get_name565_s = i_acl_1636_v4l2_ctrl_get_name564_q;
    always @(i_acl_1642_v4l2_ctrl_get_name565_s or i_acl_1634_v4l2_ctrl_get_name563_q or c_i64_46463074405627985921107_q)
    begin
        unique case (i_acl_1642_v4l2_ctrl_get_name565_s)
            1'b0 : i_acl_1642_v4l2_ctrl_get_name565_q = i_acl_1634_v4l2_ctrl_get_name563_q;
            1'b1 : i_acl_1642_v4l2_ctrl_get_name565_q = c_i64_46463074405627985921107_q;
            default : i_acl_1642_v4l2_ctrl_get_name565_q = 64'b0;
        endcase
    end

    // c_i32_295859_recast_x(CONSTANT,1175)
    assign c_i32_295859_recast_x_q = $unsigned(32'b00000000000000000000000100100111);

    // i_pivot331_v4l2_ctrl_get_name145(COMPARE,761)@17
    assign i_pivot331_v4l2_ctrl_get_name145_a = $unsigned({{2{redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot331_v4l2_ctrl_get_name145_b = $unsigned({{2{c_i32_295859_recast_x_q[31]}}, c_i32_295859_recast_x_q});
    assign i_pivot331_v4l2_ctrl_get_name145_o = $unsigned($signed(i_pivot331_v4l2_ctrl_get_name145_a) - $signed(i_pivot331_v4l2_ctrl_get_name145_b));
    assign i_pivot331_v4l2_ctrl_get_name145_c[0] = i_pivot331_v4l2_ctrl_get_name145_o[33];

    // redist128_i_pivot333_v4l2_ctrl_get_name73_c_3(DELAY,1670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_0 <= '0;
            redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_1 <= '0;
            redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_q <= '0;
        end
        else
        begin
            redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_0 <= $unsigned(i_pivot333_v4l2_ctrl_get_name73_c);
            redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_1 <= redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_0;
            redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_q <= redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_delay_1;
        end
    end

    // i_acl_1643_v4l2_ctrl_get_name566(LOGICAL,475)@17
    assign i_acl_1643_v4l2_ctrl_get_name566_q = redist128_i_pivot333_v4l2_ctrl_get_name73_c_3_q ^ i_pivot331_v4l2_ctrl_get_name145_c;

    // i_acl_1650_v4l2_ctrl_get_name567(MUX,476)@17 + 1
    assign i_acl_1650_v4l2_ctrl_get_name567_s = i_acl_1643_v4l2_ctrl_get_name566_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1650_v4l2_ctrl_get_name567_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1650_v4l2_ctrl_get_name567_s)
                1'b0 : i_acl_1650_v4l2_ctrl_get_name567_q <= i_acl_1642_v4l2_ctrl_get_name565_q;
                1'b1 : i_acl_1650_v4l2_ctrl_get_name567_q <= c_i64_46465889155395092481108_q;
                default : i_acl_1650_v4l2_ctrl_get_name567_q <= 64'b0;
            endcase
        end
    end

    // c_i32_296924_recast_x(CONSTANT,1176)
    assign c_i32_296924_recast_x_q = $unsigned(32'b00000000000000000000000100101000);

    // i_pivot329_v4l2_ctrl_get_name275(COMPARE,760)@17
    assign i_pivot329_v4l2_ctrl_get_name275_a = $unsigned({{2{redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q[31]}}, redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q});
    assign i_pivot329_v4l2_ctrl_get_name275_b = $unsigned({{2{c_i32_296924_recast_x_q[31]}}, c_i32_296924_recast_x_q});
    assign i_pivot329_v4l2_ctrl_get_name275_o = $unsigned($signed(i_pivot329_v4l2_ctrl_get_name275_a) - $signed(i_pivot329_v4l2_ctrl_get_name275_b));
    assign i_pivot329_v4l2_ctrl_get_name275_c[0] = i_pivot329_v4l2_ctrl_get_name275_o[33];

    // i_acl_1653_v4l2_ctrl_get_name568(LOGICAL,477)@17 + 1
    assign i_acl_1653_v4l2_ctrl_get_name568_qi = i_pivot329_v4l2_ctrl_get_name275_c ^ i_pivot343_v4l2_ctrl_get_name37_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1653_v4l2_ctrl_get_name568_delay ( .xin(i_acl_1653_v4l2_ctrl_get_name568_qi), .xout(i_acl_1653_v4l2_ctrl_get_name568_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1659_v4l2_ctrl_get_name569(MUX,478)@18
    assign i_acl_1659_v4l2_ctrl_get_name569_s = i_acl_1653_v4l2_ctrl_get_name568_q;
    always @(i_acl_1659_v4l2_ctrl_get_name569_s or i_acl_1650_v4l2_ctrl_get_name567_q or c_i64_46468703905162199041109_q)
    begin
        unique case (i_acl_1659_v4l2_ctrl_get_name569_s)
            1'b0 : i_acl_1659_v4l2_ctrl_get_name569_q = i_acl_1650_v4l2_ctrl_get_name567_q;
            1'b1 : i_acl_1659_v4l2_ctrl_get_name569_q = c_i64_46468703905162199041109_q;
            default : i_acl_1659_v4l2_ctrl_get_name569_q = 64'b0;
        endcase
    end

    // i_acl_1660_v4l2_ctrl_get_name570(LOGICAL,479)@17 + 1
    assign i_acl_1660_v4l2_ctrl_get_name570_qi = i_pivot331_v4l2_ctrl_get_name145_c ^ i_pivot329_v4l2_ctrl_get_name275_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1660_v4l2_ctrl_get_name570_delay ( .xin(i_acl_1660_v4l2_ctrl_get_name570_qi), .xout(i_acl_1660_v4l2_ctrl_get_name570_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1668_v4l2_ctrl_get_name571(MUX,480)@18
    assign i_acl_1668_v4l2_ctrl_get_name571_s = i_acl_1660_v4l2_ctrl_get_name570_q;
    always @(i_acl_1668_v4l2_ctrl_get_name571_s or i_acl_1659_v4l2_ctrl_get_name569_q or c_i64_46471518654929305601110_q)
    begin
        unique case (i_acl_1668_v4l2_ctrl_get_name571_s)
            1'b0 : i_acl_1668_v4l2_ctrl_get_name571_q = i_acl_1659_v4l2_ctrl_get_name569_q;
            1'b1 : i_acl_1668_v4l2_ctrl_get_name571_q = c_i64_46471518654929305601110_q;
            default : i_acl_1668_v4l2_ctrl_get_name571_q = 64'b0;
        endcase
    end

    // c_i64_46479962904230625281125(CONSTANT,161)
    assign c_i64_46479962904230625281125_q = $unsigned(64'b0100000010000001000000000000000000000000000000000000000000000000);

    // redist65_dupName_6_comparator_x_q_3(DELAY,1607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_dupName_6_comparator_x_q_3_delay_0 <= '0;
            redist65_dupName_6_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist65_dupName_6_comparator_x_q_3_delay_0 <= $unsigned(dupName_6_comparator_x_q);
            redist65_dupName_6_comparator_x_q_3_q <= redist65_dupName_6_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46474333404696412161124(CONSTANT,159)
    assign c_i64_46474333404696412161124_q = $unsigned(64'b0100000001111111000000000000000000000000000000000000000000000000);

    // redist69_dupName_5_comparator_x_q_3(DELAY,1611)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_dupName_5_comparator_x_q_3_delay_0 <= '0;
            redist69_dupName_5_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist69_dupName_5_comparator_x_q_3_delay_0 <= $unsigned(dupName_5_comparator_x_q);
            redist69_dupName_5_comparator_x_q_3_q <= redist69_dupName_5_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46488407153531944961123(CONSTANT,164)
    assign c_i64_46488407153531944961123_q = $unsigned(64'b0100000010000100000000000000000000000000000000000000000000000000);

    // dupName_21_comparator_x(LOGICAL,1358)@15 + 1
    assign dupName_21_comparator_x_qi = $unsigned(i_sel_bits_v4l2_ctrl_get_name541_vt_join_q == c_i32_41098_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_21_comparator_x_delay ( .xin(dupName_21_comparator_x_qi), .xout(dupName_21_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_dupName_21_comparator_x_q_3(DELAY,1577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_dupName_21_comparator_x_q_3_delay_0 <= '0;
            redist35_dupName_21_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist35_dupName_21_comparator_x_q_3_delay_0 <= $unsigned(dupName_21_comparator_x_q);
            redist35_dupName_21_comparator_x_q_3_q <= redist35_dupName_21_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46485592403764838401122(CONSTANT,163)
    assign c_i64_46485592403764838401122_q = $unsigned(64'b0100000010000011000000000000000000000000000000000000000000000000);

    // redist45_dupName_11_comparator_x_q_3(DELAY,1587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_dupName_11_comparator_x_q_3_delay_0 <= '0;
            redist45_dupName_11_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist45_dupName_11_comparator_x_q_3_delay_0 <= $unsigned(dupName_11_comparator_x_q);
            redist45_dupName_11_comparator_x_q_3_q <= redist45_dupName_11_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46482777653997731841121(CONSTANT,162)
    assign c_i64_46482777653997731841121_q = $unsigned(64'b0100000010000010000000000000000000000000000000000000000000000000);

    // redist49_dupName_10_comparator_x_q_3(DELAY,1591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_dupName_10_comparator_x_q_3_delay_0 <= '0;
            redist49_dupName_10_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist49_dupName_10_comparator_x_q_3_delay_0 <= $unsigned(dupName_10_comparator_x_q);
            redist49_dupName_10_comparator_x_q_3_q <= redist49_dupName_10_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46491221903299051521120(CONSTANT,165)
    assign c_i64_46491221903299051521120_q = $unsigned(64'b0100000010000101000000000000000000000000000000000000000000000000);

    // redist53_dupName_9_comparator_x_q_3(DELAY,1595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_dupName_9_comparator_x_q_3_delay_0 <= '0;
            redist53_dupName_9_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist53_dupName_9_comparator_x_q_3_delay_0 <= $unsigned(dupName_9_comparator_x_q);
            redist53_dupName_9_comparator_x_q_3_q <= redist53_dupName_9_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46477148154463518721119(CONSTANT,160)
    assign c_i64_46477148154463518721119_q = $unsigned(64'b0100000010000000000000000000000000000000000000000000000000000000);

    // redist57_dupName_8_comparator_x_q_3(DELAY,1599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_dupName_8_comparator_x_q_3_delay_0 <= '0;
            redist57_dupName_8_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist57_dupName_8_comparator_x_q_3_delay_0 <= $unsigned(dupName_8_comparator_x_q);
            redist57_dupName_8_comparator_x_q_3_q <= redist57_dupName_8_comparator_x_q_3_delay_0;
        end
    end

    // i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574(SELECTOR,748)@18
    always @(redist57_dupName_8_comparator_x_q_3_q or c_i64_46477148154463518721119_q or redist53_dupName_9_comparator_x_q_3_q or c_i64_46491221903299051521120_q or redist49_dupName_10_comparator_x_q_3_q or c_i64_46482777653997731841121_q or redist45_dupName_11_comparator_x_q_3_q or c_i64_46485592403764838401122_q or redist35_dupName_21_comparator_x_q_3_q or c_i64_46488407153531944961123_q or redist69_dupName_5_comparator_x_q_3_q or c_i64_46474333404696412161124_q or redist65_dupName_6_comparator_x_q_3_q or c_i64_46479962904230625281125_q or i_acl_1668_v4l2_ctrl_get_name571_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = i_acl_1668_v4l2_ctrl_get_name571_q;
        if (redist65_dupName_6_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46479962904230625281125_q;
        end
        if (redist69_dupName_5_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46474333404696412161124_q;
        end
        if (redist35_dupName_21_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46488407153531944961123_q;
        end
        if (redist45_dupName_11_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46485592403764838401122_q;
        end
        if (redist49_dupName_10_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46482777653997731841121_q;
        end
        if (redist53_dupName_9_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46491221903299051521120_q;
        end
        if (redist57_dupName_8_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q = c_i64_46477148154463518721119_q;
        end
    end

    // redist39_dupName_19_comparator_x_q_2(DELAY,1581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_dupName_19_comparator_x_q_2_delay_0 <= '0;
            redist39_dupName_19_comparator_x_q_2_q <= '0;
        end
        else
        begin
            redist39_dupName_19_comparator_x_q_2_delay_0 <= $unsigned(dupName_19_comparator_x_q);
            redist39_dupName_19_comparator_x_q_2_q <= redist39_dupName_19_comparator_x_q_2_delay_0;
        end
    end

    // c_i64_46494036653066158081117(CONSTANT,166)
    assign c_i64_46494036653066158081117_q = $unsigned(64'b0100000010000110000000000000000000000000000000000000000000000000);

    // redist61_dupName_7_comparator_x_q_3(DELAY,1603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_dupName_7_comparator_x_q_3_delay_0 <= '0;
            redist61_dupName_7_comparator_x_q_3_q <= '0;
        end
        else
        begin
            redist61_dupName_7_comparator_x_q_3_delay_0 <= $unsigned(dupName_7_comparator_x_q);
            redist61_dupName_7_comparator_x_q_3_q <= redist61_dupName_7_comparator_x_q_3_delay_0;
        end
    end

    // c_i64_46496851402833264641116(CONSTANT,167)
    assign c_i64_46496851402833264641116_q = $unsigned(64'b0100000010000111000000000000000000000000000000000000000000000000);

    // c_i64_46499666152600371201115(CONSTANT,168)
    assign c_i64_46499666152600371201115_q = $unsigned(64'b0100000010001000000000000000000000000000000000000000000000000000);

    // c_i64_46502480902367477761114(CONSTANT,169)
    assign c_i64_46502480902367477761114_q = $unsigned(64'b0100000010001001000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573(SELECTOR,736)@18
    always @(redist35_dupName_21_comparator_x_q_3_q or c_i64_46502480902367477761114_q or redist69_dupName_5_comparator_x_q_3_q or c_i64_46499666152600371201115_q or redist65_dupName_6_comparator_x_q_3_q or c_i64_46496851402833264641116_q or redist61_dupName_7_comparator_x_q_3_q or c_i64_46494036653066158081117_q or i_acl_1668_v4l2_ctrl_get_name571_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q = i_acl_1668_v4l2_ctrl_get_name571_q;
        if (redist61_dupName_7_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q = c_i64_46494036653066158081117_q;
        end
        if (redist65_dupName_6_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q = c_i64_46496851402833264641116_q;
        end
        if (redist69_dupName_5_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q = c_i64_46499666152600371201115_q;
        end
        if (redist35_dupName_21_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q = c_i64_46502480902367477761114_q;
        end
    end

    // redist42_dupName_18_comparator_x_q_2(DELAY,1584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_dupName_18_comparator_x_q_2_delay_0 <= '0;
            redist42_dupName_18_comparator_x_q_2_q <= '0;
        end
        else
        begin
            redist42_dupName_18_comparator_x_q_2_delay_0 <= $unsigned(dupName_18_comparator_x_q);
            redist42_dupName_18_comparator_x_q_2_q <= redist42_dupName_18_comparator_x_q_2_delay_0;
        end
    end

    // c_i64_46505295652134584321112(CONSTANT,170)
    assign c_i64_46505295652134584321112_q = $unsigned(64'b0100000010001010000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3465_v4l2_ctrl_get_name572(SELECTOR,721)@18
    always @(redist53_dupName_9_comparator_x_q_3_q or c_i64_46505295652134584321112_q or i_acl_1668_v4l2_ctrl_get_name571_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3465_v4l2_ctrl_get_name572_q = i_acl_1668_v4l2_ctrl_get_name571_q;
        if (redist53_dupName_9_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3465_v4l2_ctrl_get_name572_q = c_i64_46505295652134584321112_q;
        end
    end

    // redist44_dupName_17_comparator_x_q_2(DELAY,1586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_dupName_17_comparator_x_q_2_delay_0 <= '0;
            redist44_dupName_17_comparator_x_q_2_q <= '0;
        end
        else
        begin
            redist44_dupName_17_comparator_x_q_2_delay_0 <= $unsigned(dupName_17_comparator_x_q);
            redist44_dupName_17_comparator_x_q_2_q <= redist44_dupName_17_comparator_x_q_2_delay_0;
        end
    end

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576(SELECTOR,728)@18
    always @(redist44_dupName_17_comparator_x_q_2_q or i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3465_v4l2_ctrl_get_name572_q or redist42_dupName_18_comparator_x_q_2_q or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q or redist39_dupName_19_comparator_x_q_2_q or i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q or i_acl_1668_v4l2_ctrl_get_name571_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576_q = i_acl_1668_v4l2_ctrl_get_name571_q;
        if (redist39_dupName_19_comparator_x_q_2_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576_q = i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3480_v4l2_ctrl_get_name574_q;
        end
        if (redist42_dupName_18_comparator_x_q_2_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3471_v4l2_ctrl_get_name573_q;
        end
        if (redist44_dupName_17_comparator_x_q_2_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576_q = i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3465_v4l2_ctrl_get_name572_q;
        end
    end

    // c_i32_321929_recast_x(CONSTANT,1201)
    assign c_i32_321929_recast_x_q = $unsigned(32'b00000000000000000000000101000001);

    // redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17(DELAY,1558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17_q <= '0;
        end
        else
        begin
            redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17_q <= $unsigned(redist15_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_16_q);
        end
    end

    // i_pivot375_v4l2_ctrl_get_name285(COMPARE,783)@18
    assign i_pivot375_v4l2_ctrl_get_name285_a = $unsigned({{2{redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17_q[31]}}, redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17_q});
    assign i_pivot375_v4l2_ctrl_get_name285_b = $unsigned({{2{c_i32_321929_recast_x_q[31]}}, c_i32_321929_recast_x_q});
    assign i_pivot375_v4l2_ctrl_get_name285_o = $unsigned($signed(i_pivot375_v4l2_ctrl_get_name285_a) - $signed(i_pivot375_v4l2_ctrl_get_name285_b));
    assign i_pivot375_v4l2_ctrl_get_name285_c[0] = i_pivot375_v4l2_ctrl_get_name285_o[33];

    // redist122_i_pivot377_v4l2_ctrl_get_name165_c_8(DELAY,1664)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist122_i_pivot377_v4l2_ctrl_get_name165_c_8 ( .xin(i_pivot377_v4l2_ctrl_get_name165_c), .xout(redist122_i_pivot377_v4l2_ctrl_get_name165_c_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1770_v4l2_ctrl_get_name577(LOGICAL,481)@18
    assign i_acl_1770_v4l2_ctrl_get_name577_q = redist122_i_pivot377_v4l2_ctrl_get_name165_c_8_q ^ i_pivot375_v4l2_ctrl_get_name285_c;

    // i_acl_1778_v4l2_ctrl_get_name578(MUX,482)@18 + 1
    assign i_acl_1778_v4l2_ctrl_get_name578_s = i_acl_1770_v4l2_ctrl_get_name577_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1778_v4l2_ctrl_get_name578_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1778_v4l2_ctrl_get_name578_s)
                1'b0 : i_acl_1778_v4l2_ctrl_get_name578_q <= i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3486_v4l2_ctrl_get_name576_q;
                1'b1 : i_acl_1778_v4l2_ctrl_get_name578_q <= c_i64_46508110401901690881126_q;
                default : i_acl_1778_v4l2_ctrl_get_name578_q <= 64'b0;
            endcase
        end
    end

    // redist117_i_pivot403_v4l2_ctrl_get_name21_c_6(DELAY,1659)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist117_i_pivot403_v4l2_ctrl_get_name21_c_6 ( .xin(i_pivot403_v4l2_ctrl_get_name21_c), .xout(redist117_i_pivot403_v4l2_ctrl_get_name21_c_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1782_v4l2_ctrl_get_name579(LOGICAL,483)@18 + 1
    assign i_acl_1782_v4l2_ctrl_get_name579_qi = i_pivot375_v4l2_ctrl_get_name285_c ^ redist117_i_pivot403_v4l2_ctrl_get_name21_c_6_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1782_v4l2_ctrl_get_name579_delay ( .xin(i_acl_1782_v4l2_ctrl_get_name579_qi), .xout(i_acl_1782_v4l2_ctrl_get_name579_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1787_v4l2_ctrl_get_name580(MUX,484)@19
    assign i_acl_1787_v4l2_ctrl_get_name580_s = i_acl_1782_v4l2_ctrl_get_name579_q;
    always @(i_acl_1787_v4l2_ctrl_get_name580_s or i_acl_1778_v4l2_ctrl_get_name578_q or c_i64_46510925151668797441127_q)
    begin
        unique case (i_acl_1787_v4l2_ctrl_get_name580_s)
            1'b0 : i_acl_1787_v4l2_ctrl_get_name580_q = i_acl_1778_v4l2_ctrl_get_name578_q;
            1'b1 : i_acl_1787_v4l2_ctrl_get_name580_q = c_i64_46510925151668797441127_q;
            default : i_acl_1787_v4l2_ctrl_get_name580_q = 64'b0;
        endcase
    end

    // c_i64_46516554651203010561132(CONSTANT,174)
    assign c_i64_46516554651203010561132_q = $unsigned(64'b0100000010001110000000000000000000000000000000000000000000000000);

    // c_i32_2171136(CONSTANT,27)
    assign c_i32_2171136_q = $unsigned(32'b00000000000000000000000011011001);

    // redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18(DELAY,1559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q <= '0;
        end
        else
        begin
            redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q <= $unsigned(redist16_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_17_q);
        end
    end

    // dupName_38_comparator_x(LOGICAL,1375)@19
    assign dupName_38_comparator_x_q = $unsigned(redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q == c_i32_2171136_q ? 1'b1 : 1'b0);

    // c_i64_46519369400970117121131(CONSTANT,175)
    assign c_i64_46519369400970117121131_q = $unsigned(64'b0100000010001111000000000000000000000000000000000000000000000000);

    // c_i32_2161135(CONSTANT,26)
    assign c_i32_2161135_q = $unsigned(32'b00000000000000000000000011011000);

    // dupName_37_comparator_x(LOGICAL,1374)@19
    assign dupName_37_comparator_x_q = $unsigned(redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q == c_i32_2161135_q ? 1'b1 : 1'b0);

    // c_i64_46522184150737223681130(CONSTANT,176)
    assign c_i64_46522184150737223681130_q = $unsigned(64'b0100000010010000000000000000000000000000000000000000000000000000);

    // c_i32_2121134(CONSTANT,25)
    assign c_i32_2121134_q = $unsigned(32'b00000000000000000000000011010100);

    // dupName_36_comparator_x(LOGICAL,1373)@19
    assign dupName_36_comparator_x_q = $unsigned(redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q == c_i32_2121134_q ? 1'b1 : 1'b0);

    // c_i64_46513739901435904001129(CONSTANT,173)
    assign c_i64_46513739901435904001129_q = $unsigned(64'b0100000010001101000000000000000000000000000000000000000000000000);

    // c_i32_2101133(CONSTANT,22)
    assign c_i32_2101133_q = $unsigned(32'b00000000000000000000000011010010);

    // dupName_35_comparator_x(LOGICAL,1372)@19
    assign dupName_35_comparator_x_q = $unsigned(redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q == c_i32_2101133_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581(SELECTOR,737)@19
    always @(dupName_35_comparator_x_q or c_i64_46513739901435904001129_q or dupName_36_comparator_x_q or c_i64_46522184150737223681130_q or dupName_37_comparator_x_q or c_i64_46519369400970117121131_q or dupName_38_comparator_x_q or c_i64_46516554651203010561132_q or i_acl_1787_v4l2_ctrl_get_name580_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q = i_acl_1787_v4l2_ctrl_get_name580_q;
        if (dupName_38_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q = c_i64_46516554651203010561132_q;
        end
        if (dupName_37_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q = c_i64_46519369400970117121131_q;
        end
        if (dupName_36_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q = c_i64_46522184150737223681130_q;
        end
        if (dupName_35_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q = c_i64_46513739901435904001129_q;
        end
    end

    // i_acl_1820_v4l2_ctrl_get_name582(LOGICAL,485)@11 + 1
    assign i_acl_1820_v4l2_ctrl_get_name582_qi = i_pivot373_v4l2_ctrl_get_name163_c ^ i_pivot379_v4l2_ctrl_get_name83_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_1820_v4l2_ctrl_get_name582_delay ( .xin(i_acl_1820_v4l2_ctrl_get_name582_qi), .xout(i_acl_1820_v4l2_ctrl_get_name582_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist172_i_acl_1820_v4l2_ctrl_get_name582_q_8(DELAY,1714)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist172_i_acl_1820_v4l2_ctrl_get_name582_q_8 ( .xin(i_acl_1820_v4l2_ctrl_get_name582_q), .xout(redist172_i_acl_1820_v4l2_ctrl_get_name582_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1827_v4l2_ctrl_get_name583(MUX,486)@19 + 1
    assign i_acl_1827_v4l2_ctrl_get_name583_s = redist172_i_acl_1820_v4l2_ctrl_get_name582_q_8_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_1827_v4l2_ctrl_get_name583_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_1827_v4l2_ctrl_get_name583_s)
                1'b0 : i_acl_1827_v4l2_ctrl_get_name583_q <= i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3492_v4l2_ctrl_get_name581_q;
                1'b1 : i_acl_1827_v4l2_ctrl_get_name583_q <= c_i64_46524998900504330241137_q;
                default : i_acl_1827_v4l2_ctrl_get_name583_q <= 64'b0;
            endcase
        end
    end

    // c_i64_46570034896778035201204(CONSTANT,193)
    assign c_i64_46570034896778035201204_q = $unsigned(64'b0100000010100001000000000000000000000000000000000000000000000000);

    // redist46_dupName_11_comparator_x_q_5(DELAY,1588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_dupName_11_comparator_x_q_5_delay_0 <= '0;
            redist46_dupName_11_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist46_dupName_11_comparator_x_q_5_delay_0 <= $unsigned(redist45_dupName_11_comparator_x_q_3_q);
            redist46_dupName_11_comparator_x_q_5_q <= redist46_dupName_11_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46595367644681994241203(CONSTANT,202)
    assign c_i64_46595367644681994241203_q = $unsigned(64'b0100000010101010000000000000000000000000000000000000000000000000);

    // redist50_dupName_10_comparator_x_q_5(DELAY,1592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_dupName_10_comparator_x_q_5_delay_0 <= '0;
            redist50_dupName_10_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist50_dupName_10_comparator_x_q_5_delay_0 <= $unsigned(redist49_dupName_10_comparator_x_q_3_q);
            redist50_dupName_10_comparator_x_q_5_q <= redist50_dupName_10_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46586923395380674561202(CONSTANT,199)
    assign c_i64_46586923395380674561202_q = $unsigned(64'b0100000010100111000000000000000000000000000000000000000000000000);

    // redist54_dupName_9_comparator_x_q_5(DELAY,1596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_dupName_9_comparator_x_q_5_delay_0 <= '0;
            redist54_dupName_9_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist54_dupName_9_comparator_x_q_5_delay_0 <= $unsigned(redist53_dupName_9_comparator_x_q_3_q);
            redist54_dupName_9_comparator_x_q_5_q <= redist54_dupName_9_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46654477389791232001201(CONSTANT,223)
    assign c_i64_46654477389791232001201_q = $unsigned(64'b0100000010111111000000000000000000000000000000000000000000000000);

    // redist58_dupName_8_comparator_x_q_5(DELAY,1600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_dupName_8_comparator_x_q_5_delay_0 <= '0;
            redist58_dupName_8_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist58_dupName_8_comparator_x_q_5_delay_0 <= $unsigned(redist57_dupName_8_comparator_x_q_3_q);
            redist58_dupName_8_comparator_x_q_5_q <= redist58_dupName_8_comparator_x_q_5_delay_0;
        end
    end

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592(SELECTOR,739)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46654477389791232001201_q or redist54_dupName_9_comparator_x_q_5_q or c_i64_46586923395380674561202_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46595367644681994241203_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46570034896778035201204_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q = c_i64_46570034896778035201204_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q = c_i64_46595367644681994241203_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q = c_i64_46586923395380674561202_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q = c_i64_46654477389791232001201_q;
        end
    end

    // i_sel_bits3570_v4l2_ctrl_get_name593_BitSelect_for_a(BITSELECT,1514)@16
    assign i_sel_bits3570_v4l2_ctrl_get_name593_BitSelect_for_a_b = i_sel_shr_v4l2_ctrl_get_name545_vt_join_q[2:0];

    // i_sel_bits3570_v4l2_ctrl_get_name593_join(BITJOIN,1515)@16
    assign i_sel_bits3570_v4l2_ctrl_get_name593_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_sel_bits3570_v4l2_ctrl_get_name593_BitSelect_for_a_b};

    // i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2(BITSELECT,931)@16
    assign i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b = i_sel_bits3570_v4l2_ctrl_get_name593_join_q[2:0];

    // redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4(DELAY,1618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_0 <= '0;
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_1 <= '0;
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_2 <= '0;
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_q <= '0;
        end
        else
        begin
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_0 <= $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b);
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_1 <= redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_0;
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_2 <= redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_1;
            redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_q <= redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_delay_2;
        end
    end

    // i_sel_bits3570_v4l2_ctrl_get_name593_vt_join(BITJOIN,930)@20
    assign i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q = {i_sel_bits3570_v4l2_ctrl_get_name593_vt_const_31_q, redist76_i_sel_bits3570_v4l2_ctrl_get_name593_vt_select_2_b_4_q};

    // dupName_99_comparator_x(LOGICAL,1436)@20
    assign dupName_99_comparator_x_q = $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q == c_i32_21090_q ? 1'b1 : 1'b0);

    // c_i64_46634774141421486081199(CONSTANT,216)
    assign c_i64_46634774141421486081199_q = $unsigned(64'b0100000010111000000000000000000000000000000000000000000000000000);

    // redist62_dupName_7_comparator_x_q_5(DELAY,1604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_dupName_7_comparator_x_q_5_delay_0 <= '0;
            redist62_dupName_7_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist62_dupName_7_comparator_x_q_5_delay_0 <= $unsigned(redist61_dupName_7_comparator_x_q_3_q);
            redist62_dupName_7_comparator_x_q_5_q <= redist62_dupName_7_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46615070893051740161198(CONSTANT,209)
    assign c_i64_46615070893051740161198_q = $unsigned(64'b0100000010110001000000000000000000000000000000000000000000000000);

    // redist66_dupName_6_comparator_x_q_5(DELAY,1608)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_dupName_6_comparator_x_q_5_delay_0 <= '0;
            redist66_dupName_6_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist66_dupName_6_comparator_x_q_5_delay_0 <= $unsigned(redist65_dupName_6_comparator_x_q_3_q);
            redist66_dupName_6_comparator_x_q_5_q <= redist66_dupName_6_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46637588891188592641197(CONSTANT,217)
    assign c_i64_46637588891188592641197_q = $unsigned(64'b0100000010111001000000000000000000000000000000000000000000000000);

    // redist70_dupName_5_comparator_x_q_5(DELAY,1612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_dupName_5_comparator_x_q_5_delay_0 <= '0;
            redist70_dupName_5_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist70_dupName_5_comparator_x_q_5_delay_0 <= $unsigned(redist69_dupName_5_comparator_x_q_3_q);
            redist70_dupName_5_comparator_x_q_5_q <= redist70_dupName_5_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46617885642818846721196(CONSTANT,210)
    assign c_i64_46617885642818846721196_q = $unsigned(64'b0100000010110010000000000000000000000000000000000000000000000000);

    // redist36_dupName_21_comparator_x_q_5(DELAY,1578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_dupName_21_comparator_x_q_5_delay_0 <= '0;
            redist36_dupName_21_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist36_dupName_21_comparator_x_q_5_delay_0 <= $unsigned(redist35_dupName_21_comparator_x_q_3_q);
            redist36_dupName_21_comparator_x_q_5_q <= redist36_dupName_21_comparator_x_q_5_delay_0;
        end
    end

    // c_i64_46640403640955699201195(CONSTANT,218)
    assign c_i64_46640403640955699201195_q = $unsigned(64'b0100000010111010000000000000000000000000000000000000000000000000);

    // c_i64_46620700392585953281194(CONSTANT,211)
    assign c_i64_46620700392585953281194_q = $unsigned(64'b0100000010110011000000000000000000000000000000000000000000000000);

    // c_i64_46643218390722805761193(CONSTANT,219)
    assign c_i64_46643218390722805761193_q = $unsigned(64'b0100000010111011000000000000000000000000000000000000000000000000);

    // c_i64_46623515142353059841192(CONSTANT,212)
    assign c_i64_46623515142353059841192_q = $unsigned(64'b0100000010110100000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591(SELECTOR,755)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46623515142353059841192_q or redist54_dupName_9_comparator_x_q_5_q or c_i64_46643218390722805761193_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46620700392585953281194_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46640403640955699201195_q or redist36_dupName_21_comparator_x_q_5_q or c_i64_46617885642818846721196_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46637588891188592641197_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46615070893051740161198_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46634774141421486081199_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46634774141421486081199_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46615070893051740161198_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46637588891188592641197_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46617885642818846721196_q;
        end
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46640403640955699201195_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46620700392585953281194_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46643218390722805761193_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q = c_i64_46623515142353059841192_q;
        end
    end

    // dupName_98_comparator_x(LOGICAL,1435)@20
    assign dupName_98_comparator_x_q = $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q == c_i32_11089_q ? 1'b1 : 1'b0);

    // c_i64_46646033140489912321190(CONSTANT,220)
    assign c_i64_46646033140489912321190_q = $unsigned(64'b0100000010111100000000000000000000000000000000000000000000000000);

    // c_i64_46626329892120166401189(CONSTANT,213)
    assign c_i64_46626329892120166401189_q = $unsigned(64'b0100000010110101000000000000000000000000000000000000000000000000);

    // c_i64_46648847890257018881188(CONSTANT,221)
    assign c_i64_46648847890257018881188_q = $unsigned(64'b0100000010111101000000000000000000000000000000000000000000000000);

    // c_i64_46629144641887272961187(CONSTANT,214)
    assign c_i64_46629144641887272961187_q = $unsigned(64'b0100000010110110000000000000000000000000000000000000000000000000);

    // c_i64_46651662640024125441186(CONSTANT,222)
    assign c_i64_46651662640024125441186_q = $unsigned(64'b0100000010111110000000000000000000000000000000000000000000000000);

    // c_i64_46631959391654379521185(CONSTANT,215)
    assign c_i64_46631959391654379521185_q = $unsigned(64'b0100000010110111000000000000000000000000000000000000000000000000);

    // c_i64_46612256143284633601184(CONSTANT,208)
    assign c_i64_46612256143284633601184_q = $unsigned(64'b0100000010110000000000000000000000000000000000000000000000000000);

    // c_i64_46609441393517527041183(CONSTANT,207)
    assign c_i64_46609441393517527041183_q = $unsigned(64'b0100000010101111000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590(SELECTOR,754)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46609441393517527041183_q or redist54_dupName_9_comparator_x_q_5_q or c_i64_46612256143284633601184_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46631959391654379521185_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46651662640024125441186_q or redist36_dupName_21_comparator_x_q_5_q or c_i64_46629144641887272961187_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46648847890257018881188_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46626329892120166401189_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46646033140489912321190_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46646033140489912321190_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46626329892120166401189_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46648847890257018881188_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46629144641887272961187_q;
        end
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46651662640024125441186_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46631959391654379521185_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46612256143284633601184_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q = c_i64_46609441393517527041183_q;
        end
    end

    // dupName_97_comparator_x(LOGICAL,1434)@20
    assign dupName_97_comparator_x_q = $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q == c_i32_01088_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597(SELECTOR,730)@20
    always @(dupName_97_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q or dupName_98_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q or dupName_99_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (dupName_99_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3568_v4l2_ctrl_get_name592_q;
        end
        if (dupName_98_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q = i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3562_v4l2_ctrl_get_name591_q;
        end
        if (dupName_97_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q = i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3552_v4l2_ctrl_get_name590_q;
        end
    end

    // i_sel_shr3584_v4l2_ctrl_get_name598_vt_const_31(CONSTANT,936)
    assign i_sel_shr3584_v4l2_ctrl_get_name598_vt_const_31_q = $unsigned(6'b000000);

    // rightShiftStage1Idx1Pad4_uid1525_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(CONSTANT,1524)
    assign rightShiftStage1Idx1Pad4_uid1525_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage1Idx1Rng4_uid1524_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(BITSELECT,1523)@20
    assign rightShiftStage1Idx1Rng4_uid1524_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_b = rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid1526_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(BITJOIN,1525)@20
    assign rightShiftStage1Idx1_uid1526_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = {rightShiftStage1Idx1Pad4_uid1525_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q, rightShiftStage1Idx1Rng4_uid1524_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_b};

    // rightShiftStage0Idx1Rng2_uid1519_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(BITSELECT,1518)@20
    assign rightShiftStage0Idx1Rng2_uid1519_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_b = redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q[31:2];

    // rightShiftStage0Idx1_uid1521_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(BITJOIN,1520)@20
    assign rightShiftStage0Idx1_uid1521_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = {rightShiftStage0Idx1Pad2_uid1520_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q, rightShiftStage0Idx1Rng2_uid1519_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_b};

    // redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19(DELAY,1560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q <= '0;
        end
        else
        begin
            redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q <= $unsigned(redist17_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_18_q);
        end
    end

    // rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(MUX,1522)@20
    assign rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s or redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q or rightShiftStage0Idx1_uid1521_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s)
            1'b0 : rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q;
            1'b1 : rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = rightShiftStage0Idx1_uid1521_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
            default : rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x(MUX,1527)@20
    assign rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s or rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q or rightShiftStage1Idx1_uid1526_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_s)
            1'b0 : rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = rightShiftStage0_uid1523_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
            1'b1 : rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = rightShiftStage1Idx1_uid1526_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q;
            default : rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr3584_v4l2_ctrl_get_name598_vt_select_25(BITSELECT,938)@20
    assign i_sel_shr3584_v4l2_ctrl_get_name598_vt_select_25_b = rightShiftStage1_uid1528_i_sel_shr3584_v4l2_ctrl_get_name0_shift_x_q[25:0];

    // i_sel_shr3584_v4l2_ctrl_get_name598_vt_join(BITJOIN,937)@20
    assign i_sel_shr3584_v4l2_ctrl_get_name598_vt_join_q = {i_sel_shr3584_v4l2_ctrl_get_name598_vt_const_31_q, i_sel_shr3584_v4l2_ctrl_get_name598_vt_select_25_b};

    // dupName_107_comparator_x(LOGICAL,1444)@20
    assign dupName_107_comparator_x_q = $unsigned(i_sel_shr3584_v4l2_ctrl_get_name598_vt_join_q == c_i32_41098_q ? 1'b1 : 1'b0);

    // c_i64_46606626643750420481181(CONSTANT,206)
    assign c_i64_46606626643750420481181_q = $unsigned(64'b0100000010101110000000000000000000000000000000000000000000000000);

    // c_i64_46662921639092551681180(CONSTANT,226)
    assign c_i64_46662921639092551681180_q = $unsigned(64'b0100000011000010000000000000000000000000000000000000000000000000);

    // c_i64_46564405397243822081179(CONSTANT,191)
    assign c_i64_46564405397243822081179_q = $unsigned(64'b0100000010011111000000000000000000000000000000000000000000000000);

    // c_i64_46581293895846461441178(CONSTANT,197)
    assign c_i64_46581293895846461441178_q = $unsigned(64'b0100000010100101000000000000000000000000000000000000000000000000);

    // c_i64_46676995387928084481177(CONSTANT,231)
    assign c_i64_46676995387928084481177_q = $unsigned(64'b0100000011000111000000000000000000000000000000000000000000000000);

    // c_i64_46679810137695191041176(CONSTANT,232)
    assign c_i64_46679810137695191041176_q = $unsigned(64'b0100000011001000000000000000000000000000000000000000000000000000);

    // c_i64_46603811893983313921175(CONSTANT,205)
    assign c_i64_46603811893983313921175_q = $unsigned(64'b0100000010101101000000000000000000000000000000000000000000000000);

    // c_i64_46598182394449100801174(CONSTANT,203)
    assign c_i64_46598182394449100801174_q = $unsigned(64'b0100000010101011000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589(SELECTOR,753)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46598182394449100801174_q or redist54_dupName_9_comparator_x_q_5_q or c_i64_46603811893983313921175_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46679810137695191041176_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46676995387928084481177_q or redist36_dupName_21_comparator_x_q_5_q or c_i64_46581293895846461441178_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46564405397243822081179_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46662921639092551681180_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46606626643750420481181_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46606626643750420481181_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46662921639092551681180_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46564405397243822081179_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46581293895846461441178_q;
        end
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46676995387928084481177_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46679810137695191041176_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46603811893983313921175_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q = c_i64_46598182394449100801174_q;
        end
    end

    // dupName_102_comparator_x(LOGICAL,1439)@20
    assign dupName_102_comparator_x_q = $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q == c_i32_71075_q ? 1'b1 : 1'b0);

    // c_i64_46668551138626764801172(CONSTANT,228)
    assign c_i64_46668551138626764801172_q = $unsigned(64'b0100000011000100000000000000000000000000000000000000000000000000);

    // c_i64_46589738145147781121171(CONSTANT,200)
    assign c_i64_46589738145147781121171_q = $unsigned(64'b0100000010101000000000000000000000000000000000000000000000000000);

    // c_i64_46575664396312248321170(CONSTANT,195)
    assign c_i64_46575664396312248321170_q = $unsigned(64'b0100000010100011000000000000000000000000000000000000000000000000);

    // c_i64_46572849646545141761169(CONSTANT,194)
    assign c_i64_46572849646545141761169_q = $unsigned(64'b0100000010100010000000000000000000000000000000000000000000000000);

    // c_i64_46578479146079354881168(CONSTANT,196)
    assign c_i64_46578479146079354881168_q = $unsigned(64'b0100000010100100000000000000000000000000000000000000000000000000);

    // c_i64_46567220147010928641167(CONSTANT,192)
    assign c_i64_46567220147010928641167_q = $unsigned(64'b0100000010100000000000000000000000000000000000000000000000000000);

    // c_i64_46674180638160977921166(CONSTANT,230)
    assign c_i64_46674180638160977921166_q = $unsigned(64'b0100000011000110000000000000000000000000000000000000000000000000);

    // c_i64_46592552894914887681165(CONSTANT,201)
    assign c_i64_46592552894914887681165_q = $unsigned(64'b0100000010101001000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588(SELECTOR,752)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46592552894914887681165_q or redist54_dupName_9_comparator_x_q_5_q or c_i64_46674180638160977921166_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46567220147010928641167_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46578479146079354881168_q or redist36_dupName_21_comparator_x_q_5_q or c_i64_46572849646545141761169_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46575664396312248321170_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46589738145147781121171_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46668551138626764801172_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46668551138626764801172_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46589738145147781121171_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46575664396312248321170_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46572849646545141761169_q;
        end
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46578479146079354881168_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46567220147010928641167_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46674180638160977921166_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q = c_i64_46592552894914887681165_q;
        end
    end

    // dupName_101_comparator_x(LOGICAL,1438)@20
    assign dupName_101_comparator_x_q = $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q == c_i32_61081_q ? 1'b1 : 1'b0);

    // c_i64_46682624887462297601163(CONSTANT,233)
    assign c_i64_46682624887462297601163_q = $unsigned(64'b0100000011001001000000000000000000000000000000000000000000000000);

    // c_i64_46660106889325445121162(CONSTANT,225)
    assign c_i64_46660106889325445121162_q = $unsigned(64'b0100000011000001000000000000000000000000000000000000000000000000);

    // c_i64_46657292139558338561161(CONSTANT,224)
    assign c_i64_46657292139558338561161_q = $unsigned(64'b0100000011000000000000000000000000000000000000000000000000000000);

    // c_i64_46584108645613568001160(CONSTANT,198)
    assign c_i64_46584108645613568001160_q = $unsigned(64'b0100000010100110000000000000000000000000000000000000000000000000);

    // c_i64_46665736388859658241159(CONSTANT,227)
    assign c_i64_46665736388859658241159_q = $unsigned(64'b0100000011000011000000000000000000000000000000000000000000000000);

    // c_i64_46600997144216207361158(CONSTANT,204)
    assign c_i64_46600997144216207361158_q = $unsigned(64'b0100000010101100000000000000000000000000000000000000000000000000);

    // c_i64_46671365888393871361157(CONSTANT,229)
    assign c_i64_46671365888393871361157_q = $unsigned(64'b0100000011000101000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587(SELECTOR,749)@20
    always @(redist54_dupName_9_comparator_x_q_5_q or c_i64_46671365888393871361157_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46600997144216207361158_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46665736388859658241159_q or redist36_dupName_21_comparator_x_q_5_q or c_i64_46584108645613568001160_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46657292139558338561161_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46660106889325445121162_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46682624887462297601163_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46682624887462297601163_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46660106889325445121162_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46657292139558338561161_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46584108645613568001160_q;
        end
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46665736388859658241159_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46600997144216207361158_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q = c_i64_46671365888393871361157_q;
        end
    end

    // dupName_100_comparator_x(LOGICAL,1437)@20
    assign dupName_100_comparator_x_q = $unsigned(i_sel_bits3570_v4l2_ctrl_get_name593_vt_join_q == c_i32_51080_q ? 1'b1 : 1'b0);

    // c_i64_46688254386996510721155(CONSTANT,235)
    assign c_i64_46688254386996510721155_q = $unsigned(64'b0100000011001011000000000000000000000000000000000000000000000000);

    // c_i64_46685439637229404161154(CONSTANT,234)
    assign c_i64_46685439637229404161154_q = $unsigned(64'b0100000011001010000000000000000000000000000000000000000000000000);

    // c_i64_46558775897709608961153(CONSTANT,189)
    assign c_i64_46558775897709608961153_q = $unsigned(64'b0100000010011101000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586(SELECTOR,729)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46558775897709608961153_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46685439637229404161154_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46688254386996510721155_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q = c_i64_46688254386996510721155_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q = c_i64_46685439637229404161154_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q = c_i64_46558775897709608961153_q;
        end
    end

    // c_i64_46561590647476715521151(CONSTANT,190)
    assign c_i64_46561590647476715521151_q = $unsigned(64'b0100000010011110000000000000000000000000000000000000000000000000);

    // c_i64_46536257899572756481150(CONSTANT,181)
    assign c_i64_46536257899572756481150_q = $unsigned(64'b0100000010010101000000000000000000000000000000000000000000000000);

    // c_i64_46539072649339863041149(CONSTANT,182)
    assign c_i64_46539072649339863041149_q = $unsigned(64'b0100000010010110000000000000000000000000000000000000000000000000);

    // c_i64_46541887399106969601148(CONSTANT,183)
    assign c_i64_46541887399106969601148_q = $unsigned(64'b0100000010010111000000000000000000000000000000000000000000000000);

    // c_i64_46544702148874076161147(CONSTANT,184)
    assign c_i64_46544702148874076161147_q = $unsigned(64'b0100000010011000000000000000000000000000000000000000000000000000);

    // c_i64_46530628400038543361146(CONSTANT,179)
    assign c_i64_46530628400038543361146_q = $unsigned(64'b0100000010010011000000000000000000000000000000000000000000000000);

    // c_i64_46553146398175395841145(CONSTANT,187)
    assign c_i64_46553146398175395841145_q = $unsigned(64'b0100000010011011000000000000000000000000000000000000000000000000);

    // c_i64_46550331648408289281144(CONSTANT,186)
    assign c_i64_46550331648408289281144_q = $unsigned(64'b0100000010011010000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585(SELECTOR,751)@20
    always @(redist58_dupName_8_comparator_x_q_5_q or c_i64_46550331648408289281144_q or redist54_dupName_9_comparator_x_q_5_q or c_i64_46553146398175395841145_q or redist50_dupName_10_comparator_x_q_5_q or c_i64_46530628400038543361146_q or redist46_dupName_11_comparator_x_q_5_q or c_i64_46544702148874076161147_q or redist36_dupName_21_comparator_x_q_5_q or c_i64_46541887399106969601148_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46539072649339863041149_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46536257899572756481150_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46561590647476715521151_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46561590647476715521151_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46536257899572756481150_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46539072649339863041149_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46541887399106969601148_q;
        end
        if (redist46_dupName_11_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46544702148874076161147_q;
        end
        if (redist50_dupName_10_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46530628400038543361146_q;
        end
        if (redist54_dupName_9_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46553146398175395841145_q;
        end
        if (redist58_dupName_8_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q = c_i64_46550331648408289281144_q;
        end
    end

    // c_i64_46547516898641182721142(CONSTANT,185)
    assign c_i64_46547516898641182721142_q = $unsigned(64'b0100000010011001000000000000000000000000000000000000000000000000);

    // c_i64_46527813650271436801141(CONSTANT,178)
    assign c_i64_46527813650271436801141_q = $unsigned(64'b0100000010010010000000000000000000000000000000000000000000000000);

    // c_i64_46533443149805649921140(CONSTANT,180)
    assign c_i64_46533443149805649921140_q = $unsigned(64'b0100000010010100000000000000000000000000000000000000000000000000);

    // c_i64_46555961147942502401139(CONSTANT,188)
    assign c_i64_46555961147942502401139_q = $unsigned(64'b0100000010011100000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584(SELECTOR,738)@20
    always @(redist36_dupName_21_comparator_x_q_5_q or c_i64_46555961147942502401139_q or redist70_dupName_5_comparator_x_q_5_q or c_i64_46533443149805649921140_q or redist66_dupName_6_comparator_x_q_5_q or c_i64_46527813650271436801141_q or redist62_dupName_7_comparator_x_q_5_q or c_i64_46547516898641182721142_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (redist62_dupName_7_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q = c_i64_46547516898641182721142_q;
        end
        if (redist66_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q = c_i64_46527813650271436801141_q;
        end
        if (redist70_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q = c_i64_46533443149805649921140_q;
        end
        if (redist36_dupName_21_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q = c_i64_46555961147942502401139_q;
        end
    end

    // i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595(SELECTOR,745)@20
    always @(dupName_97_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q or dupName_98_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q or dupName_99_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q or dupName_100_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q or dupName_101_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q or dupName_102_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (dupName_102_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3542_v4l2_ctrl_get_name589_q;
        end
        if (dupName_101_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3532_v4l2_ctrl_get_name588_q;
        end
        if (dupName_100_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3522_v4l2_ctrl_get_name587_q;
        end
        if (dupName_99_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3513_v4l2_ctrl_get_name586_q;
        end
        if (dupName_98_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3508_v4l2_ctrl_get_name585_q;
        end
        if (dupName_97_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3498_v4l2_ctrl_get_name584_q;
        end
    end

    // dupName_106_comparator_x(LOGICAL,1443)@20
    assign dupName_106_comparator_x_q = $unsigned(i_sel_shr3584_v4l2_ctrl_get_name598_vt_join_q == c_i32_31091_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600(SELECTOR,723)@20
    always @(dupName_106_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q or dupName_107_comparator_x_q or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q or i_acl_1827_v4l2_ctrl_get_name583_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600_q = i_acl_1827_v4l2_ctrl_get_name583_q;
        if (dupName_107_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3583_v4l2_ctrl_get_name597_q;
        end
        if (dupName_106_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600_q = i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3577_v4l2_ctrl_get_name595_q;
        end
    end

    // redist92_i_pivot579_v4l2_ctrl_get_name331_c_4(DELAY,1634)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_0 <= '0;
            redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_1 <= '0;
            redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_q <= '0;
        end
        else
        begin
            redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_0 <= $unsigned(i_pivot579_v4l2_ctrl_get_name331_c);
            redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_1 <= redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_0;
            redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_q <= redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_delay_1;
        end
    end

    // i_acl_2320_v4l2_ctrl_get_name601(LOGICAL,487)@5 + 1
    assign i_acl_2320_v4l2_ctrl_get_name601_qi = i_pivot581_v4l2_ctrl_get_name245_c ^ redist92_i_pivot579_v4l2_ctrl_get_name331_c_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2320_v4l2_ctrl_get_name601_delay ( .xin(i_acl_2320_v4l2_ctrl_get_name601_qi), .xout(i_acl_2320_v4l2_ctrl_get_name601_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist171_i_acl_2320_v4l2_ctrl_get_name601_q_15(DELAY,1713)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist171_i_acl_2320_v4l2_ctrl_get_name601_q_15 ( .xin(i_acl_2320_v4l2_ctrl_get_name601_q), .xout(redist171_i_acl_2320_v4l2_ctrl_get_name601_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2328_v4l2_ctrl_get_name602(MUX,488)@20
    assign i_acl_2328_v4l2_ctrl_get_name602_s = redist171_i_acl_2320_v4l2_ctrl_get_name601_q_15_q;
    always @(i_acl_2328_v4l2_ctrl_get_name602_s or i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600_q or c_i64_46691069136763617281207_q)
    begin
        unique case (i_acl_2328_v4l2_ctrl_get_name602_s)
            1'b0 : i_acl_2328_v4l2_ctrl_get_name602_q = i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3588_v4l2_ctrl_get_name600_q;
            1'b1 : i_acl_2328_v4l2_ctrl_get_name602_q = c_i64_46691069136763617281207_q;
            default : i_acl_2328_v4l2_ctrl_get_name602_q = 64'b0;
        endcase
    end

    // c_i32_397899_recast_x(CONSTANT,1277)
    assign c_i32_397899_recast_x_q = $unsigned(32'b00000000000000000000000110001101);

    // i_pivot531_v4l2_ctrl_get_name225(COMPARE,862)@20
    assign i_pivot531_v4l2_ctrl_get_name225_a = $unsigned({{2{redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q[31]}}, redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q});
    assign i_pivot531_v4l2_ctrl_get_name225_b = $unsigned({{2{c_i32_397899_recast_x_q[31]}}, c_i32_397899_recast_x_q});
    assign i_pivot531_v4l2_ctrl_get_name225_o = $unsigned($signed(i_pivot531_v4l2_ctrl_get_name225_a) - $signed(i_pivot531_v4l2_ctrl_get_name225_b));
    assign i_pivot531_v4l2_ctrl_get_name225_c[0] = i_pivot531_v4l2_ctrl_get_name225_o[33];

    // c_i32_396843_recast_x(CONSTANT,1276)
    assign c_i32_396843_recast_x_q = $unsigned(32'b00000000000000000000000110001100);

    // i_pivot533_v4l2_ctrl_get_name113(COMPARE,863)@20
    assign i_pivot533_v4l2_ctrl_get_name113_a = $unsigned({{2{redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q[31]}}, redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q});
    assign i_pivot533_v4l2_ctrl_get_name113_b = $unsigned({{2{c_i32_396843_recast_x_q[31]}}, c_i32_396843_recast_x_q});
    assign i_pivot533_v4l2_ctrl_get_name113_o = $unsigned($signed(i_pivot533_v4l2_ctrl_get_name113_a) - $signed(i_pivot533_v4l2_ctrl_get_name113_b));
    assign i_pivot533_v4l2_ctrl_get_name113_c[0] = i_pivot533_v4l2_ctrl_get_name113_o[33];

    // i_acl_2329_v4l2_ctrl_get_name603(LOGICAL,489)@20
    assign i_acl_2329_v4l2_ctrl_get_name603_q = i_pivot533_v4l2_ctrl_get_name113_c ^ i_pivot531_v4l2_ctrl_get_name225_c;

    // i_acl_2336_v4l2_ctrl_get_name604(MUX,490)@20 + 1
    assign i_acl_2336_v4l2_ctrl_get_name604_s = i_acl_2329_v4l2_ctrl_get_name603_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2336_v4l2_ctrl_get_name604_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2336_v4l2_ctrl_get_name604_s)
                1'b0 : i_acl_2336_v4l2_ctrl_get_name604_q <= i_acl_2328_v4l2_ctrl_get_name602_q;
                1'b1 : i_acl_2336_v4l2_ctrl_get_name604_q <= c_i64_46693883886530723841208_q;
                default : i_acl_2336_v4l2_ctrl_get_name604_q <= 64'b0;
            endcase
        end
    end

    // redist100_i_pivot529_v4l2_ctrl_get_name319_c_16(DELAY,1642)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist100_i_pivot529_v4l2_ctrl_get_name319_c_16 ( .xin(i_pivot529_v4l2_ctrl_get_name319_c), .xout(redist100_i_pivot529_v4l2_ctrl_get_name319_c_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2337_v4l2_ctrl_get_name605(LOGICAL,491)@20 + 1
    assign i_acl_2337_v4l2_ctrl_get_name605_qi = i_pivot531_v4l2_ctrl_get_name225_c ^ redist100_i_pivot529_v4l2_ctrl_get_name319_c_16_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2337_v4l2_ctrl_get_name605_delay ( .xin(i_acl_2337_v4l2_ctrl_get_name605_qi), .xout(i_acl_2337_v4l2_ctrl_get_name605_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2345_v4l2_ctrl_get_name606(MUX,492)@21
    assign i_acl_2345_v4l2_ctrl_get_name606_s = i_acl_2337_v4l2_ctrl_get_name605_q;
    always @(i_acl_2345_v4l2_ctrl_get_name606_s or i_acl_2336_v4l2_ctrl_get_name604_q or c_i64_46696698636297830401209_q)
    begin
        unique case (i_acl_2345_v4l2_ctrl_get_name606_s)
            1'b0 : i_acl_2345_v4l2_ctrl_get_name606_q = i_acl_2336_v4l2_ctrl_get_name604_q;
            1'b1 : i_acl_2345_v4l2_ctrl_get_name606_q = c_i64_46696698636297830401209_q;
            default : i_acl_2345_v4l2_ctrl_get_name606_q = 64'b0;
        endcase
    end

    // redist99_i_pivot533_v4l2_ctrl_get_name113_c_1(DELAY,1641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_pivot533_v4l2_ctrl_get_name113_c_1_q <= '0;
        end
        else
        begin
            redist99_i_pivot533_v4l2_ctrl_get_name113_c_1_q <= $unsigned(i_pivot533_v4l2_ctrl_get_name113_c);
        end
    end

    // c_i32_395898_recast_x(CONSTANT,1275)
    assign c_i32_395898_recast_x_q = $unsigned(32'b00000000000000000000000110001011);

    // i_pivot527_v4l2_ctrl_get_name223(COMPARE,860)@20 + 1
    assign i_pivot527_v4l2_ctrl_get_name223_a = $unsigned({{2{redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q[31]}}, redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q});
    assign i_pivot527_v4l2_ctrl_get_name223_b = $unsigned({{2{c_i32_395898_recast_x_q[31]}}, c_i32_395898_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot527_v4l2_ctrl_get_name223_o <= 34'b0;
        end
        else
        begin
            i_pivot527_v4l2_ctrl_get_name223_o <= $unsigned($signed(i_pivot527_v4l2_ctrl_get_name223_a) - $signed(i_pivot527_v4l2_ctrl_get_name223_b));
        end
    end
    assign i_pivot527_v4l2_ctrl_get_name223_c[0] = i_pivot527_v4l2_ctrl_get_name223_o[33];

    // i_acl_2346_v4l2_ctrl_get_name607(LOGICAL,493)@21
    assign i_acl_2346_v4l2_ctrl_get_name607_q = i_pivot527_v4l2_ctrl_get_name223_c ^ redist99_i_pivot533_v4l2_ctrl_get_name113_c_1_q;

    // i_acl_2353_v4l2_ctrl_get_name608(MUX,494)@21
    assign i_acl_2353_v4l2_ctrl_get_name608_s = i_acl_2346_v4l2_ctrl_get_name607_q;
    always @(i_acl_2353_v4l2_ctrl_get_name608_s or i_acl_2345_v4l2_ctrl_get_name606_q or c_i64_46699513386064936961210_q)
    begin
        unique case (i_acl_2353_v4l2_ctrl_get_name608_s)
            1'b0 : i_acl_2353_v4l2_ctrl_get_name608_q = i_acl_2345_v4l2_ctrl_get_name606_q;
            1'b1 : i_acl_2353_v4l2_ctrl_get_name608_q = c_i64_46699513386064936961210_q;
            default : i_acl_2353_v4l2_ctrl_get_name608_q = 64'b0;
        endcase
    end

    // c_i64_46713587134900469761217(CONSTANT,244)
    assign c_i64_46713587134900469761217_q = $unsigned(64'b0100000011010100000000000000000000000000000000000000000000000000);

    // c_i32_1951223(CONSTANT,21)
    assign c_i32_1951223_q = $unsigned(32'b00000000000000000000000011000011);

    // redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20(DELAY,1561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q <= '0;
        end
        else
        begin
            redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q <= $unsigned(redist18_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_19_q);
        end
    end

    // dupName_113_comparator_x(LOGICAL,1450)@21
    assign dupName_113_comparator_x_q = $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q == c_i32_1951223_q ? 1'b1 : 1'b0);

    // c_i64_46702328135832043521216(CONSTANT,240)
    assign c_i64_46702328135832043521216_q = $unsigned(64'b0100000011010000000000000000000000000000000000000000000000000000);

    // c_i32_1941222(CONSTANT,20)
    assign c_i32_1941222_q = $unsigned(32'b00000000000000000000000011000010);

    // dupName_112_comparator_x(LOGICAL,1449)@21
    assign dupName_112_comparator_x_q = $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q == c_i32_1941222_q ? 1'b1 : 1'b0);

    // c_i64_46707957635366256641215(CONSTANT,242)
    assign c_i64_46707957635366256641215_q = $unsigned(64'b0100000011010010000000000000000000000000000000000000000000000000);

    // c_i32_1931221(CONSTANT,19)
    assign c_i32_1931221_q = $unsigned(32'b00000000000000000000000011000001);

    // dupName_111_comparator_x(LOGICAL,1448)@21
    assign dupName_111_comparator_x_q = $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q == c_i32_1931221_q ? 1'b1 : 1'b0);

    // c_i64_46716401884667576321214(CONSTANT,245)
    assign c_i64_46716401884667576321214_q = $unsigned(64'b0100000011010101000000000000000000000000000000000000000000000000);

    // c_i32_1431220(CONSTANT,11)
    assign c_i32_1431220_q = $unsigned(32'b00000000000000000000000010001111);

    // dupName_110_comparator_x(LOGICAL,1447)@21
    assign dupName_110_comparator_x_q = $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q == c_i32_1431220_q ? 1'b1 : 1'b0);

    // c_i64_46705142885599150081213(CONSTANT,241)
    assign c_i64_46705142885599150081213_q = $unsigned(64'b0100000011010001000000000000000000000000000000000000000000000000);

    // c_i32_1421219(CONSTANT,10)
    assign c_i32_1421219_q = $unsigned(32'b00000000000000000000000010001110);

    // dupName_109_comparator_x(LOGICAL,1446)@21
    assign dupName_109_comparator_x_q = $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q == c_i32_1421219_q ? 1'b1 : 1'b0);

    // c_i64_46710772385133363201212(CONSTANT,243)
    assign c_i64_46710772385133363201212_q = $unsigned(64'b0100000011010011000000000000000000000000000000000000000000000000);

    // c_i32_1411218(CONSTANT,9)
    assign c_i32_1411218_q = $unsigned(32'b00000000000000000000000010001101);

    // dupName_108_comparator_x(LOGICAL,1445)@21
    assign dupName_108_comparator_x_q = $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q == c_i32_1411218_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609(SELECTOR,746)@21
    always @(dupName_108_comparator_x_q or c_i64_46710772385133363201212_q or dupName_109_comparator_x_q or c_i64_46705142885599150081213_q or dupName_110_comparator_x_q or c_i64_46716401884667576321214_q or dupName_111_comparator_x_q or c_i64_46707957635366256641215_q or dupName_112_comparator_x_q or c_i64_46702328135832043521216_q or dupName_113_comparator_x_q or c_i64_46713587134900469761217_q or i_acl_2353_v4l2_ctrl_get_name608_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = i_acl_2353_v4l2_ctrl_get_name608_q;
        if (dupName_113_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = c_i64_46713587134900469761217_q;
        end
        if (dupName_112_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = c_i64_46702328135832043521216_q;
        end
        if (dupName_111_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = c_i64_46707957635366256641215_q;
        end
        if (dupName_110_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = c_i64_46716401884667576321214_q;
        end
        if (dupName_109_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = c_i64_46705142885599150081213_q;
        end
        if (dupName_108_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q = c_i64_46710772385133363201212_q;
        end
    end

    // c_i32_379813_recast_x(CONSTANT,1259)
    assign c_i32_379813_recast_x_q = $unsigned(32'b00000000000000000000000101111011);

    // i_pivot505_v4l2_ctrl_get_name53(COMPARE,849)@21
    assign i_pivot505_v4l2_ctrl_get_name53_a = $unsigned({{2{redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q[31]}}, redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q});
    assign i_pivot505_v4l2_ctrl_get_name53_b = $unsigned({{2{c_i32_379813_recast_x_q[31]}}, c_i32_379813_recast_x_q});
    assign i_pivot505_v4l2_ctrl_get_name53_o = $unsigned($signed(i_pivot505_v4l2_ctrl_get_name53_a) - $signed(i_pivot505_v4l2_ctrl_get_name53_b));
    assign i_pivot505_v4l2_ctrl_get_name53_c[0] = i_pivot505_v4l2_ctrl_get_name53_o[33];

    // c_i32_378942_recast_x(CONSTANT,1258)
    assign c_i32_378942_recast_x_q = $unsigned(32'b00000000000000000000000101111010);

    // i_pivot491_v4l2_ctrl_get_name311(COMPARE,842)@21
    assign i_pivot491_v4l2_ctrl_get_name311_a = $unsigned({{2{redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q[31]}}, redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q});
    assign i_pivot491_v4l2_ctrl_get_name311_b = $unsigned({{2{c_i32_378942_recast_x_q[31]}}, c_i32_378942_recast_x_q});
    assign i_pivot491_v4l2_ctrl_get_name311_o = $unsigned($signed(i_pivot491_v4l2_ctrl_get_name311_a) - $signed(i_pivot491_v4l2_ctrl_get_name311_b));
    assign i_pivot491_v4l2_ctrl_get_name311_c[0] = i_pivot491_v4l2_ctrl_get_name311_o[33];

    // i_acl_2407_v4l2_ctrl_get_name610(LOGICAL,495)@21
    assign i_acl_2407_v4l2_ctrl_get_name610_q = i_pivot491_v4l2_ctrl_get_name311_c ^ i_pivot505_v4l2_ctrl_get_name53_c;

    // i_acl_2413_v4l2_ctrl_get_name611(MUX,496)@21
    assign i_acl_2413_v4l2_ctrl_get_name611_s = i_acl_2407_v4l2_ctrl_get_name610_q;
    always @(i_acl_2413_v4l2_ctrl_get_name611_s or i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q or c_i64_46719216634434682881224_q)
    begin
        unique case (i_acl_2413_v4l2_ctrl_get_name611_s)
            1'b0 : i_acl_2413_v4l2_ctrl_get_name611_q = i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3596_v4l2_ctrl_get_name609_q;
            1'b1 : i_acl_2413_v4l2_ctrl_get_name611_q = c_i64_46719216634434682881224_q;
            default : i_acl_2413_v4l2_ctrl_get_name611_q = 64'b0;
        endcase
    end

    // c_i32_377891_recast_x(CONSTANT,1257)
    assign c_i32_377891_recast_x_q = $unsigned(32'b00000000000000000000000101111001);

    // i_pivot493_v4l2_ctrl_get_name209(COMPARE,843)@21
    assign i_pivot493_v4l2_ctrl_get_name209_a = $unsigned({{2{redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q[31]}}, redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q});
    assign i_pivot493_v4l2_ctrl_get_name209_b = $unsigned({{2{c_i32_377891_recast_x_q[31]}}, c_i32_377891_recast_x_q});
    assign i_pivot493_v4l2_ctrl_get_name209_o = $unsigned($signed(i_pivot493_v4l2_ctrl_get_name209_a) - $signed(i_pivot493_v4l2_ctrl_get_name209_b));
    assign i_pivot493_v4l2_ctrl_get_name209_c[0] = i_pivot493_v4l2_ctrl_get_name209_o[33];

    // redist104_i_pivot495_v4l2_ctrl_get_name105_c_17(DELAY,1646)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist104_i_pivot495_v4l2_ctrl_get_name105_c_17 ( .xin(i_pivot495_v4l2_ctrl_get_name105_c), .xout(redist104_i_pivot495_v4l2_ctrl_get_name105_c_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2414_v4l2_ctrl_get_name612(LOGICAL,497)@21
    assign i_acl_2414_v4l2_ctrl_get_name612_q = redist104_i_pivot495_v4l2_ctrl_get_name105_c_17_q ^ i_pivot493_v4l2_ctrl_get_name209_c;

    // i_acl_2421_v4l2_ctrl_get_name613(MUX,498)@21 + 1
    assign i_acl_2421_v4l2_ctrl_get_name613_s = i_acl_2414_v4l2_ctrl_get_name612_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2421_v4l2_ctrl_get_name613_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2421_v4l2_ctrl_get_name613_s)
                1'b0 : i_acl_2421_v4l2_ctrl_get_name613_q <= i_acl_2413_v4l2_ctrl_get_name611_q;
                1'b1 : i_acl_2421_v4l2_ctrl_get_name613_q <= c_i64_46722031384201789441225_q;
                default : i_acl_2421_v4l2_ctrl_get_name613_q <= 64'b0;
            endcase
        end
    end

    // i_acl_2422_v4l2_ctrl_get_name614(LOGICAL,499)@21 + 1
    assign i_acl_2422_v4l2_ctrl_get_name614_qi = i_pivot493_v4l2_ctrl_get_name209_c ^ i_pivot491_v4l2_ctrl_get_name311_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2422_v4l2_ctrl_get_name614_delay ( .xin(i_acl_2422_v4l2_ctrl_get_name614_qi), .xout(i_acl_2422_v4l2_ctrl_get_name614_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2430_v4l2_ctrl_get_name615(MUX,500)@22
    assign i_acl_2430_v4l2_ctrl_get_name615_s = i_acl_2422_v4l2_ctrl_get_name614_q;
    always @(i_acl_2430_v4l2_ctrl_get_name615_s or i_acl_2421_v4l2_ctrl_get_name613_q or c_i64_46724846133968896001226_q)
    begin
        unique case (i_acl_2430_v4l2_ctrl_get_name615_s)
            1'b0 : i_acl_2430_v4l2_ctrl_get_name615_q = i_acl_2421_v4l2_ctrl_get_name613_q;
            1'b1 : i_acl_2430_v4l2_ctrl_get_name615_q = c_i64_46724846133968896001226_q;
            default : i_acl_2430_v4l2_ctrl_get_name615_q = 64'b0;
        endcase
    end

    // c_i32_131856_recast_x(CONSTANT,1152)
    assign c_i32_131856_recast_x_q = $unsigned(32'b00000000000000000000000010000011);

    // i_pivot5_v4l2_ctrl_get_name139(COMPARE,897)@21 + 1
    assign i_pivot5_v4l2_ctrl_get_name139_a = $unsigned({{2{redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q[31]}}, redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q});
    assign i_pivot5_v4l2_ctrl_get_name139_b = $unsigned({{2{c_i32_131856_recast_x_q[31]}}, c_i32_131856_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot5_v4l2_ctrl_get_name139_o <= 34'b0;
        end
        else
        begin
            i_pivot5_v4l2_ctrl_get_name139_o <= $unsigned($signed(i_pivot5_v4l2_ctrl_get_name139_a) - $signed(i_pivot5_v4l2_ctrl_get_name139_b));
        end
    end
    assign i_pivot5_v4l2_ctrl_get_name139_c[0] = i_pivot5_v4l2_ctrl_get_name139_o[33];

    // c_i32_130821_recast_x(CONSTANT,1151)
    assign c_i32_130821_recast_x_q = $unsigned(32'b00000000000000000000000010000010);

    // i_pivot7_v4l2_ctrl_get_name69(COMPARE,925)@21 + 1
    assign i_pivot7_v4l2_ctrl_get_name69_a = $unsigned({{2{redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q[31]}}, redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q});
    assign i_pivot7_v4l2_ctrl_get_name69_b = $unsigned({{2{c_i32_130821_recast_x_q[31]}}, c_i32_130821_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot7_v4l2_ctrl_get_name69_o <= 34'b0;
        end
        else
        begin
            i_pivot7_v4l2_ctrl_get_name69_o <= $unsigned($signed(i_pivot7_v4l2_ctrl_get_name69_a) - $signed(i_pivot7_v4l2_ctrl_get_name69_b));
        end
    end
    assign i_pivot7_v4l2_ctrl_get_name69_c[0] = i_pivot7_v4l2_ctrl_get_name69_o[33];

    // i_acl_2431_v4l2_ctrl_get_name616(LOGICAL,501)@22
    assign i_acl_2431_v4l2_ctrl_get_name616_q = i_pivot7_v4l2_ctrl_get_name69_c ^ i_pivot5_v4l2_ctrl_get_name139_c;

    // i_acl_2438_v4l2_ctrl_get_name617(MUX,502)@22
    assign i_acl_2438_v4l2_ctrl_get_name617_s = i_acl_2431_v4l2_ctrl_get_name616_q;
    always @(i_acl_2438_v4l2_ctrl_get_name617_s or i_acl_2430_v4l2_ctrl_get_name615_q or c_i64_46727660883736002561227_q)
    begin
        unique case (i_acl_2438_v4l2_ctrl_get_name617_s)
            1'b0 : i_acl_2438_v4l2_ctrl_get_name617_q = i_acl_2430_v4l2_ctrl_get_name615_q;
            1'b1 : i_acl_2438_v4l2_ctrl_get_name617_q = c_i64_46727660883736002561227_q;
            default : i_acl_2438_v4l2_ctrl_get_name617_q = 64'b0;
        endcase
    end

    // c_i32_128922_recast_x(CONSTANT,1149)
    assign c_i32_128922_recast_x_q = $unsigned(32'b00000000000000000000000010000000);

    // redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21(DELAY,1562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q <= '0;
        end
        else
        begin
            redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q <= $unsigned(redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q);
        end
    end

    // i_switchleaf_v4l2_ctrl_get_name271(LOGICAL,944)@22
    assign i_switchleaf_v4l2_ctrl_get_name271_q = $unsigned(redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q == c_i32_128922_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_2447_v4l2_ctrl_get_name618(MUX,503)@22
    assign i_acl_2447_v4l2_ctrl_get_name618_s = i_switchleaf_v4l2_ctrl_get_name271_q;
    always @(i_acl_2447_v4l2_ctrl_get_name618_s or i_acl_2438_v4l2_ctrl_get_name617_q or c_i64_46730475633503109121228_q)
    begin
        unique case (i_acl_2447_v4l2_ctrl_get_name618_s)
            1'b0 : i_acl_2447_v4l2_ctrl_get_name618_q = i_acl_2438_v4l2_ctrl_get_name617_q;
            1'b1 : i_acl_2447_v4l2_ctrl_get_name618_q = c_i64_46730475633503109121228_q;
            default : i_acl_2447_v4l2_ctrl_get_name618_q = 64'b0;
        endcase
    end

    // c_i32_129855_recast_x(CONSTANT,1150)
    assign c_i32_129855_recast_x_q = $unsigned(32'b00000000000000000000000010000001);

    // i_pivot_v4l2_ctrl_get_name137(COMPARE,927)@21 + 1
    assign i_pivot_v4l2_ctrl_get_name137_a = $unsigned({{2{redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q[31]}}, redist19_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_20_q});
    assign i_pivot_v4l2_ctrl_get_name137_b = $unsigned({{2{c_i32_129855_recast_x_q[31]}}, c_i32_129855_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot_v4l2_ctrl_get_name137_o <= 34'b0;
        end
        else
        begin
            i_pivot_v4l2_ctrl_get_name137_o <= $unsigned($signed(i_pivot_v4l2_ctrl_get_name137_a) - $signed(i_pivot_v4l2_ctrl_get_name137_b));
        end
    end
    assign i_pivot_v4l2_ctrl_get_name137_c[0] = i_pivot_v4l2_ctrl_get_name137_o[33];

    // i_acl_2448_v4l2_ctrl_get_name619(LOGICAL,504)@22
    assign i_acl_2448_v4l2_ctrl_get_name619_q = i_pivot_v4l2_ctrl_get_name137_c ^ i_pivot7_v4l2_ctrl_get_name69_c;

    // i_acl_2455_v4l2_ctrl_get_name620(MUX,505)@22
    assign i_acl_2455_v4l2_ctrl_get_name620_s = i_acl_2448_v4l2_ctrl_get_name619_q;
    always @(i_acl_2455_v4l2_ctrl_get_name620_s or i_acl_2447_v4l2_ctrl_get_name618_q or c_i64_46733290383270215681229_q)
    begin
        unique case (i_acl_2455_v4l2_ctrl_get_name620_s)
            1'b0 : i_acl_2455_v4l2_ctrl_get_name620_q = i_acl_2447_v4l2_ctrl_get_name618_q;
            1'b1 : i_acl_2455_v4l2_ctrl_get_name620_q = c_i64_46733290383270215681229_q;
            default : i_acl_2455_v4l2_ctrl_get_name620_q = 64'b0;
        endcase
    end

    // c_i32_1861230_recast_x(CONSTANT,1164)
    assign c_i32_1861230_recast_x_q = $unsigned(32'b00000000000000000000000010111010);

    // i_unnamed_v4l2_ctrl_get_name621(LOGICAL,954)@22
    assign i_unnamed_v4l2_ctrl_get_name621_q = $unsigned(redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q == c_i32_1861230_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_2463_v4l2_ctrl_get_name623(MUX,506)@22
    assign i_acl_2463_v4l2_ctrl_get_name623_s = i_unnamed_v4l2_ctrl_get_name621_q;
    always @(i_acl_2463_v4l2_ctrl_get_name623_s or i_acl_2455_v4l2_ctrl_get_name620_q or c_i64_46736105133037322241231_q)
    begin
        unique case (i_acl_2463_v4l2_ctrl_get_name623_s)
            1'b0 : i_acl_2463_v4l2_ctrl_get_name623_q = i_acl_2455_v4l2_ctrl_get_name620_q;
            1'b1 : i_acl_2463_v4l2_ctrl_get_name623_q = c_i64_46736105133037322241231_q;
            default : i_acl_2463_v4l2_ctrl_get_name623_q = 64'b0;
        endcase
    end

    // c_i32_365837_recast_x(CONSTANT,1245)
    assign c_i32_365837_recast_x_q = $unsigned(32'b00000000000000000000000101101101);

    // i_pivot469_v4l2_ctrl_get_name101(COMPARE,831)@22
    assign i_pivot469_v4l2_ctrl_get_name101_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot469_v4l2_ctrl_get_name101_b = $unsigned({{2{c_i32_365837_recast_x_q[31]}}, c_i32_365837_recast_x_q});
    assign i_pivot469_v4l2_ctrl_get_name101_o = $unsigned($signed(i_pivot469_v4l2_ctrl_get_name101_a) - $signed(i_pivot469_v4l2_ctrl_get_name101_b));
    assign i_pivot469_v4l2_ctrl_get_name101_c[0] = i_pivot469_v4l2_ctrl_get_name101_o[33];

    // c_i32_364886_recast_x(CONSTANT,1244)
    assign c_i32_364886_recast_x_q = $unsigned(32'b00000000000000000000000101101100);

    // i_pivot463_v4l2_ctrl_get_name199(COMPARE,828)@22
    assign i_pivot463_v4l2_ctrl_get_name199_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot463_v4l2_ctrl_get_name199_b = $unsigned({{2{c_i32_364886_recast_x_q[31]}}, c_i32_364886_recast_x_q});
    assign i_pivot463_v4l2_ctrl_get_name199_o = $unsigned($signed(i_pivot463_v4l2_ctrl_get_name199_a) - $signed(i_pivot463_v4l2_ctrl_get_name199_b));
    assign i_pivot463_v4l2_ctrl_get_name199_c[0] = i_pivot463_v4l2_ctrl_get_name199_o[33];

    // i_acl_2464_v4l2_ctrl_get_name624(LOGICAL,507)@22
    assign i_acl_2464_v4l2_ctrl_get_name624_q = i_pivot463_v4l2_ctrl_get_name199_c ^ i_pivot469_v4l2_ctrl_get_name101_c;

    // i_acl_2471_v4l2_ctrl_get_name625(MUX,508)@22
    assign i_acl_2471_v4l2_ctrl_get_name625_s = i_acl_2464_v4l2_ctrl_get_name624_q;
    always @(i_acl_2471_v4l2_ctrl_get_name625_s or i_acl_2463_v4l2_ctrl_get_name623_q or c_i64_46738919882804428801232_q)
    begin
        unique case (i_acl_2471_v4l2_ctrl_get_name625_s)
            1'b0 : i_acl_2471_v4l2_ctrl_get_name625_q = i_acl_2463_v4l2_ctrl_get_name623_q;
            1'b1 : i_acl_2471_v4l2_ctrl_get_name625_q = c_i64_46738919882804428801232_q;
            default : i_acl_2471_v4l2_ctrl_get_name625_q = 64'b0;
        endcase
    end

    // c_i32_363799_recast_x(CONSTANT,1243)
    assign c_i32_363799_recast_x_q = $unsigned(32'b00000000000000000000000101101011);

    // i_pivot483_v4l2_ctrl_get_name25(COMPARE,838)@22
    assign i_pivot483_v4l2_ctrl_get_name25_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot483_v4l2_ctrl_get_name25_b = $unsigned({{2{c_i32_363799_recast_x_q[31]}}, c_i32_363799_recast_x_q});
    assign i_pivot483_v4l2_ctrl_get_name25_o = $unsigned($signed(i_pivot483_v4l2_ctrl_get_name25_a) - $signed(i_pivot483_v4l2_ctrl_get_name25_b));
    assign i_pivot483_v4l2_ctrl_get_name25_c[0] = i_pivot483_v4l2_ctrl_get_name25_o[33];

    // i_acl_2474_v4l2_ctrl_get_name626(LOGICAL,509)@22
    assign i_acl_2474_v4l2_ctrl_get_name626_q = i_pivot483_v4l2_ctrl_get_name25_c ^ i_pivot463_v4l2_ctrl_get_name199_c;

    // i_acl_2479_v4l2_ctrl_get_name627(MUX,510)@22 + 1
    assign i_acl_2479_v4l2_ctrl_get_name627_s = i_acl_2474_v4l2_ctrl_get_name626_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2479_v4l2_ctrl_get_name627_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2479_v4l2_ctrl_get_name627_s)
                1'b0 : i_acl_2479_v4l2_ctrl_get_name627_q <= i_acl_2471_v4l2_ctrl_get_name625_q;
                1'b1 : i_acl_2479_v4l2_ctrl_get_name627_q <= c_i64_46741734632571535361233_q;
                default : i_acl_2479_v4l2_ctrl_get_name627_q <= 64'b0;
            endcase
        end
    end

    // redist84_i_pivot613_v4l2_ctrl_get_name129_c_18(DELAY,1626)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist84_i_pivot613_v4l2_ctrl_get_name129_c_18 ( .xin(i_pivot613_v4l2_ctrl_get_name129_c), .xout(redist84_i_pivot613_v4l2_ctrl_get_name129_c_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_436914_recast_x(CONSTANT,1316)
    assign c_i32_436914_recast_x_q = $unsigned(32'b00000000000000000000000110110100);

    // i_pivot607_v4l2_ctrl_get_name255(COMPARE,901)@22
    assign i_pivot607_v4l2_ctrl_get_name255_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot607_v4l2_ctrl_get_name255_b = $unsigned({{2{c_i32_436914_recast_x_q[31]}}, c_i32_436914_recast_x_q});
    assign i_pivot607_v4l2_ctrl_get_name255_o = $unsigned($signed(i_pivot607_v4l2_ctrl_get_name255_a) - $signed(i_pivot607_v4l2_ctrl_get_name255_b));
    assign i_pivot607_v4l2_ctrl_get_name255_c[0] = i_pivot607_v4l2_ctrl_get_name255_o[33];

    // i_acl_2480_v4l2_ctrl_get_name628(LOGICAL,511)@22 + 1
    assign i_acl_2480_v4l2_ctrl_get_name628_qi = i_pivot607_v4l2_ctrl_get_name255_c ^ redist84_i_pivot613_v4l2_ctrl_get_name129_c_18_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2480_v4l2_ctrl_get_name628_delay ( .xin(i_acl_2480_v4l2_ctrl_get_name628_qi), .xout(i_acl_2480_v4l2_ctrl_get_name628_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2487_v4l2_ctrl_get_name629(MUX,512)@23
    assign i_acl_2487_v4l2_ctrl_get_name629_s = i_acl_2480_v4l2_ctrl_get_name628_q;
    always @(i_acl_2487_v4l2_ctrl_get_name629_s or i_acl_2479_v4l2_ctrl_get_name627_q or c_i64_46744549382338641921234_q)
    begin
        unique case (i_acl_2487_v4l2_ctrl_get_name629_s)
            1'b0 : i_acl_2487_v4l2_ctrl_get_name629_q = i_acl_2479_v4l2_ctrl_get_name627_q;
            1'b1 : i_acl_2487_v4l2_ctrl_get_name629_q = c_i64_46744549382338641921234_q;
            default : i_acl_2487_v4l2_ctrl_get_name629_q = 64'b0;
        endcase
    end

    // c_i32_432850_recast_x(CONSTANT,1312)
    assign c_i32_432850_recast_x_q = $unsigned(32'b00000000000000000000000110110000);

    // i_pivot601_v4l2_ctrl_get_name127(COMPARE,898)@22 + 1
    assign i_pivot601_v4l2_ctrl_get_name127_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot601_v4l2_ctrl_get_name127_b = $unsigned({{2{c_i32_432850_recast_x_q[31]}}, c_i32_432850_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot601_v4l2_ctrl_get_name127_o <= 34'b0;
        end
        else
        begin
            i_pivot601_v4l2_ctrl_get_name127_o <= $unsigned($signed(i_pivot601_v4l2_ctrl_get_name127_a) - $signed(i_pivot601_v4l2_ctrl_get_name127_b));
        end
    end
    assign i_pivot601_v4l2_ctrl_get_name127_c[0] = i_pivot601_v4l2_ctrl_get_name127_o[33];

    // redist89_i_pivot595_v4l2_ctrl_get_name251_c_20(DELAY,1631)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist89_i_pivot595_v4l2_ctrl_get_name251_c_20 ( .xin(i_pivot595_v4l2_ctrl_get_name251_c), .xout(redist89_i_pivot595_v4l2_ctrl_get_name251_c_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2488_v4l2_ctrl_get_name630(LOGICAL,513)@23
    assign i_acl_2488_v4l2_ctrl_get_name630_q = redist89_i_pivot595_v4l2_ctrl_get_name251_c_20_q ^ i_pivot601_v4l2_ctrl_get_name127_c;

    // i_acl_2495_v4l2_ctrl_get_name631(MUX,514)@23
    assign i_acl_2495_v4l2_ctrl_get_name631_s = i_acl_2488_v4l2_ctrl_get_name630_q;
    always @(i_acl_2495_v4l2_ctrl_get_name631_s or i_acl_2487_v4l2_ctrl_get_name629_q or c_i64_46747364132105748481235_q)
    begin
        unique case (i_acl_2495_v4l2_ctrl_get_name631_s)
            1'b0 : i_acl_2495_v4l2_ctrl_get_name631_q = i_acl_2487_v4l2_ctrl_get_name629_q;
            1'b1 : i_acl_2495_v4l2_ctrl_get_name631_q = c_i64_46747364132105748481235_q;
            default : i_acl_2495_v4l2_ctrl_get_name631_q = 64'b0;
        endcase
    end

    // redist118_i_pivot3_v4l2_ctrl_get_name273_c_17(DELAY,1660)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist118_i_pivot3_v4l2_ctrl_get_name273_c_17 ( .xin(i_pivot3_v4l2_ctrl_get_name273_c), .xout(redist118_i_pivot3_v4l2_ctrl_get_name273_c_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2496_v4l2_ctrl_get_name632(LOGICAL,515)@22 + 1
    assign i_acl_2496_v4l2_ctrl_get_name632_qi = i_pivot5_v4l2_ctrl_get_name139_c ^ redist118_i_pivot3_v4l2_ctrl_get_name273_c_17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2496_v4l2_ctrl_get_name632_delay ( .xin(i_acl_2496_v4l2_ctrl_get_name632_qi), .xout(i_acl_2496_v4l2_ctrl_get_name632_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2504_v4l2_ctrl_get_name633(MUX,516)@23
    assign i_acl_2504_v4l2_ctrl_get_name633_s = i_acl_2496_v4l2_ctrl_get_name632_q;
    always @(i_acl_2504_v4l2_ctrl_get_name633_s or i_acl_2495_v4l2_ctrl_get_name631_q or c_i64_46750178881872855041236_q)
    begin
        unique case (i_acl_2504_v4l2_ctrl_get_name633_s)
            1'b0 : i_acl_2504_v4l2_ctrl_get_name633_q = i_acl_2495_v4l2_ctrl_get_name631_q;
            1'b1 : i_acl_2504_v4l2_ctrl_get_name633_q = c_i64_46750178881872855041236_q;
            default : i_acl_2504_v4l2_ctrl_get_name633_q = 64'b0;
        endcase
    end

    // c_i32_366887_recast_x(CONSTANT,1246)
    assign c_i32_366887_recast_x_q = $unsigned(32'b00000000000000000000000101101110);

    // i_pivot467_v4l2_ctrl_get_name201(COMPARE,830)@22 + 1
    assign i_pivot467_v4l2_ctrl_get_name201_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot467_v4l2_ctrl_get_name201_b = $unsigned({{2{c_i32_366887_recast_x_q[31]}}, c_i32_366887_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot467_v4l2_ctrl_get_name201_o <= 34'b0;
        end
        else
        begin
            i_pivot467_v4l2_ctrl_get_name201_o <= $unsigned($signed(i_pivot467_v4l2_ctrl_get_name201_a) - $signed(i_pivot467_v4l2_ctrl_get_name201_b));
        end
    end
    assign i_pivot467_v4l2_ctrl_get_name201_c[0] = i_pivot467_v4l2_ctrl_get_name201_o[33];

    // redist111_i_pivot469_v4l2_ctrl_get_name101_c_1(DELAY,1653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_i_pivot469_v4l2_ctrl_get_name101_c_1_q <= '0;
        end
        else
        begin
            redist111_i_pivot469_v4l2_ctrl_get_name101_c_1_q <= $unsigned(i_pivot469_v4l2_ctrl_get_name101_c);
        end
    end

    // i_acl_2505_v4l2_ctrl_get_name634(LOGICAL,517)@23
    assign i_acl_2505_v4l2_ctrl_get_name634_q = redist111_i_pivot469_v4l2_ctrl_get_name101_c_1_q ^ i_pivot467_v4l2_ctrl_get_name201_c;

    // i_acl_2512_v4l2_ctrl_get_name635(MUX,518)@23
    assign i_acl_2512_v4l2_ctrl_get_name635_s = i_acl_2505_v4l2_ctrl_get_name634_q;
    always @(i_acl_2512_v4l2_ctrl_get_name635_s or i_acl_2504_v4l2_ctrl_get_name633_q or c_i64_46752993631639961601237_q)
    begin
        unique case (i_acl_2512_v4l2_ctrl_get_name635_s)
            1'b0 : i_acl_2512_v4l2_ctrl_get_name635_q = i_acl_2504_v4l2_ctrl_get_name633_q;
            1'b1 : i_acl_2512_v4l2_ctrl_get_name635_q = c_i64_46752993631639961601237_q;
            default : i_acl_2512_v4l2_ctrl_get_name635_q = 64'b0;
        endcase
    end

    // redist106_i_pivot483_v4l2_ctrl_get_name25_c_1(DELAY,1648)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_i_pivot483_v4l2_ctrl_get_name25_c_1_q <= '0;
        end
        else
        begin
            redist106_i_pivot483_v4l2_ctrl_get_name25_c_1_q <= $unsigned(i_pivot483_v4l2_ctrl_get_name25_c);
        end
    end

    // c_i32_362938_recast_x(CONSTANT,1242)
    assign c_i32_362938_recast_x_q = $unsigned(32'b00000000000000000000000101101010);

    // i_pivot455_v4l2_ctrl_get_name303(COMPARE,824)@22 + 1
    assign i_pivot455_v4l2_ctrl_get_name303_a = $unsigned({{2{redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q[31]}}, redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q});
    assign i_pivot455_v4l2_ctrl_get_name303_b = $unsigned({{2{c_i32_362938_recast_x_q[31]}}, c_i32_362938_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot455_v4l2_ctrl_get_name303_o <= 34'b0;
        end
        else
        begin
            i_pivot455_v4l2_ctrl_get_name303_o <= $unsigned($signed(i_pivot455_v4l2_ctrl_get_name303_a) - $signed(i_pivot455_v4l2_ctrl_get_name303_b));
        end
    end
    assign i_pivot455_v4l2_ctrl_get_name303_c[0] = i_pivot455_v4l2_ctrl_get_name303_o[33];

    // i_acl_2516_v4l2_ctrl_get_name636(LOGICAL,519)@23
    assign i_acl_2516_v4l2_ctrl_get_name636_q = i_pivot455_v4l2_ctrl_get_name303_c ^ redist106_i_pivot483_v4l2_ctrl_get_name25_c_1_q;

    // i_acl_2521_v4l2_ctrl_get_name637(MUX,520)@23
    assign i_acl_2521_v4l2_ctrl_get_name637_s = i_acl_2516_v4l2_ctrl_get_name636_q;
    always @(i_acl_2521_v4l2_ctrl_get_name637_s or i_acl_2512_v4l2_ctrl_get_name635_q or c_i64_46755808381407068161238_q)
    begin
        unique case (i_acl_2521_v4l2_ctrl_get_name637_s)
            1'b0 : i_acl_2521_v4l2_ctrl_get_name637_q = i_acl_2512_v4l2_ctrl_get_name635_q;
            1'b1 : i_acl_2521_v4l2_ctrl_get_name637_q = c_i64_46755808381407068161238_q;
            default : i_acl_2521_v4l2_ctrl_get_name637_q = 64'b0;
        endcase
    end

    // c_i32_361885_recast_x(CONSTANT,1241)
    assign c_i32_361885_recast_x_q = $unsigned(32'b00000000000000000000000101101001);

    // redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22(DELAY,1563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q <= '0;
        end
        else
        begin
            redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q <= $unsigned(redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q);
        end
    end

    // i_pivot457_v4l2_ctrl_get_name197(COMPARE,825)@23
    assign i_pivot457_v4l2_ctrl_get_name197_a = $unsigned({{2{redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q[31]}}, redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q});
    assign i_pivot457_v4l2_ctrl_get_name197_b = $unsigned({{2{c_i32_361885_recast_x_q[31]}}, c_i32_361885_recast_x_q});
    assign i_pivot457_v4l2_ctrl_get_name197_o = $unsigned($signed(i_pivot457_v4l2_ctrl_get_name197_a) - $signed(i_pivot457_v4l2_ctrl_get_name197_b));
    assign i_pivot457_v4l2_ctrl_get_name197_c[0] = i_pivot457_v4l2_ctrl_get_name197_o[33];

    // i_acl_2522_v4l2_ctrl_get_name638(LOGICAL,521)@23
    assign i_acl_2522_v4l2_ctrl_get_name638_q = i_pivot457_v4l2_ctrl_get_name197_c ^ i_pivot455_v4l2_ctrl_get_name303_c;

    // i_acl_2530_v4l2_ctrl_get_name639(MUX,522)@23
    assign i_acl_2530_v4l2_ctrl_get_name639_s = i_acl_2522_v4l2_ctrl_get_name638_q;
    always @(i_acl_2530_v4l2_ctrl_get_name639_s or i_acl_2521_v4l2_ctrl_get_name637_q or c_i64_46758623131174174721239_q)
    begin
        unique case (i_acl_2530_v4l2_ctrl_get_name639_s)
            1'b0 : i_acl_2530_v4l2_ctrl_get_name639_q = i_acl_2521_v4l2_ctrl_get_name637_q;
            1'b1 : i_acl_2530_v4l2_ctrl_get_name639_q = c_i64_46758623131174174721239_q;
            default : i_acl_2530_v4l2_ctrl_get_name639_q = 64'b0;
        endcase
    end

    // redist101_i_pivot527_v4l2_ctrl_get_name223_c_3(DELAY,1643)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_delay_0 <= '0;
            redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_q <= '0;
        end
        else
        begin
            redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_delay_0 <= $unsigned(i_pivot527_v4l2_ctrl_get_name223_c);
            redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_q <= redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_delay_0;
        end
    end

    // c_i32_394794_recast_x(CONSTANT,1274)
    assign c_i32_394794_recast_x_q = $unsigned(32'b00000000000000000000000110001010);

    // i_pivot567_v4l2_ctrl_get_name15(COMPARE,880)@23
    assign i_pivot567_v4l2_ctrl_get_name15_a = $unsigned({{2{redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q[31]}}, redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q});
    assign i_pivot567_v4l2_ctrl_get_name15_b = $unsigned({{2{c_i32_394794_recast_x_q[31]}}, c_i32_394794_recast_x_q});
    assign i_pivot567_v4l2_ctrl_get_name15_o = $unsigned($signed(i_pivot567_v4l2_ctrl_get_name15_a) - $signed(i_pivot567_v4l2_ctrl_get_name15_b));
    assign i_pivot567_v4l2_ctrl_get_name15_c[0] = i_pivot567_v4l2_ctrl_get_name15_o[33];

    // i_acl_2534_v4l2_ctrl_get_name640(LOGICAL,523)@23
    assign i_acl_2534_v4l2_ctrl_get_name640_q = i_pivot567_v4l2_ctrl_get_name15_c ^ redist101_i_pivot527_v4l2_ctrl_get_name223_c_3_q;

    // i_acl_2538_v4l2_ctrl_get_name641(MUX,524)@23 + 1
    assign i_acl_2538_v4l2_ctrl_get_name641_s = i_acl_2534_v4l2_ctrl_get_name640_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2538_v4l2_ctrl_get_name641_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2538_v4l2_ctrl_get_name641_s)
                1'b0 : i_acl_2538_v4l2_ctrl_get_name641_q <= i_acl_2530_v4l2_ctrl_get_name639_q;
                1'b1 : i_acl_2538_v4l2_ctrl_get_name641_q <= c_i64_46761437880941281281240_q;
                default : i_acl_2538_v4l2_ctrl_get_name641_q <= 64'b0;
            endcase
        end
    end

    // c_i32_1501241_recast_x(CONSTANT,1160)
    assign c_i32_1501241_recast_x_q = $unsigned(32'b00000000000000000000000010010110);

    // i_unnamed_v4l2_ctrl_get_name642(LOGICAL,955)@23 + 1
    assign i_unnamed_v4l2_ctrl_get_name642_qi = $unsigned(redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q == c_i32_1501241_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_v4l2_ctrl_get_name642_delay ( .xin(i_unnamed_v4l2_ctrl_get_name642_qi), .xout(i_unnamed_v4l2_ctrl_get_name642_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2546_v4l2_ctrl_get_name644(MUX,525)@24
    assign i_acl_2546_v4l2_ctrl_get_name644_s = i_unnamed_v4l2_ctrl_get_name642_q;
    always @(i_acl_2546_v4l2_ctrl_get_name644_s or i_acl_2538_v4l2_ctrl_get_name641_q or c_i64_46764252630708387841242_q)
    begin
        unique case (i_acl_2546_v4l2_ctrl_get_name644_s)
            1'b0 : i_acl_2546_v4l2_ctrl_get_name644_q = i_acl_2538_v4l2_ctrl_get_name641_q;
            1'b1 : i_acl_2546_v4l2_ctrl_get_name644_q = c_i64_46764252630708387841242_q;
            default : i_acl_2546_v4l2_ctrl_get_name644_q = 64'b0;
        endcase
    end

    // i_switchleaf637_v4l2_ctrl_get_name347(LOGICAL,943)@22
    assign i_switchleaf637_v4l2_ctrl_get_name347_q = $unsigned(redist20_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_21_q == c_i32_455959_recast_x_q ? 1'b1 : 1'b0);

    // redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2(DELAY,1617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_delay_0 <= '0;
            redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_q <= '0;
        end
        else
        begin
            redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_delay_0 <= $unsigned(i_switchleaf637_v4l2_ctrl_get_name347_q);
            redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_q <= redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_delay_0;
        end
    end

    // i_acl_2556_v4l2_ctrl_get_name645(MUX,526)@24
    assign i_acl_2556_v4l2_ctrl_get_name645_s = redist75_i_switchleaf637_v4l2_ctrl_get_name347_q_2_q;
    always @(i_acl_2556_v4l2_ctrl_get_name645_s or i_acl_2546_v4l2_ctrl_get_name644_q or c_i64_46767067380475494401243_q)
    begin
        unique case (i_acl_2556_v4l2_ctrl_get_name645_s)
            1'b0 : i_acl_2556_v4l2_ctrl_get_name645_q = i_acl_2546_v4l2_ctrl_get_name644_q;
            1'b1 : i_acl_2556_v4l2_ctrl_get_name645_q = c_i64_46767067380475494401243_q;
            default : i_acl_2556_v4l2_ctrl_get_name645_q = 64'b0;
        endcase
    end

    // c_i32_435795_recast_x(CONSTANT,1315)
    assign c_i32_435795_recast_x_q = $unsigned(32'b00000000000000000000000110110011);

    // i_pivot649_v4l2_ctrl_get_name17(COMPARE,921)@23
    assign i_pivot649_v4l2_ctrl_get_name17_a = $unsigned({{2{redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q[31]}}, redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q});
    assign i_pivot649_v4l2_ctrl_get_name17_b = $unsigned({{2{c_i32_435795_recast_x_q[31]}}, c_i32_435795_recast_x_q});
    assign i_pivot649_v4l2_ctrl_get_name17_o = $unsigned($signed(i_pivot649_v4l2_ctrl_get_name17_a) - $signed(i_pivot649_v4l2_ctrl_get_name17_b));
    assign i_pivot649_v4l2_ctrl_get_name17_c[0] = i_pivot649_v4l2_ctrl_get_name17_o[33];

    // c_i32_434954_recast_x(CONSTANT,1314)
    assign c_i32_434954_recast_x_q = $unsigned(32'b00000000000000000000000110110010);

    // i_pivot597_v4l2_ctrl_get_name335(COMPARE,895)@23
    assign i_pivot597_v4l2_ctrl_get_name335_a = $unsigned({{2{redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q[31]}}, redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q});
    assign i_pivot597_v4l2_ctrl_get_name335_b = $unsigned({{2{c_i32_434954_recast_x_q[31]}}, c_i32_434954_recast_x_q});
    assign i_pivot597_v4l2_ctrl_get_name335_o = $unsigned($signed(i_pivot597_v4l2_ctrl_get_name335_a) - $signed(i_pivot597_v4l2_ctrl_get_name335_b));
    assign i_pivot597_v4l2_ctrl_get_name335_c[0] = i_pivot597_v4l2_ctrl_get_name335_o[33];

    // i_acl_2561_v4l2_ctrl_get_name646(LOGICAL,527)@23 + 1
    assign i_acl_2561_v4l2_ctrl_get_name646_qi = i_pivot597_v4l2_ctrl_get_name335_c ^ i_pivot649_v4l2_ctrl_get_name17_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2561_v4l2_ctrl_get_name646_delay ( .xin(i_acl_2561_v4l2_ctrl_get_name646_qi), .xout(i_acl_2561_v4l2_ctrl_get_name646_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2565_v4l2_ctrl_get_name647(MUX,528)@24
    assign i_acl_2565_v4l2_ctrl_get_name647_s = i_acl_2561_v4l2_ctrl_get_name646_q;
    always @(i_acl_2565_v4l2_ctrl_get_name647_s or i_acl_2556_v4l2_ctrl_get_name645_q or c_i64_46769882130242600961244_q)
    begin
        unique case (i_acl_2565_v4l2_ctrl_get_name647_s)
            1'b0 : i_acl_2565_v4l2_ctrl_get_name647_q = i_acl_2556_v4l2_ctrl_get_name645_q;
            1'b1 : i_acl_2565_v4l2_ctrl_get_name647_q = c_i64_46769882130242600961244_q;
            default : i_acl_2565_v4l2_ctrl_get_name647_q = 64'b0;
        endcase
    end

    // c_i32_433913_recast_x(CONSTANT,1313)
    assign c_i32_433913_recast_x_q = $unsigned(32'b00000000000000000000000110110001);

    // i_pivot599_v4l2_ctrl_get_name253(COMPARE,896)@23
    assign i_pivot599_v4l2_ctrl_get_name253_a = $unsigned({{2{redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q[31]}}, redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q});
    assign i_pivot599_v4l2_ctrl_get_name253_b = $unsigned({{2{c_i32_433913_recast_x_q[31]}}, c_i32_433913_recast_x_q});
    assign i_pivot599_v4l2_ctrl_get_name253_o = $unsigned($signed(i_pivot599_v4l2_ctrl_get_name253_a) - $signed(i_pivot599_v4l2_ctrl_get_name253_b));
    assign i_pivot599_v4l2_ctrl_get_name253_c[0] = i_pivot599_v4l2_ctrl_get_name253_o[33];

    // i_acl_2566_v4l2_ctrl_get_name648(LOGICAL,529)@23 + 1
    assign i_acl_2566_v4l2_ctrl_get_name648_qi = i_pivot601_v4l2_ctrl_get_name127_c ^ i_pivot599_v4l2_ctrl_get_name253_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2566_v4l2_ctrl_get_name648_delay ( .xin(i_acl_2566_v4l2_ctrl_get_name648_qi), .xout(i_acl_2566_v4l2_ctrl_get_name648_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2573_v4l2_ctrl_get_name649(MUX,530)@24
    assign i_acl_2573_v4l2_ctrl_get_name649_s = i_acl_2566_v4l2_ctrl_get_name648_q;
    always @(i_acl_2573_v4l2_ctrl_get_name649_s or i_acl_2565_v4l2_ctrl_get_name647_q or c_i64_46772696880009707521245_q)
    begin
        unique case (i_acl_2573_v4l2_ctrl_get_name649_s)
            1'b0 : i_acl_2573_v4l2_ctrl_get_name649_q = i_acl_2565_v4l2_ctrl_get_name647_q;
            1'b1 : i_acl_2573_v4l2_ctrl_get_name649_q = c_i64_46772696880009707521245_q;
            default : i_acl_2573_v4l2_ctrl_get_name649_q = 64'b0;
        endcase
    end

    // i_acl_2574_v4l2_ctrl_get_name650(LOGICAL,531)@23 + 1
    assign i_acl_2574_v4l2_ctrl_get_name650_qi = i_pivot599_v4l2_ctrl_get_name253_c ^ i_pivot597_v4l2_ctrl_get_name335_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2574_v4l2_ctrl_get_name650_delay ( .xin(i_acl_2574_v4l2_ctrl_get_name650_qi), .xout(i_acl_2574_v4l2_ctrl_get_name650_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2582_v4l2_ctrl_get_name651(MUX,532)@24
    assign i_acl_2582_v4l2_ctrl_get_name651_s = i_acl_2574_v4l2_ctrl_get_name650_q;
    always @(i_acl_2582_v4l2_ctrl_get_name651_s or i_acl_2573_v4l2_ctrl_get_name649_q or c_i64_46775511629776814081246_q)
    begin
        unique case (i_acl_2582_v4l2_ctrl_get_name651_s)
            1'b0 : i_acl_2582_v4l2_ctrl_get_name651_q = i_acl_2573_v4l2_ctrl_get_name649_q;
            1'b1 : i_acl_2582_v4l2_ctrl_get_name651_q = c_i64_46775511629776814081246_q;
            default : i_acl_2582_v4l2_ctrl_get_name651_q = 64'b0;
        endcase
    end

    // redist86_i_pivot607_v4l2_ctrl_get_name255_c_1(DELAY,1628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_pivot607_v4l2_ctrl_get_name255_c_1_q <= '0;
        end
        else
        begin
            redist86_i_pivot607_v4l2_ctrl_get_name255_c_1_q <= $unsigned(i_pivot607_v4l2_ctrl_get_name255_c);
        end
    end

    // i_acl_2586_v4l2_ctrl_get_name652(LOGICAL,533)@23 + 1
    assign i_acl_2586_v4l2_ctrl_get_name652_qi = i_pivot649_v4l2_ctrl_get_name17_c ^ redist86_i_pivot607_v4l2_ctrl_get_name255_c_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2586_v4l2_ctrl_get_name652_delay ( .xin(i_acl_2586_v4l2_ctrl_get_name652_qi), .xout(i_acl_2586_v4l2_ctrl_get_name652_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2590_v4l2_ctrl_get_name653(MUX,534)@24
    assign i_acl_2590_v4l2_ctrl_get_name653_s = i_acl_2586_v4l2_ctrl_get_name652_q;
    always @(i_acl_2590_v4l2_ctrl_get_name653_s or i_acl_2582_v4l2_ctrl_get_name651_q or c_i64_46778326379543920641247_q)
    begin
        unique case (i_acl_2590_v4l2_ctrl_get_name653_s)
            1'b0 : i_acl_2590_v4l2_ctrl_get_name653_q = i_acl_2582_v4l2_ctrl_get_name651_q;
            1'b1 : i_acl_2590_v4l2_ctrl_get_name653_q = c_i64_46778326379543920641247_q;
            default : i_acl_2590_v4l2_ctrl_get_name653_q = 64'b0;
        endcase
    end

    // c_i32_1921248_recast_x(CONSTANT,1167)
    assign c_i32_1921248_recast_x_q = $unsigned(32'b00000000000000000000000011000000);

    // redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23(DELAY,1564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q <= '0;
        end
        else
        begin
            redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q <= $unsigned(redist21_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_22_q);
        end
    end

    // i_unnamed_v4l2_ctrl_get_name654(LOGICAL,956)@24
    assign i_unnamed_v4l2_ctrl_get_name654_q = $unsigned(redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q == c_i32_1921248_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_2599_v4l2_ctrl_get_name656(MUX,535)@24 + 1
    assign i_acl_2599_v4l2_ctrl_get_name656_s = i_unnamed_v4l2_ctrl_get_name654_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2599_v4l2_ctrl_get_name656_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2599_v4l2_ctrl_get_name656_s)
                1'b0 : i_acl_2599_v4l2_ctrl_get_name656_q <= i_acl_2590_v4l2_ctrl_get_name653_q;
                1'b1 : i_acl_2599_v4l2_ctrl_get_name656_q <= c_i64_46781141129311027201249_q;
                default : i_acl_2599_v4l2_ctrl_get_name656_q <= 64'b0;
            endcase
        end
    end

    // c_i32_1401250_recast_x(CONSTANT,1157)
    assign c_i32_1401250_recast_x_q = $unsigned(32'b00000000000000000000000010001100);

    // i_unnamed_v4l2_ctrl_get_name657(LOGICAL,957)@24 + 1
    assign i_unnamed_v4l2_ctrl_get_name657_qi = $unsigned(redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q == c_i32_1401250_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_v4l2_ctrl_get_name657_delay ( .xin(i_unnamed_v4l2_ctrl_get_name657_qi), .xout(i_unnamed_v4l2_ctrl_get_name657_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2607_v4l2_ctrl_get_name659(MUX,536)@25
    assign i_acl_2607_v4l2_ctrl_get_name659_s = i_unnamed_v4l2_ctrl_get_name657_q;
    always @(i_acl_2607_v4l2_ctrl_get_name659_s or i_acl_2599_v4l2_ctrl_get_name656_q or c_i64_46783955879078133761251_q)
    begin
        unique case (i_acl_2607_v4l2_ctrl_get_name659_s)
            1'b0 : i_acl_2607_v4l2_ctrl_get_name659_q = i_acl_2599_v4l2_ctrl_get_name656_q;
            1'b1 : i_acl_2607_v4l2_ctrl_get_name659_q = c_i64_46783955879078133761251_q;
            default : i_acl_2607_v4l2_ctrl_get_name659_q = 64'b0;
        endcase
    end

    // c_i32_380892_recast_x(CONSTANT,1260)
    assign c_i32_380892_recast_x_q = $unsigned(32'b00000000000000000000000101111100);

    // i_pivot497_v4l2_ctrl_get_name211(COMPARE,845)@24 + 1
    assign i_pivot497_v4l2_ctrl_get_name211_a = $unsigned({{2{redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q[31]}}, redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q});
    assign i_pivot497_v4l2_ctrl_get_name211_b = $unsigned({{2{c_i32_380892_recast_x_q[31]}}, c_i32_380892_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_pivot497_v4l2_ctrl_get_name211_o <= 34'b0;
        end
        else
        begin
            i_pivot497_v4l2_ctrl_get_name211_o <= $unsigned($signed(i_pivot497_v4l2_ctrl_get_name211_a) - $signed(i_pivot497_v4l2_ctrl_get_name211_b));
        end
    end
    assign i_pivot497_v4l2_ctrl_get_name211_c[0] = i_pivot497_v4l2_ctrl_get_name211_o[33];

    // redist102_i_pivot505_v4l2_ctrl_get_name53_c_4(DELAY,1644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_0 <= '0;
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_1 <= '0;
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_2 <= '0;
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_q <= '0;
        end
        else
        begin
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_0 <= $unsigned(i_pivot505_v4l2_ctrl_get_name53_c);
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_1 <= redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_0;
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_2 <= redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_1;
            redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_q <= redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_delay_2;
        end
    end

    // i_acl_2609_v4l2_ctrl_get_name660(LOGICAL,537)@25
    assign i_acl_2609_v4l2_ctrl_get_name660_q = redist102_i_pivot505_v4l2_ctrl_get_name53_c_4_q ^ i_pivot497_v4l2_ctrl_get_name211_c;

    // i_acl_2615_v4l2_ctrl_get_name661(MUX,538)@25
    assign i_acl_2615_v4l2_ctrl_get_name661_s = i_acl_2609_v4l2_ctrl_get_name660_q;
    always @(i_acl_2615_v4l2_ctrl_get_name661_s or i_acl_2607_v4l2_ctrl_get_name659_q or c_i64_46786770628845240321252_q)
    begin
        unique case (i_acl_2615_v4l2_ctrl_get_name661_s)
            1'b0 : i_acl_2615_v4l2_ctrl_get_name661_q = i_acl_2607_v4l2_ctrl_get_name659_q;
            1'b1 : i_acl_2615_v4l2_ctrl_get_name661_q = c_i64_46786770628845240321252_q;
            default : i_acl_2615_v4l2_ctrl_get_name661_q = 64'b0;
        endcase
    end

    // c_i64_46826177125584732161269(CONSTANT,284)
    assign c_i64_46826177125584732161269_q = $unsigned(64'b0100000011111100000000000000000000000000000000000000000000000000);

    // redist51_dupName_10_comparator_x_q_10(DELAY,1593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_dupName_10_comparator_x_q_10_delay_0 <= '0;
            redist51_dupName_10_comparator_x_q_10_delay_1 <= '0;
            redist51_dupName_10_comparator_x_q_10_delay_2 <= '0;
            redist51_dupName_10_comparator_x_q_10_delay_3 <= '0;
            redist51_dupName_10_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist51_dupName_10_comparator_x_q_10_delay_0 <= $unsigned(redist50_dupName_10_comparator_x_q_5_q);
            redist51_dupName_10_comparator_x_q_10_delay_1 <= redist51_dupName_10_comparator_x_q_10_delay_0;
            redist51_dupName_10_comparator_x_q_10_delay_2 <= redist51_dupName_10_comparator_x_q_10_delay_1;
            redist51_dupName_10_comparator_x_q_10_delay_3 <= redist51_dupName_10_comparator_x_q_10_delay_2;
            redist51_dupName_10_comparator_x_q_10_q <= redist51_dupName_10_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46823362375817625601268(CONSTANT,283)
    assign c_i64_46823362375817625601268_q = $unsigned(64'b0100000011111011000000000000000000000000000000000000000000000000);

    // redist55_dupName_9_comparator_x_q_10(DELAY,1597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_dupName_9_comparator_x_q_10_delay_0 <= '0;
            redist55_dupName_9_comparator_x_q_10_delay_1 <= '0;
            redist55_dupName_9_comparator_x_q_10_delay_2 <= '0;
            redist55_dupName_9_comparator_x_q_10_delay_3 <= '0;
            redist55_dupName_9_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist55_dupName_9_comparator_x_q_10_delay_0 <= $unsigned(redist54_dupName_9_comparator_x_q_5_q);
            redist55_dupName_9_comparator_x_q_10_delay_1 <= redist55_dupName_9_comparator_x_q_10_delay_0;
            redist55_dupName_9_comparator_x_q_10_delay_2 <= redist55_dupName_9_comparator_x_q_10_delay_1;
            redist55_dupName_9_comparator_x_q_10_delay_3 <= redist55_dupName_9_comparator_x_q_10_delay_2;
            redist55_dupName_9_comparator_x_q_10_q <= redist55_dupName_9_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46806473877214986241267(CONSTANT,277)
    assign c_i64_46806473877214986241267_q = $unsigned(64'b0100000011110101000000000000000000000000000000000000000000000000);

    // redist59_dupName_8_comparator_x_q_10(DELAY,1601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_dupName_8_comparator_x_q_10_delay_0 <= '0;
            redist59_dupName_8_comparator_x_q_10_delay_1 <= '0;
            redist59_dupName_8_comparator_x_q_10_delay_2 <= '0;
            redist59_dupName_8_comparator_x_q_10_delay_3 <= '0;
            redist59_dupName_8_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist59_dupName_8_comparator_x_q_10_delay_0 <= $unsigned(redist58_dupName_8_comparator_x_q_5_q);
            redist59_dupName_8_comparator_x_q_10_delay_1 <= redist59_dupName_8_comparator_x_q_10_delay_0;
            redist59_dupName_8_comparator_x_q_10_delay_2 <= redist59_dupName_8_comparator_x_q_10_delay_1;
            redist59_dupName_8_comparator_x_q_10_delay_3 <= redist59_dupName_8_comparator_x_q_10_delay_2;
            redist59_dupName_8_comparator_x_q_10_q <= redist59_dupName_8_comparator_x_q_10_delay_3;
        end
    end

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664(SELECTOR,732)@25
    always @(redist59_dupName_8_comparator_x_q_10_q or c_i64_46806473877214986241267_q or redist55_dupName_9_comparator_x_q_10_q or c_i64_46823362375817625601268_q or redist51_dupName_10_comparator_x_q_10_q or c_i64_46826177125584732161269_q or i_acl_2615_v4l2_ctrl_get_name661_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q = i_acl_2615_v4l2_ctrl_get_name661_q;
        if (redist51_dupName_10_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q = c_i64_46826177125584732161269_q;
        end
        if (redist55_dupName_9_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q = c_i64_46823362375817625601268_q;
        end
        if (redist59_dupName_8_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q = c_i64_46806473877214986241267_q;
        end
    end

    // dupName_130_comparator_x(LOGICAL,1467)@16 + 1
    assign dupName_130_comparator_x_qi = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_61081_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_130_comparator_x_delay ( .xin(dupName_130_comparator_x_qi), .xout(dupName_130_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_dupName_130_comparator_x_q_9(DELAY,1574)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_dupName_130_comparator_x_q_9 ( .xin(dupName_130_comparator_x_q), .xout(redist32_dupName_130_comparator_x_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46809288626982092801265(CONSTANT,278)
    assign c_i64_46809288626982092801265_q = $unsigned(64'b0100000011110110000000000000000000000000000000000000000000000000);

    // redist63_dupName_7_comparator_x_q_10(DELAY,1605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_dupName_7_comparator_x_q_10_delay_0 <= '0;
            redist63_dupName_7_comparator_x_q_10_delay_1 <= '0;
            redist63_dupName_7_comparator_x_q_10_delay_2 <= '0;
            redist63_dupName_7_comparator_x_q_10_delay_3 <= '0;
            redist63_dupName_7_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist63_dupName_7_comparator_x_q_10_delay_0 <= $unsigned(redist62_dupName_7_comparator_x_q_5_q);
            redist63_dupName_7_comparator_x_q_10_delay_1 <= redist63_dupName_7_comparator_x_q_10_delay_0;
            redist63_dupName_7_comparator_x_q_10_delay_2 <= redist63_dupName_7_comparator_x_q_10_delay_1;
            redist63_dupName_7_comparator_x_q_10_delay_3 <= redist63_dupName_7_comparator_x_q_10_delay_2;
            redist63_dupName_7_comparator_x_q_10_q <= redist63_dupName_7_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46789585378612346881264(CONSTANT,271)
    assign c_i64_46789585378612346881264_q = $unsigned(64'b0100000011101111000000000000000000000000000000000000000000000000);

    // redist67_dupName_6_comparator_x_q_10(DELAY,1609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_dupName_6_comparator_x_q_10_delay_0 <= '0;
            redist67_dupName_6_comparator_x_q_10_delay_1 <= '0;
            redist67_dupName_6_comparator_x_q_10_delay_2 <= '0;
            redist67_dupName_6_comparator_x_q_10_delay_3 <= '0;
            redist67_dupName_6_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist67_dupName_6_comparator_x_q_10_delay_0 <= $unsigned(redist66_dupName_6_comparator_x_q_5_q);
            redist67_dupName_6_comparator_x_q_10_delay_1 <= redist67_dupName_6_comparator_x_q_10_delay_0;
            redist67_dupName_6_comparator_x_q_10_delay_2 <= redist67_dupName_6_comparator_x_q_10_delay_1;
            redist67_dupName_6_comparator_x_q_10_delay_3 <= redist67_dupName_6_comparator_x_q_10_delay_2;
            redist67_dupName_6_comparator_x_q_10_q <= redist67_dupName_6_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46812103376749199361263(CONSTANT,279)
    assign c_i64_46812103376749199361263_q = $unsigned(64'b0100000011110111000000000000000000000000000000000000000000000000);

    // redist71_dupName_5_comparator_x_q_10(DELAY,1613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_dupName_5_comparator_x_q_10_delay_0 <= '0;
            redist71_dupName_5_comparator_x_q_10_delay_1 <= '0;
            redist71_dupName_5_comparator_x_q_10_delay_2 <= '0;
            redist71_dupName_5_comparator_x_q_10_delay_3 <= '0;
            redist71_dupName_5_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist71_dupName_5_comparator_x_q_10_delay_0 <= $unsigned(redist70_dupName_5_comparator_x_q_5_q);
            redist71_dupName_5_comparator_x_q_10_delay_1 <= redist71_dupName_5_comparator_x_q_10_delay_0;
            redist71_dupName_5_comparator_x_q_10_delay_2 <= redist71_dupName_5_comparator_x_q_10_delay_1;
            redist71_dupName_5_comparator_x_q_10_delay_3 <= redist71_dupName_5_comparator_x_q_10_delay_2;
            redist71_dupName_5_comparator_x_q_10_q <= redist71_dupName_5_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46803659127447879681262(CONSTANT,276)
    assign c_i64_46803659127447879681262_q = $unsigned(64'b0100000011110100000000000000000000000000000000000000000000000000);

    // redist37_dupName_21_comparator_x_q_10(DELAY,1579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_dupName_21_comparator_x_q_10_delay_0 <= '0;
            redist37_dupName_21_comparator_x_q_10_delay_1 <= '0;
            redist37_dupName_21_comparator_x_q_10_delay_2 <= '0;
            redist37_dupName_21_comparator_x_q_10_delay_3 <= '0;
            redist37_dupName_21_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist37_dupName_21_comparator_x_q_10_delay_0 <= $unsigned(redist36_dupName_21_comparator_x_q_5_q);
            redist37_dupName_21_comparator_x_q_10_delay_1 <= redist37_dupName_21_comparator_x_q_10_delay_0;
            redist37_dupName_21_comparator_x_q_10_delay_2 <= redist37_dupName_21_comparator_x_q_10_delay_1;
            redist37_dupName_21_comparator_x_q_10_delay_3 <= redist37_dupName_21_comparator_x_q_10_delay_2;
            redist37_dupName_21_comparator_x_q_10_q <= redist37_dupName_21_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46820547626050519041261(CONSTANT,282)
    assign c_i64_46820547626050519041261_q = $unsigned(64'b0100000011111010000000000000000000000000000000000000000000000000);

    // redist47_dupName_11_comparator_x_q_10(DELAY,1589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_dupName_11_comparator_x_q_10_delay_0 <= '0;
            redist47_dupName_11_comparator_x_q_10_delay_1 <= '0;
            redist47_dupName_11_comparator_x_q_10_delay_2 <= '0;
            redist47_dupName_11_comparator_x_q_10_delay_3 <= '0;
            redist47_dupName_11_comparator_x_q_10_q <= '0;
        end
        else
        begin
            redist47_dupName_11_comparator_x_q_10_delay_0 <= $unsigned(redist46_dupName_11_comparator_x_q_5_q);
            redist47_dupName_11_comparator_x_q_10_delay_1 <= redist47_dupName_11_comparator_x_q_10_delay_0;
            redist47_dupName_11_comparator_x_q_10_delay_2 <= redist47_dupName_11_comparator_x_q_10_delay_1;
            redist47_dupName_11_comparator_x_q_10_delay_3 <= redist47_dupName_11_comparator_x_q_10_delay_2;
            redist47_dupName_11_comparator_x_q_10_q <= redist47_dupName_11_comparator_x_q_10_delay_3;
        end
    end

    // c_i64_46792400128379453441260(CONSTANT,272)
    assign c_i64_46792400128379453441260_q = $unsigned(64'b0100000011110000000000000000000000000000000000000000000000000000);

    // c_i64_46798029627913666561259(CONSTANT,274)
    assign c_i64_46798029627913666561259_q = $unsigned(64'b0100000011110010000000000000000000000000000000000000000000000000);

    // c_i64_46795214878146560001258(CONSTANT,273)
    assign c_i64_46795214878146560001258_q = $unsigned(64'b0100000011110001000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663(SELECTOR,756)@25
    always @(redist59_dupName_8_comparator_x_q_10_q or c_i64_46795214878146560001258_q or redist55_dupName_9_comparator_x_q_10_q or c_i64_46798029627913666561259_q or redist51_dupName_10_comparator_x_q_10_q or c_i64_46792400128379453441260_q or redist47_dupName_11_comparator_x_q_10_q or c_i64_46820547626050519041261_q or redist37_dupName_21_comparator_x_q_10_q or c_i64_46803659127447879681262_q or redist71_dupName_5_comparator_x_q_10_q or c_i64_46812103376749199361263_q or redist67_dupName_6_comparator_x_q_10_q or c_i64_46789585378612346881264_q or redist63_dupName_7_comparator_x_q_10_q or c_i64_46809288626982092801265_q or i_acl_2615_v4l2_ctrl_get_name661_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = i_acl_2615_v4l2_ctrl_get_name661_q;
        if (redist63_dupName_7_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46809288626982092801265_q;
        end
        if (redist67_dupName_6_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46789585378612346881264_q;
        end
        if (redist71_dupName_5_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46812103376749199361263_q;
        end
        if (redist37_dupName_21_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46803659127447879681262_q;
        end
        if (redist47_dupName_11_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46820547626050519041261_q;
        end
        if (redist51_dupName_10_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46792400128379453441260_q;
        end
        if (redist55_dupName_9_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46798029627913666561259_q;
        end
        if (redist59_dupName_8_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q = c_i64_46795214878146560001258_q;
        end
    end

    // dupName_129_comparator_x(LOGICAL,1466)@16 + 1
    assign dupName_129_comparator_x_qi = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_51080_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_129_comparator_x_delay ( .xin(dupName_129_comparator_x_qi), .xout(dupName_129_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_dupName_129_comparator_x_q_9(DELAY,1576)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_dupName_129_comparator_x_q_9 ( .xin(dupName_129_comparator_x_q), .xout(redist34_dupName_129_comparator_x_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46800844377680773121256(CONSTANT,275)
    assign c_i64_46800844377680773121256_q = $unsigned(64'b0100000011110011000000000000000000000000000000000000000000000000);

    // c_i64_46814918126516305921255(CONSTANT,280)
    assign c_i64_46814918126516305921255_q = $unsigned(64'b0100000011111000000000000000000000000000000000000000000000000000);

    // c_i64_46817732876283412481254(CONSTANT,281)
    assign c_i64_46817732876283412481254_q = $unsigned(64'b0100000011111001000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662(SELECTOR,731)@25
    always @(redist71_dupName_5_comparator_x_q_10_q or c_i64_46817732876283412481254_q or redist67_dupName_6_comparator_x_q_10_q or c_i64_46814918126516305921255_q or redist63_dupName_7_comparator_x_q_10_q or c_i64_46800844377680773121256_q or i_acl_2615_v4l2_ctrl_get_name661_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q = i_acl_2615_v4l2_ctrl_get_name661_q;
        if (redist63_dupName_7_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q = c_i64_46800844377680773121256_q;
        end
        if (redist67_dupName_6_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q = c_i64_46814918126516305921255_q;
        end
        if (redist71_dupName_5_comparator_x_q_10_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q = c_i64_46817732876283412481254_q;
        end
    end

    // redist40_dupName_19_comparator_x_q_9(DELAY,1582)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_dupName_19_comparator_x_q_9 ( .xin(redist39_dupName_19_comparator_x_q_2_q), .xout(redist40_dupName_19_comparator_x_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666(SELECTOR,733)@25
    always @(redist40_dupName_19_comparator_x_q_9_q or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q or redist34_dupName_129_comparator_x_q_9_q or i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q or redist32_dupName_130_comparator_x_q_9_q or i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q or i_acl_2615_v4l2_ctrl_get_name661_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666_q = i_acl_2615_v4l2_ctrl_get_name661_q;
        if (redist32_dupName_130_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3616_v4l2_ctrl_get_name664_q;
        end
        if (redist34_dupName_129_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666_q = i_llvm_fpga_case_p0i8_i32_v8i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_12s_case_stmt3611_v4l2_ctrl_get_name663_q;
        end
        if (redist40_dupName_19_comparator_x_q_9_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666_q = i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3601_v4l2_ctrl_get_name662_q;
        end
    end

    // c_i32_445803_recast_x(CONSTANT,1325)
    assign c_i32_445803_recast_x_q = $unsigned(32'b00000000000000000000000110111101);

    // redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24(DELAY,1565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q <= '0;
        end
        else
        begin
            redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q <= $unsigned(redist22_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_23_q);
        end
    end

    // i_pivot647_v4l2_ctrl_get_name33(COMPARE,920)@25
    assign i_pivot647_v4l2_ctrl_get_name33_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot647_v4l2_ctrl_get_name33_b = $unsigned({{2{c_i32_445803_recast_x_q[31]}}, c_i32_445803_recast_x_q});
    assign i_pivot647_v4l2_ctrl_get_name33_o = $unsigned($signed(i_pivot647_v4l2_ctrl_get_name33_a) - $signed(i_pivot647_v4l2_ctrl_get_name33_b));
    assign i_pivot647_v4l2_ctrl_get_name33_c[0] = i_pivot647_v4l2_ctrl_get_name33_o[33];

    // c_i32_444956_recast_x(CONSTANT,1324)
    assign c_i32_444956_recast_x_q = $unsigned(32'b00000000000000000000000110111100);

    // i_pivot617_v4l2_ctrl_get_name339(COMPARE,906)@25
    assign i_pivot617_v4l2_ctrl_get_name339_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot617_v4l2_ctrl_get_name339_b = $unsigned({{2{c_i32_444956_recast_x_q[31]}}, c_i32_444956_recast_x_q});
    assign i_pivot617_v4l2_ctrl_get_name339_o = $unsigned($signed(i_pivot617_v4l2_ctrl_get_name339_a) - $signed(i_pivot617_v4l2_ctrl_get_name339_b));
    assign i_pivot617_v4l2_ctrl_get_name339_c[0] = i_pivot617_v4l2_ctrl_get_name339_o[33];

    // i_acl_2738_v4l2_ctrl_get_name667(LOGICAL,539)@25
    assign i_acl_2738_v4l2_ctrl_get_name667_q = i_pivot617_v4l2_ctrl_get_name339_c ^ i_pivot647_v4l2_ctrl_get_name33_c;

    // i_acl_2743_v4l2_ctrl_get_name668(MUX,540)@25 + 1
    assign i_acl_2743_v4l2_ctrl_get_name668_s = i_acl_2738_v4l2_ctrl_get_name667_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2743_v4l2_ctrl_get_name668_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2743_v4l2_ctrl_get_name668_s)
                1'b0 : i_acl_2743_v4l2_ctrl_get_name668_q <= i_llvm_fpga_case_p0i8_i32_v3i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_0s_case_stmt3622_v4l2_ctrl_get_name666_q;
                1'b1 : i_acl_2743_v4l2_ctrl_get_name668_q <= c_i64_46828991875351838721270_q;
                default : i_acl_2743_v4l2_ctrl_get_name668_q <= 64'b0;
            endcase
        end
    end

    // redist82_i_pivot619_v4l2_ctrl_get_name261_c_22(DELAY,1624)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist82_i_pivot619_v4l2_ctrl_get_name261_c_22 ( .xin(i_pivot619_v4l2_ctrl_get_name261_c), .xout(redist82_i_pivot619_v4l2_ctrl_get_name261_c_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2744_v4l2_ctrl_get_name669(LOGICAL,541)@25 + 1
    assign i_acl_2744_v4l2_ctrl_get_name669_qi = redist82_i_pivot619_v4l2_ctrl_get_name261_c_22_q ^ i_pivot617_v4l2_ctrl_get_name339_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2744_v4l2_ctrl_get_name669_delay ( .xin(i_acl_2744_v4l2_ctrl_get_name669_qi), .xout(i_acl_2744_v4l2_ctrl_get_name669_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2752_v4l2_ctrl_get_name670(MUX,542)@26
    assign i_acl_2752_v4l2_ctrl_get_name670_s = i_acl_2744_v4l2_ctrl_get_name669_q;
    always @(i_acl_2752_v4l2_ctrl_get_name670_s or i_acl_2743_v4l2_ctrl_get_name668_q or c_i64_46831806625118945281271_q)
    begin
        unique case (i_acl_2752_v4l2_ctrl_get_name670_s)
            1'b0 : i_acl_2752_v4l2_ctrl_get_name670_q = i_acl_2743_v4l2_ctrl_get_name668_q;
            1'b1 : i_acl_2752_v4l2_ctrl_get_name670_q = c_i64_46831806625118945281271_q;
            default : i_acl_2752_v4l2_ctrl_get_name670_q = 64'b0;
        endcase
    end

    // c_i32_446918_recast_x(CONSTANT,1326)
    assign c_i32_446918_recast_x_q = $unsigned(32'b00000000000000000000000110111110);

    // i_pivot625_v4l2_ctrl_get_name263(COMPARE,910)@25
    assign i_pivot625_v4l2_ctrl_get_name263_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot625_v4l2_ctrl_get_name263_b = $unsigned({{2{c_i32_446918_recast_x_q[31]}}, c_i32_446918_recast_x_q});
    assign i_pivot625_v4l2_ctrl_get_name263_o = $unsigned($signed(i_pivot625_v4l2_ctrl_get_name263_a) - $signed(i_pivot625_v4l2_ctrl_get_name263_b));
    assign i_pivot625_v4l2_ctrl_get_name263_c[0] = i_pivot625_v4l2_ctrl_get_name263_o[33];

    // i_acl_2755_v4l2_ctrl_get_name671(LOGICAL,543)@25 + 1
    assign i_acl_2755_v4l2_ctrl_get_name671_qi = i_pivot647_v4l2_ctrl_get_name33_c ^ i_pivot625_v4l2_ctrl_get_name263_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2755_v4l2_ctrl_get_name671_delay ( .xin(i_acl_2755_v4l2_ctrl_get_name671_qi), .xout(i_acl_2755_v4l2_ctrl_get_name671_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2760_v4l2_ctrl_get_name672(MUX,544)@26
    assign i_acl_2760_v4l2_ctrl_get_name672_s = i_acl_2755_v4l2_ctrl_get_name671_q;
    always @(i_acl_2760_v4l2_ctrl_get_name672_s or i_acl_2752_v4l2_ctrl_get_name670_q or c_i64_46834621374886051841272_q)
    begin
        unique case (i_acl_2760_v4l2_ctrl_get_name672_s)
            1'b0 : i_acl_2760_v4l2_ctrl_get_name672_q = i_acl_2752_v4l2_ctrl_get_name670_q;
            1'b1 : i_acl_2760_v4l2_ctrl_get_name672_q = c_i64_46834621374886051841272_q;
            default : i_acl_2760_v4l2_ctrl_get_name672_q = 64'b0;
        endcase
    end

    // c_i32_450820_recast_x(CONSTANT,1330)
    assign c_i32_450820_recast_x_q = $unsigned(32'b00000000000000000000000111000010);

    // i_pivot645_v4l2_ctrl_get_name67(COMPARE,919)@25
    assign i_pivot645_v4l2_ctrl_get_name67_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot645_v4l2_ctrl_get_name67_b = $unsigned({{2{c_i32_450820_recast_x_q[31]}}, c_i32_450820_recast_x_q});
    assign i_pivot645_v4l2_ctrl_get_name67_o = $unsigned($signed(i_pivot645_v4l2_ctrl_get_name67_a) - $signed(i_pivot645_v4l2_ctrl_get_name67_b));
    assign i_pivot645_v4l2_ctrl_get_name67_c[0] = i_pivot645_v4l2_ctrl_get_name67_o[33];

    // c_i32_449957_recast_x(CONSTANT,1329)
    assign c_i32_449957_recast_x_q = $unsigned(32'b00000000000000000000000111000001);

    // i_pivot627_v4l2_ctrl_get_name341(COMPARE,911)@25
    assign i_pivot627_v4l2_ctrl_get_name341_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot627_v4l2_ctrl_get_name341_b = $unsigned({{2{c_i32_449957_recast_x_q[31]}}, c_i32_449957_recast_x_q});
    assign i_pivot627_v4l2_ctrl_get_name341_o = $unsigned($signed(i_pivot627_v4l2_ctrl_get_name341_a) - $signed(i_pivot627_v4l2_ctrl_get_name341_b));
    assign i_pivot627_v4l2_ctrl_get_name341_c[0] = i_pivot627_v4l2_ctrl_get_name341_o[33];

    // i_acl_2763_v4l2_ctrl_get_name673(LOGICAL,545)@25 + 1
    assign i_acl_2763_v4l2_ctrl_get_name673_qi = i_pivot627_v4l2_ctrl_get_name341_c ^ i_pivot645_v4l2_ctrl_get_name67_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2763_v4l2_ctrl_get_name673_delay ( .xin(i_acl_2763_v4l2_ctrl_get_name673_qi), .xout(i_acl_2763_v4l2_ctrl_get_name673_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2769_v4l2_ctrl_get_name674(MUX,546)@26
    assign i_acl_2769_v4l2_ctrl_get_name674_s = i_acl_2763_v4l2_ctrl_get_name673_q;
    always @(i_acl_2769_v4l2_ctrl_get_name674_s or i_acl_2760_v4l2_ctrl_get_name672_q or c_i64_46837436124653158401273_q)
    begin
        unique case (i_acl_2769_v4l2_ctrl_get_name674_s)
            1'b0 : i_acl_2769_v4l2_ctrl_get_name674_q = i_acl_2760_v4l2_ctrl_get_name672_q;
            1'b1 : i_acl_2769_v4l2_ctrl_get_name674_q = c_i64_46837436124653158401273_q;
            default : i_acl_2769_v4l2_ctrl_get_name674_q = 64'b0;
        endcase
    end

    // c_i32_448919_recast_x(CONSTANT,1328)
    assign c_i32_448919_recast_x_q = $unsigned(32'b00000000000000000000000111000000);

    // i_pivot629_v4l2_ctrl_get_name265(COMPARE,912)@25
    assign i_pivot629_v4l2_ctrl_get_name265_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot629_v4l2_ctrl_get_name265_b = $unsigned({{2{c_i32_448919_recast_x_q[31]}}, c_i32_448919_recast_x_q});
    assign i_pivot629_v4l2_ctrl_get_name265_o = $unsigned($signed(i_pivot629_v4l2_ctrl_get_name265_a) - $signed(i_pivot629_v4l2_ctrl_get_name265_b));
    assign i_pivot629_v4l2_ctrl_get_name265_c[0] = i_pivot629_v4l2_ctrl_get_name265_o[33];

    // i_acl_2770_v4l2_ctrl_get_name675(LOGICAL,547)@25 + 1
    assign i_acl_2770_v4l2_ctrl_get_name675_qi = i_pivot629_v4l2_ctrl_get_name265_c ^ i_pivot627_v4l2_ctrl_get_name341_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2770_v4l2_ctrl_get_name675_delay ( .xin(i_acl_2770_v4l2_ctrl_get_name675_qi), .xout(i_acl_2770_v4l2_ctrl_get_name675_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2778_v4l2_ctrl_get_name676(MUX,548)@26
    assign i_acl_2778_v4l2_ctrl_get_name676_s = i_acl_2770_v4l2_ctrl_get_name675_q;
    always @(i_acl_2778_v4l2_ctrl_get_name676_s or i_acl_2769_v4l2_ctrl_get_name674_q or c_i64_46840250874420264961274_q)
    begin
        unique case (i_acl_2778_v4l2_ctrl_get_name676_s)
            1'b0 : i_acl_2778_v4l2_ctrl_get_name676_q = i_acl_2769_v4l2_ctrl_get_name674_q;
            1'b1 : i_acl_2778_v4l2_ctrl_get_name676_q = c_i64_46840250874420264961274_q;
            default : i_acl_2778_v4l2_ctrl_get_name676_q = 64'b0;
        endcase
    end

    // c_i32_447853_recast_x(CONSTANT,1327)
    assign c_i32_447853_recast_x_q = $unsigned(32'b00000000000000000000000110111111);

    // i_pivot631_v4l2_ctrl_get_name133(COMPARE,913)@25
    assign i_pivot631_v4l2_ctrl_get_name133_a = $unsigned({{2{redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q[31]}}, redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q});
    assign i_pivot631_v4l2_ctrl_get_name133_b = $unsigned({{2{c_i32_447853_recast_x_q[31]}}, c_i32_447853_recast_x_q});
    assign i_pivot631_v4l2_ctrl_get_name133_o = $unsigned($signed(i_pivot631_v4l2_ctrl_get_name133_a) - $signed(i_pivot631_v4l2_ctrl_get_name133_b));
    assign i_pivot631_v4l2_ctrl_get_name133_c[0] = i_pivot631_v4l2_ctrl_get_name133_o[33];

    // i_acl_2779_v4l2_ctrl_get_name677(LOGICAL,549)@25 + 1
    assign i_acl_2779_v4l2_ctrl_get_name677_qi = i_pivot625_v4l2_ctrl_get_name263_c ^ i_pivot631_v4l2_ctrl_get_name133_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2779_v4l2_ctrl_get_name677_delay ( .xin(i_acl_2779_v4l2_ctrl_get_name677_qi), .xout(i_acl_2779_v4l2_ctrl_get_name677_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2786_v4l2_ctrl_get_name678(MUX,550)@26
    assign i_acl_2786_v4l2_ctrl_get_name678_s = i_acl_2779_v4l2_ctrl_get_name677_q;
    always @(i_acl_2786_v4l2_ctrl_get_name678_s or i_acl_2778_v4l2_ctrl_get_name676_q or c_i64_46843065624187371521275_q)
    begin
        unique case (i_acl_2786_v4l2_ctrl_get_name678_s)
            1'b0 : i_acl_2786_v4l2_ctrl_get_name678_q = i_acl_2778_v4l2_ctrl_get_name676_q;
            1'b1 : i_acl_2786_v4l2_ctrl_get_name678_q = c_i64_46843065624187371521275_q;
            default : i_acl_2786_v4l2_ctrl_get_name678_q = 64'b0;
        endcase
    end

    // redist81_i_pivot635_v4l2_ctrl_get_name267_c_23(DELAY,1623)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist81_i_pivot635_v4l2_ctrl_get_name267_c_23 ( .xin(i_pivot635_v4l2_ctrl_get_name267_c), .xout(redist81_i_pivot635_v4l2_ctrl_get_name267_c_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2788_v4l2_ctrl_get_name679(LOGICAL,551)@25 + 1
    assign i_acl_2788_v4l2_ctrl_get_name679_qi = i_pivot645_v4l2_ctrl_get_name67_c ^ redist81_i_pivot635_v4l2_ctrl_get_name267_c_23_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2788_v4l2_ctrl_get_name679_delay ( .xin(i_acl_2788_v4l2_ctrl_get_name679_qi), .xout(i_acl_2788_v4l2_ctrl_get_name679_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2794_v4l2_ctrl_get_name680(MUX,552)@26
    assign i_acl_2794_v4l2_ctrl_get_name680_s = i_acl_2788_v4l2_ctrl_get_name679_q;
    always @(i_acl_2794_v4l2_ctrl_get_name680_s or i_acl_2786_v4l2_ctrl_get_name678_q or c_i64_46845880373954478081276_q)
    begin
        unique case (i_acl_2794_v4l2_ctrl_get_name680_s)
            1'b0 : i_acl_2794_v4l2_ctrl_get_name680_q = i_acl_2786_v4l2_ctrl_get_name678_q;
            1'b1 : i_acl_2794_v4l2_ctrl_get_name680_q = c_i64_46845880373954478081276_q;
            default : i_acl_2794_v4l2_ctrl_get_name680_q = 64'b0;
        endcase
    end

    // i_acl_2795_v4l2_ctrl_get_name681(LOGICAL,553)@25 + 1
    assign i_acl_2795_v4l2_ctrl_get_name681_qi = i_pivot631_v4l2_ctrl_get_name133_c ^ i_pivot629_v4l2_ctrl_get_name265_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2795_v4l2_ctrl_get_name681_delay ( .xin(i_acl_2795_v4l2_ctrl_get_name681_qi), .xout(i_acl_2795_v4l2_ctrl_get_name681_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2802_v4l2_ctrl_get_name682(MUX,554)@26 + 1
    assign i_acl_2802_v4l2_ctrl_get_name682_s = i_acl_2795_v4l2_ctrl_get_name681_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2802_v4l2_ctrl_get_name682_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2802_v4l2_ctrl_get_name682_s)
                1'b0 : i_acl_2802_v4l2_ctrl_get_name682_q <= i_acl_2794_v4l2_ctrl_get_name680_q;
                1'b1 : i_acl_2802_v4l2_ctrl_get_name682_q <= c_i64_46848695123721584641277_q;
                default : i_acl_2802_v4l2_ctrl_get_name682_q <= 64'b0;
            endcase
        end
    end

    // c_i64_46854324623255797761284(CONSTANT,294)
    assign c_i64_46854324623255797761284_q = $unsigned(64'b0100000100000110000000000000000000000000000000000000000000000000);

    // c_i32_1911290(CONSTANT,18)
    assign c_i32_1911290_q = $unsigned(32'b00000000000000000000000010111111);

    // redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25(DELAY,1566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q <= '0;
        end
        else
        begin
            redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q <= $unsigned(redist23_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_24_q);
        end
    end

    // dupName_136_comparator_x(LOGICAL,1473)@26 + 1
    assign dupName_136_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1911290_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_136_comparator_x_delay ( .xin(dupName_136_comparator_x_qi), .xout(dupName_136_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46851509873488691201283(CONSTANT,293)
    assign c_i64_46851509873488691201283_q = $unsigned(64'b0100000100000101000000000000000000000000000000000000000000000000);

    // c_i32_1901289(CONSTANT,17)
    assign c_i32_1901289_q = $unsigned(32'b00000000000000000000000010111110);

    // dupName_135_comparator_x(LOGICAL,1472)@26 + 1
    assign dupName_135_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1901289_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_135_comparator_x_delay ( .xin(dupName_135_comparator_x_qi), .xout(dupName_135_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46857139373022904321282(CONSTANT,295)
    assign c_i64_46857139373022904321282_q = $unsigned(64'b0100000100000111000000000000000000000000000000000000000000000000);

    // c_i32_1891288(CONSTANT,16)
    assign c_i32_1891288_q = $unsigned(32'b00000000000000000000000010111101);

    // dupName_134_comparator_x(LOGICAL,1471)@26 + 1
    assign dupName_134_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1891288_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_134_comparator_x_delay ( .xin(dupName_134_comparator_x_qi), .xout(dupName_134_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46865583622324224001281(CONSTANT,298)
    assign c_i64_46865583622324224001281_q = $unsigned(64'b0100000100001010000000000000000000000000000000000000000000000000);

    // c_i32_1391287(CONSTANT,8)
    assign c_i32_1391287_q = $unsigned(32'b00000000000000000000000010001011);

    // dupName_133_comparator_x(LOGICAL,1470)@26 + 1
    assign dupName_133_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1391287_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_133_comparator_x_delay ( .xin(dupName_133_comparator_x_qi), .xout(dupName_133_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46862768872557117441280(CONSTANT,297)
    assign c_i64_46862768872557117441280_q = $unsigned(64'b0100000100001001000000000000000000000000000000000000000000000000);

    // c_i32_1371286(CONSTANT,7)
    assign c_i32_1371286_q = $unsigned(32'b00000000000000000000000010001001);

    // dupName_132_comparator_x(LOGICAL,1469)@26 + 1
    assign dupName_132_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1371286_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_132_comparator_x_delay ( .xin(dupName_132_comparator_x_qi), .xout(dupName_132_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46859954122790010881279(CONSTANT,296)
    assign c_i64_46859954122790010881279_q = $unsigned(64'b0100000100001000000000000000000000000000000000000000000000000000);

    // c_i32_1361285(CONSTANT,6)
    assign c_i32_1361285_q = $unsigned(32'b00000000000000000000000010001000);

    // dupName_131_comparator_x(LOGICAL,1468)@26 + 1
    assign dupName_131_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1361285_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_131_comparator_x_delay ( .xin(dupName_131_comparator_x_qi), .xout(dupName_131_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683(SELECTOR,747)@27
    always @(dupName_131_comparator_x_q or c_i64_46859954122790010881279_q or dupName_132_comparator_x_q or c_i64_46862768872557117441280_q or dupName_133_comparator_x_q or c_i64_46865583622324224001281_q or dupName_134_comparator_x_q or c_i64_46857139373022904321282_q or dupName_135_comparator_x_q or c_i64_46851509873488691201283_q or dupName_136_comparator_x_q or c_i64_46854324623255797761284_q or i_acl_2802_v4l2_ctrl_get_name682_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = i_acl_2802_v4l2_ctrl_get_name682_q;
        if (dupName_136_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = c_i64_46854324623255797761284_q;
        end
        if (dupName_135_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = c_i64_46851509873488691201283_q;
        end
        if (dupName_134_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = c_i64_46857139373022904321282_q;
        end
        if (dupName_133_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = c_i64_46865583622324224001281_q;
        end
        if (dupName_132_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = c_i64_46862768872557117441280_q;
        end
        if (dupName_131_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q = c_i64_46859954122790010881279_q;
        end
    end

    // c_i32_393945_recast_x(CONSTANT,1273)
    assign c_i32_393945_recast_x_q = $unsigned(32'b00000000000000000000000110001001);

    // i_pivot517_v4l2_ctrl_get_name317(COMPARE,855)@26
    assign i_pivot517_v4l2_ctrl_get_name317_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot517_v4l2_ctrl_get_name317_b = $unsigned({{2{c_i32_393945_recast_x_q[31]}}, c_i32_393945_recast_x_q});
    assign i_pivot517_v4l2_ctrl_get_name317_o = $unsigned($signed(i_pivot517_v4l2_ctrl_get_name317_a) - $signed(i_pivot517_v4l2_ctrl_get_name317_b));
    assign i_pivot517_v4l2_ctrl_get_name317_c[0] = i_pivot517_v4l2_ctrl_get_name317_o[33];

    // c_i32_392897_recast_x(CONSTANT,1272)
    assign c_i32_392897_recast_x_q = $unsigned(32'b00000000000000000000000110001000);

    // i_pivot519_v4l2_ctrl_get_name221(COMPARE,856)@26
    assign i_pivot519_v4l2_ctrl_get_name221_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot519_v4l2_ctrl_get_name221_b = $unsigned({{2{c_i32_392897_recast_x_q[31]}}, c_i32_392897_recast_x_q});
    assign i_pivot519_v4l2_ctrl_get_name221_o = $unsigned($signed(i_pivot519_v4l2_ctrl_get_name221_a) - $signed(i_pivot519_v4l2_ctrl_get_name221_b));
    assign i_pivot519_v4l2_ctrl_get_name221_c[0] = i_pivot519_v4l2_ctrl_get_name221_o[33];

    // i_acl_2853_v4l2_ctrl_get_name684(LOGICAL,555)@26 + 1
    assign i_acl_2853_v4l2_ctrl_get_name684_qi = i_pivot519_v4l2_ctrl_get_name221_c ^ i_pivot517_v4l2_ctrl_get_name317_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2853_v4l2_ctrl_get_name684_delay ( .xin(i_acl_2853_v4l2_ctrl_get_name684_qi), .xout(i_acl_2853_v4l2_ctrl_get_name684_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2861_v4l2_ctrl_get_name685(MUX,556)@27
    assign i_acl_2861_v4l2_ctrl_get_name685_s = i_acl_2853_v4l2_ctrl_get_name684_q;
    always @(i_acl_2861_v4l2_ctrl_get_name685_s or i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q or c_i64_46868398372091330561291_q)
    begin
        unique case (i_acl_2861_v4l2_ctrl_get_name685_s)
            1'b0 : i_acl_2861_v4l2_ctrl_get_name685_q = i_llvm_fpga_case_p0i8_i32_v6i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_20s_case_stmt3630_v4l2_ctrl_get_name683_q;
            1'b1 : i_acl_2861_v4l2_ctrl_get_name685_q = c_i64_46868398372091330561291_q;
            default : i_acl_2861_v4l2_ctrl_get_name685_q = 64'b0;
        endcase
    end

    // c_i32_389814_recast_x(CONSTANT,1269)
    assign c_i32_389814_recast_x_q = $unsigned(32'b00000000000000000000000110000101);

    // i_pivot523_v4l2_ctrl_get_name55(COMPARE,858)@26
    assign i_pivot523_v4l2_ctrl_get_name55_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot523_v4l2_ctrl_get_name55_b = $unsigned({{2{c_i32_389814_recast_x_q[31]}}, c_i32_389814_recast_x_q});
    assign i_pivot523_v4l2_ctrl_get_name55_o = $unsigned($signed(i_pivot523_v4l2_ctrl_get_name55_a) - $signed(i_pivot523_v4l2_ctrl_get_name55_b));
    assign i_pivot523_v4l2_ctrl_get_name55_c[0] = i_pivot523_v4l2_ctrl_get_name55_o[33];

    // c_i32_388944_recast_x(CONSTANT,1268)
    assign c_i32_388944_recast_x_q = $unsigned(32'b00000000000000000000000110000100);

    // i_pivot509_v4l2_ctrl_get_name315(COMPARE,851)@26
    assign i_pivot509_v4l2_ctrl_get_name315_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot509_v4l2_ctrl_get_name315_b = $unsigned({{2{c_i32_388944_recast_x_q[31]}}, c_i32_388944_recast_x_q});
    assign i_pivot509_v4l2_ctrl_get_name315_o = $unsigned($signed(i_pivot509_v4l2_ctrl_get_name315_a) - $signed(i_pivot509_v4l2_ctrl_get_name315_b));
    assign i_pivot509_v4l2_ctrl_get_name315_c[0] = i_pivot509_v4l2_ctrl_get_name315_o[33];

    // i_acl_2864_v4l2_ctrl_get_name686(LOGICAL,557)@26 + 1
    assign i_acl_2864_v4l2_ctrl_get_name686_qi = i_pivot509_v4l2_ctrl_get_name315_c ^ i_pivot523_v4l2_ctrl_get_name55_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2864_v4l2_ctrl_get_name686_delay ( .xin(i_acl_2864_v4l2_ctrl_get_name686_qi), .xout(i_acl_2864_v4l2_ctrl_get_name686_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2870_v4l2_ctrl_get_name687(MUX,558)@27
    assign i_acl_2870_v4l2_ctrl_get_name687_s = i_acl_2864_v4l2_ctrl_get_name686_q;
    always @(i_acl_2870_v4l2_ctrl_get_name687_s or i_acl_2861_v4l2_ctrl_get_name685_q or c_i64_46871213121858437121292_q)
    begin
        unique case (i_acl_2870_v4l2_ctrl_get_name687_s)
            1'b0 : i_acl_2870_v4l2_ctrl_get_name687_q = i_acl_2861_v4l2_ctrl_get_name685_q;
            1'b1 : i_acl_2870_v4l2_ctrl_get_name687_q = c_i64_46871213121858437121292_q;
            default : i_acl_2870_v4l2_ctrl_get_name687_q = 64'b0;
        endcase
    end

    // c_i32_386841_recast_x(CONSTANT,1266)
    assign c_i32_386841_recast_x_q = $unsigned(32'b00000000000000000000000110000010);

    // i_pivot513_v4l2_ctrl_get_name109(COMPARE,853)@26
    assign i_pivot513_v4l2_ctrl_get_name109_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot513_v4l2_ctrl_get_name109_b = $unsigned({{2{c_i32_386841_recast_x_q[31]}}, c_i32_386841_recast_x_q});
    assign i_pivot513_v4l2_ctrl_get_name109_o = $unsigned($signed(i_pivot513_v4l2_ctrl_get_name109_a) - $signed(i_pivot513_v4l2_ctrl_get_name109_b));
    assign i_pivot513_v4l2_ctrl_get_name109_c[0] = i_pivot513_v4l2_ctrl_get_name109_o[33];

    // c_i32_385894_recast_x(CONSTANT,1265)
    assign c_i32_385894_recast_x_q = $unsigned(32'b00000000000000000000000110000001);

    // i_pivot507_v4l2_ctrl_get_name215(COMPARE,850)@26
    assign i_pivot507_v4l2_ctrl_get_name215_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot507_v4l2_ctrl_get_name215_b = $unsigned({{2{c_i32_385894_recast_x_q[31]}}, c_i32_385894_recast_x_q});
    assign i_pivot507_v4l2_ctrl_get_name215_o = $unsigned($signed(i_pivot507_v4l2_ctrl_get_name215_a) - $signed(i_pivot507_v4l2_ctrl_get_name215_b));
    assign i_pivot507_v4l2_ctrl_get_name215_c[0] = i_pivot507_v4l2_ctrl_get_name215_o[33];

    // i_acl_2871_v4l2_ctrl_get_name688(LOGICAL,559)@26 + 1
    assign i_acl_2871_v4l2_ctrl_get_name688_qi = i_pivot507_v4l2_ctrl_get_name215_c ^ i_pivot513_v4l2_ctrl_get_name109_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2871_v4l2_ctrl_get_name688_delay ( .xin(i_acl_2871_v4l2_ctrl_get_name688_qi), .xout(i_acl_2871_v4l2_ctrl_get_name688_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2878_v4l2_ctrl_get_name689(MUX,560)@27
    assign i_acl_2878_v4l2_ctrl_get_name689_s = i_acl_2871_v4l2_ctrl_get_name688_q;
    always @(i_acl_2878_v4l2_ctrl_get_name689_s or i_acl_2870_v4l2_ctrl_get_name687_q or c_i64_46874027871625543681293_q)
    begin
        unique case (i_acl_2878_v4l2_ctrl_get_name689_s)
            1'b0 : i_acl_2878_v4l2_ctrl_get_name689_q = i_acl_2870_v4l2_ctrl_get_name687_q;
            1'b1 : i_acl_2878_v4l2_ctrl_get_name689_q = c_i64_46874027871625543681293_q;
            default : i_acl_2878_v4l2_ctrl_get_name689_q = 64'b0;
        endcase
    end

    // c_i32_387895_recast_x(CONSTANT,1267)
    assign c_i32_387895_recast_x_q = $unsigned(32'b00000000000000000000000110000011);

    // i_pivot511_v4l2_ctrl_get_name217(COMPARE,852)@26
    assign i_pivot511_v4l2_ctrl_get_name217_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot511_v4l2_ctrl_get_name217_b = $unsigned({{2{c_i32_387895_recast_x_q[31]}}, c_i32_387895_recast_x_q});
    assign i_pivot511_v4l2_ctrl_get_name217_o = $unsigned($signed(i_pivot511_v4l2_ctrl_get_name217_a) - $signed(i_pivot511_v4l2_ctrl_get_name217_b));
    assign i_pivot511_v4l2_ctrl_get_name217_c[0] = i_pivot511_v4l2_ctrl_get_name217_o[33];

    // i_acl_2879_v4l2_ctrl_get_name690(LOGICAL,561)@26 + 1
    assign i_acl_2879_v4l2_ctrl_get_name690_qi = i_pivot513_v4l2_ctrl_get_name109_c ^ i_pivot511_v4l2_ctrl_get_name217_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2879_v4l2_ctrl_get_name690_delay ( .xin(i_acl_2879_v4l2_ctrl_get_name690_qi), .xout(i_acl_2879_v4l2_ctrl_get_name690_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2886_v4l2_ctrl_get_name691(MUX,562)@27
    assign i_acl_2886_v4l2_ctrl_get_name691_s = i_acl_2879_v4l2_ctrl_get_name690_q;
    always @(i_acl_2886_v4l2_ctrl_get_name691_s or i_acl_2878_v4l2_ctrl_get_name689_q or c_i64_46876842621392650241294_q)
    begin
        unique case (i_acl_2886_v4l2_ctrl_get_name691_s)
            1'b0 : i_acl_2886_v4l2_ctrl_get_name691_q = i_acl_2878_v4l2_ctrl_get_name689_q;
            1'b1 : i_acl_2886_v4l2_ctrl_get_name691_q = c_i64_46876842621392650241294_q;
            default : i_acl_2886_v4l2_ctrl_get_name691_q = 64'b0;
        endcase
    end

    // c_i32_384800_recast_x(CONSTANT,1264)
    assign c_i32_384800_recast_x_q = $unsigned(32'b00000000000000000000000110000000);

    // i_pivot525_v4l2_ctrl_get_name27(COMPARE,859)@26
    assign i_pivot525_v4l2_ctrl_get_name27_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot525_v4l2_ctrl_get_name27_b = $unsigned({{2{c_i32_384800_recast_x_q[31]}}, c_i32_384800_recast_x_q});
    assign i_pivot525_v4l2_ctrl_get_name27_o = $unsigned($signed(i_pivot525_v4l2_ctrl_get_name27_a) - $signed(i_pivot525_v4l2_ctrl_get_name27_b));
    assign i_pivot525_v4l2_ctrl_get_name27_c[0] = i_pivot525_v4l2_ctrl_get_name27_o[33];

    // c_i32_383943_recast_x(CONSTANT,1263)
    assign c_i32_383943_recast_x_q = $unsigned(32'b00000000000000000000000101111111);

    // i_pivot499_v4l2_ctrl_get_name313(COMPARE,846)@26
    assign i_pivot499_v4l2_ctrl_get_name313_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot499_v4l2_ctrl_get_name313_b = $unsigned({{2{c_i32_383943_recast_x_q[31]}}, c_i32_383943_recast_x_q});
    assign i_pivot499_v4l2_ctrl_get_name313_o = $unsigned($signed(i_pivot499_v4l2_ctrl_get_name313_a) - $signed(i_pivot499_v4l2_ctrl_get_name313_b));
    assign i_pivot499_v4l2_ctrl_get_name313_c[0] = i_pivot499_v4l2_ctrl_get_name313_o[33];

    // i_acl_2890_v4l2_ctrl_get_name692(LOGICAL,563)@26 + 1
    assign i_acl_2890_v4l2_ctrl_get_name692_qi = i_pivot499_v4l2_ctrl_get_name313_c ^ i_pivot525_v4l2_ctrl_get_name27_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2890_v4l2_ctrl_get_name692_delay ( .xin(i_acl_2890_v4l2_ctrl_get_name692_qi), .xout(i_acl_2890_v4l2_ctrl_get_name692_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_2895_v4l2_ctrl_get_name693(MUX,564)@27 + 1
    assign i_acl_2895_v4l2_ctrl_get_name693_s = i_acl_2890_v4l2_ctrl_get_name692_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2895_v4l2_ctrl_get_name693_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2895_v4l2_ctrl_get_name693_s)
                1'b0 : i_acl_2895_v4l2_ctrl_get_name693_q <= i_acl_2886_v4l2_ctrl_get_name691_q;
                1'b1 : i_acl_2895_v4l2_ctrl_get_name693_q <= c_i64_46879657371159756801295_q;
                default : i_acl_2895_v4l2_ctrl_get_name693_q <= 64'b0;
            endcase
        end
    end

    // i_acl_2898_v4l2_ctrl_get_name694(LOGICAL,565)@26 + 1
    assign i_acl_2898_v4l2_ctrl_get_name694_qi = i_pivot525_v4l2_ctrl_get_name27_c ^ i_pivot507_v4l2_ctrl_get_name215_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2898_v4l2_ctrl_get_name694_delay ( .xin(i_acl_2898_v4l2_ctrl_get_name694_qi), .xout(i_acl_2898_v4l2_ctrl_get_name694_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist170_i_acl_2898_v4l2_ctrl_get_name694_q_2(DELAY,1712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist170_i_acl_2898_v4l2_ctrl_get_name694_q_2_q <= '0;
        end
        else
        begin
            redist170_i_acl_2898_v4l2_ctrl_get_name694_q_2_q <= $unsigned(i_acl_2898_v4l2_ctrl_get_name694_q);
        end
    end

    // i_acl_2903_v4l2_ctrl_get_name695(MUX,566)@28
    assign i_acl_2903_v4l2_ctrl_get_name695_s = redist170_i_acl_2898_v4l2_ctrl_get_name694_q_2_q;
    always @(i_acl_2903_v4l2_ctrl_get_name695_s or i_acl_2895_v4l2_ctrl_get_name693_q or c_i64_46882472120926863361296_q)
    begin
        unique case (i_acl_2903_v4l2_ctrl_get_name695_s)
            1'b0 : i_acl_2903_v4l2_ctrl_get_name695_q = i_acl_2895_v4l2_ctrl_get_name693_q;
            1'b1 : i_acl_2903_v4l2_ctrl_get_name695_q = c_i64_46882472120926863361296_q;
            default : i_acl_2903_v4l2_ctrl_get_name695_q = 64'b0;
        endcase
    end

    // c_i32_382893_recast_x(CONSTANT,1262)
    assign c_i32_382893_recast_x_q = $unsigned(32'b00000000000000000000000101111110);

    // i_pivot501_v4l2_ctrl_get_name213(COMPARE,847)@26
    assign i_pivot501_v4l2_ctrl_get_name213_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot501_v4l2_ctrl_get_name213_b = $unsigned({{2{c_i32_382893_recast_x_q[31]}}, c_i32_382893_recast_x_q});
    assign i_pivot501_v4l2_ctrl_get_name213_o = $unsigned($signed(i_pivot501_v4l2_ctrl_get_name213_a) - $signed(i_pivot501_v4l2_ctrl_get_name213_b));
    assign i_pivot501_v4l2_ctrl_get_name213_c[0] = i_pivot501_v4l2_ctrl_get_name213_o[33];

    // i_acl_2904_v4l2_ctrl_get_name696(LOGICAL,567)@26 + 1
    assign i_acl_2904_v4l2_ctrl_get_name696_qi = i_pivot501_v4l2_ctrl_get_name213_c ^ i_pivot499_v4l2_ctrl_get_name313_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2904_v4l2_ctrl_get_name696_delay ( .xin(i_acl_2904_v4l2_ctrl_get_name696_qi), .xout(i_acl_2904_v4l2_ctrl_get_name696_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist169_i_acl_2904_v4l2_ctrl_get_name696_q_2(DELAY,1711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist169_i_acl_2904_v4l2_ctrl_get_name696_q_2_q <= '0;
        end
        else
        begin
            redist169_i_acl_2904_v4l2_ctrl_get_name696_q_2_q <= $unsigned(i_acl_2904_v4l2_ctrl_get_name696_q);
        end
    end

    // i_acl_2912_v4l2_ctrl_get_name697(MUX,568)@28
    assign i_acl_2912_v4l2_ctrl_get_name697_s = redist169_i_acl_2904_v4l2_ctrl_get_name696_q_2_q;
    always @(i_acl_2912_v4l2_ctrl_get_name697_s or i_acl_2903_v4l2_ctrl_get_name695_q or c_i64_46885286870693969921297_q)
    begin
        unique case (i_acl_2912_v4l2_ctrl_get_name697_s)
            1'b0 : i_acl_2912_v4l2_ctrl_get_name697_q = i_acl_2903_v4l2_ctrl_get_name695_q;
            1'b1 : i_acl_2912_v4l2_ctrl_get_name697_q = c_i64_46885286870693969921297_q;
            default : i_acl_2912_v4l2_ctrl_get_name697_q = 64'b0;
        endcase
    end

    // c_i32_390896_recast_x(CONSTANT,1270)
    assign c_i32_390896_recast_x_q = $unsigned(32'b00000000000000000000000110000110);

    // i_pivot515_v4l2_ctrl_get_name219(COMPARE,854)@26
    assign i_pivot515_v4l2_ctrl_get_name219_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot515_v4l2_ctrl_get_name219_b = $unsigned({{2{c_i32_390896_recast_x_q[31]}}, c_i32_390896_recast_x_q});
    assign i_pivot515_v4l2_ctrl_get_name219_o = $unsigned($signed(i_pivot515_v4l2_ctrl_get_name219_a) - $signed(i_pivot515_v4l2_ctrl_get_name219_b));
    assign i_pivot515_v4l2_ctrl_get_name219_c[0] = i_pivot515_v4l2_ctrl_get_name219_o[33];

    // i_acl_2914_v4l2_ctrl_get_name698(LOGICAL,569)@26 + 1
    assign i_acl_2914_v4l2_ctrl_get_name698_qi = i_pivot523_v4l2_ctrl_get_name55_c ^ i_pivot515_v4l2_ctrl_get_name219_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2914_v4l2_ctrl_get_name698_delay ( .xin(i_acl_2914_v4l2_ctrl_get_name698_qi), .xout(i_acl_2914_v4l2_ctrl_get_name698_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist168_i_acl_2914_v4l2_ctrl_get_name698_q_2(DELAY,1710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_acl_2914_v4l2_ctrl_get_name698_q_2_q <= '0;
        end
        else
        begin
            redist168_i_acl_2914_v4l2_ctrl_get_name698_q_2_q <= $unsigned(i_acl_2914_v4l2_ctrl_get_name698_q);
        end
    end

    // i_acl_2920_v4l2_ctrl_get_name699(MUX,570)@28
    assign i_acl_2920_v4l2_ctrl_get_name699_s = redist168_i_acl_2914_v4l2_ctrl_get_name698_q_2_q;
    always @(i_acl_2920_v4l2_ctrl_get_name699_s or i_acl_2912_v4l2_ctrl_get_name697_q or c_i64_46888101620461076481298_q)
    begin
        unique case (i_acl_2920_v4l2_ctrl_get_name699_s)
            1'b0 : i_acl_2920_v4l2_ctrl_get_name699_q = i_acl_2912_v4l2_ctrl_get_name697_q;
            1'b1 : i_acl_2920_v4l2_ctrl_get_name699_q = c_i64_46888101620461076481298_q;
            default : i_acl_2920_v4l2_ctrl_get_name699_q = 64'b0;
        endcase
    end

    // c_i32_381840_recast_x(CONSTANT,1261)
    assign c_i32_381840_recast_x_q = $unsigned(32'b00000000000000000000000101111101);

    // i_pivot503_v4l2_ctrl_get_name107(COMPARE,848)@26
    assign i_pivot503_v4l2_ctrl_get_name107_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot503_v4l2_ctrl_get_name107_b = $unsigned({{2{c_i32_381840_recast_x_q[31]}}, c_i32_381840_recast_x_q});
    assign i_pivot503_v4l2_ctrl_get_name107_o = $unsigned($signed(i_pivot503_v4l2_ctrl_get_name107_a) - $signed(i_pivot503_v4l2_ctrl_get_name107_b));
    assign i_pivot503_v4l2_ctrl_get_name107_c[0] = i_pivot503_v4l2_ctrl_get_name107_o[33];

    // i_acl_2921_v4l2_ctrl_get_name700(LOGICAL,571)@26 + 1
    assign i_acl_2921_v4l2_ctrl_get_name700_qi = i_pivot503_v4l2_ctrl_get_name107_c ^ i_pivot501_v4l2_ctrl_get_name213_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2921_v4l2_ctrl_get_name700_delay ( .xin(i_acl_2921_v4l2_ctrl_get_name700_qi), .xout(i_acl_2921_v4l2_ctrl_get_name700_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist167_i_acl_2921_v4l2_ctrl_get_name700_q_2(DELAY,1709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_acl_2921_v4l2_ctrl_get_name700_q_2_q <= '0;
        end
        else
        begin
            redist167_i_acl_2921_v4l2_ctrl_get_name700_q_2_q <= $unsigned(i_acl_2921_v4l2_ctrl_get_name700_q);
        end
    end

    // i_acl_2928_v4l2_ctrl_get_name701(MUX,572)@28
    assign i_acl_2928_v4l2_ctrl_get_name701_s = redist167_i_acl_2921_v4l2_ctrl_get_name700_q_2_q;
    always @(i_acl_2928_v4l2_ctrl_get_name701_s or i_acl_2920_v4l2_ctrl_get_name699_q or c_i64_46890916370228183041299_q)
    begin
        unique case (i_acl_2928_v4l2_ctrl_get_name701_s)
            1'b0 : i_acl_2928_v4l2_ctrl_get_name701_q = i_acl_2920_v4l2_ctrl_get_name699_q;
            1'b1 : i_acl_2928_v4l2_ctrl_get_name701_q = c_i64_46890916370228183041299_q;
            default : i_acl_2928_v4l2_ctrl_get_name701_q = 64'b0;
        endcase
    end

    // c_i32_391842_recast_x(CONSTANT,1271)
    assign c_i32_391842_recast_x_q = $unsigned(32'b00000000000000000000000110000111);

    // i_pivot521_v4l2_ctrl_get_name111(COMPARE,857)@26
    assign i_pivot521_v4l2_ctrl_get_name111_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot521_v4l2_ctrl_get_name111_b = $unsigned({{2{c_i32_391842_recast_x_q[31]}}, c_i32_391842_recast_x_q});
    assign i_pivot521_v4l2_ctrl_get_name111_o = $unsigned($signed(i_pivot521_v4l2_ctrl_get_name111_a) - $signed(i_pivot521_v4l2_ctrl_get_name111_b));
    assign i_pivot521_v4l2_ctrl_get_name111_c[0] = i_pivot521_v4l2_ctrl_get_name111_o[33];

    // i_acl_2929_v4l2_ctrl_get_name702(LOGICAL,573)@26 + 1
    assign i_acl_2929_v4l2_ctrl_get_name702_qi = i_pivot515_v4l2_ctrl_get_name219_c ^ i_pivot521_v4l2_ctrl_get_name111_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2929_v4l2_ctrl_get_name702_delay ( .xin(i_acl_2929_v4l2_ctrl_get_name702_qi), .xout(i_acl_2929_v4l2_ctrl_get_name702_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist166_i_acl_2929_v4l2_ctrl_get_name702_q_2(DELAY,1708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_acl_2929_v4l2_ctrl_get_name702_q_2_q <= '0;
        end
        else
        begin
            redist166_i_acl_2929_v4l2_ctrl_get_name702_q_2_q <= $unsigned(i_acl_2929_v4l2_ctrl_get_name702_q);
        end
    end

    // i_acl_2936_v4l2_ctrl_get_name703(MUX,574)@28
    assign i_acl_2936_v4l2_ctrl_get_name703_s = redist166_i_acl_2929_v4l2_ctrl_get_name702_q_2_q;
    always @(i_acl_2936_v4l2_ctrl_get_name703_s or i_acl_2928_v4l2_ctrl_get_name701_q or c_i64_46893731119995289601300_q)
    begin
        unique case (i_acl_2936_v4l2_ctrl_get_name703_s)
            1'b0 : i_acl_2936_v4l2_ctrl_get_name703_q = i_acl_2928_v4l2_ctrl_get_name701_q;
            1'b1 : i_acl_2936_v4l2_ctrl_get_name703_q = c_i64_46893731119995289601300_q;
            default : i_acl_2936_v4l2_ctrl_get_name703_q = 64'b0;
        endcase
    end

    // i_acl_2937_v4l2_ctrl_get_name704(LOGICAL,575)@26 + 1
    assign i_acl_2937_v4l2_ctrl_get_name704_qi = i_pivot521_v4l2_ctrl_get_name111_c ^ i_pivot519_v4l2_ctrl_get_name221_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2937_v4l2_ctrl_get_name704_delay ( .xin(i_acl_2937_v4l2_ctrl_get_name704_qi), .xout(i_acl_2937_v4l2_ctrl_get_name704_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist165_i_acl_2937_v4l2_ctrl_get_name704_q_2(DELAY,1707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_acl_2937_v4l2_ctrl_get_name704_q_2_q <= '0;
        end
        else
        begin
            redist165_i_acl_2937_v4l2_ctrl_get_name704_q_2_q <= $unsigned(i_acl_2937_v4l2_ctrl_get_name704_q);
        end
    end

    // i_acl_2944_v4l2_ctrl_get_name705(MUX,576)@28
    assign i_acl_2944_v4l2_ctrl_get_name705_s = redist165_i_acl_2937_v4l2_ctrl_get_name704_q_2_q;
    always @(i_acl_2944_v4l2_ctrl_get_name705_s or i_acl_2936_v4l2_ctrl_get_name703_q or c_i64_46896545869762396161301_q)
    begin
        unique case (i_acl_2944_v4l2_ctrl_get_name705_s)
            1'b0 : i_acl_2944_v4l2_ctrl_get_name705_q = i_acl_2936_v4l2_ctrl_get_name703_q;
            1'b1 : i_acl_2944_v4l2_ctrl_get_name705_q = c_i64_46896545869762396161301_q;
            default : i_acl_2944_v4l2_ctrl_get_name705_q = 64'b0;
        endcase
    end

    // redist95_i_pivot567_v4l2_ctrl_get_name15_c_3(DELAY,1637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_0 <= '0;
            redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_1 <= '0;
            redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_q <= '0;
        end
        else
        begin
            redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_0 <= $unsigned(i_pivot567_v4l2_ctrl_get_name15_c);
            redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_1 <= redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_0;
            redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_q <= redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_delay_1;
        end
    end

    // i_acl_2949_v4l2_ctrl_get_name706(LOGICAL,577)@26 + 1
    assign i_acl_2949_v4l2_ctrl_get_name706_qi = i_pivot517_v4l2_ctrl_get_name317_c ^ redist95_i_pivot567_v4l2_ctrl_get_name15_c_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2949_v4l2_ctrl_get_name706_delay ( .xin(i_acl_2949_v4l2_ctrl_get_name706_qi), .xout(i_acl_2949_v4l2_ctrl_get_name706_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist164_i_acl_2949_v4l2_ctrl_get_name706_q_2(DELAY,1706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist164_i_acl_2949_v4l2_ctrl_get_name706_q_2_q <= '0;
        end
        else
        begin
            redist164_i_acl_2949_v4l2_ctrl_get_name706_q_2_q <= $unsigned(i_acl_2949_v4l2_ctrl_get_name706_q);
        end
    end

    // i_acl_2953_v4l2_ctrl_get_name707(MUX,578)@28 + 1
    assign i_acl_2953_v4l2_ctrl_get_name707_s = redist164_i_acl_2949_v4l2_ctrl_get_name706_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_2953_v4l2_ctrl_get_name707_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_2953_v4l2_ctrl_get_name707_s)
                1'b0 : i_acl_2953_v4l2_ctrl_get_name707_q <= i_acl_2944_v4l2_ctrl_get_name705_q;
                1'b1 : i_acl_2953_v4l2_ctrl_get_name707_q <= c_i64_46899360619529502721302_q;
                default : i_acl_2953_v4l2_ctrl_get_name707_q <= 64'b0;
            endcase
        end
    end

    // i_acl_2954_v4l2_ctrl_get_name708(LOGICAL,579)@26 + 1
    assign i_acl_2954_v4l2_ctrl_get_name708_qi = i_pivot511_v4l2_ctrl_get_name217_c ^ i_pivot509_v4l2_ctrl_get_name315_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2954_v4l2_ctrl_get_name708_delay ( .xin(i_acl_2954_v4l2_ctrl_get_name708_qi), .xout(i_acl_2954_v4l2_ctrl_get_name708_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3(DELAY,1705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_delay_0 <= '0;
            redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_q <= '0;
        end
        else
        begin
            redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_delay_0 <= $unsigned(i_acl_2954_v4l2_ctrl_get_name708_q);
            redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_q <= redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_delay_0;
        end
    end

    // i_acl_2962_v4l2_ctrl_get_name709(MUX,580)@29
    assign i_acl_2962_v4l2_ctrl_get_name709_s = redist163_i_acl_2954_v4l2_ctrl_get_name708_q_3_q;
    always @(i_acl_2962_v4l2_ctrl_get_name709_s or i_acl_2953_v4l2_ctrl_get_name707_q or c_i64_46902175369296609281303_q)
    begin
        unique case (i_acl_2962_v4l2_ctrl_get_name709_s)
            1'b0 : i_acl_2962_v4l2_ctrl_get_name709_q = i_acl_2953_v4l2_ctrl_get_name707_q;
            1'b1 : i_acl_2962_v4l2_ctrl_get_name709_q = c_i64_46902175369296609281303_q;
            default : i_acl_2962_v4l2_ctrl_get_name709_q = 64'b0;
        endcase
    end

    // c_i32_359884_recast_x(CONSTANT,1239)
    assign c_i32_359884_recast_x_q = $unsigned(32'b00000000000000000000000101100111);

    // i_pivot453_v4l2_ctrl_get_name195(COMPARE,823)@26
    assign i_pivot453_v4l2_ctrl_get_name195_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot453_v4l2_ctrl_get_name195_b = $unsigned({{2{c_i32_359884_recast_x_q[31]}}, c_i32_359884_recast_x_q});
    assign i_pivot453_v4l2_ctrl_get_name195_o = $unsigned($signed(i_pivot453_v4l2_ctrl_get_name195_a) - $signed(i_pivot453_v4l2_ctrl_get_name195_b));
    assign i_pivot453_v4l2_ctrl_get_name195_c[0] = i_pivot453_v4l2_ctrl_get_name195_o[33];

    // c_i32_358811_recast_x(CONSTANT,1238)
    assign c_i32_358811_recast_x_q = $unsigned(32'b00000000000000000000000101100110);

    // i_pivot461_v4l2_ctrl_get_name49(COMPARE,827)@26
    assign i_pivot461_v4l2_ctrl_get_name49_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot461_v4l2_ctrl_get_name49_b = $unsigned({{2{c_i32_358811_recast_x_q[31]}}, c_i32_358811_recast_x_q});
    assign i_pivot461_v4l2_ctrl_get_name49_o = $unsigned($signed(i_pivot461_v4l2_ctrl_get_name49_a) - $signed(i_pivot461_v4l2_ctrl_get_name49_b));
    assign i_pivot461_v4l2_ctrl_get_name49_c[0] = i_pivot461_v4l2_ctrl_get_name49_o[33];

    // i_acl_2964_v4l2_ctrl_get_name710(LOGICAL,581)@26 + 1
    assign i_acl_2964_v4l2_ctrl_get_name710_qi = i_pivot461_v4l2_ctrl_get_name49_c ^ i_pivot453_v4l2_ctrl_get_name195_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2964_v4l2_ctrl_get_name710_delay ( .xin(i_acl_2964_v4l2_ctrl_get_name710_qi), .xout(i_acl_2964_v4l2_ctrl_get_name710_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3(DELAY,1704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_delay_0 <= '0;
            redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_q <= '0;
        end
        else
        begin
            redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_delay_0 <= $unsigned(i_acl_2964_v4l2_ctrl_get_name710_q);
            redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_q <= redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_delay_0;
        end
    end

    // i_acl_2970_v4l2_ctrl_get_name711(MUX,582)@29
    assign i_acl_2970_v4l2_ctrl_get_name711_s = redist162_i_acl_2964_v4l2_ctrl_get_name710_q_3_q;
    always @(i_acl_2970_v4l2_ctrl_get_name711_s or i_acl_2962_v4l2_ctrl_get_name709_q or c_i64_46904990119063715841304_q)
    begin
        unique case (i_acl_2970_v4l2_ctrl_get_name711_s)
            1'b0 : i_acl_2970_v4l2_ctrl_get_name711_q = i_acl_2962_v4l2_ctrl_get_name709_q;
            1'b1 : i_acl_2970_v4l2_ctrl_get_name711_q = c_i64_46904990119063715841304_q;
            default : i_acl_2970_v4l2_ctrl_get_name711_q = 64'b0;
        endcase
    end

    // c_i32_360836_recast_x(CONSTANT,1240)
    assign c_i32_360836_recast_x_q = $unsigned(32'b00000000000000000000000101101000);

    // i_pivot459_v4l2_ctrl_get_name99(COMPARE,826)@26
    assign i_pivot459_v4l2_ctrl_get_name99_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot459_v4l2_ctrl_get_name99_b = $unsigned({{2{c_i32_360836_recast_x_q[31]}}, c_i32_360836_recast_x_q});
    assign i_pivot459_v4l2_ctrl_get_name99_o = $unsigned($signed(i_pivot459_v4l2_ctrl_get_name99_a) - $signed(i_pivot459_v4l2_ctrl_get_name99_b));
    assign i_pivot459_v4l2_ctrl_get_name99_c[0] = i_pivot459_v4l2_ctrl_get_name99_o[33];

    // i_acl_2971_v4l2_ctrl_get_name712(LOGICAL,583)@26 + 1
    assign i_acl_2971_v4l2_ctrl_get_name712_qi = i_pivot453_v4l2_ctrl_get_name195_c ^ i_pivot459_v4l2_ctrl_get_name99_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2971_v4l2_ctrl_get_name712_delay ( .xin(i_acl_2971_v4l2_ctrl_get_name712_qi), .xout(i_acl_2971_v4l2_ctrl_get_name712_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3(DELAY,1703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_delay_0 <= '0;
            redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_q <= '0;
        end
        else
        begin
            redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_delay_0 <= $unsigned(i_acl_2971_v4l2_ctrl_get_name712_q);
            redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_q <= redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_delay_0;
        end
    end

    // i_acl_2978_v4l2_ctrl_get_name713(MUX,584)@29
    assign i_acl_2978_v4l2_ctrl_get_name713_s = redist161_i_acl_2971_v4l2_ctrl_get_name712_q_3_q;
    always @(i_acl_2978_v4l2_ctrl_get_name713_s or i_acl_2970_v4l2_ctrl_get_name711_q or c_i64_46907804868830822401305_q)
    begin
        unique case (i_acl_2978_v4l2_ctrl_get_name713_s)
            1'b0 : i_acl_2978_v4l2_ctrl_get_name713_q = i_acl_2970_v4l2_ctrl_get_name711_q;
            1'b1 : i_acl_2978_v4l2_ctrl_get_name713_q = c_i64_46907804868830822401305_q;
            default : i_acl_2978_v4l2_ctrl_get_name713_q = 64'b0;
        endcase
    end

    // c_i32_357937_recast_x(CONSTANT,1237)
    assign c_i32_357937_recast_x_q = $unsigned(32'b00000000000000000000000101100101);

    // i_pivot447_v4l2_ctrl_get_name301(COMPARE,820)@26
    assign i_pivot447_v4l2_ctrl_get_name301_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot447_v4l2_ctrl_get_name301_b = $unsigned({{2{c_i32_357937_recast_x_q[31]}}, c_i32_357937_recast_x_q});
    assign i_pivot447_v4l2_ctrl_get_name301_o = $unsigned($signed(i_pivot447_v4l2_ctrl_get_name301_a) - $signed(i_pivot447_v4l2_ctrl_get_name301_b));
    assign i_pivot447_v4l2_ctrl_get_name301_c[0] = i_pivot447_v4l2_ctrl_get_name301_o[33];

    // c_i32_356883_recast_x(CONSTANT,1236)
    assign c_i32_356883_recast_x_q = $unsigned(32'b00000000000000000000000101100100);

    // i_pivot449_v4l2_ctrl_get_name193(COMPARE,821)@26
    assign i_pivot449_v4l2_ctrl_get_name193_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot449_v4l2_ctrl_get_name193_b = $unsigned({{2{c_i32_356883_recast_x_q[31]}}, c_i32_356883_recast_x_q});
    assign i_pivot449_v4l2_ctrl_get_name193_o = $unsigned($signed(i_pivot449_v4l2_ctrl_get_name193_a) - $signed(i_pivot449_v4l2_ctrl_get_name193_b));
    assign i_pivot449_v4l2_ctrl_get_name193_c[0] = i_pivot449_v4l2_ctrl_get_name193_o[33];

    // i_acl_2979_v4l2_ctrl_get_name714(LOGICAL,585)@26 + 1
    assign i_acl_2979_v4l2_ctrl_get_name714_qi = i_pivot449_v4l2_ctrl_get_name193_c ^ i_pivot447_v4l2_ctrl_get_name301_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2979_v4l2_ctrl_get_name714_delay ( .xin(i_acl_2979_v4l2_ctrl_get_name714_qi), .xout(i_acl_2979_v4l2_ctrl_get_name714_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3(DELAY,1702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_delay_0 <= '0;
            redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_q <= '0;
        end
        else
        begin
            redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_delay_0 <= $unsigned(i_acl_2979_v4l2_ctrl_get_name714_q);
            redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_q <= redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_delay_0;
        end
    end

    // i_acl_2987_v4l2_ctrl_get_name715(MUX,586)@29
    assign i_acl_2987_v4l2_ctrl_get_name715_s = redist160_i_acl_2979_v4l2_ctrl_get_name714_q_3_q;
    always @(i_acl_2987_v4l2_ctrl_get_name715_s or i_acl_2978_v4l2_ctrl_get_name713_q or c_i64_46910619618597928961306_q)
    begin
        unique case (i_acl_2987_v4l2_ctrl_get_name715_s)
            1'b0 : i_acl_2987_v4l2_ctrl_get_name715_q = i_acl_2978_v4l2_ctrl_get_name713_q;
            1'b1 : i_acl_2987_v4l2_ctrl_get_name715_q = c_i64_46910619618597928961306_q;
            default : i_acl_2987_v4l2_ctrl_get_name715_q = 64'b0;
        endcase
    end

    // i_acl_2990_v4l2_ctrl_get_name716(LOGICAL,587)@26 + 1
    assign i_acl_2990_v4l2_ctrl_get_name716_qi = i_pivot447_v4l2_ctrl_get_name301_c ^ i_pivot461_v4l2_ctrl_get_name49_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2990_v4l2_ctrl_get_name716_delay ( .xin(i_acl_2990_v4l2_ctrl_get_name716_qi), .xout(i_acl_2990_v4l2_ctrl_get_name716_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3(DELAY,1701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_delay_0 <= '0;
            redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_q <= '0;
        end
        else
        begin
            redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_delay_0 <= $unsigned(i_acl_2990_v4l2_ctrl_get_name716_q);
            redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_q <= redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_delay_0;
        end
    end

    // i_acl_2996_v4l2_ctrl_get_name717(MUX,588)@29
    assign i_acl_2996_v4l2_ctrl_get_name717_s = redist159_i_acl_2990_v4l2_ctrl_get_name716_q_3_q;
    always @(i_acl_2996_v4l2_ctrl_get_name717_s or i_acl_2987_v4l2_ctrl_get_name715_q or c_i64_46913434368365035521307_q)
    begin
        unique case (i_acl_2996_v4l2_ctrl_get_name717_s)
            1'b0 : i_acl_2996_v4l2_ctrl_get_name717_q = i_acl_2987_v4l2_ctrl_get_name715_q;
            1'b1 : i_acl_2996_v4l2_ctrl_get_name717_q = c_i64_46913434368365035521307_q;
            default : i_acl_2996_v4l2_ctrl_get_name717_q = 64'b0;
        endcase
    end

    // redist113_i_pivot457_v4l2_ctrl_get_name197_c_3(DELAY,1655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_0 <= '0;
            redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_1 <= '0;
            redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_q <= '0;
        end
        else
        begin
            redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_0 <= $unsigned(i_pivot457_v4l2_ctrl_get_name197_c);
            redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_1 <= redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_0;
            redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_q <= redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_delay_1;
        end
    end

    // i_acl_2997_v4l2_ctrl_get_name718(LOGICAL,589)@26 + 1
    assign i_acl_2997_v4l2_ctrl_get_name718_qi = i_pivot459_v4l2_ctrl_get_name99_c ^ redist113_i_pivot457_v4l2_ctrl_get_name197_c_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_2997_v4l2_ctrl_get_name718_delay ( .xin(i_acl_2997_v4l2_ctrl_get_name718_qi), .xout(i_acl_2997_v4l2_ctrl_get_name718_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3(DELAY,1700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_delay_0 <= '0;
            redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_q <= '0;
        end
        else
        begin
            redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_delay_0 <= $unsigned(i_acl_2997_v4l2_ctrl_get_name718_q);
            redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_q <= redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_delay_0;
        end
    end

    // i_acl_3004_v4l2_ctrl_get_name719(MUX,590)@29
    assign i_acl_3004_v4l2_ctrl_get_name719_s = redist158_i_acl_2997_v4l2_ctrl_get_name718_q_3_q;
    always @(i_acl_3004_v4l2_ctrl_get_name719_s or i_acl_2996_v4l2_ctrl_get_name717_q or c_i64_46916249118132142081308_q)
    begin
        unique case (i_acl_3004_v4l2_ctrl_get_name719_s)
            1'b0 : i_acl_3004_v4l2_ctrl_get_name719_q = i_acl_2996_v4l2_ctrl_get_name717_q;
            1'b1 : i_acl_3004_v4l2_ctrl_get_name719_q = c_i64_46916249118132142081308_q;
            default : i_acl_3004_v4l2_ctrl_get_name719_q = 64'b0;
        endcase
    end

    // c_i32_367939_recast_x(CONSTANT,1247)
    assign c_i32_367939_recast_x_q = $unsigned(32'b00000000000000000000000101101111);

    // i_pivot465_v4l2_ctrl_get_name305(COMPARE,829)@26
    assign i_pivot465_v4l2_ctrl_get_name305_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot465_v4l2_ctrl_get_name305_b = $unsigned({{2{c_i32_367939_recast_x_q[31]}}, c_i32_367939_recast_x_q});
    assign i_pivot465_v4l2_ctrl_get_name305_o = $unsigned($signed(i_pivot465_v4l2_ctrl_get_name305_a) - $signed(i_pivot465_v4l2_ctrl_get_name305_b));
    assign i_pivot465_v4l2_ctrl_get_name305_c[0] = i_pivot465_v4l2_ctrl_get_name305_o[33];

    // redist112_i_pivot467_v4l2_ctrl_get_name201_c_4(DELAY,1654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_0 <= '0;
            redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_1 <= '0;
            redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_q <= '0;
        end
        else
        begin
            redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_0 <= $unsigned(i_pivot467_v4l2_ctrl_get_name201_c);
            redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_1 <= redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_0;
            redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_q <= redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_delay_1;
        end
    end

    // i_acl_3005_v4l2_ctrl_get_name720(LOGICAL,591)@26 + 1
    assign i_acl_3005_v4l2_ctrl_get_name720_qi = redist112_i_pivot467_v4l2_ctrl_get_name201_c_4_q ^ i_pivot465_v4l2_ctrl_get_name305_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3005_v4l2_ctrl_get_name720_delay ( .xin(i_acl_3005_v4l2_ctrl_get_name720_qi), .xout(i_acl_3005_v4l2_ctrl_get_name720_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3(DELAY,1699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_delay_0 <= '0;
            redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_q <= '0;
        end
        else
        begin
            redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_delay_0 <= $unsigned(i_acl_3005_v4l2_ctrl_get_name720_q);
            redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_q <= redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_delay_0;
        end
    end

    // i_acl_3013_v4l2_ctrl_get_name721(MUX,592)@29 + 1
    assign i_acl_3013_v4l2_ctrl_get_name721_s = redist157_i_acl_3005_v4l2_ctrl_get_name720_q_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_3013_v4l2_ctrl_get_name721_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_3013_v4l2_ctrl_get_name721_s)
                1'b0 : i_acl_3013_v4l2_ctrl_get_name721_q <= i_acl_3004_v4l2_ctrl_get_name719_q;
                1'b1 : i_acl_3013_v4l2_ctrl_get_name721_q <= c_i64_46919063867899248641309_q;
                default : i_acl_3013_v4l2_ctrl_get_name721_q <= 64'b0;
            endcase
        end
    end

    // c_i32_135822_recast_x(CONSTANT,1156)
    assign c_i32_135822_recast_x_q = $unsigned(32'b00000000000000000000000010000111);

    // i_pivot15_v4l2_ctrl_get_name71(COMPARE,757)@26
    assign i_pivot15_v4l2_ctrl_get_name71_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot15_v4l2_ctrl_get_name71_b = $unsigned({{2{c_i32_135822_recast_x_q[31]}}, c_i32_135822_recast_x_q});
    assign i_pivot15_v4l2_ctrl_get_name71_o = $unsigned($signed(i_pivot15_v4l2_ctrl_get_name71_a) - $signed(i_pivot15_v4l2_ctrl_get_name71_b));
    assign i_pivot15_v4l2_ctrl_get_name71_c[0] = i_pivot15_v4l2_ctrl_get_name71_o[33];

    // redist77_i_pivot9_v4l2_ctrl_get_name141_c_22(DELAY,1619)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist77_i_pivot9_v4l2_ctrl_get_name141_c_22 ( .xin(i_pivot9_v4l2_ctrl_get_name141_c), .xout(redist77_i_pivot9_v4l2_ctrl_get_name141_c_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3014_v4l2_ctrl_get_name722(LOGICAL,593)@26 + 1
    assign i_acl_3014_v4l2_ctrl_get_name722_qi = redist77_i_pivot9_v4l2_ctrl_get_name141_c_22_q ^ i_pivot15_v4l2_ctrl_get_name71_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3014_v4l2_ctrl_get_name722_delay ( .xin(i_acl_3014_v4l2_ctrl_get_name722_qi), .xout(i_acl_3014_v4l2_ctrl_get_name722_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4(DELAY,1698)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_0 <= '0;
            redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_1 <= '0;
            redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_q <= '0;
        end
        else
        begin
            redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_0 <= $unsigned(i_acl_3014_v4l2_ctrl_get_name722_q);
            redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_1 <= redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_0;
            redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_q <= redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_delay_1;
        end
    end

    // i_acl_3021_v4l2_ctrl_get_name723(MUX,594)@30
    assign i_acl_3021_v4l2_ctrl_get_name723_s = redist156_i_acl_3014_v4l2_ctrl_get_name722_q_4_q;
    always @(i_acl_3021_v4l2_ctrl_get_name723_s or i_acl_3013_v4l2_ctrl_get_name721_q or c_i64_46921878617666355201310_q)
    begin
        unique case (i_acl_3021_v4l2_ctrl_get_name723_s)
            1'b0 : i_acl_3021_v4l2_ctrl_get_name723_q = i_acl_3013_v4l2_ctrl_get_name721_q;
            1'b1 : i_acl_3021_v4l2_ctrl_get_name723_q = c_i64_46921878617666355201310_q;
            default : i_acl_3021_v4l2_ctrl_get_name723_q = 64'b0;
        endcase
    end

    // i_acl_3028_v4l2_ctrl_get_name724(LOGICAL,595)@4 + 1
    assign i_acl_3028_v4l2_ctrl_get_name724_qi = i_pivot475_v4l2_ctrl_get_name309_c ^ i_pivot653_v4l2_ctrl_get_name5_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3028_v4l2_ctrl_get_name724_delay ( .xin(i_acl_3028_v4l2_ctrl_get_name724_qi), .xout(i_acl_3028_v4l2_ctrl_get_name724_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist155_i_acl_3028_v4l2_ctrl_get_name724_q_26(DELAY,1697)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist155_i_acl_3028_v4l2_ctrl_get_name724_q_26 ( .xin(i_acl_3028_v4l2_ctrl_get_name724_q), .xout(redist155_i_acl_3028_v4l2_ctrl_get_name724_q_26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3030_v4l2_ctrl_get_name725(MUX,596)@30
    assign i_acl_3030_v4l2_ctrl_get_name725_s = redist155_i_acl_3028_v4l2_ctrl_get_name724_q_26_q;
    always @(i_acl_3030_v4l2_ctrl_get_name725_s or i_acl_3021_v4l2_ctrl_get_name723_q or c_i64_46924693367433461761311_q)
    begin
        unique case (i_acl_3030_v4l2_ctrl_get_name725_s)
            1'b0 : i_acl_3030_v4l2_ctrl_get_name725_q = i_acl_3021_v4l2_ctrl_get_name723_q;
            1'b1 : i_acl_3030_v4l2_ctrl_get_name725_q = c_i64_46924693367433461761311_q;
            default : i_acl_3030_v4l2_ctrl_get_name725_q = 64'b0;
        endcase
    end

    // redist79_i_pivot643_v4l2_ctrl_get_name135_c_5(DELAY,1621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_0 <= '0;
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_1 <= '0;
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_2 <= '0;
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_q <= '0;
        end
        else
        begin
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_0 <= $unsigned(i_pivot643_v4l2_ctrl_get_name135_c);
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_1 <= redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_0;
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_2 <= redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_1;
            redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_q <= redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_delay_2;
        end
    end

    // i_acl_3031_v4l2_ctrl_get_name726(LOGICAL,597)@7 + 1
    assign i_acl_3031_v4l2_ctrl_get_name726_qi = redist79_i_pivot643_v4l2_ctrl_get_name135_c_5_q ^ i_pivot641_v4l2_ctrl_get_name269_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3031_v4l2_ctrl_get_name726_delay ( .xin(i_acl_3031_v4l2_ctrl_get_name726_qi), .xout(i_acl_3031_v4l2_ctrl_get_name726_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist154_i_acl_3031_v4l2_ctrl_get_name726_q_23(DELAY,1696)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist154_i_acl_3031_v4l2_ctrl_get_name726_q_23 ( .xin(i_acl_3031_v4l2_ctrl_get_name726_q), .xout(redist154_i_acl_3031_v4l2_ctrl_get_name726_q_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3038_v4l2_ctrl_get_name727(MUX,598)@30
    assign i_acl_3038_v4l2_ctrl_get_name727_s = redist154_i_acl_3031_v4l2_ctrl_get_name726_q_23_q;
    always @(i_acl_3038_v4l2_ctrl_get_name727_s or i_acl_3030_v4l2_ctrl_get_name725_q or c_i64_46927508117200568321312_q)
    begin
        unique case (i_acl_3038_v4l2_ctrl_get_name727_s)
            1'b0 : i_acl_3038_v4l2_ctrl_get_name727_q = i_acl_3030_v4l2_ctrl_get_name725_q;
            1'b1 : i_acl_3038_v4l2_ctrl_get_name727_q = c_i64_46927508117200568321312_q;
            default : i_acl_3038_v4l2_ctrl_get_name727_q = 64'b0;
        endcase
    end

    // c_i64_46935952366501888001317(CONSTANT,323)
    assign c_i64_46935952366501888001317_q = $unsigned(64'b0100000100100011000000000000000000000000000000000000000000000000);

    // c_i32_1471321(CONSTANT,15)
    assign c_i32_1471321_q = $unsigned(32'b00000000000000000000000010010011);

    // dupName_140_comparator_x(LOGICAL,1477)@26 + 1
    assign dupName_140_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1471321_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_140_comparator_x_delay ( .xin(dupName_140_comparator_x_qi), .xout(dupName_140_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_dupName_140_comparator_x_q_4(DELAY,1570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_dupName_140_comparator_x_q_4_delay_0 <= '0;
            redist28_dupName_140_comparator_x_q_4_delay_1 <= '0;
            redist28_dupName_140_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist28_dupName_140_comparator_x_q_4_delay_0 <= $unsigned(dupName_140_comparator_x_q);
            redist28_dupName_140_comparator_x_q_4_delay_1 <= redist28_dupName_140_comparator_x_q_4_delay_0;
            redist28_dupName_140_comparator_x_q_4_q <= redist28_dupName_140_comparator_x_q_4_delay_1;
        end
    end

    // c_i64_46938767116268994561316(CONSTANT,324)
    assign c_i64_46938767116268994561316_q = $unsigned(64'b0100000100100100000000000000000000000000000000000000000000000000);

    // c_i32_1461320(CONSTANT,14)
    assign c_i32_1461320_q = $unsigned(32'b00000000000000000000000010010010);

    // dupName_139_comparator_x(LOGICAL,1476)@26 + 1
    assign dupName_139_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1461320_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_139_comparator_x_delay ( .xin(dupName_139_comparator_x_qi), .xout(dupName_139_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_dupName_139_comparator_x_q_4(DELAY,1571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_dupName_139_comparator_x_q_4_delay_0 <= '0;
            redist29_dupName_139_comparator_x_q_4_delay_1 <= '0;
            redist29_dupName_139_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist29_dupName_139_comparator_x_q_4_delay_0 <= $unsigned(dupName_139_comparator_x_q);
            redist29_dupName_139_comparator_x_q_4_delay_1 <= redist29_dupName_139_comparator_x_q_4_delay_0;
            redist29_dupName_139_comparator_x_q_4_q <= redist29_dupName_139_comparator_x_q_4_delay_1;
        end
    end

    // c_i64_46933137616734781441315(CONSTANT,322)
    assign c_i64_46933137616734781441315_q = $unsigned(64'b0100000100100010000000000000000000000000000000000000000000000000);

    // c_i32_1451319(CONSTANT,13)
    assign c_i32_1451319_q = $unsigned(32'b00000000000000000000000010010001);

    // dupName_138_comparator_x(LOGICAL,1475)@26 + 1
    assign dupName_138_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1451319_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_138_comparator_x_delay ( .xin(dupName_138_comparator_x_qi), .xout(dupName_138_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_dupName_138_comparator_x_q_4(DELAY,1572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_dupName_138_comparator_x_q_4_delay_0 <= '0;
            redist30_dupName_138_comparator_x_q_4_delay_1 <= '0;
            redist30_dupName_138_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist30_dupName_138_comparator_x_q_4_delay_0 <= $unsigned(dupName_138_comparator_x_q);
            redist30_dupName_138_comparator_x_q_4_delay_1 <= redist30_dupName_138_comparator_x_q_4_delay_0;
            redist30_dupName_138_comparator_x_q_4_q <= redist30_dupName_138_comparator_x_q_4_delay_1;
        end
    end

    // c_i64_46930322866967674881314(CONSTANT,321)
    assign c_i64_46930322866967674881314_q = $unsigned(64'b0100000100100001000000000000000000000000000000000000000000000000);

    // c_i32_1441318(CONSTANT,12)
    assign c_i32_1441318_q = $unsigned(32'b00000000000000000000000010010000);

    // dupName_137_comparator_x(LOGICAL,1474)@26 + 1
    assign dupName_137_comparator_x_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1441318_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_137_comparator_x_delay ( .xin(dupName_137_comparator_x_qi), .xout(dupName_137_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_dupName_137_comparator_x_q_4(DELAY,1573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_dupName_137_comparator_x_q_4_delay_0 <= '0;
            redist31_dupName_137_comparator_x_q_4_delay_1 <= '0;
            redist31_dupName_137_comparator_x_q_4_q <= '0;
        end
        else
        begin
            redist31_dupName_137_comparator_x_q_4_delay_0 <= $unsigned(dupName_137_comparator_x_q);
            redist31_dupName_137_comparator_x_q_4_delay_1 <= redist31_dupName_137_comparator_x_q_4_delay_0;
            redist31_dupName_137_comparator_x_q_4_q <= redist31_dupName_137_comparator_x_q_4_delay_1;
        end
    end

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728(SELECTOR,740)@30
    always @(redist31_dupName_137_comparator_x_q_4_q or c_i64_46930322866967674881314_q or redist30_dupName_138_comparator_x_q_4_q or c_i64_46933137616734781441315_q or redist29_dupName_139_comparator_x_q_4_q or c_i64_46938767116268994561316_q or redist28_dupName_140_comparator_x_q_4_q or c_i64_46935952366501888001317_q or i_acl_3038_v4l2_ctrl_get_name727_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q = i_acl_3038_v4l2_ctrl_get_name727_q;
        if (redist28_dupName_140_comparator_x_q_4_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q = c_i64_46935952366501888001317_q;
        end
        if (redist29_dupName_139_comparator_x_q_4_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q = c_i64_46938767116268994561316_q;
        end
        if (redist30_dupName_138_comparator_x_q_4_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q = c_i64_46933137616734781441315_q;
        end
        if (redist31_dupName_137_comparator_x_q_4_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q = c_i64_46930322866967674881314_q;
        end
    end

    // redist107_i_pivot481_v4l2_ctrl_get_name51_c_20(DELAY,1649)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist107_i_pivot481_v4l2_ctrl_get_name51_c_20 ( .xin(i_pivot481_v4l2_ctrl_get_name51_c), .xout(redist107_i_pivot481_v4l2_ctrl_get_name51_c_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3075_v4l2_ctrl_get_name729(LOGICAL,599)@26 + 1
    assign i_acl_3075_v4l2_ctrl_get_name729_qi = i_pivot465_v4l2_ctrl_get_name305_c ^ redist107_i_pivot481_v4l2_ctrl_get_name51_c_20_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3075_v4l2_ctrl_get_name729_delay ( .xin(i_acl_3075_v4l2_ctrl_get_name729_qi), .xout(i_acl_3075_v4l2_ctrl_get_name729_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4(DELAY,1695)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_0 <= '0;
            redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_1 <= '0;
            redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_q <= '0;
        end
        else
        begin
            redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_0 <= $unsigned(i_acl_3075_v4l2_ctrl_get_name729_q);
            redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_1 <= redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_0;
            redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_q <= redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_delay_1;
        end
    end

    // i_acl_3081_v4l2_ctrl_get_name730(MUX,600)@30
    assign i_acl_3081_v4l2_ctrl_get_name730_s = redist153_i_acl_3075_v4l2_ctrl_get_name729_q_4_q;
    always @(i_acl_3081_v4l2_ctrl_get_name730_s or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q or c_i64_46941581866036101121322_q)
    begin
        unique case (i_acl_3081_v4l2_ctrl_get_name730_s)
            1'b0 : i_acl_3081_v4l2_ctrl_get_name730_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3635_v4l2_ctrl_get_name728_q;
            1'b1 : i_acl_3081_v4l2_ctrl_get_name730_q = c_i64_46941581866036101121322_q;
            default : i_acl_3081_v4l2_ctrl_get_name730_q = 64'b0;
        endcase
    end

    // redist114_i_pivot451_v4l2_ctrl_get_name97_c_20(DELAY,1656)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist114_i_pivot451_v4l2_ctrl_get_name97_c_20 ( .xin(i_pivot451_v4l2_ctrl_get_name97_c), .xout(redist114_i_pivot451_v4l2_ctrl_get_name97_c_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3082_v4l2_ctrl_get_name731(LOGICAL,601)@26 + 1
    assign i_acl_3082_v4l2_ctrl_get_name731_qi = redist114_i_pivot451_v4l2_ctrl_get_name97_c_20_q ^ i_pivot449_v4l2_ctrl_get_name193_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3082_v4l2_ctrl_get_name731_delay ( .xin(i_acl_3082_v4l2_ctrl_get_name731_qi), .xout(i_acl_3082_v4l2_ctrl_get_name731_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4(DELAY,1694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_0 <= '0;
            redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_1 <= '0;
            redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_q <= '0;
        end
        else
        begin
            redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_0 <= $unsigned(i_acl_3082_v4l2_ctrl_get_name731_q);
            redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_1 <= redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_0;
            redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_q <= redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_delay_1;
        end
    end

    // i_acl_3089_v4l2_ctrl_get_name732(MUX,602)@30 + 1
    assign i_acl_3089_v4l2_ctrl_get_name732_s = redist152_i_acl_3082_v4l2_ctrl_get_name731_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_3089_v4l2_ctrl_get_name732_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_3089_v4l2_ctrl_get_name732_s)
                1'b0 : i_acl_3089_v4l2_ctrl_get_name732_q <= i_acl_3081_v4l2_ctrl_get_name730_q;
                1'b1 : i_acl_3089_v4l2_ctrl_get_name732_q <= c_i64_46944396615803207681323_q;
                default : i_acl_3089_v4l2_ctrl_get_name732_q <= 64'b0;
            endcase
        end
    end

    // c_i32_1881324_recast_x(CONSTANT,1166)
    assign c_i32_1881324_recast_x_q = $unsigned(32'b00000000000000000000000010111100);

    // i_unnamed_v4l2_ctrl_get_name733(LOGICAL,958)@26 + 1
    assign i_unnamed_v4l2_ctrl_get_name733_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1881324_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_v4l2_ctrl_get_name733_delay ( .xin(i_unnamed_v4l2_ctrl_get_name733_qi), .xout(i_unnamed_v4l2_ctrl_get_name733_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist74_i_unnamed_v4l2_ctrl_get_name733_q_5(DELAY,1616)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_0 <= '0;
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_1 <= '0;
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_2 <= '0;
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_q <= '0;
        end
        else
        begin
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_0 <= $unsigned(i_unnamed_v4l2_ctrl_get_name733_q);
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_1 <= redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_0;
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_2 <= redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_1;
            redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_q <= redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_delay_2;
        end
    end

    // i_acl_3098_v4l2_ctrl_get_name735(MUX,603)@31
    assign i_acl_3098_v4l2_ctrl_get_name735_s = redist74_i_unnamed_v4l2_ctrl_get_name733_q_5_q;
    always @(i_acl_3098_v4l2_ctrl_get_name735_s or i_acl_3089_v4l2_ctrl_get_name732_q or c_i64_46947211365570314241325_q)
    begin
        unique case (i_acl_3098_v4l2_ctrl_get_name735_s)
            1'b0 : i_acl_3098_v4l2_ctrl_get_name735_q = i_acl_3089_v4l2_ctrl_get_name732_q;
            1'b1 : i_acl_3098_v4l2_ctrl_get_name735_q = c_i64_46947211365570314241325_q;
            default : i_acl_3098_v4l2_ctrl_get_name735_q = 64'b0;
        endcase
    end

    // c_i32_1481326_recast_x(CONSTANT,1158)
    assign c_i32_1481326_recast_x_q = $unsigned(32'b00000000000000000000000010010100);

    // i_unnamed_v4l2_ctrl_get_name736(LOGICAL,959)@26 + 1
    assign i_unnamed_v4l2_ctrl_get_name736_qi = $unsigned(redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q == c_i32_1481326_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_v4l2_ctrl_get_name736_delay ( .xin(i_unnamed_v4l2_ctrl_get_name736_qi), .xout(i_unnamed_v4l2_ctrl_get_name736_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist73_i_unnamed_v4l2_ctrl_get_name736_q_5(DELAY,1615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_0 <= '0;
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_1 <= '0;
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_2 <= '0;
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_q <= '0;
        end
        else
        begin
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_0 <= $unsigned(i_unnamed_v4l2_ctrl_get_name736_q);
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_1 <= redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_0;
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_2 <= redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_1;
            redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_q <= redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_delay_2;
        end
    end

    // i_acl_3106_v4l2_ctrl_get_name738(MUX,604)@31
    assign i_acl_3106_v4l2_ctrl_get_name738_s = redist73_i_unnamed_v4l2_ctrl_get_name736_q_5_q;
    always @(i_acl_3106_v4l2_ctrl_get_name738_s or i_acl_3098_v4l2_ctrl_get_name735_q or c_i64_46950026115337420801327_q)
    begin
        unique case (i_acl_3106_v4l2_ctrl_get_name738_s)
            1'b0 : i_acl_3106_v4l2_ctrl_get_name738_q = i_acl_3098_v4l2_ctrl_get_name735_q;
            1'b1 : i_acl_3106_v4l2_ctrl_get_name738_q = c_i64_46950026115337420801327_q;
            default : i_acl_3106_v4l2_ctrl_get_name738_q = 64'b0;
        endcase
    end

    // redist93_i_pivot575_v4l2_ctrl_get_name121_c_25(DELAY,1635)
    dspba_delay_ver #( .width(1), .depth(24), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist93_i_pivot575_v4l2_ctrl_get_name121_c_25 ( .xin(i_pivot575_v4l2_ctrl_get_name121_c), .xout(redist93_i_pivot575_v4l2_ctrl_get_name121_c_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_416906_recast_x(CONSTANT,1296)
    assign c_i32_416906_recast_x_q = $unsigned(32'b00000000000000000000000110100000);

    // i_pivot569_v4l2_ctrl_get_name239(COMPARE,881)@26
    assign i_pivot569_v4l2_ctrl_get_name239_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot569_v4l2_ctrl_get_name239_b = $unsigned({{2{c_i32_416906_recast_x_q[31]}}, c_i32_416906_recast_x_q});
    assign i_pivot569_v4l2_ctrl_get_name239_o = $unsigned($signed(i_pivot569_v4l2_ctrl_get_name239_a) - $signed(i_pivot569_v4l2_ctrl_get_name239_b));
    assign i_pivot569_v4l2_ctrl_get_name239_c[0] = i_pivot569_v4l2_ctrl_get_name239_o[33];

    // i_acl_3107_v4l2_ctrl_get_name739(LOGICAL,605)@26 + 1
    assign i_acl_3107_v4l2_ctrl_get_name739_qi = i_pivot569_v4l2_ctrl_get_name239_c ^ redist93_i_pivot575_v4l2_ctrl_get_name121_c_25_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3107_v4l2_ctrl_get_name739_delay ( .xin(i_acl_3107_v4l2_ctrl_get_name739_qi), .xout(i_acl_3107_v4l2_ctrl_get_name739_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5(DELAY,1693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_0 <= '0;
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_1 <= '0;
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_2 <= '0;
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_q <= '0;
        end
        else
        begin
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_0 <= $unsigned(i_acl_3107_v4l2_ctrl_get_name739_q);
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_1 <= redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_0;
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_2 <= redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_1;
            redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_q <= redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_delay_2;
        end
    end

    // i_acl_3114_v4l2_ctrl_get_name740(MUX,606)@31
    assign i_acl_3114_v4l2_ctrl_get_name740_s = redist151_i_acl_3107_v4l2_ctrl_get_name739_q_5_q;
    always @(i_acl_3114_v4l2_ctrl_get_name740_s or i_acl_3106_v4l2_ctrl_get_name738_q or c_i64_46952840865104527361328_q)
    begin
        unique case (i_acl_3114_v4l2_ctrl_get_name740_s)
            1'b0 : i_acl_3114_v4l2_ctrl_get_name740_q = i_acl_3106_v4l2_ctrl_get_name738_q;
            1'b1 : i_acl_3114_v4l2_ctrl_get_name740_q = c_i64_46952840865104527361328_q;
            default : i_acl_3114_v4l2_ctrl_get_name740_q = 64'b0;
        endcase
    end

    // c_i32_411949_recast_x(CONSTANT,1291)
    assign c_i32_411949_recast_x_q = $unsigned(32'b00000000000000000000000110011011);

    // i_pivot553_v4l2_ctrl_get_name325(COMPARE,873)@26
    assign i_pivot553_v4l2_ctrl_get_name325_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot553_v4l2_ctrl_get_name325_b = $unsigned({{2{c_i32_411949_recast_x_q[31]}}, c_i32_411949_recast_x_q});
    assign i_pivot553_v4l2_ctrl_get_name325_o = $unsigned($signed(i_pivot553_v4l2_ctrl_get_name325_a) - $signed(i_pivot553_v4l2_ctrl_get_name325_b));
    assign i_pivot553_v4l2_ctrl_get_name325_c[0] = i_pivot553_v4l2_ctrl_get_name325_o[33];

    // redist97_i_pivot555_v4l2_ctrl_get_name235_c_23(DELAY,1639)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist97_i_pivot555_v4l2_ctrl_get_name235_c_23 ( .xin(i_pivot555_v4l2_ctrl_get_name235_c), .xout(redist97_i_pivot555_v4l2_ctrl_get_name235_c_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3115_v4l2_ctrl_get_name741(LOGICAL,607)@26 + 1
    assign i_acl_3115_v4l2_ctrl_get_name741_qi = redist97_i_pivot555_v4l2_ctrl_get_name235_c_23_q ^ i_pivot553_v4l2_ctrl_get_name325_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3115_v4l2_ctrl_get_name741_delay ( .xin(i_acl_3115_v4l2_ctrl_get_name741_qi), .xout(i_acl_3115_v4l2_ctrl_get_name741_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5(DELAY,1692)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_0 <= '0;
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_1 <= '0;
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_2 <= '0;
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_q <= '0;
        end
        else
        begin
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_0 <= $unsigned(i_acl_3115_v4l2_ctrl_get_name741_q);
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_1 <= redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_0;
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_2 <= redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_1;
            redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_q <= redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_delay_2;
        end
    end

    // i_acl_3123_v4l2_ctrl_get_name742(MUX,608)@31
    assign i_acl_3123_v4l2_ctrl_get_name742_s = redist150_i_acl_3115_v4l2_ctrl_get_name741_q_5_q;
    always @(i_acl_3123_v4l2_ctrl_get_name742_s or i_acl_3114_v4l2_ctrl_get_name740_q or c_i64_46955655614871633921329_q)
    begin
        unique case (i_acl_3123_v4l2_ctrl_get_name742_s)
            1'b0 : i_acl_3123_v4l2_ctrl_get_name742_q = i_acl_3114_v4l2_ctrl_get_name740_q;
            1'b1 : i_acl_3123_v4l2_ctrl_get_name742_q = c_i64_46955655614871633921329_q;
            default : i_acl_3123_v4l2_ctrl_get_name742_q = 64'b0;
        endcase
    end

    // redist96_i_pivot563_v4l2_ctrl_get_name59_c_23(DELAY,1638)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist96_i_pivot563_v4l2_ctrl_get_name59_c_23 ( .xin(i_pivot563_v4l2_ctrl_get_name59_c), .xout(redist96_i_pivot563_v4l2_ctrl_get_name59_c_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_408948_recast_x(CONSTANT,1288)
    assign c_i32_408948_recast_x_q = $unsigned(32'b00000000000000000000000110011000);

    // i_pivot547_v4l2_ctrl_get_name323(COMPARE,870)@26
    assign i_pivot547_v4l2_ctrl_get_name323_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot547_v4l2_ctrl_get_name323_b = $unsigned({{2{c_i32_408948_recast_x_q[31]}}, c_i32_408948_recast_x_q});
    assign i_pivot547_v4l2_ctrl_get_name323_o = $unsigned($signed(i_pivot547_v4l2_ctrl_get_name323_a) - $signed(i_pivot547_v4l2_ctrl_get_name323_b));
    assign i_pivot547_v4l2_ctrl_get_name323_c[0] = i_pivot547_v4l2_ctrl_get_name323_o[33];

    // i_acl_3126_v4l2_ctrl_get_name743(LOGICAL,609)@26 + 1
    assign i_acl_3126_v4l2_ctrl_get_name743_qi = i_pivot547_v4l2_ctrl_get_name323_c ^ redist96_i_pivot563_v4l2_ctrl_get_name59_c_23_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3126_v4l2_ctrl_get_name743_delay ( .xin(i_acl_3126_v4l2_ctrl_get_name743_qi), .xout(i_acl_3126_v4l2_ctrl_get_name743_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5(DELAY,1691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_0 <= '0;
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_1 <= '0;
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_2 <= '0;
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_q <= '0;
        end
        else
        begin
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_0 <= $unsigned(i_acl_3126_v4l2_ctrl_get_name743_q);
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_1 <= redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_0;
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_2 <= redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_1;
            redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_q <= redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_delay_2;
        end
    end

    // i_acl_3132_v4l2_ctrl_get_name744(MUX,610)@31
    assign i_acl_3132_v4l2_ctrl_get_name744_s = redist149_i_acl_3126_v4l2_ctrl_get_name743_q_5_q;
    always @(i_acl_3132_v4l2_ctrl_get_name744_s or i_acl_3123_v4l2_ctrl_get_name742_q or c_i64_46958470364638740481330_q)
    begin
        unique case (i_acl_3132_v4l2_ctrl_get_name744_s)
            1'b0 : i_acl_3132_v4l2_ctrl_get_name744_q = i_acl_3123_v4l2_ctrl_get_name742_q;
            1'b1 : i_acl_3132_v4l2_ctrl_get_name744_q = c_i64_46958470364638740481330_q;
            default : i_acl_3132_v4l2_ctrl_get_name744_q = 64'b0;
        endcase
    end

    // c_i32_404801_recast_x(CONSTANT,1284)
    assign c_i32_404801_recast_x_q = $unsigned(32'b00000000000000000000000110010100);

    // i_pivot565_v4l2_ctrl_get_name29(COMPARE,879)@26
    assign i_pivot565_v4l2_ctrl_get_name29_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot565_v4l2_ctrl_get_name29_b = $unsigned({{2{c_i32_404801_recast_x_q[31]}}, c_i32_404801_recast_x_q});
    assign i_pivot565_v4l2_ctrl_get_name29_o = $unsigned($signed(i_pivot565_v4l2_ctrl_get_name29_a) - $signed(i_pivot565_v4l2_ctrl_get_name29_b));
    assign i_pivot565_v4l2_ctrl_get_name29_c[0] = i_pivot565_v4l2_ctrl_get_name29_o[33];

    // c_i32_403947_recast_x(CONSTANT,1283)
    assign c_i32_403947_recast_x_q = $unsigned(32'b00000000000000000000000110010011);

    // i_pivot537_v4l2_ctrl_get_name321(COMPARE,865)@26
    assign i_pivot537_v4l2_ctrl_get_name321_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot537_v4l2_ctrl_get_name321_b = $unsigned({{2{c_i32_403947_recast_x_q[31]}}, c_i32_403947_recast_x_q});
    assign i_pivot537_v4l2_ctrl_get_name321_o = $unsigned($signed(i_pivot537_v4l2_ctrl_get_name321_a) - $signed(i_pivot537_v4l2_ctrl_get_name321_b));
    assign i_pivot537_v4l2_ctrl_get_name321_c[0] = i_pivot537_v4l2_ctrl_get_name321_o[33];

    // i_acl_3136_v4l2_ctrl_get_name745(LOGICAL,611)@26 + 1
    assign i_acl_3136_v4l2_ctrl_get_name745_qi = i_pivot537_v4l2_ctrl_get_name321_c ^ i_pivot565_v4l2_ctrl_get_name29_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3136_v4l2_ctrl_get_name745_delay ( .xin(i_acl_3136_v4l2_ctrl_get_name745_qi), .xout(i_acl_3136_v4l2_ctrl_get_name745_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5(DELAY,1690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_0 <= '0;
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_1 <= '0;
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_2 <= '0;
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_q <= '0;
        end
        else
        begin
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_0 <= $unsigned(i_acl_3136_v4l2_ctrl_get_name745_q);
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_1 <= redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_0;
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_2 <= redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_1;
            redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_q <= redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_delay_2;
        end
    end

    // i_acl_3141_v4l2_ctrl_get_name746(MUX,612)@31
    assign i_acl_3141_v4l2_ctrl_get_name746_s = redist148_i_acl_3136_v4l2_ctrl_get_name745_q_5_q;
    always @(i_acl_3141_v4l2_ctrl_get_name746_s or i_acl_3132_v4l2_ctrl_get_name744_q or c_i64_46961285114405847041331_q)
    begin
        unique case (i_acl_3141_v4l2_ctrl_get_name746_s)
            1'b0 : i_acl_3141_v4l2_ctrl_get_name746_q = i_acl_3132_v4l2_ctrl_get_name744_q;
            1'b1 : i_acl_3141_v4l2_ctrl_get_name746_q = c_i64_46961285114405847041331_q;
            default : i_acl_3141_v4l2_ctrl_get_name746_q = 64'b0;
        endcase
    end

    // c_i32_400900_recast_x(CONSTANT,1280)
    assign c_i32_400900_recast_x_q = $unsigned(32'b00000000000000000000000110010000);

    // i_pivot535_v4l2_ctrl_get_name227(COMPARE,864)@26
    assign i_pivot535_v4l2_ctrl_get_name227_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot535_v4l2_ctrl_get_name227_b = $unsigned({{2{c_i32_400900_recast_x_q[31]}}, c_i32_400900_recast_x_q});
    assign i_pivot535_v4l2_ctrl_get_name227_o = $unsigned($signed(i_pivot535_v4l2_ctrl_get_name227_a) - $signed(i_pivot535_v4l2_ctrl_get_name227_b));
    assign i_pivot535_v4l2_ctrl_get_name227_c[0] = i_pivot535_v4l2_ctrl_get_name227_o[33];

    // redist98_i_pivot543_v4l2_ctrl_get_name57_c_22(DELAY,1640)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist98_i_pivot543_v4l2_ctrl_get_name57_c_22 ( .xin(i_pivot543_v4l2_ctrl_get_name57_c), .xout(redist98_i_pivot543_v4l2_ctrl_get_name57_c_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3143_v4l2_ctrl_get_name747(LOGICAL,613)@26 + 1
    assign i_acl_3143_v4l2_ctrl_get_name747_qi = redist98_i_pivot543_v4l2_ctrl_get_name57_c_22_q ^ i_pivot535_v4l2_ctrl_get_name227_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3143_v4l2_ctrl_get_name747_delay ( .xin(i_acl_3143_v4l2_ctrl_get_name747_qi), .xout(i_acl_3143_v4l2_ctrl_get_name747_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5(DELAY,1689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_0 <= '0;
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_1 <= '0;
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_2 <= '0;
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_q <= '0;
        end
        else
        begin
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_0 <= $unsigned(i_acl_3143_v4l2_ctrl_get_name747_q);
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_1 <= redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_0;
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_2 <= redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_1;
            redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_q <= redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_delay_2;
        end
    end

    // i_acl_3149_v4l2_ctrl_get_name748(MUX,614)@31 + 1
    assign i_acl_3149_v4l2_ctrl_get_name748_s = redist147_i_acl_3143_v4l2_ctrl_get_name747_q_5_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_3149_v4l2_ctrl_get_name748_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_3149_v4l2_ctrl_get_name748_s)
                1'b0 : i_acl_3149_v4l2_ctrl_get_name748_q <= i_acl_3141_v4l2_ctrl_get_name746_q;
                1'b1 : i_acl_3149_v4l2_ctrl_get_name748_q <= c_i64_46964099864172953601332_q;
                default : i_acl_3149_v4l2_ctrl_get_name748_q <= 64'b0;
            endcase
        end
    end

    // c_i32_405902_recast_x(CONSTANT,1285)
    assign c_i32_405902_recast_x_q = $unsigned(32'b00000000000000000000000110010101);

    // i_pivot545_v4l2_ctrl_get_name231(COMPARE,869)@26
    assign i_pivot545_v4l2_ctrl_get_name231_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot545_v4l2_ctrl_get_name231_b = $unsigned({{2{c_i32_405902_recast_x_q[31]}}, c_i32_405902_recast_x_q});
    assign i_pivot545_v4l2_ctrl_get_name231_o = $unsigned($signed(i_pivot545_v4l2_ctrl_get_name231_a) - $signed(i_pivot545_v4l2_ctrl_get_name231_b));
    assign i_pivot545_v4l2_ctrl_get_name231_c[0] = i_pivot545_v4l2_ctrl_get_name231_o[33];

    // i_acl_3152_v4l2_ctrl_get_name749(LOGICAL,615)@26 + 1
    assign i_acl_3152_v4l2_ctrl_get_name749_qi = i_pivot565_v4l2_ctrl_get_name29_c ^ i_pivot545_v4l2_ctrl_get_name231_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3152_v4l2_ctrl_get_name749_delay ( .xin(i_acl_3152_v4l2_ctrl_get_name749_qi), .xout(i_acl_3152_v4l2_ctrl_get_name749_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6(DELAY,1688)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_0 <= '0;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_1 <= '0;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_2 <= '0;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_3 <= '0;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_q <= '0;
        end
        else
        begin
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_0 <= $unsigned(i_acl_3152_v4l2_ctrl_get_name749_q);
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_1 <= redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_0;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_2 <= redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_1;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_3 <= redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_2;
            redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_q <= redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_delay_3;
        end
    end

    // i_acl_3157_v4l2_ctrl_get_name750(MUX,616)@32
    assign i_acl_3157_v4l2_ctrl_get_name750_s = redist146_i_acl_3152_v4l2_ctrl_get_name749_q_6_q;
    always @(i_acl_3157_v4l2_ctrl_get_name750_s or i_acl_3149_v4l2_ctrl_get_name748_q or c_i64_46966914613940060161333_q)
    begin
        unique case (i_acl_3157_v4l2_ctrl_get_name750_s)
            1'b0 : i_acl_3157_v4l2_ctrl_get_name750_q = i_acl_3149_v4l2_ctrl_get_name748_q;
            1'b1 : i_acl_3157_v4l2_ctrl_get_name750_q = c_i64_46966914613940060161333_q;
            default : i_acl_3157_v4l2_ctrl_get_name750_q = 64'b0;
        endcase
    end

    // c_i32_402901_recast_x(CONSTANT,1282)
    assign c_i32_402901_recast_x_q = $unsigned(32'b00000000000000000000000110010010);

    // i_pivot539_v4l2_ctrl_get_name229(COMPARE,866)@26
    assign i_pivot539_v4l2_ctrl_get_name229_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot539_v4l2_ctrl_get_name229_b = $unsigned({{2{c_i32_402901_recast_x_q[31]}}, c_i32_402901_recast_x_q});
    assign i_pivot539_v4l2_ctrl_get_name229_o = $unsigned($signed(i_pivot539_v4l2_ctrl_get_name229_a) - $signed(i_pivot539_v4l2_ctrl_get_name229_b));
    assign i_pivot539_v4l2_ctrl_get_name229_c[0] = i_pivot539_v4l2_ctrl_get_name229_o[33];

    // c_i32_401844_recast_x(CONSTANT,1281)
    assign c_i32_401844_recast_x_q = $unsigned(32'b00000000000000000000000110010001);

    // i_pivot541_v4l2_ctrl_get_name115(COMPARE,867)@26
    assign i_pivot541_v4l2_ctrl_get_name115_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot541_v4l2_ctrl_get_name115_b = $unsigned({{2{c_i32_401844_recast_x_q[31]}}, c_i32_401844_recast_x_q});
    assign i_pivot541_v4l2_ctrl_get_name115_o = $unsigned($signed(i_pivot541_v4l2_ctrl_get_name115_a) - $signed(i_pivot541_v4l2_ctrl_get_name115_b));
    assign i_pivot541_v4l2_ctrl_get_name115_c[0] = i_pivot541_v4l2_ctrl_get_name115_o[33];

    // i_acl_3158_v4l2_ctrl_get_name751(LOGICAL,617)@26 + 1
    assign i_acl_3158_v4l2_ctrl_get_name751_qi = i_pivot541_v4l2_ctrl_get_name115_c ^ i_pivot539_v4l2_ctrl_get_name229_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3158_v4l2_ctrl_get_name751_delay ( .xin(i_acl_3158_v4l2_ctrl_get_name751_qi), .xout(i_acl_3158_v4l2_ctrl_get_name751_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6(DELAY,1687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_0 <= '0;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_1 <= '0;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_2 <= '0;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_3 <= '0;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_q <= '0;
        end
        else
        begin
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_0 <= $unsigned(i_acl_3158_v4l2_ctrl_get_name751_q);
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_1 <= redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_0;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_2 <= redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_1;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_3 <= redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_2;
            redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_q <= redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_delay_3;
        end
    end

    // i_acl_3165_v4l2_ctrl_get_name752(MUX,618)@32
    assign i_acl_3165_v4l2_ctrl_get_name752_s = redist145_i_acl_3158_v4l2_ctrl_get_name751_q_6_q;
    always @(i_acl_3165_v4l2_ctrl_get_name752_s or i_acl_3157_v4l2_ctrl_get_name750_q or c_i64_46969729363707166721334_q)
    begin
        unique case (i_acl_3165_v4l2_ctrl_get_name752_s)
            1'b0 : i_acl_3165_v4l2_ctrl_get_name752_q = i_acl_3157_v4l2_ctrl_get_name750_q;
            1'b1 : i_acl_3165_v4l2_ctrl_get_name752_q = c_i64_46969729363707166721334_q;
            default : i_acl_3165_v4l2_ctrl_get_name752_q = 64'b0;
        endcase
    end

    // i_acl_3166_v4l2_ctrl_get_name753(LOGICAL,619)@26 + 1
    assign i_acl_3166_v4l2_ctrl_get_name753_qi = i_pivot535_v4l2_ctrl_get_name227_c ^ i_pivot541_v4l2_ctrl_get_name115_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3166_v4l2_ctrl_get_name753_delay ( .xin(i_acl_3166_v4l2_ctrl_get_name753_qi), .xout(i_acl_3166_v4l2_ctrl_get_name753_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6(DELAY,1686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_0 <= '0;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_1 <= '0;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_2 <= '0;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_3 <= '0;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_q <= '0;
        end
        else
        begin
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_0 <= $unsigned(i_acl_3166_v4l2_ctrl_get_name753_q);
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_1 <= redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_0;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_2 <= redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_1;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_3 <= redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_2;
            redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_q <= redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_delay_3;
        end
    end

    // i_acl_3173_v4l2_ctrl_get_name754(MUX,620)@32
    assign i_acl_3173_v4l2_ctrl_get_name754_s = redist144_i_acl_3166_v4l2_ctrl_get_name753_q_6_q;
    always @(i_acl_3173_v4l2_ctrl_get_name754_s or i_acl_3165_v4l2_ctrl_get_name752_q or c_i64_46972544113474273281335_q)
    begin
        unique case (i_acl_3173_v4l2_ctrl_get_name754_s)
            1'b0 : i_acl_3173_v4l2_ctrl_get_name754_q = i_acl_3165_v4l2_ctrl_get_name752_q;
            1'b1 : i_acl_3173_v4l2_ctrl_get_name754_q = c_i64_46972544113474273281335_q;
            default : i_acl_3173_v4l2_ctrl_get_name754_q = 64'b0;
        endcase
    end

    // i_acl_3174_v4l2_ctrl_get_name755(LOGICAL,621)@26 + 1
    assign i_acl_3174_v4l2_ctrl_get_name755_qi = i_pivot539_v4l2_ctrl_get_name229_c ^ i_pivot537_v4l2_ctrl_get_name321_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3174_v4l2_ctrl_get_name755_delay ( .xin(i_acl_3174_v4l2_ctrl_get_name755_qi), .xout(i_acl_3174_v4l2_ctrl_get_name755_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6(DELAY,1685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_0 <= '0;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_1 <= '0;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_2 <= '0;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_3 <= '0;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_q <= '0;
        end
        else
        begin
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_0 <= $unsigned(i_acl_3174_v4l2_ctrl_get_name755_q);
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_1 <= redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_0;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_2 <= redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_1;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_3 <= redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_2;
            redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_q <= redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_delay_3;
        end
    end

    // i_acl_3182_v4l2_ctrl_get_name756(MUX,622)@32
    assign i_acl_3182_v4l2_ctrl_get_name756_s = redist143_i_acl_3174_v4l2_ctrl_get_name755_q_6_q;
    always @(i_acl_3182_v4l2_ctrl_get_name756_s or i_acl_3173_v4l2_ctrl_get_name754_q or c_i64_46975358863241379841336_q)
    begin
        unique case (i_acl_3182_v4l2_ctrl_get_name756_s)
            1'b0 : i_acl_3182_v4l2_ctrl_get_name756_q = i_acl_3173_v4l2_ctrl_get_name754_q;
            1'b1 : i_acl_3182_v4l2_ctrl_get_name756_q = c_i64_46975358863241379841336_q;
            default : i_acl_3182_v4l2_ctrl_get_name756_q = 64'b0;
        endcase
    end

    // c_i32_407903_recast_x(CONSTANT,1287)
    assign c_i32_407903_recast_x_q = $unsigned(32'b00000000000000000000000110010111);

    // i_pivot549_v4l2_ctrl_get_name233(COMPARE,871)@26
    assign i_pivot549_v4l2_ctrl_get_name233_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot549_v4l2_ctrl_get_name233_b = $unsigned({{2{c_i32_407903_recast_x_q[31]}}, c_i32_407903_recast_x_q});
    assign i_pivot549_v4l2_ctrl_get_name233_o = $unsigned($signed(i_pivot549_v4l2_ctrl_get_name233_a) - $signed(i_pivot549_v4l2_ctrl_get_name233_b));
    assign i_pivot549_v4l2_ctrl_get_name233_c[0] = i_pivot549_v4l2_ctrl_get_name233_o[33];

    // c_i32_406845_recast_x(CONSTANT,1286)
    assign c_i32_406845_recast_x_q = $unsigned(32'b00000000000000000000000110010110);

    // i_pivot551_v4l2_ctrl_get_name117(COMPARE,872)@26
    assign i_pivot551_v4l2_ctrl_get_name117_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot551_v4l2_ctrl_get_name117_b = $unsigned({{2{c_i32_406845_recast_x_q[31]}}, c_i32_406845_recast_x_q});
    assign i_pivot551_v4l2_ctrl_get_name117_o = $unsigned($signed(i_pivot551_v4l2_ctrl_get_name117_a) - $signed(i_pivot551_v4l2_ctrl_get_name117_b));
    assign i_pivot551_v4l2_ctrl_get_name117_c[0] = i_pivot551_v4l2_ctrl_get_name117_o[33];

    // i_acl_3183_v4l2_ctrl_get_name757(LOGICAL,623)@26 + 1
    assign i_acl_3183_v4l2_ctrl_get_name757_qi = i_pivot551_v4l2_ctrl_get_name117_c ^ i_pivot549_v4l2_ctrl_get_name233_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3183_v4l2_ctrl_get_name757_delay ( .xin(i_acl_3183_v4l2_ctrl_get_name757_qi), .xout(i_acl_3183_v4l2_ctrl_get_name757_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6(DELAY,1684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_0 <= '0;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_1 <= '0;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_2 <= '0;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_3 <= '0;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_q <= '0;
        end
        else
        begin
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_0 <= $unsigned(i_acl_3183_v4l2_ctrl_get_name757_q);
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_1 <= redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_0;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_2 <= redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_1;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_3 <= redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_2;
            redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_q <= redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_delay_3;
        end
    end

    // i_acl_3190_v4l2_ctrl_get_name758(MUX,624)@32
    assign i_acl_3190_v4l2_ctrl_get_name758_s = redist142_i_acl_3183_v4l2_ctrl_get_name757_q_6_q;
    always @(i_acl_3190_v4l2_ctrl_get_name758_s or i_acl_3182_v4l2_ctrl_get_name756_q or c_i64_46978173613008486401337_q)
    begin
        unique case (i_acl_3190_v4l2_ctrl_get_name758_s)
            1'b0 : i_acl_3190_v4l2_ctrl_get_name758_q = i_acl_3182_v4l2_ctrl_get_name756_q;
            1'b1 : i_acl_3190_v4l2_ctrl_get_name758_q = c_i64_46978173613008486401337_q;
            default : i_acl_3190_v4l2_ctrl_get_name758_q = 64'b0;
        endcase
    end

    // i_acl_3191_v4l2_ctrl_get_name759(LOGICAL,625)@26 + 1
    assign i_acl_3191_v4l2_ctrl_get_name759_qi = i_pivot545_v4l2_ctrl_get_name231_c ^ i_pivot551_v4l2_ctrl_get_name117_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3191_v4l2_ctrl_get_name759_delay ( .xin(i_acl_3191_v4l2_ctrl_get_name759_qi), .xout(i_acl_3191_v4l2_ctrl_get_name759_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6(DELAY,1683)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_0 <= '0;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_1 <= '0;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_2 <= '0;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_3 <= '0;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_q <= '0;
        end
        else
        begin
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_0 <= $unsigned(i_acl_3191_v4l2_ctrl_get_name759_q);
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_1 <= redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_0;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_2 <= redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_1;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_3 <= redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_2;
            redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_q <= redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_delay_3;
        end
    end

    // i_acl_3198_v4l2_ctrl_get_name760(MUX,626)@32
    assign i_acl_3198_v4l2_ctrl_get_name760_s = redist141_i_acl_3191_v4l2_ctrl_get_name759_q_6_q;
    always @(i_acl_3198_v4l2_ctrl_get_name760_s or i_acl_3190_v4l2_ctrl_get_name758_q or c_i64_46980988362775592961338_q)
    begin
        unique case (i_acl_3198_v4l2_ctrl_get_name760_s)
            1'b0 : i_acl_3198_v4l2_ctrl_get_name760_q = i_acl_3190_v4l2_ctrl_get_name758_q;
            1'b1 : i_acl_3198_v4l2_ctrl_get_name760_q = c_i64_46980988362775592961338_q;
            default : i_acl_3198_v4l2_ctrl_get_name760_q = 64'b0;
        endcase
    end

    // i_acl_3199_v4l2_ctrl_get_name761(LOGICAL,627)@26 + 1
    assign i_acl_3199_v4l2_ctrl_get_name761_qi = i_pivot549_v4l2_ctrl_get_name233_c ^ i_pivot547_v4l2_ctrl_get_name323_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3199_v4l2_ctrl_get_name761_delay ( .xin(i_acl_3199_v4l2_ctrl_get_name761_qi), .xout(i_acl_3199_v4l2_ctrl_get_name761_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6(DELAY,1682)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_0 <= '0;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_1 <= '0;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_2 <= '0;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_3 <= '0;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_q <= '0;
        end
        else
        begin
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_0 <= $unsigned(i_acl_3199_v4l2_ctrl_get_name761_q);
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_1 <= redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_0;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_2 <= redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_1;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_3 <= redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_2;
            redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_q <= redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_delay_3;
        end
    end

    // i_acl_3207_v4l2_ctrl_get_name762(MUX,628)@32 + 1
    assign i_acl_3207_v4l2_ctrl_get_name762_s = redist140_i_acl_3199_v4l2_ctrl_get_name761_q_6_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_3207_v4l2_ctrl_get_name762_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_3207_v4l2_ctrl_get_name762_s)
                1'b0 : i_acl_3207_v4l2_ctrl_get_name762_q <= i_acl_3198_v4l2_ctrl_get_name760_q;
                1'b1 : i_acl_3207_v4l2_ctrl_get_name762_q <= c_i64_46983803112542699521339_q;
                default : i_acl_3207_v4l2_ctrl_get_name762_q <= 64'b0;
            endcase
        end
    end

    // redist103_i_pivot497_v4l2_ctrl_get_name211_c_2(DELAY,1645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_i_pivot497_v4l2_ctrl_get_name211_c_2_q <= '0;
        end
        else
        begin
            redist103_i_pivot497_v4l2_ctrl_get_name211_c_2_q <= $unsigned(i_pivot497_v4l2_ctrl_get_name211_c);
        end
    end

    // i_acl_3208_v4l2_ctrl_get_name763(LOGICAL,629)@26 + 1
    assign i_acl_3208_v4l2_ctrl_get_name763_qi = redist103_i_pivot497_v4l2_ctrl_get_name211_c_2_q ^ i_pivot503_v4l2_ctrl_get_name107_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3208_v4l2_ctrl_get_name763_delay ( .xin(i_acl_3208_v4l2_ctrl_get_name763_qi), .xout(i_acl_3208_v4l2_ctrl_get_name763_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist139_i_acl_3208_v4l2_ctrl_get_name763_q_7(DELAY,1681)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist139_i_acl_3208_v4l2_ctrl_get_name763_q_7 ( .xin(i_acl_3208_v4l2_ctrl_get_name763_q), .xout(redist139_i_acl_3208_v4l2_ctrl_get_name763_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3215_v4l2_ctrl_get_name764(MUX,630)@33
    assign i_acl_3215_v4l2_ctrl_get_name764_s = redist139_i_acl_3208_v4l2_ctrl_get_name763_q_7_q;
    always @(i_acl_3215_v4l2_ctrl_get_name764_s or i_acl_3207_v4l2_ctrl_get_name762_q or c_i64_46986617862309806081340_q)
    begin
        unique case (i_acl_3215_v4l2_ctrl_get_name764_s)
            1'b0 : i_acl_3215_v4l2_ctrl_get_name764_q = i_acl_3207_v4l2_ctrl_get_name762_q;
            1'b1 : i_acl_3215_v4l2_ctrl_get_name764_q = c_i64_46986617862309806081340_q;
            default : i_acl_3215_v4l2_ctrl_get_name764_q = 64'b0;
        endcase
    end

    // c_i64_46992247361844019201358(CONSTANT,343)
    assign c_i64_46992247361844019201358_q = $unsigned(64'b0100000100110111000000000000000000000000000000000000000000000000);

    // redist56_dupName_9_comparator_x_q_18(DELAY,1598)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist56_dupName_9_comparator_x_q_18 ( .xin(redist55_dupName_9_comparator_x_q_10_q), .xout(redist56_dupName_9_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist60_dupName_8_comparator_x_q_18(DELAY,1602)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist60_dupName_8_comparator_x_q_18 ( .xin(redist59_dupName_8_comparator_x_q_10_q), .xout(redist60_dupName_8_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769(SELECTOR,724)@33
    always @(redist60_dupName_8_comparator_x_q_18_q or c_i64_46820547626050519041261_q or redist56_dupName_9_comparator_x_q_18_q or c_i64_46992247361844019201358_q or i_acl_3215_v4l2_ctrl_get_name764_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769_q = i_acl_3215_v4l2_ctrl_get_name764_q;
        if (redist56_dupName_9_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769_q = c_i64_46992247361844019201358_q;
        end
        if (redist60_dupName_8_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769_q = c_i64_46820547626050519041261_q;
        end
    end

    // dupName_164_comparator_x(LOGICAL,1501)@16 + 1
    assign dupName_164_comparator_x_qi = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_71075_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_164_comparator_x_delay ( .xin(dupName_164_comparator_x_qi), .xout(dupName_164_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_dupName_164_comparator_x_q_17(DELAY,1568)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_dupName_164_comparator_x_q_17 ( .xin(dupName_164_comparator_x_q), .xout(redist26_dupName_164_comparator_x_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist64_dupName_7_comparator_x_q_18(DELAY,1606)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist64_dupName_7_comparator_x_q_18 ( .xin(redist63_dupName_7_comparator_x_q_10_q), .xout(redist64_dupName_7_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist68_dupName_6_comparator_x_q_18(DELAY,1610)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist68_dupName_6_comparator_x_q_18 ( .xin(redist67_dupName_6_comparator_x_q_10_q), .xout(redist68_dupName_6_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist72_dupName_5_comparator_x_q_18(DELAY,1614)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist72_dupName_5_comparator_x_q_18 ( .xin(redist71_dupName_5_comparator_x_q_10_q), .xout(redist72_dupName_5_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_dupName_21_comparator_x_q_18(DELAY,1580)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_dupName_21_comparator_x_q_18 ( .xin(redist37_dupName_21_comparator_x_q_10_q), .xout(redist38_dupName_21_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist48_dupName_11_comparator_x_q_18(DELAY,1590)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_dupName_11_comparator_x_q_18 ( .xin(redist47_dupName_11_comparator_x_q_10_q), .xout(redist48_dupName_11_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768(SELECTOR,743)@33
    always @(redist48_dupName_11_comparator_x_q_18_q or c_i64_46817732876283412481254_q or redist38_dupName_21_comparator_x_q_18_q or c_i64_46814918126516305921255_q or redist72_dupName_5_comparator_x_q_18_q or c_i64_46800844377680773121256_q or redist68_dupName_6_comparator_x_q_18_q or c_i64_46795214878146560001258_q or redist64_dupName_7_comparator_x_q_18_q or c_i64_46798029627913666561259_q or i_acl_3215_v4l2_ctrl_get_name764_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q = i_acl_3215_v4l2_ctrl_get_name764_q;
        if (redist64_dupName_7_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q = c_i64_46798029627913666561259_q;
        end
        if (redist68_dupName_6_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q = c_i64_46795214878146560001258_q;
        end
        if (redist72_dupName_5_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q = c_i64_46800844377680773121256_q;
        end
        if (redist38_dupName_21_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q = c_i64_46814918126516305921255_q;
        end
        if (redist48_dupName_11_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q = c_i64_46817732876283412481254_q;
        end
    end

    // redist33_dupName_130_comparator_x_q_17(DELAY,1575)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_dupName_130_comparator_x_q_17 ( .xin(redist32_dupName_130_comparator_x_q_9_q), .xout(redist33_dupName_130_comparator_x_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_47020394859515084801355(CONSTANT,353)
    assign c_i64_47020394859515084801355_q = $unsigned(64'b0100000101000001000000000000000000000000000000000000000000000000);

    // c_i64_47017580109747978241354(CONSTANT,352)
    assign c_i64_47017580109747978241354_q = $unsigned(64'b0100000101000000000000000000000000000000000000000000000000000000);

    // redist52_dupName_10_comparator_x_q_18(DELAY,1594)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist52_dupName_10_comparator_x_q_18 ( .xin(redist51_dupName_10_comparator_x_q_10_q), .xout(redist52_dupName_10_comparator_x_q_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46995062111611125761353(CONSTANT,344)
    assign c_i64_46995062111611125761353_q = $unsigned(64'b0100000100111000000000000000000000000000000000000000000000000000);

    // c_i64_47014765359980871681352(CONSTANT,351)
    assign c_i64_47014765359980871681352_q = $unsigned(64'b0100000100111111000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767(SELECTOR,741)@33
    always @(redist60_dupName_8_comparator_x_q_18_q or c_i64_47014765359980871681352_q or redist56_dupName_9_comparator_x_q_18_q or c_i64_46995062111611125761353_q or redist52_dupName_10_comparator_x_q_18_q or c_i64_47017580109747978241354_q or redist48_dupName_11_comparator_x_q_18_q or c_i64_47020394859515084801355_q or i_acl_3215_v4l2_ctrl_get_name764_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q = i_acl_3215_v4l2_ctrl_get_name764_q;
        if (redist48_dupName_11_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q = c_i64_47020394859515084801355_q;
        end
        if (redist52_dupName_10_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q = c_i64_47017580109747978241354_q;
        end
        if (redist56_dupName_9_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q = c_i64_46995062111611125761353_q;
        end
        if (redist60_dupName_8_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q = c_i64_47014765359980871681352_q;
        end
    end

    // redist41_dupName_19_comparator_x_q_17(DELAY,1583)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_dupName_19_comparator_x_q_17 ( .xin(redist40_dupName_19_comparator_x_q_9_q), .xout(redist41_dupName_19_comparator_x_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_47011950610213765121350(CONSTANT,350)
    assign c_i64_47011950610213765121350_q = $unsigned(64'b0100000100111110000000000000000000000000000000000000000000000000);

    // c_i64_47003506360912445441349(CONSTANT,347)
    assign c_i64_47003506360912445441349_q = $unsigned(64'b0100000100111011000000000000000000000000000000000000000000000000);

    // c_i64_47000691611145338881348(CONSTANT,346)
    assign c_i64_47000691611145338881348_q = $unsigned(64'b0100000100111010000000000000000000000000000000000000000000000000);

    // c_i64_47009135860446658561347(CONSTANT,349)
    assign c_i64_47009135860446658561347_q = $unsigned(64'b0100000100111101000000000000000000000000000000000000000000000000);

    // c_i64_47006321110679552001346(CONSTANT,348)
    assign c_i64_47006321110679552001346_q = $unsigned(64'b0100000100111100000000000000000000000000000000000000000000000000);

    // c_i64_47023209609282191361345(CONSTANT,354)
    assign c_i64_47023209609282191361345_q = $unsigned(64'b0100000101000010000000000000000000000000000000000000000000000000);

    // c_i64_46997876861378232321344(CONSTANT,345)
    assign c_i64_46997876861378232321344_q = $unsigned(64'b0100000100111001000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766(SELECTOR,750)@33
    always @(redist56_dupName_9_comparator_x_q_18_q or c_i64_46997876861378232321344_q or redist52_dupName_10_comparator_x_q_18_q or c_i64_47023209609282191361345_q or redist48_dupName_11_comparator_x_q_18_q or c_i64_47006321110679552001346_q or redist38_dupName_21_comparator_x_q_18_q or c_i64_47009135860446658561347_q or redist72_dupName_5_comparator_x_q_18_q or c_i64_47000691611145338881348_q or redist68_dupName_6_comparator_x_q_18_q or c_i64_47003506360912445441349_q or redist64_dupName_7_comparator_x_q_18_q or c_i64_47011950610213765121350_q or i_acl_3215_v4l2_ctrl_get_name764_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = i_acl_3215_v4l2_ctrl_get_name764_q;
        if (redist64_dupName_7_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_47011950610213765121350_q;
        end
        if (redist68_dupName_6_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_47003506360912445441349_q;
        end
        if (redist72_dupName_5_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_47000691611145338881348_q;
        end
        if (redist38_dupName_21_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_47009135860446658561347_q;
        end
        if (redist48_dupName_11_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_47006321110679552001346_q;
        end
        if (redist52_dupName_10_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_47023209609282191361345_q;
        end
        if (redist56_dupName_9_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q = c_i64_46997876861378232321344_q;
        end
    end

    // redist43_dupName_18_comparator_x_q_17(DELAY,1585)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist43_dupName_18_comparator_x_q_17 ( .xin(redist42_dupName_18_comparator_x_q_2_q), .xout(redist43_dupName_18_comparator_x_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_46989432612076912641342(CONSTANT,342)
    assign c_i64_46989432612076912641342_q = $unsigned(64'b0100000100110110000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3638_v4l2_ctrl_get_name765(SELECTOR,722)@33
    always @(redist52_dupName_10_comparator_x_q_18_q or c_i64_46989432612076912641342_q or i_acl_3215_v4l2_ctrl_get_name764_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3638_v4l2_ctrl_get_name765_q = i_acl_3215_v4l2_ctrl_get_name764_q;
        if (redist52_dupName_10_comparator_x_q_18_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3638_v4l2_ctrl_get_name765_q = c_i64_46989432612076912641342_q;
        end
    end

    // dupName_160_comparator_x(LOGICAL,1497)@16 + 1
    assign dupName_160_comparator_x_qi = $unsigned(i_sel_shr_v4l2_ctrl_get_name545_vt_join_q == c_i32_11089_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_160_comparator_x_delay ( .xin(dupName_160_comparator_x_qi), .xout(dupName_160_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_dupName_160_comparator_x_q_17(DELAY,1569)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_dupName_160_comparator_x_q_17 ( .xin(dupName_160_comparator_x_q), .xout(redist27_dupName_160_comparator_x_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771(SELECTOR,744)@33
    always @(redist27_dupName_160_comparator_x_q_17_q or i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3638_v4l2_ctrl_get_name765_q or redist43_dupName_18_comparator_x_q_17_q or i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q or redist41_dupName_19_comparator_x_q_17_q or i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q or redist33_dupName_130_comparator_x_q_17_q or i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q or redist26_dupName_164_comparator_x_q_17_q or i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769_q or i_acl_3215_v4l2_ctrl_get_name764_q)
    begin
        i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q = i_acl_3215_v4l2_ctrl_get_name764_q;
        if (redist26_dupName_164_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q = i_llvm_fpga_case_p0i8_i32_v2i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_22s_case_stmt3664_v4l2_ctrl_get_name769_q;
        end
        if (redist33_dupName_130_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q = i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3660_v4l2_ctrl_get_name768_q;
        end
        if (redist41_dupName_19_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q = i_llvm_fpga_case_p0i8_i32_v4i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_4s_case_stmt3653_v4l2_ctrl_get_name767_q;
        end
        if (redist43_dupName_18_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q = i_llvm_fpga_case_p0i8_i32_v7i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_8s_case_stmt3647_v4l2_ctrl_get_name766_q;
        end
        if (redist27_dupName_160_comparator_x_q_17_q == 1'b1)
        begin
            i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q = i_llvm_fpga_case_p0i8_i32_v1i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_6s_case_stmt3638_v4l2_ctrl_get_name765_q;
        end
    end

    // c_i32_415791_recast_x(CONSTANT,1295)
    assign c_i32_415791_recast_x_q = $unsigned(32'b00000000000000000000000110011111);

    // i_pivot651_v4l2_ctrl_get_name9(COMPARE,922)@26
    assign i_pivot651_v4l2_ctrl_get_name9_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot651_v4l2_ctrl_get_name9_b = $unsigned({{2{c_i32_415791_recast_x_q[31]}}, c_i32_415791_recast_x_q});
    assign i_pivot651_v4l2_ctrl_get_name9_o = $unsigned($signed(i_pivot651_v4l2_ctrl_get_name9_a) - $signed(i_pivot651_v4l2_ctrl_get_name9_b));
    assign i_pivot651_v4l2_ctrl_get_name9_c[0] = i_pivot651_v4l2_ctrl_get_name9_o[33];

    // i_acl_3378_v4l2_ctrl_get_name772(LOGICAL,631)@26 + 1
    assign i_acl_3378_v4l2_ctrl_get_name772_qi = i_pivot651_v4l2_ctrl_get_name9_c ^ i_pivot569_v4l2_ctrl_get_name239_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3378_v4l2_ctrl_get_name772_delay ( .xin(i_acl_3378_v4l2_ctrl_get_name772_qi), .xout(i_acl_3378_v4l2_ctrl_get_name772_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist138_i_acl_3378_v4l2_ctrl_get_name772_q_7(DELAY,1680)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist138_i_acl_3378_v4l2_ctrl_get_name772_q_7 ( .xin(i_acl_3378_v4l2_ctrl_get_name772_q), .xout(redist138_i_acl_3378_v4l2_ctrl_get_name772_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3381_v4l2_ctrl_get_name773(MUX,632)@33
    assign i_acl_3381_v4l2_ctrl_get_name773_s = redist138_i_acl_3378_v4l2_ctrl_get_name772_q_7_q;
    always @(i_acl_3381_v4l2_ctrl_get_name773_s or i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q or c_i64_47026024359049297921360_q)
    begin
        unique case (i_acl_3381_v4l2_ctrl_get_name773_s)
            1'b0 : i_acl_3381_v4l2_ctrl_get_name773_q = i_llvm_fpga_case_p0i8_i32_v5i32_s_case_assign_struct_v4l2_ctrl_get_name_fpgaunique_3s_case_stmt3672_v4l2_ctrl_get_name771_q;
            1'b1 : i_acl_3381_v4l2_ctrl_get_name773_q = c_i64_47026024359049297921360_q;
            default : i_acl_3381_v4l2_ctrl_get_name773_q = 64'b0;
        endcase
    end

    // c_i32_414950_recast_x(CONSTANT,1294)
    assign c_i32_414950_recast_x_q = $unsigned(32'b00000000000000000000000110011110);

    // i_pivot557_v4l2_ctrl_get_name327(COMPARE,875)@26
    assign i_pivot557_v4l2_ctrl_get_name327_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot557_v4l2_ctrl_get_name327_b = $unsigned({{2{c_i32_414950_recast_x_q[31]}}, c_i32_414950_recast_x_q});
    assign i_pivot557_v4l2_ctrl_get_name327_o = $unsigned($signed(i_pivot557_v4l2_ctrl_get_name327_a) - $signed(i_pivot557_v4l2_ctrl_get_name327_b));
    assign i_pivot557_v4l2_ctrl_get_name327_c[0] = i_pivot557_v4l2_ctrl_get_name327_o[33];

    // c_i32_413905_recast_x(CONSTANT,1293)
    assign c_i32_413905_recast_x_q = $unsigned(32'b00000000000000000000000110011101);

    // i_pivot559_v4l2_ctrl_get_name237(COMPARE,876)@26
    assign i_pivot559_v4l2_ctrl_get_name237_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot559_v4l2_ctrl_get_name237_b = $unsigned({{2{c_i32_413905_recast_x_q[31]}}, c_i32_413905_recast_x_q});
    assign i_pivot559_v4l2_ctrl_get_name237_o = $unsigned($signed(i_pivot559_v4l2_ctrl_get_name237_a) - $signed(i_pivot559_v4l2_ctrl_get_name237_b));
    assign i_pivot559_v4l2_ctrl_get_name237_c[0] = i_pivot559_v4l2_ctrl_get_name237_o[33];

    // i_acl_3382_v4l2_ctrl_get_name774(LOGICAL,633)@26 + 1
    assign i_acl_3382_v4l2_ctrl_get_name774_qi = i_pivot559_v4l2_ctrl_get_name237_c ^ i_pivot557_v4l2_ctrl_get_name327_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3382_v4l2_ctrl_get_name774_delay ( .xin(i_acl_3382_v4l2_ctrl_get_name774_qi), .xout(i_acl_3382_v4l2_ctrl_get_name774_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist137_i_acl_3382_v4l2_ctrl_get_name774_q_7(DELAY,1679)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist137_i_acl_3382_v4l2_ctrl_get_name774_q_7 ( .xin(i_acl_3382_v4l2_ctrl_get_name774_q), .xout(redist137_i_acl_3382_v4l2_ctrl_get_name774_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3390_v4l2_ctrl_get_name775(MUX,634)@33 + 1
    assign i_acl_3390_v4l2_ctrl_get_name775_s = redist137_i_acl_3382_v4l2_ctrl_get_name774_q_7_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_3390_v4l2_ctrl_get_name775_q <= 64'b0;
        end
        else
        begin
            unique case (i_acl_3390_v4l2_ctrl_get_name775_s)
                1'b0 : i_acl_3390_v4l2_ctrl_get_name775_q <= i_acl_3381_v4l2_ctrl_get_name773_q;
                1'b1 : i_acl_3390_v4l2_ctrl_get_name775_q <= c_i64_47028839108816404481361_q;
                default : i_acl_3390_v4l2_ctrl_get_name775_q <= 64'b0;
            endcase
        end
    end

    // i_acl_3396_v4l2_ctrl_get_name776(LOGICAL,635)@26 + 1
    assign i_acl_3396_v4l2_ctrl_get_name776_qi = i_pivot557_v4l2_ctrl_get_name327_c ^ i_pivot651_v4l2_ctrl_get_name9_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3396_v4l2_ctrl_get_name776_delay ( .xin(i_acl_3396_v4l2_ctrl_get_name776_qi), .xout(i_acl_3396_v4l2_ctrl_get_name776_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist136_i_acl_3396_v4l2_ctrl_get_name776_q_8(DELAY,1678)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist136_i_acl_3396_v4l2_ctrl_get_name776_q_8 ( .xin(i_acl_3396_v4l2_ctrl_get_name776_q), .xout(redist136_i_acl_3396_v4l2_ctrl_get_name776_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3399_v4l2_ctrl_get_name777(MUX,636)@34
    assign i_acl_3399_v4l2_ctrl_get_name777_s = redist136_i_acl_3396_v4l2_ctrl_get_name776_q_8_q;
    always @(i_acl_3399_v4l2_ctrl_get_name777_s or i_acl_3390_v4l2_ctrl_get_name775_q or c_i64_47031653858583511041362_q)
    begin
        unique case (i_acl_3399_v4l2_ctrl_get_name777_s)
            1'b0 : i_acl_3399_v4l2_ctrl_get_name777_q = i_acl_3390_v4l2_ctrl_get_name775_q;
            1'b1 : i_acl_3399_v4l2_ctrl_get_name777_q = c_i64_47031653858583511041362_q;
            default : i_acl_3399_v4l2_ctrl_get_name777_q = 64'b0;
        endcase
    end

    // c_i32_412846_recast_x(CONSTANT,1292)
    assign c_i32_412846_recast_x_q = $unsigned(32'b00000000000000000000000110011100);

    // i_pivot561_v4l2_ctrl_get_name119(COMPARE,877)@26
    assign i_pivot561_v4l2_ctrl_get_name119_a = $unsigned({{2{redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q[31]}}, redist24_sync_together1366_aunroll_x_in_c1_eni1_1_tpl_25_q});
    assign i_pivot561_v4l2_ctrl_get_name119_b = $unsigned({{2{c_i32_412846_recast_x_q[31]}}, c_i32_412846_recast_x_q});
    assign i_pivot561_v4l2_ctrl_get_name119_o = $unsigned($signed(i_pivot561_v4l2_ctrl_get_name119_a) - $signed(i_pivot561_v4l2_ctrl_get_name119_b));
    assign i_pivot561_v4l2_ctrl_get_name119_c[0] = i_pivot561_v4l2_ctrl_get_name119_o[33];

    // i_acl_3401_v4l2_ctrl_get_name778(LOGICAL,637)@26 + 1
    assign i_acl_3401_v4l2_ctrl_get_name778_qi = i_pivot553_v4l2_ctrl_get_name325_c ^ i_pivot561_v4l2_ctrl_get_name119_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3401_v4l2_ctrl_get_name778_delay ( .xin(i_acl_3401_v4l2_ctrl_get_name778_qi), .xout(i_acl_3401_v4l2_ctrl_get_name778_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist135_i_acl_3401_v4l2_ctrl_get_name778_q_8(DELAY,1677)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist135_i_acl_3401_v4l2_ctrl_get_name778_q_8 ( .xin(i_acl_3401_v4l2_ctrl_get_name778_q), .xout(redist135_i_acl_3401_v4l2_ctrl_get_name778_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3408_v4l2_ctrl_get_name779(MUX,638)@34
    assign i_acl_3408_v4l2_ctrl_get_name779_s = redist135_i_acl_3401_v4l2_ctrl_get_name778_q_8_q;
    always @(i_acl_3408_v4l2_ctrl_get_name779_s or i_acl_3399_v4l2_ctrl_get_name777_q or c_i64_47034468608350617601363_q)
    begin
        unique case (i_acl_3408_v4l2_ctrl_get_name779_s)
            1'b0 : i_acl_3408_v4l2_ctrl_get_name779_q = i_acl_3399_v4l2_ctrl_get_name777_q;
            1'b1 : i_acl_3408_v4l2_ctrl_get_name779_q = c_i64_47034468608350617601363_q;
            default : i_acl_3408_v4l2_ctrl_get_name779_q = 64'b0;
        endcase
    end

    // i_acl_3409_v4l2_ctrl_get_name780(LOGICAL,639)@26 + 1
    assign i_acl_3409_v4l2_ctrl_get_name780_qi = i_pivot561_v4l2_ctrl_get_name119_c ^ i_pivot559_v4l2_ctrl_get_name237_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_3409_v4l2_ctrl_get_name780_delay ( .xin(i_acl_3409_v4l2_ctrl_get_name780_qi), .xout(i_acl_3409_v4l2_ctrl_get_name780_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist134_i_acl_3409_v4l2_ctrl_get_name780_q_8(DELAY,1676)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist134_i_acl_3409_v4l2_ctrl_get_name780_q_8 ( .xin(i_acl_3409_v4l2_ctrl_get_name780_q), .xout(redist134_i_acl_3409_v4l2_ctrl_get_name780_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3416_v4l2_ctrl_get_name781(MUX,640)@34
    assign i_acl_3416_v4l2_ctrl_get_name781_s = redist134_i_acl_3409_v4l2_ctrl_get_name780_q_8_q;
    always @(i_acl_3416_v4l2_ctrl_get_name781_s or i_acl_3408_v4l2_ctrl_get_name779_q or c_i64_47037283358117724161364_q)
    begin
        unique case (i_acl_3416_v4l2_ctrl_get_name781_s)
            1'b0 : i_acl_3416_v4l2_ctrl_get_name781_q = i_acl_3408_v4l2_ctrl_get_name779_q;
            1'b1 : i_acl_3416_v4l2_ctrl_get_name781_q = c_i64_47037283358117724161364_q;
            default : i_acl_3416_v4l2_ctrl_get_name781_q = 64'b0;
        endcase
    end

    // i_acl_3417_v4l2_ctrl_get_name782(LOGICAL,641)@22
    assign i_acl_3417_v4l2_ctrl_get_name782_q = i_switchleaf_v4l2_ctrl_get_name271_q ^ i_pivot_v4l2_ctrl_get_name137_c;

    // i_switchleaf637_not_v4l2_ctrl_get_name349(LOGICAL,942)@22
    assign i_switchleaf637_not_v4l2_ctrl_get_name349_q = i_switchleaf637_v4l2_ctrl_get_name347_q ^ VCC_q;

    // redist80_i_pivot639_v4l2_ctrl_get_name345_c_15(DELAY,1622)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist80_i_pivot639_v4l2_ctrl_get_name345_c_15 ( .xin(i_pivot639_v4l2_ctrl_get_name345_c), .xout(redist80_i_pivot639_v4l2_ctrl_get_name345_c_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3424_v4l2_ctrl_get_name783(LOGICAL,642)@22
    assign i_acl_3424_v4l2_ctrl_get_name783_q = redist80_i_pivot639_v4l2_ctrl_get_name345_c_15_q ^ i_switchleaf637_not_v4l2_ctrl_get_name349_q;

    // redist78_i_pivot655_v4l2_ctrl_get_name3_c_7(DELAY,1620)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist78_i_pivot655_v4l2_ctrl_get_name3_c_7 ( .xin(i_pivot655_v4l2_ctrl_get_name3_c), .xout(redist78_i_pivot655_v4l2_ctrl_get_name3_c_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3432_v4l2_ctrl_get_name784(MUX,643)@22 + 1
    assign i_acl_3432_v4l2_ctrl_get_name784_s = redist78_i_pivot655_v4l2_ctrl_get_name3_c_7_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_3432_v4l2_ctrl_get_name784_q <= 1'b0;
        end
        else
        begin
            unique case (i_acl_3432_v4l2_ctrl_get_name784_s)
                1'b0 : i_acl_3432_v4l2_ctrl_get_name784_q <= i_acl_3424_v4l2_ctrl_get_name783_q;
                1'b1 : i_acl_3432_v4l2_ctrl_get_name784_q <= i_acl_3417_v4l2_ctrl_get_name782_q;
                default : i_acl_3432_v4l2_ctrl_get_name784_q <= 1'b0;
            endcase
        end
    end

    // redist133_i_acl_3432_v4l2_ctrl_get_name784_q_12(DELAY,1675)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist133_i_acl_3432_v4l2_ctrl_get_name784_q_12 ( .xin(i_acl_3432_v4l2_ctrl_get_name784_q), .xout(redist133_i_acl_3432_v4l2_ctrl_get_name784_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_3433_v4l2_ctrl_get_name785(MUX,644)@34
    assign i_acl_3433_v4l2_ctrl_get_name785_s = redist133_i_acl_3432_v4l2_ctrl_get_name784_q_12_q;
    always @(i_acl_3433_v4l2_ctrl_get_name785_s or i_acl_3416_v4l2_ctrl_get_name781_q or cpn_i8_q)
    begin
        unique case (i_acl_3433_v4l2_ctrl_get_name785_s)
            1'b0 : i_acl_3433_v4l2_ctrl_get_name785_q = i_acl_3416_v4l2_ctrl_get_name781_q;
            1'b1 : i_acl_3433_v4l2_ctrl_get_name785_q = cpn_i8_q;
            default : i_acl_3433_v4l2_ctrl_get_name785_q = 64'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,1510)@34
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_acl_3433_v4l2_ctrl_get_name785_q;
    assign out_o_valid = redist25_sync_together1366_aunroll_x_in_i_valid_33_mem_q;
    assign out_unnamed_v4l2_ctrl_get_name1 = GND_q;

endmodule
