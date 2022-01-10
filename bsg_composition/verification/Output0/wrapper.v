/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_data_in,
__ILA_I_core_valid_in,
__ILA_I_io_token,
__ISSUE__,
__VLG_I_core_clk_i,
__VLG_I_core_data_i,
__VLG_I_core_valid_i,
__VLG_I_token_clk_i,
__cnt_oddr_init__,
clk,
dummy_reset,
rst,
__ILA_SO_child_valid,
__ILA_SO_data_cycle_0,
__ILA_SO_data_cycle_1,
__ILA_SO_finish_cnt,
__ILA_SO_io_data_out_ch0,
__ILA_SO_io_data_out_ch1,
__ILA_SO_io_valid_out,
__ILA_SO_sent_cnt,
__ILA_SO_step,
__VLG_O_core_ready_o,
__VLG_O_io_clk_r_o,
__m0__,
__m10__,
__m11__,
__m1__,
__m2__,
__m3__,
__m4__,
__m5__,
__m6__,
__m7__,
__m8__,
__m9__,
io_data_r_o,
io_valid_r_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
cnt_oddr,
data_delay,
cnt,
valid_delay,
child_valid_d,
commit,
io_token,
token_clk_i
);
input     [63:0] __ILA_I_core_data_in;
input            __ILA_I_core_valid_in;
input            __ILA_I_io_token;
input            __ISSUE__;
input            __VLG_I_core_clk_i;
input     [63:0] __VLG_I_core_data_i;
input            __VLG_I_core_valid_i;
input      [1:0] __VLG_I_token_clk_i;
input      [1:0] __cnt_oddr_init__;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_child_valid;
output     [31:0] __ILA_SO_data_cycle_0;
output     [31:0] __ILA_SO_data_cycle_1;
output      [6:0] __ILA_SO_finish_cnt;
output      [7:0] __ILA_SO_io_data_out_ch0;
output      [7:0] __ILA_SO_io_data_out_ch1;
output            __ILA_SO_io_valid_out;
output      [6:0] __ILA_SO_sent_cnt;
output      [1:0] __ILA_SO_step;
output            __VLG_O_core_ready_o;
output      [1:0] __VLG_O_io_clk_r_o;
output            __m0__;
output            __m10__;
output            __m11__;
output            __m1__;
output            __m2__;
output            __m3__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output            __m8__;
output            __m9__;
output     [15:0] io_data_r_o;
output      [1:0] io_valid_r_o;
output reg      [7:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg      [1:0] cnt_oddr;
output reg     [31:0] data_delay;
output reg      [1:0] cnt;
output reg            valid_delay;
output reg            child_valid_d;
output reg            commit;
output reg            io_token;
output reg            token_clk_i;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0__;
(* keep *) wire            __ILA_BSG_UPSTREAM_OUT_valid__;
(* keep *) wire     [63:0] __ILA_I_core_data_in;
(* keep *) wire            __ILA_I_core_valid_in;
(* keep *) wire            __ILA_I_io_token;
(* keep *) wire            __ILA_SO_child_valid;
(* keep *) wire     [31:0] __ILA_SO_data_cycle_0;
(* keep *) wire     [31:0] __ILA_SO_data_cycle_1;
(* keep *) wire      [6:0] __ILA_SO_finish_cnt;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch0;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch1;
(* keep *) wire            __ILA_SO_io_valid_out;
(* keep *) wire      [6:0] __ILA_SO_sent_cnt;
(* keep *) wire      [1:0] __ILA_SO_step;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __VLG_I_core_clk_i;
(* keep *) wire     [63:0] __VLG_I_core_data_i;
(* keep *) wire            __VLG_I_core_valid_i;
(* keep *) wire      [1:0] __VLG_I_token_clk_i;
(* keep *) wire            __VLG_O_core_ready_o;
(* keep *) wire      [1:0] __VLG_O_io_clk_r_o;
wire      [1:0] __cnt_oddr_init__;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
(* keep *) wire            __m3__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
(* keep *) wire            child_valid;
wire            clk;
(* keep *) wire     [31:0] data;
(* keep *) wire     [31:0] data_check;
(* keep *) wire            dummy_reset;
(* keep *) wire      [6:0] finish_counter;
(* keep *) wire     [15:0] io_data_r_o;
(* keep *) wire      [1:0] io_valid_r_o;
(* keep *) wire            random_token;
(* keep *) wire      [6:0] ready_counter;
wire            rst;
(* keep *) wire      [6:0] sent_counter;
(* keep *) wire            valid_check;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 132) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = child_valid == __ILA_SO_child_valid ;
assign __m1__ = data_check == __ILA_SO_data_cycle_0 ;
assign __m2__ = data_check == __ILA_SO_data_cycle_1 ;
assign __m3__ = finish_counter == __ILA_SO_finish_cnt ;
assign __m4__ = valid_check == __ILA_SO_io_valid_out ;
assign __m5__ = sent_counter == __ILA_SO_sent_cnt ;
assign __m6__ = cnt == __ILA_SO_step ;
assign __m7__ = cnt_oddr == __ILA_SO_step ;
assign __m8__ = valid_check == __ILA_SO_io_valid_out ;
assign __m9__ = sent_counter == __ILA_SO_sent_cnt ;
assign __m10__ = cnt == __ILA_SO_step ;
assign __m11__ = cnt_oddr == __ILA_SO_step ;
assign __EDCOND__ = (`false|| (m1.io_valid_r_o[0])) && __STARTED__  ;
assign __IEND__ = (`false|| (m1.io_valid_r_o[0])) && __STARTED__ && __RESETED__ && (~ __ENDED__)&& ( __CYCLE_CNT__ <= 10) ;
assign sent_counter = m1.ch_0_sso.pos_credit_ctr.r_counter_r[5:0] + m1.ch_0_sso.neg_credit_ctr.r_counter_r[5:0] - 7'b1000000;
assign finish_counter = {(m1.ch_0_sso.pos_credit_ctr.w_counter_binary_r_rsync[3:0] + m1.ch_1_sso.neg_credit_ctr.w_counter_binary_r_rsync[3:0]),3'b000};
assign ready_counter = sent_counter - finish_counter;
assign data = {m1.ch_1_sso.io_async_fifo_data[15:0], 16'b0} + m1.ch_0_sso.io_async_fifo_data[15:0];
always @(posedge clk) begin
   data_delay <= data; valid_delay <= m1.io_valid_r_o[0]; end
assign data_check = (m1.ch_0_oddr_phy.odd_r == 1'b1 ? data_delay : data);
assign valid_check = (m1.ch_0_oddr_phy.odd_r == 1'b1 ? valid_delay: m1.io_valid_r_o[0]);
always @(posedge clk) begin
   if(rst) begin cnt <= 0; child_valid_d <= 0; end
   else begin
        child_valid_d <= m1.ch_0_sso.io_async_fifo_valid;
        if ((m1.ch_0_sso.io_async_fifo_valid & m1.ch_0_oddr_phy.ready_o & (ready_counter < 7'b1000000)) || (cnt != 0) )
             cnt <= cnt + 1; end
end
assign child_valid = m1.ch_0_sso.io_async_fifo_valid || child_valid_d || m1.io_valid_r_o[0];

always @(posedge clk) begin 
    if(m1.ch_0_oddr_phy.data_i[8] && m1.ch_0_oddr_phy.ready_o)
        commit <= 1;
    else if (commit && m1.ch_0_oddr_phy.ready_o)
        commit <= 0;
end

always @(posedge __VLG_I_core_clk_i) begin
   if(rst) begin io_token <= 0; token_clk_i <= 0; end
   else if (random_token) begin
       io_token <= 1;
       token_clk_i <= ~token_clk_i;
   end
   else io_token <= 0;
end


BSG_UPSTREAM_OUT__DOT__Output0 m0 (
   .__START__(__START__),
   .clk(clk),
   .core_data_in(__ILA_I_core_data_in),
   .core_valid_in(__ILA_I_core_valid_in),
   .io_token(__ILA_I_io_token),
   .rst(rst),
   .__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__(__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__),
   .__ILA_BSG_UPSTREAM_OUT_valid__(__ILA_BSG_UPSTREAM_OUT_valid__),
   .child_valid(__ILA_SO_child_valid),
   .io_valid_out(__ILA_SO_io_valid_out),
   .data_cycle_0(__ILA_SO_data_cycle_0),
   .data_cycle_1(__ILA_SO_data_cycle_1),
   .sent_cnt(__ILA_SO_sent_cnt),
   .finish_cnt(__ILA_SO_finish_cnt),
   .io_data_out_ch0(__ILA_SO_io_data_out_ch0),
   .io_data_out_ch1(__ILA_SO_io_data_out_ch1),
   .step(__ILA_SO_step),
   .__COUNTER_start__n10()
);
bsg_link_ddr_upstream m1(
    .async_token_reset_i(rst),
    .core_clk_i(__VLG_I_core_clk_i),
    .core_data_i(__VLG_I_core_data_i),
    .core_link_reset_i(rst),
    .core_ready_o(__VLG_O_core_ready_o),
    .core_valid_i(__VLG_I_core_valid_i),
    .io_clk_i(clk),
    .io_clk_r_o(__VLG_O_io_clk_r_o),
    .io_data_r_o(io_data_r_o),
    .io_link_reset_i(rst),
    .io_valid_r_o(io_valid_r_o),
    .token_clk_i(__VLG_I_token_clk_i)
);
always @(posedge clk) begin
   if(rst) begin
       cnt_oddr <= __cnt_oddr_init__;
   end
   else if(1) begin
       cnt_oddr <= cnt_oddr;
   end
end
endmodule
