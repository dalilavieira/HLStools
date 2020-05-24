set lang "C"
set moduleName "PutMeshOnCurve"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName1 "MAX_LIGHTMAPS"
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
set PortList ""
set PortName0 "in"
set BitWidth0 "64128000064"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set structMem0 ""
set PortName00 "width"
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
set PortName01 "height"
set BitWidth01 "32"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "int"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "verts"
set BitWidth02 "64128000000"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list  1000]
set Interface02 "wire"
set structMem02 ""
set PortName020 "xyz"
set BitWidth020 "64000"
set ArrayOpt020 ""
set Const020 "0"
set Volatile020 "0"
set Pointer020 "0"
set Reference020 "0"
set Dims020 [list  1000]
set Interface020 "wire"
set DataType020 "double"
set Port020 [list $PortName020 $Interface020 $DataType020 $Pointer020 $Dims020 $Const020 $Volatile020 $ArrayOpt020]
lappend structMem02 $Port020
set PortName021 "st"
set BitWidth021 "64000"
set ArrayOpt021 ""
set Const021 "0"
set Volatile021 "0"
set Pointer021 "0"
set Reference021 "0"
set Dims021 [list  1000]
set Interface021 "wire"
set DataType021 "double"
set Port021 [list $PortName021 $Interface021 $DataType021 $Pointer021 $Dims021 $Const021 $Volatile021 $ArrayOpt021]
lappend structMem02 $Port021
set PortName022 "lightmap"
set BitWidth022 "64000000"
set ArrayOpt022 ""
set Const022 "0"
set Volatile022 "0"
set Pointer022 "0"
set Reference022 "0"
set Dims022 [list  1000 1000]
set Interface022 "wire"
set DataType022 "double"
set Port022 [list $PortName022 $Interface022 $DataType022 $Pointer022 $Dims022 $Const022 $Volatile022 $ArrayOpt022]
lappend structMem02 $Port022
set structParameter02 [list ]
set structArgument02 [list ]
set NameSpace02 [list ]
set structIsPacked02 "0"
set DataType02 [list "TYPE_1__" "struct TYPE_4__" $structMem02 0 0 $structParameter02 $structArgument02 $NameSpace02 $structIsPacked02]
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "TYPE_2__" "struct TYPE_5__" $structMem0 0 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
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
