
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [2:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~gauss_stage_U0.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.in_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~sobel_stage_U0.grp_sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S_fu_74.out_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.low_thresh_c_blk_n | ~entry_proc_U0.high_thresh_c_blk_n;
assign inst_idle_sigs[1] = gauss_stage_U0.ap_idle;
assign inst_block_sigs[1] = (gauss_stage_U0.ap_done & ~gauss_stage_U0.ap_continue) | ~gauss_stage_U0.rows_c_blk_n | ~gauss_stage_U0.cols_c_blk_n | ~gauss_stage_U0.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.gauss_stream_blk_n;
assign inst_idle_sigs[2] = sobel_stage_U0.ap_idle;
assign inst_block_sigs[2] = (sobel_stage_U0.ap_done & ~sobel_stage_U0.ap_continue) | ~sobel_stage_U0.rows_blk_n | ~sobel_stage_U0.cols_blk_n | ~sobel_stage_U0.low_thresh_blk_n | ~sobel_stage_U0.high_thresh_blk_n | ~sobel_stage_U0.grp_sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S_fu_74.gauss_stream_blk_n;

assign inst_idle_sigs[3] = 1'b0;
assign inst_idle_sigs[4] = gauss_stage_U0.ap_idle;
assign inst_idle_sigs[5] = gauss_stage_U0.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.ap_idle;
assign inst_idle_sigs[6] = sobel_stage_U0.ap_idle;
assign inst_idle_sigs[7] = sobel_stage_U0.grp_sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S_fu_74.ap_idle;

edge_detect_hls_deadlock_idx0_monitor edge_detect_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
