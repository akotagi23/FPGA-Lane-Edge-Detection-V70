set ModuleHierarchy {[{
"Name" : "edge_detect","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_edge_detect_Pipeline_gauss_loop_VITIS_LOOP_28_1_fu_156","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "gauss_loop_VITIS_LOOP_28_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_edge_detect_Pipeline_sobel_loop_VITIS_LOOP_42_4_fu_174","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "sobel_loop_VITIS_LOOP_42_4","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_edge_detect_Pipeline_thresh_loop_VITIS_LOOP_58_7_fu_190","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "thresh_loop_VITIS_LOOP_58_7","ID" : "6","Type" : "pipeline"},]},]
}]}