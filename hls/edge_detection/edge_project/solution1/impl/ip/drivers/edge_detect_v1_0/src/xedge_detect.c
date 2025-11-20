// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xedge_detect.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEdge_detect_CfgInitialize(XEdge_detect *InstancePtr, XEdge_detect_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEdge_detect_Start(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEdge_detect_IsDone(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEdge_detect_IsIdle(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEdge_detect_IsReady(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEdge_detect_EnableAutoRestart(XEdge_detect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XEdge_detect_DisableAutoRestart(XEdge_detect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_AP_CTRL, 0);
}

void XEdge_detect_Set_in_img(XEdge_detect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_IN_IMG_DATA, (u32)(Data));
    XEdge_detect_WriteReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_IN_IMG_DATA + 4, (u32)(Data >> 32));
}

u64 XEdge_detect_Get_in_img(XEdge_detect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_IN_IMG_DATA);
    Data += (u64)XEdge_detect_ReadReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_IN_IMG_DATA + 4) << 32;
    return Data;
}

void XEdge_detect_Set_out_img(XEdge_detect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_OUT_IMG_DATA, (u32)(Data));
    XEdge_detect_WriteReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_OUT_IMG_DATA + 4, (u32)(Data >> 32));
}

u64 XEdge_detect_Get_out_img(XEdge_detect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_OUT_IMG_DATA);
    Data += (u64)XEdge_detect_ReadReg(InstancePtr->Control_r_BaseAddress, XEDGE_DETECT_CONTROL_R_ADDR_OUT_IMG_DATA + 4) << 32;
    return Data;
}

void XEdge_detect_Set_rows(XEdge_detect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XEdge_detect_Get_rows(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XEdge_detect_Set_cols(XEdge_detect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XEdge_detect_Get_cols(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XEdge_detect_Set_low_thresh(XEdge_detect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_LOW_THRESH_DATA, Data);
}

u32 XEdge_detect_Get_low_thresh(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_LOW_THRESH_DATA);
    return Data;
}

void XEdge_detect_Set_high_thresh(XEdge_detect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_HIGH_THRESH_DATA, Data);
}

u32 XEdge_detect_Get_high_thresh(XEdge_detect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_HIGH_THRESH_DATA);
    return Data;
}

void XEdge_detect_InterruptGlobalEnable(XEdge_detect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_GIE, 1);
}

void XEdge_detect_InterruptGlobalDisable(XEdge_detect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_GIE, 0);
}

void XEdge_detect_InterruptEnable(XEdge_detect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_IER);
    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_IER, Register | Mask);
}

void XEdge_detect_InterruptDisable(XEdge_detect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_IER);
    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XEdge_detect_InterruptClear(XEdge_detect *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_ISR, Mask);
}

u32 XEdge_detect_InterruptGetEnabled(XEdge_detect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_IER);
}

u32 XEdge_detect_InterruptGetStatus(XEdge_detect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_ISR);
}

