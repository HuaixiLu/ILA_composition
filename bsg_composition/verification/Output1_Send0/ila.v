module BSG_UPSTREAM_OUT__DOT__Output1_Send0(
__START__,
clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__,
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
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__;
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
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_1_n0__$75;
wire      [1:0] bv_2_1_n7__$107;
wire      [1:0] bv_2_2_n13__$123;
wire      [6:0] bv_7_64_n3__$70;
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
wire      [7:0] n11__$117;
wire      [7:0] n12__$119;
wire            n1__$77;
wire      [6:0] n2__$72;
wire            n4__$73;
wire            n5__$113;
wire            n6__$115;
wire            n8__$109;
wire            n9__$116;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
(* keep *) wire      [1:0] step_randinit;
assign bv_1_1_n0__$75 = 1'h1 ;
assign n1__$77 =  ( child_valid ) == ( bv_1_1_n0__$75 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$77 ;
assign n2__$72 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_7_64_n3__$70 = 7'h40 ;
assign n4__$73 =  ( n2__$72 ) < ( bv_7_64_n3__$70 )  ;
assign n5__$113 =  ( io_valid_out ) == ( bv_1_1_n0__$75 )  ;
assign n6__$115 =  ( n4__$73 ) & (n5__$113 )  ;
assign bv_2_1_n7__$107 = 2'h1 ;
assign n8__$109 =  ( step ) == ( bv_2_1_n7__$107 )  ;
assign n9__$116 =  ( n6__$115 ) & (n8__$109 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__ = n9__$116 ;
assign n11__$117 = data_cycle_0[15:8] ;
assign n12__$119 = data_cycle_0[31:24] ;
assign bv_2_2_n13__$123 = 2'h2 ;
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
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__ ) begin 
           __COUNTER_start__n10 <= 1; end
       else if( (__COUNTER_start__n10 >= 1 ) && ( __COUNTER_start__n10 < 255 )) begin
           __COUNTER_start__n10 <= __COUNTER_start__n10 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           io_valid_out <= bv_1_1_n0__$75 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           io_data_out_ch0 <= n11__$117 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           io_data_out_ch1 <= n12__$119 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_Send0__) begin
           step <= bv_2_2_n13__$123 ;
       end
   end
end
endmodule
