set moduleName sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound int 64 regular  }
	{ cols_load int 32 regular  }
	{ high_thresh_load int 32 regular  }
	{ low_thresh_load int 32 regular  }
	{ out_stream int 8 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ gauss_stream int 8 regular {fifo 0 volatile } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cols_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_thresh_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gauss_stream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gauss_stream_dout sc_in sc_lv 8 signal 5 } 
	{ gauss_stream_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ gauss_stream_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ gauss_stream_empty_n sc_in sc_logic 1 signal 5 } 
	{ gauss_stream_read sc_out sc_logic 1 signal 5 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 4 } 
	{ bound sc_in sc_lv 64 signal 0 } 
	{ cols_load sc_in sc_lv 32 signal 1 } 
	{ high_thresh_load sc_in sc_lv 32 signal 2 } 
	{ low_thresh_load sc_in sc_lv 32 signal 3 } 
	{ out_stream_TDATA sc_out sc_lv 8 signal 4 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gauss_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gauss_stream", "role": "dout" }} , 
 	{ "name": "gauss_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gauss_stream", "role": "num_data_valid" }} , 
 	{ "name": "gauss_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gauss_stream", "role": "fifo_cap" }} , 
 	{ "name": "gauss_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_stream", "role": "empty_n" }} , 
 	{ "name": "gauss_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_stream", "role": "read" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream", "role": "TREADY" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "cols_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_load", "role": "default" }} , 
 	{ "name": "high_thresh_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "high_thresh_load", "role": "default" }} , 
 	{ "name": "low_thresh_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "low_thresh_load", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_stream", "role": "TDATA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S",
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
			{"Name" : "cols_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "high_thresh_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "low_thresh_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gauss_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gauss_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Row_Loop_S_Col_Loop_S", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sobel_stage_Pipeline_Row_Loop_S_Col_Loop_S {
		bound {Type I LastRead 0 FirstWrite -1}
		cols_load {Type I LastRead 0 FirstWrite -1}
		high_thresh_load {Type I LastRead 0 FirstWrite -1}
		low_thresh_load {Type I LastRead 0 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 4}
		gauss_stream {Type I LastRead 2 FirstWrite -1}
		sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_2 {Type IO LastRead -1 FirstWrite -1}
		sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf_1 {Type IO LastRead -1 FirstWrite -1}
		sobel_stage_stream_stream_ap_uint_8_0_int_int_int_int_linebuf {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 64 } } }
	cols_load { ap_none {  { cols_load in_data 0 32 } } }
	high_thresh_load { ap_none {  { high_thresh_load in_data 0 32 } } }
	low_thresh_load { ap_none {  { low_thresh_load in_data 0 32 } } }
	out_stream { axis {  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDATA out_data 1 8 }  { out_stream_TVALID out_vld 1 1 } } }
	gauss_stream { ap_fifo {  { gauss_stream_dout fifo_data_in 0 8 }  { gauss_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { gauss_stream_fifo_cap fifo_update 0 7 }  { gauss_stream_empty_n fifo_status 0 1 }  { gauss_stream_read fifo_port_we 1 1 } } }
}
