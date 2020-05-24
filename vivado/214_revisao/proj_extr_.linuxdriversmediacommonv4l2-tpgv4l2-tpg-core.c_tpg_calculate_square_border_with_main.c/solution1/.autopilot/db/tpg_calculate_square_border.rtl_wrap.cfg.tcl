set lang "C"
set moduleName "tpg_calculate_square_border"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName1 "TPG_VIDEO_ASPECT_16X9_ANAMORPHIC"
set BitWidth1 "32"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Initializer1 ""
set External1 0
set Dims1 [list 0]
set Interface1 "wire"
set NameSpace1 [list ]
set DataType1 "int"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1 $Initializer1 $External1 $NameSpace1]
lappend globalVariable $Port1
set PortName2 "TPG_PIXEL_ASPECT_PAL"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Initializer2 ""
set External2 0
set Dims2 [list 0]
set Interface2 "wire"
set NameSpace2 [list ]
set DataType2 "int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2 $Initializer2 $External2 $NameSpace2]
lappend globalVariable $Port2
set PortName3 "TPG_PIXEL_ASPECT_NTSC"
set BitWidth3 "32"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Initializer3 ""
set External3 0
set Dims3 [list 0]
set Interface3 "wire"
set NameSpace3 [list ]
set DataType3 "int"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3 $Initializer3 $External3 $NameSpace3]
lappend globalVariable $Port3
set PortList ""
set PortName0 "tpg"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set structMem0 ""
set PortName00 "src_width"
set BitWidth00 "32"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "unsigned int"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "src_height"
set BitWidth01 "32"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "unsigned int"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "vid_aspect"
set BitWidth02 "32"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list 0]
set Interface02 "wire"
set DataType02 "int"
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set PortName03 "pix_aspect"
set BitWidth03 "32"
set ArrayOpt03 ""
set Const03 "0"
set Volatile03 "0"
set Pointer03 "0"
set Reference03 "0"
set Dims03 [list 0]
set Interface03 "wire"
set DataType03 "int"
set Port03 [list $PortName03 $Interface03 $DataType03 $Pointer03 $Dims03 $Const03 $Volatile03 $ArrayOpt03]
lappend structMem0 $Port03
set PortName04 "border"
set BitWidth04 "128"
set ArrayOpt04 ""
set Const04 "0"
set Volatile04 "0"
set Pointer04 "0"
set Reference04 "0"
set Dims04 [list 0]
set Interface04 "wire"
set structMem04 ""
set PortName040 "left"
set BitWidth040 "32"
set ArrayOpt040 ""
set Const040 "0"
set Volatile040 "0"
set Pointer040 "0"
set Reference040 "0"
set Dims040 [list 0]
set Interface040 "wire"
set DataType040 "unsigned int"
set Port040 [list $PortName040 $Interface040 $DataType040 $Pointer040 $Dims040 $Const040 $Volatile040 $ArrayOpt040]
lappend structMem04 $Port040
set PortName041 "width"
set BitWidth041 "32"
set ArrayOpt041 ""
set Const041 "0"
set Volatile041 "0"
set Pointer041 "0"
set Reference041 "0"
set Dims041 [list 0]
set Interface041 "wire"
set DataType041 "unsigned int"
set Port041 [list $PortName041 $Interface041 $DataType041 $Pointer041 $Dims041 $Const041 $Volatile041 $ArrayOpt041]
lappend structMem04 $Port041
set PortName042 "top"
set BitWidth042 "32"
set ArrayOpt042 ""
set Const042 "0"
set Volatile042 "0"
set Pointer042 "0"
set Reference042 "0"
set Dims042 [list 0]
set Interface042 "wire"
set DataType042 "unsigned int"
set Port042 [list $PortName042 $Interface042 $DataType042 $Pointer042 $Dims042 $Const042 $Volatile042 $ArrayOpt042]
lappend structMem04 $Port042
set PortName043 "height"
set BitWidth043 "32"
set ArrayOpt043 ""
set Const043 "0"
set Volatile043 "0"
set Pointer043 "0"
set Reference043 "0"
set Dims043 [list 0]
set Interface043 "wire"
set DataType043 "unsigned int"
set Port043 [list $PortName043 $Interface043 $DataType043 $Pointer043 $Dims043 $Const043 $Volatile043 $ArrayOpt043]
lappend structMem04 $Port043
set structParameter04 [list ]
set structArgument04 [list ]
set NameSpace04 [list ]
set structIsPacked04 "0"
set DataType04 [list "TYPE_2__" "struct TYPE_4__" $structMem04 0 0 $structParameter04 $structArgument04 $NameSpace04 $structIsPacked04]
set Port04 [list $PortName04 $Interface04 $DataType04 $Pointer04 $Dims04 $Const04 $Volatile04 $ArrayOpt04]
lappend structMem0 $Port04
set PortName05 "square"
set BitWidth05 "128"
set ArrayOpt05 ""
set Const05 "0"
set Volatile05 "0"
set Pointer05 "0"
set Reference05 "0"
set Dims05 [list 0]
set Interface05 "wire"
set structMem05 ""
set PortName050 "width"
set BitWidth050 "32"
set ArrayOpt050 ""
set Const050 "0"
set Volatile050 "0"
set Pointer050 "0"
set Reference050 "0"
set Dims050 [list 0]
set Interface050 "wire"
set DataType050 "unsigned int"
set Port050 [list $PortName050 $Interface050 $DataType050 $Pointer050 $Dims050 $Const050 $Volatile050 $ArrayOpt050]
lappend structMem05 $Port050
set PortName051 "left"
set BitWidth051 "32"
set ArrayOpt051 ""
set Const051 "0"
set Volatile051 "0"
set Pointer051 "0"
set Reference051 "0"
set Dims051 [list 0]
set Interface051 "wire"
set DataType051 "unsigned int"
set Port051 [list $PortName051 $Interface051 $DataType051 $Pointer051 $Dims051 $Const051 $Volatile051 $ArrayOpt051]
lappend structMem05 $Port051
set PortName052 "height"
set BitWidth052 "32"
set ArrayOpt052 ""
set Const052 "0"
set Volatile052 "0"
set Pointer052 "0"
set Reference052 "0"
set Dims052 [list 0]
set Interface052 "wire"
set DataType052 "unsigned int"
set Port052 [list $PortName052 $Interface052 $DataType052 $Pointer052 $Dims052 $Const052 $Volatile052 $ArrayOpt052]
lappend structMem05 $Port052
set PortName053 "top"
set BitWidth053 "32"
set ArrayOpt053 ""
set Const053 "0"
set Volatile053 "0"
set Pointer053 "0"
set Reference053 "0"
set Dims053 [list 0]
set Interface053 "wire"
set DataType053 "unsigned int"
set Port053 [list $PortName053 $Interface053 $DataType053 $Pointer053 $Dims053 $Const053 $Volatile053 $ArrayOpt053]
lappend structMem05 $Port053
set structParameter05 [list ]
set structArgument05 [list ]
set NameSpace05 [list ]
set structIsPacked05 "0"
set DataType05 [list "TYPE_1__" "struct TYPE_3__" $structMem05 0 0 $structParameter05 $structArgument05 $NameSpace05 $structIsPacked05]
set Port05 [list $PortName05 $Interface05 $DataType05 $Pointer05 $Dims05 $Const05 $Volatile05 $ArrayOpt05]
lappend structMem0 $Port05
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "tpg_data" "struct tpg_data" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
