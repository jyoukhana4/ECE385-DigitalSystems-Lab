// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Feb 26 16:01:39 2025
// Host        : Prokopias running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado/lab5/lab5.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
L5RN4g==
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
