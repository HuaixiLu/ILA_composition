module BSG_UPSTREAM__DOT__TOKEN_IN(
__START__,
clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__,
__ILA_BSG_UPSTREAM_valid__,
child_valid,
io_valid_out,
data_cycle_0,
data_cycle_1,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
__COUNTER_start__n2
);
input            __START__;
input            clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            child_valid;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg      [7:0] __COUNTER_start__n2;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            __START__;
wire            bv_1_1_n0__$42;
wire      [6:0] bv_7_8_n3__$46;
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
wire            n1__$44;
wire      [6:0] n4__$48;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_1_n0__$42 = 1'h1 ;
assign n1__$44 =  ( io_token ) == ( bv_1_1_n0__$42 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ = n1__$44 ;
assign bv_7_8_n3__$46 = 7'h8 ;
assign n4__$48 =  ( finish_cnt ) + ( bv_7_8_n3__$46 )  ;
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
       __COUNTER_start__n2 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ ) begin 
           __COUNTER_start__n2 <= 1; end
       else if( (__COUNTER_start__n2 >= 1 ) && ( __COUNTER_start__n2 < 255 )) begin
           __COUNTER_start__n2 <= __COUNTER_start__n2 + 1; end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           io_valid_out <= io_valid_out ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           finish_cnt <= n4__$48 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           io_data_out_ch0 <= io_data_out_ch0 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           io_data_out_ch1 <= io_data_out_ch1 ;
       end
   end
end
endmodule
