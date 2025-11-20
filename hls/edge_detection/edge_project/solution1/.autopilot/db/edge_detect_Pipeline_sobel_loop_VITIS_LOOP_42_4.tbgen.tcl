set moduleName edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4
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
set C_modelName {edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln27 int 32 regular  }
	{ mul_ln27 int 63 regular  }
	{ grad_mag int 32 regular {array 2073600 { 0 3 } 0 1 }  }
	{ blur int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_1 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_2 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_3 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_4 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_5 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_6 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_7 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_8 int 8 regular {array 230400 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "add_ln27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln27", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "grad_mag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blur", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln27 sc_in sc_lv 32 signal 0 } 
	{ mul_ln27 sc_in sc_lv 63 signal 1 } 
	{ grad_mag_address0 sc_out sc_lv 21 signal 2 } 
	{ grad_mag_ce0 sc_out sc_logic 1 signal 2 } 
	{ grad_mag_we0 sc_out sc_logic 1 signal 2 } 
	{ grad_mag_d0 sc_out sc_lv 32 signal 2 } 
	{ blur_address0 sc_out sc_lv 18 signal 3 } 
	{ blur_ce0 sc_out sc_logic 1 signal 3 } 
	{ blur_q0 sc_in sc_lv 8 signal 3 } 
	{ blur_1_address0 sc_out sc_lv 18 signal 4 } 
	{ blur_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ blur_1_q0 sc_in sc_lv 8 signal 4 } 
	{ blur_2_address0 sc_out sc_lv 18 signal 5 } 
	{ blur_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ blur_2_q0 sc_in sc_lv 8 signal 5 } 
	{ blur_3_address0 sc_out sc_lv 18 signal 6 } 
	{ blur_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ blur_3_q0 sc_in sc_lv 8 signal 6 } 
	{ blur_4_address0 sc_out sc_lv 18 signal 7 } 
	{ blur_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ blur_4_q0 sc_in sc_lv 8 signal 7 } 
	{ blur_5_address0 sc_out sc_lv 18 signal 8 } 
	{ blur_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ blur_5_q0 sc_in sc_lv 8 signal 8 } 
	{ blur_6_address0 sc_out sc_lv 18 signal 9 } 
	{ blur_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ blur_6_q0 sc_in sc_lv 8 signal 9 } 
	{ blur_7_address0 sc_out sc_lv 18 signal 10 } 
	{ blur_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ blur_7_q0 sc_in sc_lv 8 signal 10 } 
	{ blur_8_address0 sc_out sc_lv 18 signal 11 } 
	{ blur_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ blur_8_q0 sc_in sc_lv 8 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln27", "role": "default" }} , 
 	{ "name": "mul_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "mul_ln27", "role": "default" }} , 
 	{ "name": "grad_mag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "grad_mag", "role": "address0" }} , 
 	{ "name": "grad_mag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_mag", "role": "ce0" }} , 
 	{ "name": "grad_mag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_mag", "role": "we0" }} , 
 	{ "name": "grad_mag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grad_mag", "role": "d0" }} , 
 	{ "name": "blur_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur", "role": "address0" }} , 
 	{ "name": "blur_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur", "role": "ce0" }} , 
 	{ "name": "blur_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur", "role": "q0" }} , 
 	{ "name": "blur_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_1", "role": "address0" }} , 
 	{ "name": "blur_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_1", "role": "ce0" }} , 
 	{ "name": "blur_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_1", "role": "q0" }} , 
 	{ "name": "blur_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_2", "role": "address0" }} , 
 	{ "name": "blur_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_2", "role": "ce0" }} , 
 	{ "name": "blur_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_2", "role": "q0" }} , 
 	{ "name": "blur_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_3", "role": "address0" }} , 
 	{ "name": "blur_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_3", "role": "ce0" }} , 
 	{ "name": "blur_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_3", "role": "q0" }} , 
 	{ "name": "blur_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_4", "role": "address0" }} , 
 	{ "name": "blur_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_4", "role": "ce0" }} , 
 	{ "name": "blur_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_4", "role": "q0" }} , 
 	{ "name": "blur_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_5", "role": "address0" }} , 
 	{ "name": "blur_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_5", "role": "ce0" }} , 
 	{ "name": "blur_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_5", "role": "q0" }} , 
 	{ "name": "blur_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_6", "role": "address0" }} , 
 	{ "name": "blur_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_6", "role": "ce0" }} , 
 	{ "name": "blur_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_6", "role": "q0" }} , 
 	{ "name": "blur_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_7", "role": "address0" }} , 
 	{ "name": "blur_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_7", "role": "ce0" }} , 
 	{ "name": "blur_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_7", "role": "q0" }} , 
 	{ "name": "blur_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_8", "role": "address0" }} , 
 	{ "name": "blur_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_8", "role": "ce0" }} , 
 	{ "name": "blur_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_8", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4",
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
			{"Name" : "add_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "grad_mag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blur", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "sobel_loop_VITIS_LOOP_42_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter38", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter38", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U19", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U20", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U21", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U22", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U23", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U24", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U25", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U26", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U27", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U28", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U29", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U30", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U31", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U32", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U33", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U34", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U35", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U36", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U37", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U38", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U39", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U40", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U41", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U42", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U43", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4 {
		add_ln27 {Type I LastRead 0 FirstWrite -1}
		mul_ln27 {Type I LastRead 0 FirstWrite -1}
		grad_mag {Type O LastRead -1 FirstWrite 38}
		blur {Type I LastRead 37 FirstWrite -1}
		blur_1 {Type I LastRead 37 FirstWrite -1}
		blur_2 {Type I LastRead 37 FirstWrite -1}
		blur_3 {Type I LastRead 37 FirstWrite -1}
		blur_4 {Type I LastRead 37 FirstWrite -1}
		blur_5 {Type I LastRead 37 FirstWrite -1}
		blur_6 {Type I LastRead 37 FirstWrite -1}
		blur_7 {Type I LastRead 37 FirstWrite -1}
		blur_8 {Type I LastRead 37 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln27 { ap_none {  { add_ln27 in_data 0 32 } } }
	mul_ln27 { ap_none {  { mul_ln27 in_data 0 63 } } }
	grad_mag { ap_memory {  { grad_mag_address0 mem_address 1 21 }  { grad_mag_ce0 mem_ce 1 1 }  { grad_mag_we0 mem_we 1 1 }  { grad_mag_d0 mem_din 1 32 } } }
	blur { ap_memory {  { blur_address0 mem_address 1 18 }  { blur_ce0 mem_ce 1 1 }  { blur_q0 in_data 0 8 } } }
	blur_1 { ap_memory {  { blur_1_address0 mem_address 1 18 }  { blur_1_ce0 mem_ce 1 1 }  { blur_1_q0 in_data 0 8 } } }
	blur_2 { ap_memory {  { blur_2_address0 mem_address 1 18 }  { blur_2_ce0 mem_ce 1 1 }  { blur_2_q0 in_data 0 8 } } }
	blur_3 { ap_memory {  { blur_3_address0 mem_address 1 18 }  { blur_3_ce0 mem_ce 1 1 }  { blur_3_q0 in_data 0 8 } } }
	blur_4 { ap_memory {  { blur_4_address0 mem_address 1 18 }  { blur_4_ce0 mem_ce 1 1 }  { blur_4_q0 in_data 0 8 } } }
	blur_5 { ap_memory {  { blur_5_address0 mem_address 1 18 }  { blur_5_ce0 mem_ce 1 1 }  { blur_5_q0 in_data 0 8 } } }
	blur_6 { ap_memory {  { blur_6_address0 mem_address 1 18 }  { blur_6_ce0 mem_ce 1 1 }  { blur_6_q0 in_data 0 8 } } }
	blur_7 { ap_memory {  { blur_7_address0 mem_address 1 18 }  { blur_7_ce0 mem_ce 1 1 }  { blur_7_q0 in_data 0 8 } } }
	blur_8 { ap_memory {  { blur_8_address0 mem_address 1 18 }  { blur_8_ce0 mem_ce 1 1 }  { blur_8_q0 in_data 0 8 } } }
}
set moduleName edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4
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
set C_modelName {edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln27 int 32 regular  }
	{ mul_ln27 int 63 regular  }
	{ grad_mag int 32 regular {array 2073600 { 0 3 } 0 1 }  }
	{ blur int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_1 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_2 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_3 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_4 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_5 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_6 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_7 int 8 regular {array 230400 { 1 3 } 1 1 }  }
	{ blur_8 int 8 regular {array 230400 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "add_ln27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln27", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "grad_mag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blur", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln27 sc_in sc_lv 32 signal 0 } 
	{ mul_ln27 sc_in sc_lv 63 signal 1 } 
	{ grad_mag_address0 sc_out sc_lv 21 signal 2 } 
	{ grad_mag_ce0 sc_out sc_logic 1 signal 2 } 
	{ grad_mag_we0 sc_out sc_logic 1 signal 2 } 
	{ grad_mag_d0 sc_out sc_lv 32 signal 2 } 
	{ blur_address0 sc_out sc_lv 18 signal 3 } 
	{ blur_ce0 sc_out sc_logic 1 signal 3 } 
	{ blur_q0 sc_in sc_lv 8 signal 3 } 
	{ blur_1_address0 sc_out sc_lv 18 signal 4 } 
	{ blur_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ blur_1_q0 sc_in sc_lv 8 signal 4 } 
	{ blur_2_address0 sc_out sc_lv 18 signal 5 } 
	{ blur_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ blur_2_q0 sc_in sc_lv 8 signal 5 } 
	{ blur_3_address0 sc_out sc_lv 18 signal 6 } 
	{ blur_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ blur_3_q0 sc_in sc_lv 8 signal 6 } 
	{ blur_4_address0 sc_out sc_lv 18 signal 7 } 
	{ blur_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ blur_4_q0 sc_in sc_lv 8 signal 7 } 
	{ blur_5_address0 sc_out sc_lv 18 signal 8 } 
	{ blur_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ blur_5_q0 sc_in sc_lv 8 signal 8 } 
	{ blur_6_address0 sc_out sc_lv 18 signal 9 } 
	{ blur_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ blur_6_q0 sc_in sc_lv 8 signal 9 } 
	{ blur_7_address0 sc_out sc_lv 18 signal 10 } 
	{ blur_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ blur_7_q0 sc_in sc_lv 8 signal 10 } 
	{ blur_8_address0 sc_out sc_lv 18 signal 11 } 
	{ blur_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ blur_8_q0 sc_in sc_lv 8 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln27", "role": "default" }} , 
 	{ "name": "mul_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "mul_ln27", "role": "default" }} , 
 	{ "name": "grad_mag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "grad_mag", "role": "address0" }} , 
 	{ "name": "grad_mag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_mag", "role": "ce0" }} , 
 	{ "name": "grad_mag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_mag", "role": "we0" }} , 
 	{ "name": "grad_mag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grad_mag", "role": "d0" }} , 
 	{ "name": "blur_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur", "role": "address0" }} , 
 	{ "name": "blur_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur", "role": "ce0" }} , 
 	{ "name": "blur_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur", "role": "q0" }} , 
 	{ "name": "blur_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_1", "role": "address0" }} , 
 	{ "name": "blur_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_1", "role": "ce0" }} , 
 	{ "name": "blur_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_1", "role": "q0" }} , 
 	{ "name": "blur_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_2", "role": "address0" }} , 
 	{ "name": "blur_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_2", "role": "ce0" }} , 
 	{ "name": "blur_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_2", "role": "q0" }} , 
 	{ "name": "blur_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_3", "role": "address0" }} , 
 	{ "name": "blur_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_3", "role": "ce0" }} , 
 	{ "name": "blur_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_3", "role": "q0" }} , 
 	{ "name": "blur_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_4", "role": "address0" }} , 
 	{ "name": "blur_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_4", "role": "ce0" }} , 
 	{ "name": "blur_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_4", "role": "q0" }} , 
 	{ "name": "blur_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_5", "role": "address0" }} , 
 	{ "name": "blur_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_5", "role": "ce0" }} , 
 	{ "name": "blur_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_5", "role": "q0" }} , 
 	{ "name": "blur_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_6", "role": "address0" }} , 
 	{ "name": "blur_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_6", "role": "ce0" }} , 
 	{ "name": "blur_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_6", "role": "q0" }} , 
 	{ "name": "blur_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_7", "role": "address0" }} , 
 	{ "name": "blur_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_7", "role": "ce0" }} , 
 	{ "name": "blur_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_7", "role": "q0" }} , 
 	{ "name": "blur_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "blur_8", "role": "address0" }} , 
 	{ "name": "blur_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_8", "role": "ce0" }} , 
 	{ "name": "blur_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_8", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4",
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
			{"Name" : "add_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "grad_mag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blur", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "sobel_loop_VITIS_LOOP_42_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter38", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter38", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U19", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U20", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U21", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U22", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U23", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U24", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U25", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U26", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U27", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U28", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U29", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U30", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U31", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U32", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U33", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U34", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U35", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U36", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U37", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U38", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U39", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U40", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U41", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U42", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U43", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4 {
		add_ln27 {Type I LastRead 0 FirstWrite -1}
		mul_ln27 {Type I LastRead 0 FirstWrite -1}
		grad_mag {Type O LastRead -1 FirstWrite 38}
		blur {Type I LastRead 37 FirstWrite -1}
		blur_1 {Type I LastRead 37 FirstWrite -1}
		blur_2 {Type I LastRead 37 FirstWrite -1}
		blur_3 {Type I LastRead 37 FirstWrite -1}
		blur_4 {Type I LastRead 37 FirstWrite -1}
		blur_5 {Type I LastRead 37 FirstWrite -1}
		blur_6 {Type I LastRead 37 FirstWrite -1}
		blur_7 {Type I LastRead 37 FirstWrite -1}
		blur_8 {Type I LastRead 37 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln27 { ap_none {  { add_ln27 in_data 0 32 } } }
	mul_ln27 { ap_none {  { mul_ln27 in_data 0 63 } } }
	grad_mag { ap_memory {  { grad_mag_address0 mem_address 1 21 }  { grad_mag_ce0 mem_ce 1 1 }  { grad_mag_we0 mem_we 1 1 }  { grad_mag_d0 mem_din 1 32 } } }
	blur { ap_memory {  { blur_address0 mem_address 1 18 }  { blur_ce0 mem_ce 1 1 }  { blur_q0 in_data 0 8 } } }
	blur_1 { ap_memory {  { blur_1_address0 mem_address 1 18 }  { blur_1_ce0 mem_ce 1 1 }  { blur_1_q0 in_data 0 8 } } }
	blur_2 { ap_memory {  { blur_2_address0 mem_address 1 18 }  { blur_2_ce0 mem_ce 1 1 }  { blur_2_q0 in_data 0 8 } } }
	blur_3 { ap_memory {  { blur_3_address0 mem_address 1 18 }  { blur_3_ce0 mem_ce 1 1 }  { blur_3_q0 in_data 0 8 } } }
	blur_4 { ap_memory {  { blur_4_address0 mem_address 1 18 }  { blur_4_ce0 mem_ce 1 1 }  { blur_4_q0 in_data 0 8 } } }
	blur_5 { ap_memory {  { blur_5_address0 mem_address 1 18 }  { blur_5_ce0 mem_ce 1 1 }  { blur_5_q0 in_data 0 8 } } }
	blur_6 { ap_memory {  { blur_6_address0 mem_address 1 18 }  { blur_6_ce0 mem_ce 1 1 }  { blur_6_q0 in_data 0 8 } } }
	blur_7 { ap_memory {  { blur_7_address0 mem_address 1 18 }  { blur_7_ce0 mem_ce 1 1 }  { blur_7_q0 in_data 0 8 } } }
	blur_8 { ap_memory {  { blur_8_address0 mem_address 1 18 }  { blur_8_ce0 mem_ce 1 1 }  { blur_8_q0 in_data 0 8 } } }
}
set moduleName edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4
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
set C_modelName {edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln27 int 32 regular  }
	{ mul_ln27 int 63 regular  }
	{ grad_mag int 32 regular {array 518400 { 0 3 } 0 1 }  }
	{ blur int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_1 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_2 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_3 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_4 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_5 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_6 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_7 int 8 regular {array 57600 { 1 3 } 1 1 }  }
	{ blur_8 int 8 regular {array 57600 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "add_ln27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln27", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "grad_mag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blur", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln27 sc_in sc_lv 32 signal 0 } 
	{ mul_ln27 sc_in sc_lv 63 signal 1 } 
	{ grad_mag_address0 sc_out sc_lv 19 signal 2 } 
	{ grad_mag_ce0 sc_out sc_logic 1 signal 2 } 
	{ grad_mag_we0 sc_out sc_logic 1 signal 2 } 
	{ grad_mag_d0 sc_out sc_lv 32 signal 2 } 
	{ blur_address0 sc_out sc_lv 16 signal 3 } 
	{ blur_ce0 sc_out sc_logic 1 signal 3 } 
	{ blur_q0 sc_in sc_lv 8 signal 3 } 
	{ blur_1_address0 sc_out sc_lv 16 signal 4 } 
	{ blur_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ blur_1_q0 sc_in sc_lv 8 signal 4 } 
	{ blur_2_address0 sc_out sc_lv 16 signal 5 } 
	{ blur_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ blur_2_q0 sc_in sc_lv 8 signal 5 } 
	{ blur_3_address0 sc_out sc_lv 16 signal 6 } 
	{ blur_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ blur_3_q0 sc_in sc_lv 8 signal 6 } 
	{ blur_4_address0 sc_out sc_lv 16 signal 7 } 
	{ blur_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ blur_4_q0 sc_in sc_lv 8 signal 7 } 
	{ blur_5_address0 sc_out sc_lv 16 signal 8 } 
	{ blur_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ blur_5_q0 sc_in sc_lv 8 signal 8 } 
	{ blur_6_address0 sc_out sc_lv 16 signal 9 } 
	{ blur_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ blur_6_q0 sc_in sc_lv 8 signal 9 } 
	{ blur_7_address0 sc_out sc_lv 16 signal 10 } 
	{ blur_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ blur_7_q0 sc_in sc_lv 8 signal 10 } 
	{ blur_8_address0 sc_out sc_lv 16 signal 11 } 
	{ blur_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ blur_8_q0 sc_in sc_lv 8 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln27", "role": "default" }} , 
 	{ "name": "mul_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "mul_ln27", "role": "default" }} , 
 	{ "name": "grad_mag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "grad_mag", "role": "address0" }} , 
 	{ "name": "grad_mag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_mag", "role": "ce0" }} , 
 	{ "name": "grad_mag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_mag", "role": "we0" }} , 
 	{ "name": "grad_mag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grad_mag", "role": "d0" }} , 
 	{ "name": "blur_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur", "role": "address0" }} , 
 	{ "name": "blur_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur", "role": "ce0" }} , 
 	{ "name": "blur_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur", "role": "q0" }} , 
 	{ "name": "blur_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_1", "role": "address0" }} , 
 	{ "name": "blur_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_1", "role": "ce0" }} , 
 	{ "name": "blur_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_1", "role": "q0" }} , 
 	{ "name": "blur_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_2", "role": "address0" }} , 
 	{ "name": "blur_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_2", "role": "ce0" }} , 
 	{ "name": "blur_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_2", "role": "q0" }} , 
 	{ "name": "blur_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_3", "role": "address0" }} , 
 	{ "name": "blur_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_3", "role": "ce0" }} , 
 	{ "name": "blur_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_3", "role": "q0" }} , 
 	{ "name": "blur_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_4", "role": "address0" }} , 
 	{ "name": "blur_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_4", "role": "ce0" }} , 
 	{ "name": "blur_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_4", "role": "q0" }} , 
 	{ "name": "blur_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_5", "role": "address0" }} , 
 	{ "name": "blur_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_5", "role": "ce0" }} , 
 	{ "name": "blur_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_5", "role": "q0" }} , 
 	{ "name": "blur_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_6", "role": "address0" }} , 
 	{ "name": "blur_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_6", "role": "ce0" }} , 
 	{ "name": "blur_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_6", "role": "q0" }} , 
 	{ "name": "blur_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_7", "role": "address0" }} , 
 	{ "name": "blur_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_7", "role": "ce0" }} , 
 	{ "name": "blur_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_7", "role": "q0" }} , 
 	{ "name": "blur_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blur_8", "role": "address0" }} , 
 	{ "name": "blur_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_8", "role": "ce0" }} , 
 	{ "name": "blur_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_8", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4",
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
			{"Name" : "add_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "grad_mag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "blur", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "blur_8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "sobel_loop_VITIS_LOOP_42_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter38", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter38", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U19", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U20", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U21", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U22", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U23", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_33ns_63_1_1_U24", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U25", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U26", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U27", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U28", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U29", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U30", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U31", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U32", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U33", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U34", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_31ns_3ns_2_35_1_U35", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U36", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U37", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U38", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U39", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U40", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U41", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U42", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U43", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4 {
		add_ln27 {Type I LastRead 0 FirstWrite -1}
		mul_ln27 {Type I LastRead 0 FirstWrite -1}
		grad_mag {Type O LastRead -1 FirstWrite 38}
		blur {Type I LastRead 37 FirstWrite -1}
		blur_1 {Type I LastRead 37 FirstWrite -1}
		blur_2 {Type I LastRead 37 FirstWrite -1}
		blur_3 {Type I LastRead 37 FirstWrite -1}
		blur_4 {Type I LastRead 37 FirstWrite -1}
		blur_5 {Type I LastRead 37 FirstWrite -1}
		blur_6 {Type I LastRead 37 FirstWrite -1}
		blur_7 {Type I LastRead 37 FirstWrite -1}
		blur_8 {Type I LastRead 37 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln27 { ap_none {  { add_ln27 in_data 0 32 } } }
	mul_ln27 { ap_none {  { mul_ln27 in_data 0 63 } } }
	grad_mag { ap_memory {  { grad_mag_address0 mem_address 1 19 }  { grad_mag_ce0 mem_ce 1 1 }  { grad_mag_we0 mem_we 1 1 }  { grad_mag_d0 mem_din 1 32 } } }
	blur { ap_memory {  { blur_address0 mem_address 1 16 }  { blur_ce0 mem_ce 1 1 }  { blur_q0 in_data 0 8 } } }
	blur_1 { ap_memory {  { blur_1_address0 mem_address 1 16 }  { blur_1_ce0 mem_ce 1 1 }  { blur_1_q0 in_data 0 8 } } }
	blur_2 { ap_memory {  { blur_2_address0 mem_address 1 16 }  { blur_2_ce0 mem_ce 1 1 }  { blur_2_q0 in_data 0 8 } } }
	blur_3 { ap_memory {  { blur_3_address0 mem_address 1 16 }  { blur_3_ce0 mem_ce 1 1 }  { blur_3_q0 in_data 0 8 } } }
	blur_4 { ap_memory {  { blur_4_address0 mem_address 1 16 }  { blur_4_ce0 mem_ce 1 1 }  { blur_4_q0 in_data 0 8 } } }
	blur_5 { ap_memory {  { blur_5_address0 mem_address 1 16 }  { blur_5_ce0 mem_ce 1 1 }  { blur_5_q0 in_data 0 8 } } }
	blur_6 { ap_memory {  { blur_6_address0 mem_address 1 16 }  { blur_6_ce0 mem_ce 1 1 }  { blur_6_q0 in_data 0 8 } } }
	blur_7 { ap_memory {  { blur_7_address0 mem_address 1 16 }  { blur_7_ce0 mem_ce 1 1 }  { blur_7_q0 in_data 0 8 } } }
	blur_8 { ap_memory {  { blur_8_address0 mem_address 1 16 }  { blur_8_ce0 mem_ce 1 1 }  { blur_8_q0 in_data 0 8 } } }
}
