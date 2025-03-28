// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Feb 26 16:01:38 2025
// Host        : Prokopias running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
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
vA7Y6bMOzr9GULZOURIUaSS29oc=
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
