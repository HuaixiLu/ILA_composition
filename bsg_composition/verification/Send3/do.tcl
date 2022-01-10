analyze -sva  \
  bsg_link_ddr_upstream.sv2v.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| ((~ ((__START__) ) || (__m0__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m1__)))}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assume -name variable_map_assume_6 {(~ __START__ )|| (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assume -name variable_map_assume_7 {(~ __START__ )|| (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
assume -name variable_map_assume_8 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume_9 {(~ __START__ )|| (({sent_counter[0], m1.ch_0_oddr_phy.odd_r}))}
assume -name additional_mapping_control_assume10 {__ILA_I_io_token == io_token}
assume -name additional_mapping_control_assume11 {m1.token_clk_i[0] == token_clk_i && m1.token_clk_i[1] == token_clk_i}
assume -name issue_decode12 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_decode_of_Send3__)}
assume -name issue_valid13 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_valid__)}
assume -name post_value_holder14 {(~(__CYCLE_CNT__ == 1) || ((cnt_oddr) == (m1.ch_0_oddr_phy.odd_r)))}
assert -name variable_map_assert0 {(~ __IEND__) || ((~ ((__START__) ) || (__m6__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m7__)))}
assert -name variable_map_assert1 {(~ __IEND__) || (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
