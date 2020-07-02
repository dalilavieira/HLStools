set lang "C"
set moduleName "SiS_Generic_ConvertCRData"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "SiS_Pr"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set structMem0 ""
set PortName00 "dummy"
set BitWidth00 "32"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "int"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "SiS_Private" "struct SiS_Private" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "crdata"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 1000]
set Interface1 "wire"
set DataType1 "unsigned char"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "xres"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "yres"
set BitWidth3 "32"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "int"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "var"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "1"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set structMem4 ""
set PortName40 "xres"
set BitWidth40 "32"
set ArrayOpt40 ""
set Const40 "0"
set Volatile40 "0"
set Pointer40 "0"
set Reference40 "0"
set Dims40 [list 0]
set Interface40 "wire"
set DataType40 "int"
set Port40 [list $PortName40 $Interface40 $DataType40 $Pointer40 $Dims40 $Const40 $Volatile40 $ArrayOpt40]
lappend structMem4 $Port40
set PortName41 "left_margin"
set BitWidth41 "32"
set ArrayOpt41 ""
set Const41 "0"
set Volatile41 "0"
set Pointer41 "0"
set Reference41 "0"
set Dims41 [list 0]
set Interface41 "wire"
set DataType41 "int"
set Port41 [list $PortName41 $Interface41 $DataType41 $Pointer41 $Dims41 $Const41 $Volatile41 $ArrayOpt41]
lappend structMem4 $Port41
set PortName42 "right_margin"
set BitWidth42 "32"
set ArrayOpt42 ""
set Const42 "0"
set Volatile42 "0"
set Pointer42 "0"
set Reference42 "0"
set Dims42 [list 0]
set Interface42 "wire"
set DataType42 "int"
set Port42 [list $PortName42 $Interface42 $DataType42 $Pointer42 $Dims42 $Const42 $Volatile42 $ArrayOpt42]
lappend structMem4 $Port42
set PortName43 "hsync_len"
set BitWidth43 "32"
set ArrayOpt43 ""
set Const43 "0"
set Volatile43 "0"
set Pointer43 "0"
set Reference43 "0"
set Dims43 [list 0]
set Interface43 "wire"
set DataType43 "int"
set Port43 [list $PortName43 $Interface43 $DataType43 $Pointer43 $Dims43 $Const43 $Volatile43 $ArrayOpt43]
lappend structMem4 $Port43
set PortName44 "yres"
set BitWidth44 "32"
set ArrayOpt44 ""
set Const44 "0"
set Volatile44 "0"
set Pointer44 "0"
set Reference44 "0"
set Dims44 [list 0]
set Interface44 "wire"
set DataType44 "int"
set Port44 [list $PortName44 $Interface44 $DataType44 $Pointer44 $Dims44 $Const44 $Volatile44 $ArrayOpt44]
lappend structMem4 $Port44
set PortName45 "upper_margin"
set BitWidth45 "32"
set ArrayOpt45 ""
set Const45 "0"
set Volatile45 "0"
set Pointer45 "0"
set Reference45 "0"
set Dims45 [list 0]
set Interface45 "wire"
set DataType45 "int"
set Port45 [list $PortName45 $Interface45 $DataType45 $Pointer45 $Dims45 $Const45 $Volatile45 $ArrayOpt45]
lappend structMem4 $Port45
set PortName46 "lower_margin"
set BitWidth46 "32"
set ArrayOpt46 ""
set Const46 "0"
set Volatile46 "0"
set Pointer46 "0"
set Reference46 "0"
set Dims46 [list 0]
set Interface46 "wire"
set DataType46 "int"
set Port46 [list $PortName46 $Interface46 $DataType46 $Pointer46 $Dims46 $Const46 $Volatile46 $ArrayOpt46]
lappend structMem4 $Port46
set PortName47 "vsync_len"
set BitWidth47 "32"
set ArrayOpt47 ""
set Const47 "0"
set Volatile47 "0"
set Pointer47 "0"
set Reference47 "0"
set Dims47 [list 0]
set Interface47 "wire"
set DataType47 "int"
set Port47 [list $PortName47 $Interface47 $DataType47 $Pointer47 $Dims47 $Const47 $Volatile47 $ArrayOpt47]
lappend structMem4 $Port47
set structParameter4 [list ]
set structArgument4 [list ]
set NameSpace4 [list ]
set structIsPacked4 "0"
set DataType4 [list "fb_var_screeninfo" "struct fb_var_screeninfo" $structMem4 1 0 $structParameter4 $structArgument4 $NameSpace4 $structIsPacked4]
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "writeres"
set BitWidth5 "32"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set DataType5 "int"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
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
