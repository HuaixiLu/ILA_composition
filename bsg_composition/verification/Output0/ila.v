module BSG_UPSTREAM_OUT__DOT__Output0(
__START__,
clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__,
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
__COUNTER_start__n10
);
input            __START__;
input            clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0__;
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
output reg      [7:0] __COUNTER_start__n10;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_1_n0__$75;
wire      [1:0] bv_2_0_n7__$86;
wire      [1:0] bv_2_1_n15__$102;
wire      [6:0] bv_7_1_n11__$104;
wire      [6:0] bv_7_64_n4__$70;
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
wire      [6:0] n12__$106;
wire      [7:0] n13__$96;
wire      [7:0] n14__$98;
wire            n1__$77;
wire            n2__$92;
wire      [6:0] n3__$72;
wire            n5__$73;
wire            n6__$94;
wire            n8__$88;
wire            n9__$95;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
(* keep *) wire      [1:0] step_randinit;
assign bv_1_1_n0__$75 = 1'h1 ;
assign n1__$77 =  ( child_valid ) == ( bv_1_1_n0__$75 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$77 ;
assign n2__$92 =  ( child_valid ) == ( bv_1_1_n0__$75 )  ;
assign n3__$72 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_7_64_n4__$70 = 7'h40 ;
assign n5__$73 =  ( n3__$72 ) < ( bv_7_64_n4__$70 )  ;
assign n6__$94 =  ( n2__$92 ) & (n5__$73 )  ;
assign bv_2_0_n7__$86 = 2'h0 ;
assign n8__$88 =  ( step ) == ( bv_2_0_n7__$86 )  ;
assign n9__$95 =  ( n6__$94 ) & (n8__$88 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output0__ = n9__$95 ;
assign bv_7_1_n11__$104 = 7'h1 ;
assign n12__$106 =  ( sent_cnt ) + ( bv_7_1_n11__$104 )  ;
assign n13__$96 = data_cycle_0[7:0] ;
assign n14__$98 = data_cycle_0[23:16] ;
assign bv_2_1_n15__$102 = 2'h1 ;
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
       __COUNTER_start__n10 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0__ ) begin 
           __COUNTER_start__n10 <= 1; end
       else if( (__COUNTER_start__n10 >= 1 ) && ( __COUNTER_start__n10 < 255 )) begin
           __COUNTER_start__n10 <= __COUNTER_start__n10 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           io_valid_out <= bv_1_1_n0__$75 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           sent_cnt <= n12__$106 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           io_data_out_ch0 <= n13__$96 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           io_data_out_ch1 <= n14__$98 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0__) begin
           step <= bv_2_1_n15__$102 ;
       end
   end
end
endmodule
