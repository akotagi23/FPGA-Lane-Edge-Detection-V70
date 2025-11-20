// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xedge_detect.h"

extern XEdge_detect_Config XEdge_detect_ConfigTable[];

#ifdef SDT
XEdge_detect_Config *XEdge_detect_LookupConfig(UINTPTR BaseAddress) {
	XEdge_detect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XEdge_detect_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XEdge_detect_ConfigTable[Index].Control_r_BaseAddress == BaseAddress) {
			ConfigPtr = &XEdge_detect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEdge_detect_Initialize(XEdge_detect *InstancePtr, UINTPTR BaseAddress) {
	XEdge_detect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEdge_detect_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEdge_detect_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XEdge_detect_Config *XEdge_detect_LookupConfig(u16 DeviceId) {
	XEdge_detect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEDGE_DETECT_NUM_INSTANCES; Index++) {
		if (XEdge_detect_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEdge_detect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEdge_detect_Initialize(XEdge_detect *InstancePtr, u16 DeviceId) {
	XEdge_detect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEdge_detect_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEdge_detect_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

