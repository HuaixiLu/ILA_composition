module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_IN_SECOND(
__START__,
clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_addr0,
buffer_data0,
buffer_wen0,
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
__COUNTER_start__n4
);
input            __START__;
input            clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr0;
output     [15:0] buffer_data0;
output            buffer_wen0;
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
output reg      [7:0] __COUNTER_start__n4;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr0;
wire     [15:0] buffer_data0;
wire            buffer_wen0;
wire            bv_1_0_n17__$250;
wire            bv_1_1_n0__$231;
wire      [6:0] bv_7_1_n7__$247;
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
wire            n10__$260;
wire            n11__$264;
wire            n12__$266;
wire      [5:0] n13__$256;
wire      [5:0] n14__$254;
wire            n15__$258;
wire            n16__$267;
wire            n18__$268;
wire            n1__$233;
wire            n2__$229;
wire            n3__$235;
wire      [5:0] n5__$244;
wire     [15:0] n6__$242;
wire      [6:0] n8__$249;
wire            n9__$262;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0__$231 = 1'h1 ;
assign n1__$233 =  ( io_valid_in ) == ( bv_1_1_n0__$231 )  ;
assign n2__$229 =  ( io_valid ) == ( bv_1_1_n0__$231 )  ;
assign n3__$235 =  ( n1__$233 ) & (n2__$229 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__ = n3__$235 ;
assign n5__$244 = wptr[5:0] ;
assign n6__$242 =  { ( io_data_in ) , ( io_data ) }  ;
assign buffer_addr0 = n3__$235 ? (n5__$244) : (0) ;
assign buffer_data0 = n3__$235 ? (n6__$242) : ('d0) ;
assign buffer_wen0 = (n3__$235)&&__START__ ? ( 1'b1 ) : (1'b0) ;
assign bv_7_1_n7__$247 = 7'h1 ;
assign n8__$249 =  ( wptr ) + ( bv_7_1_n7__$247 )  ;
assign n9__$262 = n8__$249[6:6] ;
assign n10__$260 = rptr[6:6] ;
assign n11__$264 =  ( n9__$262 ) == ( n10__$260 )  ;
assign n12__$266 = ~ ( n11__$264 )  ;
assign n13__$256 = wptr[5:0] ;
assign n14__$254 = rptr[5:0] ;
assign n15__$258 =  ( n13__$256 ) == ( n14__$254 )  ;
assign n16__$267 =  ( n12__$266 ) & (n15__$258 )  ;
assign bv_1_0_n17__$250 = 1'h0 ;
assign n18__$268 =  ( n16__$267 ) ? ( bv_1_1_n0__$231 ) : ( bv_1_0_n17__$250 ) ;
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
       __COUNTER_start__n4 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__ ) begin 
           __COUNTER_start__n4 <= 1; end
       else if( (__COUNTER_start__n4 >= 1 ) && ( __COUNTER_start__n4 < 255 )) begin
           __COUNTER_start__n4 <= __COUNTER_start__n4 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           core_data_out <= core_data_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           core_valid_out <= core_valid_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           rptr <= rptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           wptr <= n8__$249 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           wptr_t <= n8__$249 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           full <= n18__$268 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           io_valid <= bv_1_0_n17__$250 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__) begin
           core_data0 <= core_data0 ;
       end
   end
end
endmodule
