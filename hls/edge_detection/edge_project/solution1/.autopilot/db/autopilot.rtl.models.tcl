set SynModuleInfo {
  {SRCNAME edge_detect_Pipeline_gauss_loop_VITIS_LOOP_28_1 MODELNAME edge_detect_Pipeline_gauss_loop_VITIS_LOOP_28_1 RTLNAME edge_detect_edge_detect_Pipeline_gauss_loop_VITIS_LOOP_28_1
    SUBMODULES {
      {MODELNAME edge_detect_mul_31ns_33ns_63_1_1 RTLNAME edge_detect_mul_31ns_33ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_urem_31ns_3ns_2_35_1 RTLNAME edge_detect_urem_31ns_3ns_2_35_1 BINDTYPE op TYPE urem IMPL auto LATENCY 34 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_flow_control_loop_pipe_sequential_init RTLNAME edge_detect_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME edge_detect_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4 MODELNAME edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4 RTLNAME edge_detect_edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4
    SUBMODULES {
      {MODELNAME edge_detect_sparsemux_7_2_8_1_1 RTLNAME edge_detect_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME edge_detect_Pipeline_thresh_loop_VITIS_LOOP_58_7 MODELNAME edge_detect_Pipeline_thresh_loop_VITIS_LOOP_58_7 RTLNAME edge_detect_edge_detect_Pipeline_thresh_loop_VITIS_LOOP_58_7}
  {SRCNAME edge_detect MODELNAME edge_detect RTLNAME edge_detect IS_TOP 1
    SUBMODULES {
      {MODELNAME edge_detect_mul_31ns_32ns_63_1_1 RTLNAME edge_detect_mul_31ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_blur_RAM_AUTO_1R1W RTLNAME edge_detect_blur_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_grad_mag_RAM_AUTO_1R1W RTLNAME edge_detect_grad_mag_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_gmem_m_axi RTLNAME edge_detect_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME edge_detect_control_s_axi RTLNAME edge_detect_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME edge_detect_control_r_s_axi RTLNAME edge_detect_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
