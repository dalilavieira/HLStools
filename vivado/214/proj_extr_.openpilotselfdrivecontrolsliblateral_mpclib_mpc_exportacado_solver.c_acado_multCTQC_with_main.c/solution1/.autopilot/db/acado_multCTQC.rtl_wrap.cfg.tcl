set lang "C"
set moduleName "acado_multCTQC"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName2 "acadoWorkspace"
set BitWidth2 "32000"
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
set structMem2 ""
set PortName20 "H"
set BitWidth20 "32000"
set ArrayOpt20 ""
set Const20 "0"
set Volatile20 "0"
set Pointer20 "0"
set Reference20 "0"
set Dims20 [list  1000]
set Interface20 "wire"
set DataType20 "int"
set Port20 [list $PortName20 $Interface20 $DataType20 $Pointer20 $Dims20 $Const20 $Volatile20 $ArrayOpt20]
lappend structMem2 $Port20
set structParameter2 [list ]
set structArgument2 [list ]
set NameSpace2 [list ]
set structIsPacked2 "0"
set DataType2 [list "TYPE_1__" "struct TYPE_2__" $structMem2 0 0 $structParameter2 $structArgument2 $NameSpace2 $structIsPacked2]
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2 $Initializer2 $External2 $NameSpace2]
lappend globalVariable $Port2
set PortList ""
set PortName0 "Gx1"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "1"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 1000]
set Interface0 "wire"
set DataType0 "int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "Gx2"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "1"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 1000]
set Interface1 "wire"
set DataType1 "int"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
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
