// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="loop_pipeline_loop_pipeline,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=25.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=5.800000,HLS_SYN_LAT=3,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=240,HLS_SYN_LUT=649,HLS_VERSION=2022_2}" *)

module loop_pipeline (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_0,
        A_1,
        A_2,
        A_3,
        A_4,
        A_5,
        A_6,
        A_7,
        A_8,
        A_9,
        A_10,
        A_11,
        A_12,
        A_13,
        A_14,
        A_15,
        A_16,
        A_17,
        A_18,
        A_19,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] A_0;
input  [4:0] A_1;
input  [4:0] A_2;
input  [4:0] A_3;
input  [4:0] A_4;
input  [4:0] A_5;
input  [4:0] A_6;
input  [4:0] A_7;
input  [4:0] A_8;
input  [4:0] A_9;
input  [4:0] A_10;
input  [4:0] A_11;
input  [4:0] A_12;
input  [4:0] A_13;
input  [4:0] A_14;
input  [4:0] A_15;
input  [4:0] A_16;
input  [4:0] A_17;
input  [4:0] A_18;
input  [4:0] A_19;
output  [19:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
reg   [19:0] acc_V;
wire   [6:0] add_ln840_2_fu_488_p2;
reg   [6:0] add_ln840_2_reg_677;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] add_ln840_2_reg_677_pp0_iter1_reg;
reg   [6:0] add_ln840_2_reg_677_pp0_iter2_reg;
wire   [7:0] add_ln840_7_fu_528_p2;
reg   [7:0] add_ln840_7_reg_682;
reg   [7:0] add_ln840_7_reg_682_pp0_iter1_reg;
reg   [7:0] add_ln840_7_reg_682_pp0_iter2_reg;
wire   [8:0] add_ln840_18_fu_624_p2;
reg   [8:0] add_ln840_18_reg_687;
reg   [8:0] add_ln840_18_reg_687_pp0_iter1_reg;
reg   [8:0] add_ln840_18_reg_687_pp0_iter2_reg;
wire   [19:0] add_ln840_19_fu_654_p2;
reg  signed [19:0] ap_sig_allocacmp_acc_V_load;
wire    ap_block_pp0_stage0;
wire  signed [4:0] sext_ln186_fu_186_p0;
wire  signed [4:0] sext_ln186_1_fu_190_p0;
wire  signed [4:0] sext_ln186_7_fu_214_p0;
wire  signed [4:0] sext_ln186_8_fu_218_p0;
wire  signed [4:0] sext_ln186_9_fu_222_p0;
wire  signed [4:0] sext_ln186_10_fu_226_p0;
wire  signed [4:0] sext_ln186_13_fu_238_p0;
wire  signed [4:0] sext_ln186_14_fu_242_p0;
wire  signed [4:0] sext_ln186_16_fu_250_p0;
wire  signed [4:0] sext_ln186_17_fu_254_p0;
wire  signed [4:0] sext_ln186_19_fu_262_p0;
wire  signed [4:0] sext_ln186_20_fu_266_p0;
wire  signed [4:0] sext_ln186_23_fu_278_p0;
wire  signed [4:0] sext_ln186_24_fu_282_p0;
wire  signed [4:0] sext_ln186_25_fu_286_p0;
wire  signed [4:0] sext_ln186_26_fu_290_p0;
wire  signed [5:0] sext_ln186_2_fu_194_p1;
wire  signed [5:0] sext_ln186_1_fu_190_p1;
wire   [5:0] tmp3_fu_298_p2;
wire  signed [5:0] sext_ln186_4_fu_202_p1;
wire  signed [5:0] sext_ln186_5_fu_206_p1;
wire   [5:0] tmp5_fu_308_p2;
wire  signed [6:0] tmp5_cast_fu_314_p1;
wire  signed [6:0] sext_ln186_3_fu_198_p1;
wire   [6:0] tmp4_fu_318_p2;
wire  signed [7:0] tmp4_cast_fu_324_p1;
wire  signed [7:0] tmp3_cast_fu_304_p1;
wire   [7:0] tmp2_fu_328_p2;
wire  signed [5:0] sext_ln186_6_fu_210_p1;
wire  signed [5:0] sext_ln186_8_fu_218_p1;
wire   [5:0] tmp7_fu_338_p2;
wire  signed [5:0] sext_ln186_11_fu_230_p1;
wire  signed [5:0] sext_ln186_12_fu_234_p1;
wire   [5:0] tmp9_fu_348_p2;
wire  signed [6:0] tmp9_cast_fu_354_p1;
wire  signed [6:0] sext_ln186_10_fu_226_p1;
wire   [6:0] tmp8_fu_358_p2;
wire  signed [7:0] tmp8_cast_fu_364_p1;
wire  signed [7:0] tmp7_cast_fu_344_p1;
wire   [7:0] tmp6_fu_368_p2;
wire  signed [8:0] tmp6_cast_fu_374_p1;
wire  signed [8:0] tmp2_cast_fu_334_p1;
wire  signed [8:0] tmp1_fu_378_p2;
wire  signed [5:0] sext_ln186_14_fu_242_p1;
wire  signed [5:0] sext_ln186_15_fu_246_p1;
wire   [5:0] tmp12_fu_388_p2;
wire  signed [5:0] sext_ln186_18_fu_258_p1;
wire  signed [5:0] sext_ln186_20_fu_266_p1;
wire   [5:0] tmp14_fu_398_p2;
wire  signed [6:0] tmp14_cast_fu_404_p1;
wire  signed [6:0] sext_ln186_17_fu_254_p1;
wire   [6:0] tmp13_fu_408_p2;
wire  signed [7:0] tmp13_cast_fu_414_p1;
wire  signed [7:0] tmp12_cast_fu_394_p1;
wire   [7:0] tmp11_fu_418_p2;
wire  signed [5:0] sext_ln186_21_fu_270_p1;
wire  signed [5:0] sext_ln186_22_fu_274_p1;
wire  signed [5:0] tmp16_fu_428_p2;
wire  signed [5:0] sext_ln186_26_fu_290_p1;
wire  signed [5:0] A_19_load_cast_fu_294_p1;
wire   [5:0] tmp18_fu_438_p2;
wire  signed [6:0] tmp18_cast_fu_444_p1;
wire  signed [6:0] sext_ln186_24_fu_282_p1;
wire   [6:0] tmp17_fu_448_p2;
wire  signed [7:0] tmp17_cast_fu_454_p1;
wire  signed [7:0] tmp16_cast_fu_434_p1;
wire   [7:0] tmp15_fu_458_p2;
wire  signed [8:0] tmp15_cast_fu_464_p1;
wire  signed [8:0] tmp11_cast_fu_424_p1;
wire  signed [8:0] tmp10_fu_468_p2;
wire  signed [5:0] sext_ln186_23_fu_278_p1;
wire   [5:0] add_ln840_1_fu_478_p2;
wire  signed [6:0] sext_ln840_1_fu_484_p1;
wire  signed [6:0] sext_ln186_25_fu_286_p1;
wire  signed [6:0] sext_ln840_3_fu_494_p1;
wire  signed [6:0] sext_ln186_19_fu_262_p1;
wire   [6:0] add_ln840_4_fu_498_p2;
wire   [5:0] add_ln840_5_fu_508_p2;
wire  signed [6:0] sext_ln840_5_fu_514_p1;
wire  signed [6:0] sext_ln186_13_fu_238_p1;
wire   [6:0] add_ln840_6_fu_518_p2;
wire  signed [7:0] sext_ln840_6_fu_524_p1;
wire  signed [7:0] sext_ln840_4_fu_504_p1;
wire  signed [5:0] sext_ln186_16_fu_250_p1;
wire   [5:0] add_ln840_9_fu_534_p2;
wire   [5:0] add_ln840_10_fu_544_p2;
wire  signed [6:0] sext_ln840_9_fu_550_p1;
wire  signed [6:0] sext_ln186_fu_186_p1;
wire   [6:0] add_ln840_11_fu_554_p2;
wire  signed [7:0] sext_ln840_10_fu_560_p1;
wire  signed [7:0] sext_ln840_8_fu_540_p1;
wire   [7:0] add_ln840_12_fu_564_p2;
wire   [5:0] add_ln840_13_fu_574_p2;
wire  signed [6:0] sext_ln840_12_fu_580_p1;
wire   [6:0] add_ln840_14_fu_584_p2;
wire  signed [5:0] sext_ln186_9_fu_222_p1;
wire   [5:0] add_ln840_15_fu_594_p2;
wire  signed [6:0] sext_ln840_14_fu_600_p1;
wire  signed [6:0] sext_ln186_7_fu_214_p1;
wire   [6:0] add_ln840_16_fu_604_p2;
wire  signed [7:0] sext_ln840_15_fu_610_p1;
wire  signed [7:0] sext_ln840_13_fu_590_p1;
wire   [7:0] add_ln840_17_fu_614_p2;
wire  signed [8:0] sext_ln840_16_fu_620_p1;
wire  signed [8:0] sext_ln840_11_fu_570_p1;
wire  signed [19:0] sext_ln840_2_fu_634_p1;
wire  signed [19:0] grp_fu_666_p4;
wire  signed [19:0] sext_ln840_7_fu_642_p1;
(* use_dsp48 = "no" *) wire   [19:0] add_ln840_3_fu_637_p2;
wire  signed [19:0] sext_ln840_17_fu_651_p1;
wire   [19:0] add_ln840_8_fu_645_p2;
wire   [7:0] grp_fu_666_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 acc_V = 20'd0;
end

