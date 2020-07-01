set lang "C++"
set moduleName "optical_flow_sw"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "frame0"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 436 1024]
set Interface0 "wire"
set DataType0 "float"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "frame1"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 436 1024]
set Interface1 "wire"
set DataType1 "float"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "frame2"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 436 1024]
set Interface2 "wire"
set DataType2 "float"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "frame3"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 436 1024]
set Interface3 "wire"
set DataType3 "float"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "frame4"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Dims4 [list 436 1024]
set Interface4 "wire"
set DataType4 "float"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "outputs"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 436 1024]
set Interface5 "wire"
set structMem5 ""
set PortName50 "x"
set BitWidth50 "32"
set ArrayOpt50 ""
set Const50 "0"
set Volatile50 "0"
set Pointer50 "0"
set Reference50 "0"
set Dims50 [list 0]
set Interface50 "wire"
set DataType50 "float"
set Port50 [list $PortName50 $Interface50 $DataType50 $Pointer50 $Dims50 $Const50 $Volatile50 $ArrayOpt50]
lappend structMem5 $Port50
set PortName51 "y"
set BitWidth51 "32"
set ArrayOpt51 ""
set Const51 "0"
set Volatile51 "0"
set Pointer51 "0"
set Reference51 "0"
set Dims51 [list 0]
set Interface51 "wire"
set DataType51 "float"
set Port51 [list $PortName51 $Interface51 $DataType51 $Pointer51 $Dims51 $Const51 $Volatile51 $ArrayOpt51]
lappend structMem5 $Port51
set structParameter5 [list ]
set structArgument5 [list ]
set NameSpace5 [list ]
set structIsPacked5 "0"
set DataType5 [list "velocity_t" "struct " $structMem5 0 0 $structParameter5 $structArgument5 $NameSpace5 $structIsPacked5]
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
