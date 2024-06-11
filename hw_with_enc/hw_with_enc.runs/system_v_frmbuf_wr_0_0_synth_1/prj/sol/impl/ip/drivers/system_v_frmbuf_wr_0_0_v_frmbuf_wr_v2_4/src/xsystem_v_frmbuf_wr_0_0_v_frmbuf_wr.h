// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_H
#define XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_H

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
#include "xsystem_v_frmbuf_wr_0_0_v_frmbuf_wr_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 System_v_frmbuf_wr_0_0_ctrl_BaseAddress;
} XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Config;
#endif

typedef struct {
    u32 System_v_frmbuf_wr_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
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
int XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u16 DeviceId);
XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Config* XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_LookupConfig(u16 DeviceId);
int XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_CfgInitialize(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr);
#else
int XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Initialize(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, const char* InstanceName);
int XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Release(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
#endif

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Start(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_IsDone(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_IsIdle(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_IsReady(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_EnableAutoRestart(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_DisableAutoRestart(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_width(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_width(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_height(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_height(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_stride(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_stride(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_video_format(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_video_format(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer2(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer2(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer3(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer3(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGlobalEnable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGlobalDisable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptEnable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptDisable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask);
void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptClear(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGetEnabled(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);
u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGetStatus(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