loop_pipeline_ama_addmuladd_9s_9s_8ns_20s_20_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 20 ),
    .dout_WIDTH( 20 ))
ama_addmuladd_9s_9s_8ns_20s_20_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp10_fu_468_p2),
    .din1(tmp1_fu_378_p2),
    .din2(grp_fu_666_p2),
    .din3(ap_sig_allocacmp_acc_V_load),
    .ce(1'b1),
    .dout(grp_fu_666_p4)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        acc_V <= add_ln840_19_fu_654_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln840_18_reg_687 <= add_ln840_18_fu_624_p2;
        add_ln840_18_reg_687_pp0_iter1_reg <= add_ln840_18_reg_687;
        add_ln840_2_reg_677 <= add_ln840_2_fu_488_p2;
        add_ln840_2_reg_677_pp0_iter1_reg <= add_ln840_2_reg_677;
        add_ln840_7_reg_682 <= add_ln840_7_fu_528_p2;
        add_ln840_7_reg_682_pp0_iter1_reg <= add_ln840_7_reg_682;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln840_18_reg_687_pp0_iter2_reg <= add_ln840_18_reg_687_pp0_iter1_reg;
        add_ln840_2_reg_677_pp0_iter2_reg <= add_ln840_2_reg_677_pp0_iter1_reg;
        add_ln840_7_reg_682_pp0_iter2_reg <= add_ln840_7_reg_682_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_sig_allocacmp_acc_V_load = add_ln840_19_fu_654_p2;
    end else begin
        ap_sig_allocacmp_acc_V_load = acc_V;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_19_load_cast_fu_294_p1 = $signed(A_19);

assign add_ln840_10_fu_544_p2 = ($signed(sext_ln186_2_fu_194_p1) + $signed(sext_ln186_4_fu_202_p1));

assign add_ln840_11_fu_554_p2 = ($signed(sext_ln840_9_fu_550_p1) + $signed(sext_ln186_fu_186_p1));

assign add_ln840_12_fu_564_p2 = ($signed(sext_ln840_10_fu_560_p1) + $signed(sext_ln840_8_fu_540_p1));

assign add_ln840_13_fu_574_p2 = ($signed(sext_ln186_6_fu_210_p1) + $signed(sext_ln186_5_fu_206_p1));

assign add_ln840_14_fu_584_p2 = ($signed(sext_ln840_12_fu_580_p1) + $signed(sext_ln186_3_fu_198_p1));

assign add_ln840_15_fu_594_p2 = ($signed(sext_ln186_11_fu_230_p1) + $signed(sext_ln186_9_fu_222_p1));

assign add_ln840_16_fu_604_p2 = ($signed(sext_ln840_14_fu_600_p1) + $signed(sext_ln186_7_fu_214_p1));

assign add_ln840_17_fu_614_p2 = ($signed(sext_ln840_15_fu_610_p1) + $signed(sext_ln840_13_fu_590_p1));

assign add_ln840_18_fu_624_p2 = ($signed(sext_ln840_16_fu_620_p1) + $signed(sext_ln840_11_fu_570_p1));

assign add_ln840_19_fu_654_p2 = ($signed(sext_ln840_17_fu_651_p1) + $signed(add_ln840_8_fu_645_p2));

assign add_ln840_1_fu_478_p2 = ($signed(A_19_load_cast_fu_294_p1) + $signed(sext_ln186_23_fu_278_p1));

assign add_ln840_2_fu_488_p2 = ($signed(sext_ln840_1_fu_484_p1) + $signed(sext_ln186_25_fu_286_p1));

assign add_ln840_3_fu_637_p2 = ($signed(sext_ln840_2_fu_634_p1) + $signed(grp_fu_666_p4));

assign add_ln840_4_fu_498_p2 = ($signed(sext_ln840_3_fu_494_p1) + $signed(sext_ln186_19_fu_262_p1));

assign add_ln840_5_fu_508_p2 = ($signed(sext_ln186_12_fu_234_p1) + $signed(sext_ln186_15_fu_246_p1));

assign add_ln840_6_fu_518_p2 = ($signed(sext_ln840_5_fu_514_p1) + $signed(sext_ln186_13_fu_238_p1));

assign add_ln840_7_fu_528_p2 = ($signed(sext_ln840_6_fu_524_p1) + $signed(sext_ln840_4_fu_504_p1));

assign add_ln840_8_fu_645_p2 = ($signed(sext_ln840_7_fu_642_p1) + $signed(add_ln840_3_fu_637_p2));

assign add_ln840_9_fu_534_p2 = ($signed(sext_ln186_18_fu_258_p1) + $signed(sext_ln186_16_fu_250_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = ($signed(sext_ln840_17_fu_651_p1) + $signed(add_ln840_8_fu_645_p2));

assign grp_fu_666_p2 = 19'd189;

assign sext_ln186_10_fu_226_p0 = A_7;

assign sext_ln186_10_fu_226_p1 = sext_ln186_10_fu_226_p0;

assign sext_ln186_11_fu_230_p1 = $signed(A_8);

assign sext_ln186_12_fu_234_p1 = $signed(A_9);

assign sext_ln186_13_fu_238_p0 = A_10;

assign sext_ln186_13_fu_238_p1 = sext_ln186_13_fu_238_p0;

assign sext_ln186_14_fu_242_p0 = A_10;

assign sext_ln186_14_fu_242_p1 = sext_ln186_14_fu_242_p0;

assign sext_ln186_15_fu_246_p1 = $signed(A_11);

assign sext_ln186_16_fu_250_p0 = A_12;

assign sext_ln186_16_fu_250_p1 = sext_ln186_16_fu_250_p0;

assign sext_ln186_17_fu_254_p0 = A_12;

assign sext_ln186_17_fu_254_p1 = sext_ln186_17_fu_254_p0;

assign sext_ln186_18_fu_258_p1 = $signed(A_13);

assign sext_ln186_19_fu_262_p0 = A_14;

assign sext_ln186_19_fu_262_p1 = sext_ln186_19_fu_262_p0;

assign sext_ln186_1_fu_190_p0 = A_0;

assign sext_ln186_1_fu_190_p1 = sext_ln186_1_fu_190_p0;

assign sext_ln186_20_fu_266_p0 = A_14;

assign sext_ln186_20_fu_266_p1 = sext_ln186_20_fu_266_p0;

assign sext_ln186_21_fu_270_p1 = $signed(A_15);

assign sext_ln186_22_fu_274_p1 = $signed(A_16);

assign sext_ln186_23_fu_278_p0 = A_17;

assign sext_ln186_23_fu_278_p1 = sext_ln186_23_fu_278_p0;

assign sext_ln186_24_fu_282_p0 = A_17;

assign sext_ln186_24_fu_282_p1 = sext_ln186_24_fu_282_p0;

assign sext_ln186_25_fu_286_p0 = A_18;

assign sext_ln186_25_fu_286_p1 = sext_ln186_25_fu_286_p0;

assign sext_ln186_26_fu_290_p0 = A_18;

assign sext_ln186_26_fu_290_p1 = sext_ln186_26_fu_290_p0;

assign sext_ln186_2_fu_194_p1 = $signed(A_1);

assign sext_ln186_3_fu_198_p1 = $signed(A_2);

assign sext_ln186_4_fu_202_p1 = $signed(A_3);

assign sext_ln186_5_fu_206_p1 = $signed(A_4);

assign sext_ln186_6_fu_210_p1 = $signed(A_5);

assign sext_ln186_7_fu_214_p0 = A_6;

assign sext_ln186_7_fu_214_p1 = sext_ln186_7_fu_214_p0;

assign sext_ln186_8_fu_218_p0 = A_6;

assign sext_ln186_8_fu_218_p1 = sext_ln186_8_fu_218_p0;

assign sext_ln186_9_fu_222_p0 = A_7;

assign sext_ln186_9_fu_222_p1 = sext_ln186_9_fu_222_p0;

assign sext_ln186_fu_186_p0 = A_0;

assign sext_ln186_fu_186_p1 = sext_ln186_fu_186_p0;

assign sext_ln840_10_fu_560_p1 = $signed(add_ln840_11_fu_554_p2);

assign sext_ln840_11_fu_570_p1 = $signed(add_ln840_12_fu_564_p2);

assign sext_ln840_12_fu_580_p1 = $signed(add_ln840_13_fu_574_p2);

assign sext_ln840_13_fu_590_p1 = $signed(add_ln840_14_fu_584_p2);

assign sext_ln840_14_fu_600_p1 = $signed(add_ln840_15_fu_594_p2);

assign sext_ln840_15_fu_610_p1 = $signed(add_ln840_16_fu_604_p2);

assign sext_ln840_16_fu_620_p1 = $signed(add_ln840_17_fu_614_p2);

assign sext_ln840_17_fu_651_p1 = $signed(add_ln840_18_reg_687_pp0_iter2_reg);

assign sext_ln840_1_fu_484_p1 = $signed(add_ln840_1_fu_478_p2);

assign sext_ln840_2_fu_634_p1 = $signed(add_ln840_2_reg_677_pp0_iter2_reg);

assign sext_ln840_3_fu_494_p1 = tmp16_fu_428_p2;

assign sext_ln840_4_fu_504_p1 = $signed(add_ln840_4_fu_498_p2);

assign sext_ln840_5_fu_514_p1 = $signed(add_ln840_5_fu_508_p2);

assign sext_ln840_6_fu_524_p1 = $signed(add_ln840_6_fu_518_p2);

assign sext_ln840_7_fu_642_p1 = $signed(add_ln840_7_reg_682_pp0_iter2_reg);

assign sext_ln840_8_fu_540_p1 = $signed(add_ln840_9_fu_534_p2);

assign sext_ln840_9_fu_550_p1 = $signed(add_ln840_10_fu_544_p2);

assign tmp10_fu_468_p2 = ($signed(tmp15_cast_fu_464_p1) + $signed(tmp11_cast_fu_424_p1));

assign tmp11_cast_fu_424_p1 = $signed(tmp11_fu_418_p2);

assign tmp11_fu_418_p2 = ($signed(tmp13_cast_fu_414_p1) + $signed(tmp12_cast_fu_394_p1));

assign tmp12_cast_fu_394_p1 = $signed(tmp12_fu_388_p2);

assign tmp12_fu_388_p2 = ($signed(sext_ln186_14_fu_242_p1) + $signed(sext_ln186_15_fu_246_p1));

assign tmp13_cast_fu_414_p1 = $signed(tmp13_fu_408_p2);

assign tmp13_fu_408_p2 = ($signed(tmp14_cast_fu_404_p1) + $signed(sext_ln186_17_fu_254_p1));

assign tmp14_cast_fu_404_p1 = $signed(tmp14_fu_398_p2);

assign tmp14_fu_398_p2 = ($signed(sext_ln186_18_fu_258_p1) + $signed(sext_ln186_20_fu_266_p1));

assign tmp15_cast_fu_464_p1 = $signed(tmp15_fu_458_p2);

assign tmp15_fu_458_p2 = ($signed(tmp17_cast_fu_454_p1) + $signed(tmp16_cast_fu_434_p1));

assign tmp16_cast_fu_434_p1 = tmp16_fu_428_p2;

assign tmp16_fu_428_p2 = ($signed(sext_ln186_21_fu_270_p1) + $signed(sext_ln186_22_fu_274_p1));

assign tmp17_cast_fu_454_p1 = $signed(tmp17_fu_448_p2);

assign tmp17_fu_448_p2 = ($signed(tmp18_cast_fu_444_p1) + $signed(sext_ln186_24_fu_282_p1));

assign tmp18_cast_fu_444_p1 = $signed(tmp18_fu_438_p2);

assign tmp18_fu_438_p2 = ($signed(sext_ln186_26_fu_290_p1) + $signed(A_19_load_cast_fu_294_p1));

assign tmp1_fu_378_p2 = ($signed(tmp6_cast_fu_374_p1) + $signed(tmp2_cast_fu_334_p1));

assign tmp2_cast_fu_334_p1 = $signed(tmp2_fu_328_p2);

assign tmp2_fu_328_p2 = ($signed(tmp4_cast_fu_324_p1) + $signed(tmp3_cast_fu_304_p1));

assign tmp3_cast_fu_304_p1 = $signed(tmp3_fu_298_p2);

assign tmp3_fu_298_p2 = ($signed(sext_ln186_2_fu_194_p1) + $signed(sext_ln186_1_fu_190_p1));

assign tmp4_cast_fu_324_p1 = $signed(tmp4_fu_318_p2);

assign tmp4_fu_318_p2 = ($signed(tmp5_cast_fu_314_p1) + $signed(sext_ln186_3_fu_198_p1));

assign tmp5_cast_fu_314_p1 = $signed(tmp5_fu_308_p2);

assign tmp5_fu_308_p2 = ($signed(sext_ln186_4_fu_202_p1) + $signed(sext_ln186_5_fu_206_p1));

assign tmp6_cast_fu_374_p1 = $signed(tmp6_fu_368_p2);

assign tmp6_fu_368_p2 = ($signed(tmp8_cast_fu_364_p1) + $signed(tmp7_cast_fu_344_p1));

assign tmp7_cast_fu_344_p1 = $signed(tmp7_fu_338_p2);

assign tmp7_fu_338_p2 = ($signed(sext_ln186_6_fu_210_p1) + $signed(sext_ln186_8_fu_218_p1));

assign tmp8_cast_fu_364_p1 = $signed(tmp8_fu_358_p2);

assign tmp8_fu_358_p2 = ($signed(tmp9_cast_fu_354_p1) + $signed(sext_ln186_10_fu_226_p1));

assign tmp9_cast_fu_354_p1 = $signed(tmp9_fu_348_p2);

assign tmp9_fu_348_p2 = ($signed(sext_ln186_11_fu_230_p1) + $signed(sext_ln186_12_fu_234_p1));

endmodule //loop_pipeline
