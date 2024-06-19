transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+system  -L xilinx_vip -L xpm -L xlslice_v1_0_3 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_32 -L axi_i2s_adi_v1_00_a -L adi_common_v1_00_a -L lib_pkg_v1_0_3 -L axi_iic_v2_1_6 -L fifo_generator_v13_2_9 -L lib_fifo_v1_0_18 -L blk_mem_gen_v8_4_7 -L lib_bmg_v1_0_16 -L lib_srl_fifo_v1_0_3 -L axi_datamover_v5_1_32 -L axi_vdma_v6_3_18 -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_30 -L axis_subset_converter_v1_1_30 -L generic_baseblocks_v2_1_1 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_30 -L axi_data_fifo_v2_1_29 -L axi_crossbar_v2_1_31 -L proc_sys_reset_v5_0_14 -L mipi_csi2_rx_ctrl_v1_0_9 -L mipi_dphy_v4_3_9 -L axis_dwidth_converter_v1_1_29 -L axis_switch_v1_1_30 -L vfb_v1_0_24 -L axi_vip_v1_1_16 -L processing_system7_vip_v1_0_18 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_11 -L v_axi4s_vid_out_v4_0_17 -L xbip_utils_v3_0_12 -L axi_utils_v2_0_8 -L xbip_pipe_v3_0_8 -L xbip_dsp48_wrapper_v3_0_5 -L xbip_dsp48_addsub_v3_0_8 -L xbip_bram18k_v3_0_8 -L mult_gen_v12_0_20 -L floating_point_v7_0_22 -L xbip_dsp48_mult_v3_0_8 -L xbip_dsp48_multadd_v3_0_8 -L div_gen_v5_1_21 -L v_frmbuf_wr_v2_5_1 -L v_tc_v6_2_7 -L v_vid_in_axi4s_v5_0_3 -L xlconcat_v2_1_5 -L xlconstant_v1_1_8 -L axi_protocol_converter_v2_1_30 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {system.udo}

run 1000ns

endsim

quit -force
