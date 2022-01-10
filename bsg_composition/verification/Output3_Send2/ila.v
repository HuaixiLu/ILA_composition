module BSG_UPSTREAM_OUT__DOT__Output3_Send2(
__START__,
clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__,
__ILA_BSG_UPSTREAM_OUT_valid__,
child_valid,
io_valid_out,
data_cycle_0,
data_cycle_1,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
step,
__COUNTER_start__n6
);
input            __START__;
input            clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__;
output            __ILA_BSG_UPSTREAM_OUT_valid__;
output reg            child_valid;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg      [1:0] step;
output reg      [7:0] __COUNTER_start__n6;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_1_n0__$75;
wire      [1:0] bv_2_0_n9__$163;
wire      [1:0] bv_2_3_n3__$148;
(* keep *) wire            child_valid_randinit;
wire            clk;
wire     [63:0] core_data_in;
wire            core_valid_in;
(* keep *) wire     [31:0] data_cycle_0_randinit;
(* keep *) wire     [31:0] data_cycle_1_randinit;
(* keep *) wire      [6:0] finish_cnt_randinit;
(* keep *) wire      [7:0] io_data_out_ch0_randinit;
(* keep *) wire      [7:0] io_data_out_ch1_randinit;
wire            io_token;
(* keep *) wire            io_valid_out_randinit;
wire            n1__$77;
wire            n2__$154;
wire            n4__$150;
wire            n5__$156;
wire      [7:0] n7__$157;
wire      [7:0] n8__$159;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
(* keep *) wire      [1:0] step_randinit;
assign bv_1_1_n0__$75 = 1'h1 ;
assign n1__$77 =  ( child_valid ) == ( bv_1_1_n0__$75 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$77 ;
assign n2__$154 =  ( io_valid_out ) == ( bv_1_1_n0__$75 )  ;
assign bv_2_3_n3__$148 = 2'h3 ;
assign n4__$150 =  ( step ) == ( bv_2_3_n3__$148 )  ;
assign n5__$156 =  ( n2__$154 ) & (n4__$150 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__ = n5__$156 ;
assign n7__$157 = data_cycle_1[15:8] ;
assign n8__$159 = data_cycle_1[31:24] ;
assign bv_2_0_n9__$163 = 2'h0 ;
always @(posedge clk) begin
   if(rst) begin
       child_valid <= child_valid_randinit ;
       io_valid_out <= io_valid_out_randinit ;
       data_cycle_0 <= data_cycle_0_randinit ;
       data_cycle_1 <= data_cycle_1_randinit ;
       sent_cnt <= sent_cnt_randinit ;
       finish_cnt <= finish_cnt_randinit ;
       io_data_out_ch0 <= io_data_out_ch0_randinit ;
       io_data_out_ch1 <= io_data_out_ch1_randinit ;
       step <= step_randinit ;
       __COUNTER_start__n6 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__ ) begin 
           __COUNTER_start__n6 <= 1; end
       else if( (__COUNTER_start__n6 >= 1 ) && ( __COUNTER_start__n6 < 255 )) begin
           __COUNTER_start__n6 <= __COUNTER_start__n6 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           io_valid_out <= bv_1_1_n0__$75 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           io_data_out_ch0 <= n7__$157 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           io_data_out_ch1 <= n8__$159 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output3_Send2__) begin
           step <= bv_2_0_n9__$163 ;
       end
   end
end
endmodule
