module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA1(
__START__,
clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_data_n12,
buffer_addr_n11,
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
__COUNTER_start__n9
);
input            __START__;
input            clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
input     [15:0] buffer_data_n12;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr_n11;
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
output reg      [7:0] __COUNTER_start__n9;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr_n11;
wire     [15:0] buffer_data_n12;
wire            bv_1_0_n6__$295;
wire            bv_1_1_n3__$299;
wire      [6:0] bv_7_1_n15__$327;
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
wire            n0__$305;
wire      [5:0] n10__$310;
wire     [15:0] n13__$312;
wire     [31:0] n14__$318;
wire      [6:0] n16__$329;
wire            n17__$332;
wire            n18__$330;
wire            n19__$334;
wire            n1__$307;
wire      [6:0] n20__$324;
wire            n2__$301;
wire            n4__$303;
wire            n5__$308;
wire            n7__$297;
wire            n8__$309;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign n0__$305 =  ( wptr_t ) == ( rptr )  ;
assign n1__$307 = ~ ( n0__$305 )  ;
assign n2__$301 = rptr[0:0] ;
assign bv_1_1_n3__$299 = 1'h1 ;
assign n4__$303 =  ( n2__$301 ) == ( bv_1_1_n3__$299 )  ;
assign n5__$308 =  ( n1__$307 ) & (n4__$303 )  ;
assign bv_1_0_n6__$295 = 1'h0 ;
assign n7__$297 =  ( core_valid_out ) == ( bv_1_0_n6__$295 )  ;
assign n8__$309 =  ( n5__$308 ) & (n7__$297 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__ = n8__$309 ;
assign n10__$310 = rptr[5:0] ;
assign buffer_addr_n11 = n10__$310 ;
assign n13__$312 = buffer_data_n12 ;
assign n14__$318 =  { ( n13__$312 ) , ( core_data0 ) }  ;
assign bv_7_1_n15__$327 = 7'h1 ;
assign n16__$329 =  ( rptr ) + ( bv_7_1_n15__$327 )  ;
assign n17__$332 = n16__$329[3:3] ;
assign n18__$330 = rptr[3:3] ;
assign n19__$334 =  ( n17__$332 ) ^ ( n18__$330 )  ;
assign n20__$324 =  ( rptr ) + ( bv_7_1_n15__$327 )  ;
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
       __COUNTER_start__n9 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__ ) begin 
           __COUNTER_start__n9 <= 1; end
       else if( (__COUNTER_start__n9 >= 1 ) && ( __COUNTER_start__n9 < 255 )) begin
           __COUNTER_start__n9 <= __COUNTER_start__n9 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           core_data_out <= n14__$318 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           core_valid_out <= bv_1_1_n3__$299 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           io_token_out <= n19__$334 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           rptr <= n20__$324 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           wptr <= wptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           wptr_t <= wptr_t ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           full <= bv_1_0_n6__$295 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           io_valid <= io_valid ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA1__) begin
           core_data0 <= core_data0 ;
       end
   end
end
endmodule
