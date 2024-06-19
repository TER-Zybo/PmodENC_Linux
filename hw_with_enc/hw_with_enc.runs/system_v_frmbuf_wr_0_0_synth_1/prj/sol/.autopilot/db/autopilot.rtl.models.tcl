set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME system_v_frmbuf_wr_0_0_entry_proc}
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME system_v_frmbuf_wr_0_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME system_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME system_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init RTLNAME system_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME system_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME system_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME system_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME system_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream}
  {SRCNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_757_8 MODELNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_757_8 RTLNAME system_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_757_8}
  {SRCNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_716_5 MODELNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_716_5 RTLNAME system_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_716_5}
  {SRCNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_1 MODELNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_1 RTLNAME system_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_674_1}
  {SRCNAME MultiPixStream2Bytes MODELNAME MultiPixStream2Bytes RTLNAME system_v_frmbuf_wr_0_0_MultiPixStream2Bytes}
  {SRCNAME Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1316_1 MODELNAME Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1316_1 RTLNAME system_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1316_1}
  {SRCNAME Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1326_2 MODELNAME Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1326_2 RTLNAME system_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1326_2}
  {SRCNAME Bytes2AXIMMvideo MODELNAME Bytes2AXIMMvideo RTLNAME system_v_frmbuf_wr_0_0_Bytes2AXIMMvideo}
  {SRCNAME FrmbufWrHlsDataFlow MODELNAME FrmbufWrHlsDataFlow RTLNAME system_v_frmbuf_wr_0_0_FrmbufWrHlsDataFlow
    SUBMODULES {
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w32_d4_S RTLNAME system_v_frmbuf_wr_0_0_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_frm_buffer_c_U}
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w32_d4_S RTLNAME system_v_frmbuf_wr_0_0_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_frm_buffer2_c_U}
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w15_d3_S RTLNAME system_v_frmbuf_wr_0_0_fifo_w15_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME WidthInBytes_val2_c9_U}
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w24_d2_S RTLNAME system_v_frmbuf_wr_0_0_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_U}
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w64_d960_B RTLNAME system_v_frmbuf_wr_0_0_fifo_w64_d960_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME bytePlanes_plane0_U}
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w64_d960_B RTLNAME system_v_frmbuf_wr_0_0_fifo_w64_d960_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME bytePlanes_plane1_U}
      {MODELNAME system_v_frmbuf_wr_0_0_fifo_w15_d2_S RTLNAME system_v_frmbuf_wr_0_0_fifo_w15_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME WidthInBytes_val2_c_U}
      {MODELNAME system_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0 RTLNAME system_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2Bytes_U0_U}
      {MODELNAME system_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0 RTLNAME system_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Bytes2AXIMMvideo_U0_U}
    }
  }
  {SRCNAME v_frmbuf_wr MODELNAME v_frmbuf_wr RTLNAME system_v_frmbuf_wr_0_0_v_frmbuf_wr IS_TOP 1
    SUBMODULES {
      {MODELNAME system_v_frmbuf_wr_0_0_mul_15s_3ns_15_1_1 RTLNAME system_v_frmbuf_wr_0_0_mul_15s_3ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME system_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R RTLNAME system_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME system_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R RTLNAME system_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME system_v_frmbuf_wr_0_0_mm_video_m_axi RTLNAME system_v_frmbuf_wr_0_0_mm_video_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME system_v_frmbuf_wr_0_0_CTRL_s_axi RTLNAME system_v_frmbuf_wr_0_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME system_v_frmbuf_wr_0_0_regslice_both RTLNAME system_v_frmbuf_wr_0_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME system_v_frmbuf_wr_0_0_regslice_both_U}
    }
  }
}
