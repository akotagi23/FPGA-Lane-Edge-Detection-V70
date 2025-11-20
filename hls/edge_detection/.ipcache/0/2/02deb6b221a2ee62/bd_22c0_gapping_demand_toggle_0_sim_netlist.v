// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Nov 19 12:57:02 2025
// Host        : pc175.fpga-test.octfpga-pg0.cloudlab.umass.edu running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_22c0_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_17 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2336)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bsnBZpGH2vdjGtmb/EcV3RgCKR3vYlcZ4U4v/D9MMjWNfphd7rHqC1p06rE3v1T4tFNOX0SxzXAx
ckfR4I3uZvUhtKz/MfHogXPyKw5iiVCkGzf4v1CJjSz5ze0Zxv/rfRycZEyTjU3QPCLUow3Jvp8q
Mzlb6gS39Icny4N9OpQTC0Urg47aITatzib/d/gqwnRNGnlB8P55+3teaxyzq/EM7u7q68aanWqV
j8eaRvvEPVYg0biuY3wSjtCDrys6GN5QFyLnxaveTAiIpCmWVULPiybMVVT57YANpj22gg+IUA/o
8cPx2UPy2V7R2mm/D6eQ0xeCIhlgSnUYsITllg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FOLuB3mHjKJUs4NWYfMO66OgTr279Xr/ptUF5oWOsFye2C+vytEV5iu6xjrxA0TqqGVTOGaODdDT
hRMRDy5tnUjwy1rt0YqaGBdXAigg1t2sHftKfZQG75MY6qJoXCsjeN5+cw0FE6XfX6nNs5XtYXID
M385vp3/13FQI6qhDDi+F9RS2/P4WW5rdjwvHtLa2vqtpj5fSsoARnSkjpUqw6BAeqPFrErGDSvq
S8/NocyBkuN26um2V4OSDQS8RjvVvrFGxWXjJ2x9QAEBcbEwM9WclTvAEIjI6CejTVFJKLvXrxcg
VHCcbzMHm4fV+7a+vjbzwwWMQRr6hwA/s1/7yw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2832)
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
