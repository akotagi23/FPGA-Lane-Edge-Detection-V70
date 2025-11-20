// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Nov 19 12:48:35 2025
// Host        : pc175.fpga-test.octfpga-pg0.cloudlab.umass.edu running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_58f6_lut_buffer_0_sim_netlist.v
// Design      : bd_58f6_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y0xh9134RsBng5etaGXwBVUEA8J2bWMgUTQDTIAitarHeeOiZsCqvqnqSMBLJzSAT8Clo2xSEdDb
f2T0bmuallNuAd4vpVjfpqZxOdLmUV+3X8aXUTr4KkIVjWQBC+K45w+OfnfdElcaUW1WQbp7AvaT
05bjWBH/BdJKBk0Kz8k=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PE7RpcxN5xLwFXFfGeLCerEjPkCaTxfWD0b+oprDoEGqctY+F7Wc4+NqdSUAG4JbLWR/Pc8Mvten
+K5WbuDTljggJrkieJAK3rBOK8BdubtGJNC4uQ5v2trZYixfg4cWld5Z1MOB9aGfI0nF082l9Fc1
oNJFrkGcenyozvDKcCrtwvJaYRweulCV8/ynKznNpn+AvYhnoluR06IxzZXoj14b7IZt4g/2m455
clbUPyf1qLHbJGSK/Rvl0/W7cB5xxs3pM9/5p3UZ1MPFflZOAeCDwlOgzpXGAzfCkl9cSVqnIFFm
Q3cDkAfbRmP4jbDuwO2EbXgpiNcvc0br8gVcbA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V73a/OJRlITsAnnyOJ7wtYI9yf/7gLrmQAWi1efFadTpN18wAOW5wcGb51JuXb/TOad9XvQaZxoY
I1ZZckK9R3kp0xHb3eRHqTEs38gIdB9DieJsPfcgrAgAh7N3AeXDhRXODyfLCVtmoF6cv0lmGI3F
6gKImN8nvzJnJHdYS0w=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DCcPCQlu9uE6EBAoASplmWq6o/1vaTK24YYikkUnuM7wUc+K6wrTEbkFivj5OqxF/zGGynv+kjob
I28B+W/69av/irvgfSaOkl5CUwgmAnYrJQd5zO7pvvK7YBJ/f93xJ/FmpQTogAblevs7NdJLp3g2
OjMs/8iwMyXJYb2YgHoEFYKN8iqqLfoE1FTy3G1JWKcwGAYvCl6xaaPp+oYT4c7L99IYhk6R8LBP
5s2r5TkwtZsEUda1DuYu5UkWe5K0DyTVUxajXsz/s/xuKDYMlzV72Q6wQBSnBiknt/jnVyDo1tW+
PGq16LOUpjH7iA8esxtuBNSsdeu0hMvHXuCk0Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nwGINoKaVugQKTFyoLZc9O4TFbtk1/YjUn+a0zrC86S6J/PE/JSOh+4Yfyc8eQ/WKAw+4uNuqCfu
xMoblhyJX/PlyEcylGam6sg3YG3KUGmi+YfHMkiy5TIq7RfDEHBwm0OHajhuCJo+X/6WxDGrk+PS
JQwDW5IPxNMsoAYvcfcnzoAzaBMZ2IOHG/dpyyZ9tggqfcMqg7t2BLQujqkegYCW4gY5rCPGeljI
4AGn2WPvX+9JN5GQNIRdoRh8Onlhi39C7f6rkpR/zl9AY5kpcq9JW6q9bZNUXWBSnGm4Qz7GqfRv
VWcK4i0ng1C6xuiSkLkN+3y6/j1T30YlwsMfwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hEsll6mGIaBLE7AxJMVNtolpxRIRkhMsR1xHRjohvcUv4jFzKCjUO8d3wAnCq+Pz8f91PWDGP2f8
vGvDzErKDDVww33sDh+czaUMpdCCZkXt02jx1NfASHgkhqZt48L0UuNktllZas8HQy1w28ioRL/7
3KzyZN4uQ0f8w82zbdxC6U1l1meuVs6Ymk3Nsfmr36ARxpZj/9mbYwpjCUYyUzvUJRzuQfrAg0Ug
NoZDuxYRFYh7nfwlzgujXfMnemYGWwvjSq+iGvBWkCedSDGyNW+1BepcrFfzMd0eKQwmcj8h07J6
R97hYRxcHh/xlYrOs7brn6ldE9gjFrrjzoo8iw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCn+A4p440uf9LYQwYUsNjUDkTOYDGJVSfBa72VZuxFlEtdCBsGMjyJlD71i9wfT+zo8h+uKo5qg
vdv6mNq8TlFLiiopLnEQiAavSCyjdKaqzw8udtBKGsJVh0jvWBiBGYR3s//q93WXtDm9YvhHTdgy
QyzPYSyta3qQBDVoFvr9QDfszU/AgD7tMB34LAvkpr+FTkjoCCJrveOtK2B2WHLDkSZUKkPVQ4z2
NkNE0C0TKTL07EoIHcBpTszfP8fVP255K0UDLBoKbNkya3Q/UqjG6bR9pNXI4n94ocrJxFUkJyc7
WjwNxUjgC0HL2CND2aA9LS0fnSdpZ/JZhvib0Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eQmhkruRac3U1ERXu1Se13kEfZn5KP07/7J3pWhxX9QDO3A6aHkXHeiaH+qtRq5D2WFtbDCyVd5o
yPb7cQ9Sf2K6uFN+DTniB0oRADGePTdy2g3FHV68hvgIVlFrc9uf2rfs2yWR6pds+LDyYHhnSlEJ
hayggxgMxA41kth5hR2kGSybXpDjpQylauMvP+MetSb/27syf7QWVbXFhfLQE64opyObtme8TiWj
5MsRktemiPbC/x2RmB+ZklSRAvWu35tDO9u3XZ/Kk6WG2Pqj607cIfA/TsqoxZ6522ktimOnveJA
pSE6WUmDIQaOZ6pXjVIv4GEXZX73ZA3wLhRrmL7QxfXqCAeqFjouROHvM8Zv9kOfFGuDEo44JQSg
frNFO+XzslBTB/aplI0UWXL5ak9uQ1BUPtBO7xedGF/B7KKNsOoTml/48MYOaM6/3vjqSeiVUbvK
VVOQg7nBLowDBuFhcmn2RlKHia3ldFgRHkvFeuIJs5w1Ca1q0zuPaDzZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gmsDEPC6u2G9YmnQc+V5rl/+mw4IztZGOLCaixhGfvI1t16GeLgoWqRktnjvSlEQbNzx7qnrDu3r
je4CfK2ZF54ZUMDX1QZd4bL54eK/AB3GiU3wZKUDtd9ZB5j4Oq5zWBU/nuHisg8FDEXkIndNgak5
cWycB82LoueWPC88cLKbbFasGsKFV3+Cn/sQ88RAmKtwlL2bwHvI+udevI4dY8w7//0nMejfXbdJ
QRGDs0h2SxkGs298aaM464WfmgQ63xcJn9AB5LuagH+a7BdhySu3RNfRzgSw5k3AYXJd3Q8Mht1s
ztXL0X+/yquUTzhcMBTfyicvWkiYRw6CxzjnDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
