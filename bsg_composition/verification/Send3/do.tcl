analyze -sva  \
  bsg_link_ddr_upstream.sv2v.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assume -name variable_map_assume_6 {(~ __START__ )|| (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assume -name variable_map_assume_7 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume_8 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume_9 {(~ __START__ )|| ((~ ((__START__) ) || (__m6__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m7__)))}
assume -name additional_mapping_control_assume10 {__ILA_I_io_token == io_token}
assume -name additional_mapping_control_assume11 {m1.token_clk_i[0] == token_clk_i && m1.token_clk_i[1] == token_clk_i}
assume -name rfassumptions12 {sent_counter - finish_counter <= 7'b1000000}
assume -name rfassumptions13 {~(valid_check & cnt!= 2'b10) || m1.ch_0_sso.io_async_fifo_valid == 0 }
assume -name issue_decode14 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_decode_of_Send3__)}
assume -name issue_valid15 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_valid__)}
assume -name post_value_holder16 {(~(__CYCLE_CNT__ == 1) || ((cnt_oddr) == (cnt)))}
assert -name variable_map_assert0 {(~ __IEND__) || (__m8__)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m9__)}
