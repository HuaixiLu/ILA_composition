module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA0(
__START__,
clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_data_n13,
buffer_addr_n12,
core_data_out,
core_valid_out,
io_token_out,
rptr,
wptr,
wptr_t,
full,
io_valid,
io_data,
core_data0,
__COUNTER_start__n8
);
input            __START__;
input            clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
input     [15:0] buffer_data_n13;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr_n12;
output reg     [31:0] core_data_out;
output reg            core_valid_out;
output reg            io_token_out;
output reg      [6:0] rptr;
output reg      [6:0] wptr;
output reg      [6:0] wptr_t;
output reg            full;
output reg            io_valid;
output reg      [7:0] io_data;
output reg     [15:0] core_data0;
output reg      [7:0] __COUNTER_start__n8;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr_n12;
wire     [15:0] buffer_data_n13;
wire            bv_1_0_n3__$274;
wire      [6:0] bv_7_1_n9__$289;
wire            clk;
(* keep *) wire     [15:0] core_data0_randinit;
(* keep *) wire     [31:0] core_data_out_randinit;
wire            core_ready;
(* keep *) wire            core_valid_out_randinit;
(* keep *) wire            full_randinit;
wire      [7:0] io_data_in;
(* keep *) wire      [7:0] io_data_randinit;
(* keep *) wire            io_token_out_randinit;
wire            io_valid_in;
(* keep *) wire            io_valid_randinit;
wire            n0__$280;
wire      [6:0] n10__$291;
wire      [5:0] n11__$285;
wire     [15:0] n14__$287;
wire            n1__$282;
wire            n2__$276;
wire            n4__$278;
wire            n5__$283;
wire            n6__$272;
wire            n7__$284;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign n0__$280 =  ( wptr_t ) == ( rptr )  ;
assign n1__$282 = ~ ( n0__$280 )  ;
assign n2__$276 = rptr[0:0] ;
assign bv_1_0_n3__$274 = 1'h0 ;
assign n4__$278 =  ( n2__$276 ) == ( bv_1_0_n3__$274 )  ;
assign n5__$283 =  ( n1__$282 ) & (n4__$278 )  ;
assign n6__$272 =  ( core_valid_out ) == ( bv_1_0_n3__$274 )  ;
assign n7__$284 =  ( n5__$283 ) & (n6__$272 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__ = n7__$284 ;
assign bv_7_1_n9__$289 = 7'h1 ;
assign n10__$291 =  ( rptr ) + ( bv_7_1_n9__$289 )  ;
assign n11__$285 = rptr[5:0] ;
assign buffer_addr_n12 = n11__$285 ;
assign n14__$287 = buffer_data_n13 ;
always @(posedge clk) begin
   if(rst) begin
       core_data_out <= core_data_out_randinit ;
       core_valid_out <= core_valid_out_randinit ;
       io_token_out <= io_token_out_randinit ;
       rptr <= rptr_randinit ;
       wptr <= wptr_randinit ;
       wptr_t <= wptr_t_randinit ;
       full <= full_randinit ;
       io_valid <= io_valid_randinit ;
       io_data <= io_data_randinit ;
       core_data0 <= core_data0_randinit ;
       __COUNTER_start__n8 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__ ) begin 
           __COUNTER_start__n8 <= 1; end
       else if( (__COUNTER_start__n8 >= 1 ) && ( __COUNTER_start__n8 < 255 )) begin
           __COUNTER_start__n8 <= __COUNTER_start__n8 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           core_data_out <= core_data_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           core_valid_out <= core_valid_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           rptr <= n10__$291 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           wptr <= wptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           wptr_t <= wptr_t ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           full <= bv_1_0_n3__$274 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           io_valid <= io_valid ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA0__) begin
           core_data0 <= n14__$287 ;
       end
   end
end
endmodule
