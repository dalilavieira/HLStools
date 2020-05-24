set moduleName CalculateItemSize
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {CalculateItemSize}
set C_modelType { int 32 }
set C_modelArgList {
	{ pPreviewData_cxEdge int 32 regular {pointer 0}  }
	{ pPreviewData_cySizeFrame int 32 regular {pointer 0}  }
	{ pPreviewData_cyEdge int 32 regular {pointer 0}  }
	{ pPreviewData_cyCaption int 32 regular {pointer 0}  }
	{ pPreviewData_cyBorder int 32 regular {pointer 0}  }
	{ pPreviewData_cyMenu int 32 regular {pointer 0}  }
	{ pPreviewData_rcDialogButton_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogButton_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogButton_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogButton_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogClient_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogClient_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogClient_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogClient_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogFrame_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogFrame_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogFrame_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogFrame_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaption_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaption_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaption_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaption_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaptionButtons_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaptionButtons_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaptionButtons_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcDialogCaptionButtons_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcDesktop_left int 32 regular {pointer 0}  }
	{ pPreviewData_rcDesktop_top int 32 regular {pointer 0}  }
	{ pPreviewData_rcDesktop_right int 32 regular {pointer 0}  }
	{ pPreviewData_rcDesktop_bottom int 32 regular {pointer 0}  }
	{ pPreviewData_rcActiveClient_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveClient_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveClient_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveClient_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveScroll_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveScroll_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveScroll_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveScroll_left int 32 regular {pointer 1}  }
	{ pPreviewData_cxScrollbar int 32 regular {pointer 0}  }
	{ pPreviewData_rcActiveFrame_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveFrame_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveFrame_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveFrame_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveMenuBar_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveMenuBar_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveMenuBar_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveMenuBar_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaption_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaption_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaption_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaption_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaptionButtons_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaptionButtons_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaptionButtons_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcActiveCaptionButtons_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaption_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaption_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaption_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaption_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveFrame_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveFrame_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveFrame_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveFrame_bottom int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaptionButtons_left int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaptionButtons_top int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaptionButtons_right int 32 regular {pointer 1}  }
	{ pPreviewData_rcInactiveCaptionButtons_bottom int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pPreviewData_cxEdge", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cxEdge","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_cySizeFrame", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cySizeFrame","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_cyEdge", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cyEdge","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_cyCaption", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cyCaption","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_cyBorder", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cyBorder","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_cyMenu", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cyMenu","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogButton_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogButton.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogButton_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogButton.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogButton_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogButton.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogButton_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogButton.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogClient_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogClient.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogClient_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogClient.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogClient_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogClient.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogClient_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogClient.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogFrame_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogFrame.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogFrame_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogFrame.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogFrame_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogFrame.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogFrame_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogFrame.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaption_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaption.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaption_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaption.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaption_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaption.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaption_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaption.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaptionButtons_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaptionButtons.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaptionButtons_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaptionButtons.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaptionButtons_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaptionButtons.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDialogCaptionButtons_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDialogCaptionButtons.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDesktop_left", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDesktop.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDesktop_top", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDesktop.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDesktop_right", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDesktop.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcDesktop_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcDesktop.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveClient_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveClient.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveClient_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveClient.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveClient_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveClient.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveClient_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveClient.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveScroll_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveScroll.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveScroll_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveScroll.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveScroll_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveScroll.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveScroll_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveScroll.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_cxScrollbar", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.cxScrollbar","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveFrame_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveFrame.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveFrame_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveFrame.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveFrame_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveFrame.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveFrame_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveFrame.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveMenuBar_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveMenuBar.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveMenuBar_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveMenuBar.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveMenuBar_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveMenuBar.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveMenuBar_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveMenuBar.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaption_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaption.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaption_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaption.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaption_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaption.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaption_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaption.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaptionButtons_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaptionButtons.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaptionButtons_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaptionButtons.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaptionButtons_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaptionButtons.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcActiveCaptionButtons_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcActiveCaptionButtons.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaption_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaption.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaption_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaption.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaption_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaption.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaption_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaption.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveFrame_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveFrame.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveFrame_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveFrame.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveFrame_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveFrame.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveFrame_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveFrame.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaptionButtons_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaptionButtons.left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaptionButtons_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaptionButtons.top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaptionButtons_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaptionButtons.right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pPreviewData_rcInactiveCaptionButtons_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pPreviewData.rcInactiveCaptionButtons.bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "VOID","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 130
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pPreviewData_cxEdge sc_in sc_lv 32 signal 0 } 
	{ pPreviewData_cySizeFrame sc_in sc_lv 32 signal 1 } 
	{ pPreviewData_cyEdge sc_in sc_lv 32 signal 2 } 
	{ pPreviewData_cyCaption sc_in sc_lv 32 signal 3 } 
	{ pPreviewData_cyBorder sc_in sc_lv 32 signal 4 } 
	{ pPreviewData_cyMenu sc_in sc_lv 32 signal 5 } 
	{ pPreviewData_rcDialogButton_left sc_out sc_lv 32 signal 6 } 
	{ pPreviewData_rcDialogButton_left_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ pPreviewData_rcDialogButton_right sc_out sc_lv 32 signal 7 } 
	{ pPreviewData_rcDialogButton_right_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ pPreviewData_rcDialogButton_bottom sc_out sc_lv 32 signal 8 } 
	{ pPreviewData_rcDialogButton_bottom_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ pPreviewData_rcDialogButton_top sc_out sc_lv 32 signal 9 } 
	{ pPreviewData_rcDialogButton_top_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ pPreviewData_rcDialogClient_left sc_out sc_lv 32 signal 10 } 
	{ pPreviewData_rcDialogClient_left_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ pPreviewData_rcDialogClient_top sc_out sc_lv 32 signal 11 } 
	{ pPreviewData_rcDialogClient_top_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ pPreviewData_rcDialogClient_right sc_out sc_lv 32 signal 12 } 
	{ pPreviewData_rcDialogClient_right_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ pPreviewData_rcDialogClient_bottom sc_out sc_lv 32 signal 13 } 
	{ pPreviewData_rcDialogClient_bottom_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ pPreviewData_rcDialogFrame_left sc_out sc_lv 32 signal 14 } 
	{ pPreviewData_rcDialogFrame_left_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ pPreviewData_rcDialogFrame_top sc_out sc_lv 32 signal 15 } 
	{ pPreviewData_rcDialogFrame_top_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ pPreviewData_rcDialogFrame_right sc_out sc_lv 32 signal 16 } 
	{ pPreviewData_rcDialogFrame_right_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ pPreviewData_rcDialogFrame_bottom sc_out sc_lv 32 signal 17 } 
	{ pPreviewData_rcDialogFrame_bottom_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ pPreviewData_rcDialogCaption_left sc_out sc_lv 32 signal 18 } 
	{ pPreviewData_rcDialogCaption_left_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ pPreviewData_rcDialogCaption_top sc_out sc_lv 32 signal 19 } 
	{ pPreviewData_rcDialogCaption_top_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ pPreviewData_rcDialogCaption_right sc_out sc_lv 32 signal 20 } 
	{ pPreviewData_rcDialogCaption_right_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ pPreviewData_rcDialogCaption_bottom sc_out sc_lv 32 signal 21 } 
	{ pPreviewData_rcDialogCaption_bottom_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ pPreviewData_rcDialogCaptionButtons_left sc_out sc_lv 32 signal 22 } 
	{ pPreviewData_rcDialogCaptionButtons_left_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ pPreviewData_rcDialogCaptionButtons_top sc_out sc_lv 32 signal 23 } 
	{ pPreviewData_rcDialogCaptionButtons_top_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ pPreviewData_rcDialogCaptionButtons_right sc_out sc_lv 32 signal 24 } 
	{ pPreviewData_rcDialogCaptionButtons_right_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ pPreviewData_rcDialogCaptionButtons_bottom sc_out sc_lv 32 signal 25 } 
	{ pPreviewData_rcDialogCaptionButtons_bottom_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ pPreviewData_rcDesktop_left sc_in sc_lv 32 signal 26 } 
	{ pPreviewData_rcDesktop_top sc_in sc_lv 32 signal 27 } 
	{ pPreviewData_rcDesktop_right sc_in sc_lv 32 signal 28 } 
	{ pPreviewData_rcDesktop_bottom sc_in sc_lv 32 signal 29 } 
	{ pPreviewData_rcActiveClient_left sc_out sc_lv 32 signal 30 } 
	{ pPreviewData_rcActiveClient_left_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ pPreviewData_rcActiveClient_top sc_out sc_lv 32 signal 31 } 
	{ pPreviewData_rcActiveClient_top_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ pPreviewData_rcActiveClient_right sc_out sc_lv 32 signal 32 } 
	{ pPreviewData_rcActiveClient_right_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ pPreviewData_rcActiveClient_bottom sc_out sc_lv 32 signal 33 } 
	{ pPreviewData_rcActiveClient_bottom_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ pPreviewData_rcActiveScroll_top sc_out sc_lv 32 signal 34 } 
	{ pPreviewData_rcActiveScroll_top_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ pPreviewData_rcActiveScroll_right sc_out sc_lv 32 signal 35 } 
	{ pPreviewData_rcActiveScroll_right_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ pPreviewData_rcActiveScroll_bottom sc_out sc_lv 32 signal 36 } 
	{ pPreviewData_rcActiveScroll_bottom_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ pPreviewData_rcActiveScroll_left sc_out sc_lv 32 signal 37 } 
	{ pPreviewData_rcActiveScroll_left_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ pPreviewData_cxScrollbar sc_in sc_lv 32 signal 38 } 
	{ pPreviewData_rcActiveFrame_left sc_out sc_lv 32 signal 39 } 
	{ pPreviewData_rcActiveFrame_left_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ pPreviewData_rcActiveFrame_top sc_out sc_lv 32 signal 40 } 
	{ pPreviewData_rcActiveFrame_top_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ pPreviewData_rcActiveFrame_right sc_out sc_lv 32 signal 41 } 
	{ pPreviewData_rcActiveFrame_right_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ pPreviewData_rcActiveFrame_bottom sc_out sc_lv 32 signal 42 } 
	{ pPreviewData_rcActiveFrame_bottom_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ pPreviewData_rcActiveMenuBar_left sc_out sc_lv 32 signal 43 } 
	{ pPreviewData_rcActiveMenuBar_left_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ pPreviewData_rcActiveMenuBar_top sc_out sc_lv 32 signal 44 } 
	{ pPreviewData_rcActiveMenuBar_top_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ pPreviewData_rcActiveMenuBar_right sc_out sc_lv 32 signal 45 } 
	{ pPreviewData_rcActiveMenuBar_right_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ pPreviewData_rcActiveMenuBar_bottom sc_out sc_lv 32 signal 46 } 
	{ pPreviewData_rcActiveMenuBar_bottom_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ pPreviewData_rcActiveCaption_left sc_out sc_lv 32 signal 47 } 
	{ pPreviewData_rcActiveCaption_left_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ pPreviewData_rcActiveCaption_top sc_out sc_lv 32 signal 48 } 
	{ pPreviewData_rcActiveCaption_top_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ pPreviewData_rcActiveCaption_right sc_out sc_lv 32 signal 49 } 
	{ pPreviewData_rcActiveCaption_right_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ pPreviewData_rcActiveCaption_bottom sc_out sc_lv 32 signal 50 } 
	{ pPreviewData_rcActiveCaption_bottom_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ pPreviewData_rcActiveCaptionButtons_left sc_out sc_lv 32 signal 51 } 
	{ pPreviewData_rcActiveCaptionButtons_left_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ pPreviewData_rcActiveCaptionButtons_top sc_out sc_lv 32 signal 52 } 
	{ pPreviewData_rcActiveCaptionButtons_top_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ pPreviewData_rcActiveCaptionButtons_right sc_out sc_lv 32 signal 53 } 
	{ pPreviewData_rcActiveCaptionButtons_right_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ pPreviewData_rcActiveCaptionButtons_bottom sc_out sc_lv 32 signal 54 } 
	{ pPreviewData_rcActiveCaptionButtons_bottom_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ pPreviewData_rcInactiveCaption_left sc_out sc_lv 32 signal 55 } 
	{ pPreviewData_rcInactiveCaption_left_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ pPreviewData_rcInactiveCaption_top sc_out sc_lv 32 signal 56 } 
	{ pPreviewData_rcInactiveCaption_top_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ pPreviewData_rcInactiveCaption_right sc_out sc_lv 32 signal 57 } 
	{ pPreviewData_rcInactiveCaption_right_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ pPreviewData_rcInactiveCaption_bottom sc_out sc_lv 32 signal 58 } 
	{ pPreviewData_rcInactiveCaption_bottom_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ pPreviewData_rcInactiveFrame_left sc_out sc_lv 32 signal 59 } 
	{ pPreviewData_rcInactiveFrame_left_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ pPreviewData_rcInactiveFrame_top sc_out sc_lv 32 signal 60 } 
	{ pPreviewData_rcInactiveFrame_top_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ pPreviewData_rcInactiveFrame_right sc_out sc_lv 32 signal 61 } 
	{ pPreviewData_rcInactiveFrame_right_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ pPreviewData_rcInactiveFrame_bottom sc_out sc_lv 32 signal 62 } 
	{ pPreviewData_rcInactiveFrame_bottom_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ pPreviewData_rcInactiveCaptionButtons_left sc_out sc_lv 32 signal 63 } 
	{ pPreviewData_rcInactiveCaptionButtons_left_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ pPreviewData_rcInactiveCaptionButtons_top sc_out sc_lv 32 signal 64 } 
	{ pPreviewData_rcInactiveCaptionButtons_top_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ pPreviewData_rcInactiveCaptionButtons_right sc_out sc_lv 32 signal 65 } 
	{ pPreviewData_rcInactiveCaptionButtons_right_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ pPreviewData_rcInactiveCaptionButtons_bottom sc_out sc_lv 32 signal 66 } 
	{ pPreviewData_rcInactiveCaptionButtons_bottom_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pPreviewData_cxEdge", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cxEdge", "role": "default" }} , 
 	{ "name": "pPreviewData_cySizeFrame", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cySizeFrame", "role": "default" }} , 
 	{ "name": "pPreviewData_cyEdge", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cyEdge", "role": "default" }} , 
 	{ "name": "pPreviewData_cyCaption", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cyCaption", "role": "default" }} , 
 	{ "name": "pPreviewData_cyBorder", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cyBorder", "role": "default" }} , 
 	{ "name": "pPreviewData_cyMenu", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cyMenu", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogButton_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogButton_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogButton_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogButton_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogButton_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogButton_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogButton_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogButton_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogButton_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogButton_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogButton_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogButton_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogButton_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogButton_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogButton_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogButton_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogClient_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogClient_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogClient_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogClient_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogClient_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogClient_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogClient_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogClient_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogClient_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogClient_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogClient_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogClient_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogClient_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogClient_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogClient_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogClient_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogFrame_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogFrame_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogFrame_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogFrame_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogFrame_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogFrame_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogFrame_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogFrame_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogFrame_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaption_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaption_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaption_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaption_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaption_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaption_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaption_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaption_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaption_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDialogCaptionButtons_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcDialogCaptionButtons_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcDesktop_left", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDesktop_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDesktop_top", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDesktop_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDesktop_right", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDesktop_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcDesktop_bottom", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcDesktop_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveClient_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveClient_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveClient_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveClient_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveClient_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveClient_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveClient_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveClient_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveClient_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveClient_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveClient_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveClient_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveClient_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveClient_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveClient_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveClient_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveScroll_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveScroll_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveScroll_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveScroll_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveScroll_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveScroll_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveScroll_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveScroll_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveScroll_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_cxScrollbar", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_cxScrollbar", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveFrame_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveFrame_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveFrame_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveFrame_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveFrame_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveFrame_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveFrame_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveFrame_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveFrame_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveMenuBar_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveMenuBar_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveMenuBar_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveMenuBar_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveMenuBar_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveMenuBar_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveMenuBar_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveMenuBar_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveMenuBar_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaption_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaption_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaption_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaption_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaption_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaption_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaption_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaption_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaption_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcActiveCaptionButtons_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcActiveCaptionButtons_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaption_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaption_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaption_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaption_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaption_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaption_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaption_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaption_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaption_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveFrame_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveFrame_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveFrame_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveFrame_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveFrame_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveFrame_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveFrame_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveFrame_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveFrame_bottom", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_left", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_left", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_top", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_top", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_right", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_right", "role": "ap_vld" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_bottom", "role": "default" }} , 
 	{ "name": "pPreviewData_rcInactiveCaptionButtons_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pPreviewData_rcInactiveCaptionButtons_bottom", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "CalculateItemSize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pPreviewData_cxEdge", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_cySizeFrame", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_cyEdge", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_cyCaption", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_cyBorder", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_cyMenu", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_rcDialogButton_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogButton_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogButton_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogButton_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogClient_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogClient_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogClient_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogClient_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogFrame_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogFrame_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogFrame_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogFrame_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaption_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaption_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaption_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaption_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaptionButtons_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaptionButtons_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaptionButtons_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDialogCaptionButtons_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcDesktop_left", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_rcDesktop_top", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_rcDesktop_right", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_rcDesktop_bottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_rcActiveClient_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveClient_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveClient_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveClient_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveScroll_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveScroll_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveScroll_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveScroll_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_cxScrollbar", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPreviewData_rcActiveFrame_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveFrame_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveFrame_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveFrame_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveMenuBar_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveMenuBar_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveMenuBar_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveMenuBar_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaption_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaption_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaption_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaption_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaptionButtons_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaptionButtons_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaptionButtons_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcActiveCaptionButtons_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaption_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaption_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaption_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaption_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveFrame_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveFrame_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveFrame_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveFrame_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaptionButtons_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaptionButtons_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaptionButtons_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pPreviewData_rcInactiveCaptionButtons_bottom", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	CalculateItemSize {
		pPreviewData_cxEdge {Type I LastRead 1 FirstWrite -1}
		pPreviewData_cySizeFrame {Type I LastRead 0 FirstWrite -1}
		pPreviewData_cyEdge {Type I LastRead 0 FirstWrite -1}
		pPreviewData_cyCaption {Type I LastRead 1 FirstWrite -1}
		pPreviewData_cyBorder {Type I LastRead 1 FirstWrite -1}
		pPreviewData_cyMenu {Type I LastRead 2 FirstWrite -1}
		pPreviewData_rcDialogButton_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogButton_right {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogButton_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcDialogButton_top {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcDialogClient_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogClient_top {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogClient_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogClient_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcDialogFrame_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogFrame_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogFrame_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogFrame_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcDialogCaption_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogCaption_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogCaption_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogCaption_bottom {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcDialogCaptionButtons_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogCaptionButtons_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogCaptionButtons_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDialogCaptionButtons_bottom {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcDesktop_left {Type I LastRead 1 FirstWrite -1}
		pPreviewData_rcDesktop_top {Type I LastRead 0 FirstWrite -1}
		pPreviewData_rcDesktop_right {Type I LastRead 0 FirstWrite -1}
		pPreviewData_rcDesktop_bottom {Type I LastRead 0 FirstWrite -1}
		pPreviewData_rcActiveClient_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveClient_top {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveClient_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveClient_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcActiveScroll_top {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveScroll_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveScroll_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcActiveScroll_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_cxScrollbar {Type I LastRead 1 FirstWrite -1}
		pPreviewData_rcActiveFrame_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveFrame_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveFrame_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveFrame_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcActiveMenuBar_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveMenuBar_top {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveMenuBar_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveMenuBar_bottom {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveCaption_left {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveCaption_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveCaption_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveCaption_bottom {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcActiveCaptionButtons_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveCaptionButtons_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveCaptionButtons_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcActiveCaptionButtons_bottom {Type O LastRead -1 FirstWrite 2}
		pPreviewData_rcInactiveCaption_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveCaption_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveCaption_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveCaption_bottom {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveFrame_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveFrame_top {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcInactiveFrame_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveFrame_bottom {Type O LastRead -1 FirstWrite 0}
		pPreviewData_rcInactiveCaptionButtons_left {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveCaptionButtons_top {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveCaptionButtons_right {Type O LastRead -1 FirstWrite 1}
		pPreviewData_rcInactiveCaptionButtons_bottom {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pPreviewData_cxEdge { ap_none {  { pPreviewData_cxEdge in_data 0 32 } } }
	pPreviewData_cySizeFrame { ap_none {  { pPreviewData_cySizeFrame in_data 0 32 } } }
	pPreviewData_cyEdge { ap_none {  { pPreviewData_cyEdge in_data 0 32 } } }
	pPreviewData_cyCaption { ap_none {  { pPreviewData_cyCaption in_data 0 32 } } }
	pPreviewData_cyBorder { ap_none {  { pPreviewData_cyBorder in_data 0 32 } } }
	pPreviewData_cyMenu { ap_none {  { pPreviewData_cyMenu in_data 0 32 } } }
	pPreviewData_rcDialogButton_left { ap_vld {  { pPreviewData_rcDialogButton_left out_data 1 32 }  { pPreviewData_rcDialogButton_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogButton_right { ap_vld {  { pPreviewData_rcDialogButton_right out_data 1 32 }  { pPreviewData_rcDialogButton_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogButton_bottom { ap_vld {  { pPreviewData_rcDialogButton_bottom out_data 1 32 }  { pPreviewData_rcDialogButton_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogButton_top { ap_vld {  { pPreviewData_rcDialogButton_top out_data 1 32 }  { pPreviewData_rcDialogButton_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogClient_left { ap_vld {  { pPreviewData_rcDialogClient_left out_data 1 32 }  { pPreviewData_rcDialogClient_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogClient_top { ap_vld {  { pPreviewData_rcDialogClient_top out_data 1 32 }  { pPreviewData_rcDialogClient_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogClient_right { ap_vld {  { pPreviewData_rcDialogClient_right out_data 1 32 }  { pPreviewData_rcDialogClient_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogClient_bottom { ap_vld {  { pPreviewData_rcDialogClient_bottom out_data 1 32 }  { pPreviewData_rcDialogClient_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogFrame_left { ap_vld {  { pPreviewData_rcDialogFrame_left out_data 1 32 }  { pPreviewData_rcDialogFrame_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogFrame_top { ap_vld {  { pPreviewData_rcDialogFrame_top out_data 1 32 }  { pPreviewData_rcDialogFrame_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogFrame_right { ap_vld {  { pPreviewData_rcDialogFrame_right out_data 1 32 }  { pPreviewData_rcDialogFrame_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogFrame_bottom { ap_vld {  { pPreviewData_rcDialogFrame_bottom out_data 1 32 }  { pPreviewData_rcDialogFrame_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaption_left { ap_vld {  { pPreviewData_rcDialogCaption_left out_data 1 32 }  { pPreviewData_rcDialogCaption_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaption_top { ap_vld {  { pPreviewData_rcDialogCaption_top out_data 1 32 }  { pPreviewData_rcDialogCaption_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaption_right { ap_vld {  { pPreviewData_rcDialogCaption_right out_data 1 32 }  { pPreviewData_rcDialogCaption_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaption_bottom { ap_vld {  { pPreviewData_rcDialogCaption_bottom out_data 1 32 }  { pPreviewData_rcDialogCaption_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaptionButtons_left { ap_vld {  { pPreviewData_rcDialogCaptionButtons_left out_data 1 32 }  { pPreviewData_rcDialogCaptionButtons_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaptionButtons_top { ap_vld {  { pPreviewData_rcDialogCaptionButtons_top out_data 1 32 }  { pPreviewData_rcDialogCaptionButtons_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaptionButtons_right { ap_vld {  { pPreviewData_rcDialogCaptionButtons_right out_data 1 32 }  { pPreviewData_rcDialogCaptionButtons_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDialogCaptionButtons_bottom { ap_vld {  { pPreviewData_rcDialogCaptionButtons_bottom out_data 1 32 }  { pPreviewData_rcDialogCaptionButtons_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcDesktop_left { ap_none {  { pPreviewData_rcDesktop_left in_data 0 32 } } }
	pPreviewData_rcDesktop_top { ap_none {  { pPreviewData_rcDesktop_top in_data 0 32 } } }
	pPreviewData_rcDesktop_right { ap_none {  { pPreviewData_rcDesktop_right in_data 0 32 } } }
	pPreviewData_rcDesktop_bottom { ap_none {  { pPreviewData_rcDesktop_bottom in_data 0 32 } } }
	pPreviewData_rcActiveClient_left { ap_vld {  { pPreviewData_rcActiveClient_left out_data 1 32 }  { pPreviewData_rcActiveClient_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveClient_top { ap_vld {  { pPreviewData_rcActiveClient_top out_data 1 32 }  { pPreviewData_rcActiveClient_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveClient_right { ap_vld {  { pPreviewData_rcActiveClient_right out_data 1 32 }  { pPreviewData_rcActiveClient_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveClient_bottom { ap_vld {  { pPreviewData_rcActiveClient_bottom out_data 1 32 }  { pPreviewData_rcActiveClient_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveScroll_top { ap_vld {  { pPreviewData_rcActiveScroll_top out_data 1 32 }  { pPreviewData_rcActiveScroll_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveScroll_right { ap_vld {  { pPreviewData_rcActiveScroll_right out_data 1 32 }  { pPreviewData_rcActiveScroll_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveScroll_bottom { ap_vld {  { pPreviewData_rcActiveScroll_bottom out_data 1 32 }  { pPreviewData_rcActiveScroll_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveScroll_left { ap_vld {  { pPreviewData_rcActiveScroll_left out_data 1 32 }  { pPreviewData_rcActiveScroll_left_ap_vld out_vld 1 1 } } }
	pPreviewData_cxScrollbar { ap_none {  { pPreviewData_cxScrollbar in_data 0 32 } } }
	pPreviewData_rcActiveFrame_left { ap_vld {  { pPreviewData_rcActiveFrame_left out_data 1 32 }  { pPreviewData_rcActiveFrame_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveFrame_top { ap_vld {  { pPreviewData_rcActiveFrame_top out_data 1 32 }  { pPreviewData_rcActiveFrame_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveFrame_right { ap_vld {  { pPreviewData_rcActiveFrame_right out_data 1 32 }  { pPreviewData_rcActiveFrame_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveFrame_bottom { ap_vld {  { pPreviewData_rcActiveFrame_bottom out_data 1 32 }  { pPreviewData_rcActiveFrame_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveMenuBar_left { ap_vld {  { pPreviewData_rcActiveMenuBar_left out_data 1 32 }  { pPreviewData_rcActiveMenuBar_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveMenuBar_top { ap_vld {  { pPreviewData_rcActiveMenuBar_top out_data 1 32 }  { pPreviewData_rcActiveMenuBar_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveMenuBar_right { ap_vld {  { pPreviewData_rcActiveMenuBar_right out_data 1 32 }  { pPreviewData_rcActiveMenuBar_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveMenuBar_bottom { ap_vld {  { pPreviewData_rcActiveMenuBar_bottom out_data 1 32 }  { pPreviewData_rcActiveMenuBar_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaption_left { ap_vld {  { pPreviewData_rcActiveCaption_left out_data 1 32 }  { pPreviewData_rcActiveCaption_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaption_top { ap_vld {  { pPreviewData_rcActiveCaption_top out_data 1 32 }  { pPreviewData_rcActiveCaption_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaption_right { ap_vld {  { pPreviewData_rcActiveCaption_right out_data 1 32 }  { pPreviewData_rcActiveCaption_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaption_bottom { ap_vld {  { pPreviewData_rcActiveCaption_bottom out_data 1 32 }  { pPreviewData_rcActiveCaption_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaptionButtons_left { ap_vld {  { pPreviewData_rcActiveCaptionButtons_left out_data 1 32 }  { pPreviewData_rcActiveCaptionButtons_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaptionButtons_top { ap_vld {  { pPreviewData_rcActiveCaptionButtons_top out_data 1 32 }  { pPreviewData_rcActiveCaptionButtons_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaptionButtons_right { ap_vld {  { pPreviewData_rcActiveCaptionButtons_right out_data 1 32 }  { pPreviewData_rcActiveCaptionButtons_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcActiveCaptionButtons_bottom { ap_vld {  { pPreviewData_rcActiveCaptionButtons_bottom out_data 1 32 }  { pPreviewData_rcActiveCaptionButtons_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaption_left { ap_vld {  { pPreviewData_rcInactiveCaption_left out_data 1 32 }  { pPreviewData_rcInactiveCaption_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaption_top { ap_vld {  { pPreviewData_rcInactiveCaption_top out_data 1 32 }  { pPreviewData_rcInactiveCaption_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaption_right { ap_vld {  { pPreviewData_rcInactiveCaption_right out_data 1 32 }  { pPreviewData_rcInactiveCaption_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaption_bottom { ap_vld {  { pPreviewData_rcInactiveCaption_bottom out_data 1 32 }  { pPreviewData_rcInactiveCaption_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveFrame_left { ap_vld {  { pPreviewData_rcInactiveFrame_left out_data 1 32 }  { pPreviewData_rcInactiveFrame_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveFrame_top { ap_vld {  { pPreviewData_rcInactiveFrame_top out_data 1 32 }  { pPreviewData_rcInactiveFrame_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveFrame_right { ap_vld {  { pPreviewData_rcInactiveFrame_right out_data 1 32 }  { pPreviewData_rcInactiveFrame_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveFrame_bottom { ap_vld {  { pPreviewData_rcInactiveFrame_bottom out_data 1 32 }  { pPreviewData_rcInactiveFrame_bottom_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaptionButtons_left { ap_vld {  { pPreviewData_rcInactiveCaptionButtons_left out_data 1 32 }  { pPreviewData_rcInactiveCaptionButtons_left_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaptionButtons_top { ap_vld {  { pPreviewData_rcInactiveCaptionButtons_top out_data 1 32 }  { pPreviewData_rcInactiveCaptionButtons_top_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaptionButtons_right { ap_vld {  { pPreviewData_rcInactiveCaptionButtons_right out_data 1 32 }  { pPreviewData_rcInactiveCaptionButtons_right_ap_vld out_vld 1 1 } } }
	pPreviewData_rcInactiveCaptionButtons_bottom { ap_vld {  { pPreviewData_rcInactiveCaptionButtons_bottom out_data 1 32 }  { pPreviewData_rcInactiveCaptionButtons_bottom_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
