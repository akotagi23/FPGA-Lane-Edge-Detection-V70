// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XEDGE_DETECT_H
#define XEDGE_DETECT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xedge_detect_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
} XEdge_detect_Config;
#endif

typedef struct {
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
    u32 IsReady;
} XEdge_detect;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEdge_detect_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEdge_detect_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEdge_detect_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEdge_detect_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XEdge_detect_Initialize(XEdge_detect *InstancePtr, UINTPTR BaseAddress);
XEdge_detect_Config* XEdge_detect_LookupConfig(UINTPTR BaseAddress);
#else
int XEdge_detect_Initialize(XEdge_detect *InstancePtr, u16 DeviceId);
XEdge_detect_Config* XEdge_detect_LookupConfig(u16 DeviceId);
#endif
int XEdge_detect_CfgInitialize(XEdge_detect *InstancePtr, XEdge_detect_Config *ConfigPtr);
#else
int XEdge_detect_Initialize(XEdge_detect *InstancePtr, const char* InstanceName);
int XEdge_detect_Release(XEdge_detect *InstancePtr);
#endif

void XEdge_detect_Start(XEdge_detect *InstancePtr);
u32 XEdge_detect_IsDone(XEdge_detect *InstancePtr);
u32 XEdge_detect_IsIdle(XEdge_detect *InstancePtr);
u32 XEdge_detect_IsReady(XEdge_detect *InstancePtr);
void XEdge_detect_EnableAutoRestart(XEdge_detect *InstancePtr);
void XEdge_detect_DisableAutoRestart(XEdge_detect *InstancePtr);

void XEdge_detect_Set_in_img(XEdge_detect *InstancePtr, u64 Data);
u64 XEdge_detect_Get_in_img(XEdge_detect *InstancePtr);
void XEdge_detect_Set_out_img(XEdge_detect *InstancePtr, u64 Data);
u64 XEdge_detect_Get_out_img(XEdge_detect *InstancePtr);
void XEdge_detect_Set_rows(XEdge_detect *InstancePtr, u32 Data);
u32 XEdge_detect_Get_rows(XEdge_detect *InstancePtr);
void XEdge_detect_Set_cols(XEdge_detect *InstancePtr, u32 Data);
u32 XEdge_detect_Get_cols(XEdge_detect *InstancePtr);
void XEdge_detect_Set_low_thresh(XEdge_detect *InstancePtr, u32 Data);
u32 XEdge_detect_Get_low_thresh(XEdge_detect *InstancePtr);
void XEdge_detect_Set_high_thresh(XEdge_detect *InstancePtr, u32 Data);
u32 XEdge_detect_Get_high_thresh(XEdge_detect *InstancePtr);

void XEdge_detect_InterruptGlobalEnable(XEdge_detect *InstancePtr);
void XEdge_detect_InterruptGlobalDisable(XEdge_detect *InstancePtr);
void XEdge_detect_InterruptEnable(XEdge_detect *InstancePtr, u32 Mask);
void XEdge_detect_InterruptDisable(XEdge_detect *InstancePtr, u32 Mask);
void XEdge_detect_InterruptClear(XEdge_detect *InstancePtr, u32 Mask);
u32 XEdge_detect_InterruptGetEnabled(XEdge_detect *InstancePtr);
u32 XEdge_detect_InterruptGetStatus(XEdge_detect *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
