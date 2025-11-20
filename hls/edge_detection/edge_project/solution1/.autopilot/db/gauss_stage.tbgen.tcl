set moduleName gauss_stage
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {gauss_stage}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream int 8 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ rows_c int 32 regular {fifo 1}  }
	{ cols_c int 32 regular {fifo 1}  }
	{ gauss_stream int 8 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "in_stream", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cols_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gauss_stream", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TDATA sc_in sc_lv 8 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 0 } 
	{ rows sc_in sc_lv 32 signal 1 } 
	{ cols sc_in sc_lv 32 signal 2 } 
	{ rows_c_din sc_out sc_lv 32 signal 3 } 
	{ rows_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ rows_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ rows_c_full_n sc_in sc_logic 1 signal 3 } 
	{ rows_c_write sc_out sc_logic 1 signal 3 } 
	{ cols_c_din sc_out sc_lv 32 signal 4 } 
	{ cols_c_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cols_c_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cols_c_full_n sc_in sc_logic 1 signal 4 } 
	{ cols_c_write sc_out sc_logic 1 signal 4 } 
	{ gauss_stream_din sc_out sc_lv 8 signal 5 } 
	{ gauss_stream_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ gauss_stream_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ gauss_stream_full_n sc_in sc_logic 1 signal 5 } 
	{ gauss_stream_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream", "role": "TDATA" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream", "role": "TVALID" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream", "role": "TREADY" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "rows_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows_c", "role": "din" }} , 
 	{ "name": "rows_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rows_c", "role": "num_data_valid" }} , 
 	{ "name": "rows_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rows_c", "role": "fifo_cap" }} , 
 	{ "name": "rows_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c", "role": "full_n" }} , 
 	{ "name": "rows_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c", "role": "write" }} , 
 	{ "name": "cols_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_c", "role": "din" }} , 
 	{ "name": "cols_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cols_c", "role": "num_data_valid" }} , 
 	{ "name": "cols_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cols_c", "role": "fifo_cap" }} , 
 	{ "name": "cols_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_c", "role": "full_n" }} , 
 	{ "name": "cols_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_c", "role": "write" }} , 
 	{ "name": "gauss_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gauss_stream", "role": "din" }} , 
 	{ "name": "gauss_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gauss_stream", "role": "num_data_valid" }} , 
 	{ "name": "gauss_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gauss_stream", "role": "fifo_cap" }} , 
 	{ "name": "gauss_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_stream", "role": "full_n" }} , 
 	{ "name": "gauss_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_stream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "7"],
		"CDFG" : "gauss_stage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80", "Port" : "in_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80", "Port" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80", "Port" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80", "Port" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gauss_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80", "Port" : "gauss_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gauss_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gauss_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Loop_G_Col_Loop_G", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_3_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_4_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U11", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gauss_stage {
		in_stream {Type I LastRead 1 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		rows_c {Type O LastRead -1 FirstWrite 0}
		cols_c {Type O LastRead -1 FirstWrite 0}
		gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf {Type IO LastRead -1 FirstWrite -1}
		gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_3 {Type IO LastRead -1 FirstWrite -1}
		gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_4 {Type IO LastRead -1 FirstWrite -1}
		gauss_stream {Type O LastRead -1 FirstWrite 3}}
	gauss_stage_Pipeline_Row_Loop_G_Col_Loop_G {
		bound {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		in_stream {Type I LastRead 1 FirstWrite -1}
		gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf {Type IO LastRead -1 FirstWrite -1}
		gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_3 {Type IO LastRead -1 FirstWrite -1}
		gauss_stage_stream_ap_uint_8_0_stream_ap_uint_8_0_int_int_linebuf_4 {Type IO LastRead -1 FirstWrite -1}
		gauss_stream {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream { axis {  { in_stream_TDATA in_data 0 8 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	rows_c { ap_fifo {  { rows_c_din fifo_data_in 1 32 }  { rows_c_num_data_valid fifo_status_num_data_valid 0 3 }  { rows_c_fifo_cap fifo_update 0 3 }  { rows_c_full_n fifo_status 0 1 }  { rows_c_write fifo_port_we 1 1 } } }
	cols_c { ap_fifo {  { cols_c_din fifo_data_in 1 32 }  { cols_c_num_data_valid fifo_status_num_data_valid 0 3 }  { cols_c_fifo_cap fifo_update 0 3 }  { cols_c_full_n fifo_status 0 1 }  { cols_c_write fifo_port_we 1 1 } } }
	gauss_stream { ap_fifo {  { gauss_stream_din fifo_data_in 1 8 }  { gauss_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { gauss_stream_fifo_cap fifo_update 0 7 }  { gauss_stream_full_n fifo_status 0 1 }  { gauss_stream_write fifo_port_we 1 1 } } }
}
