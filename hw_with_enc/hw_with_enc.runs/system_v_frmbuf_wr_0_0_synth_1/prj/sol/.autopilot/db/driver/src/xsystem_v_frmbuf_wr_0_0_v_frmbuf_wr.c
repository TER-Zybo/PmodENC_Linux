// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsystem_v_frmbuf_wr_0_0_v_frmbuf_wr.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_CfgInitialize(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress = ConfigPtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Start(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_IsDone(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_IsIdle(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_IsReady(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_EnableAutoRestart(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_DisableAutoRestart(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_width(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_width(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_height(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_height(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_stride(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_STRIDE_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_stride(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_STRIDE_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_video_format(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_video_format(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_FRM_BUFFER_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_FRM_BUFFER_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer2(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_FRM_BUFFER2_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer2(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_FRM_BUFFER2_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Set_frm_buffer3(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_FRM_BUFFER3_DATA, Data);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_Get_frm_buffer3(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_FRM_BUFFER3_DATA);
    return Data;
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGlobalEnable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_GIE, 1);
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGlobalDisable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_GIE, 0);
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptEnable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_IER);
    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptDisable(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_IER);
    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptClear(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_WriteReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGetEnabled(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_IER);
}

u32 XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_InterruptGetStatus(XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSystem_v_frmbuf_wr_0_0_v_frmbuf_wr_ReadReg(InstancePtr->System_v_frmbuf_wr_0_0_ctrl_BaseAddress, XSYSTEM_V_FRMBUF_WR_0_0_V_FRMBUF_WR_SYSTEM_V_FRMBUF_WR_0_0_CTRL_ADDR_ISR);
}

