analyze -sva  \
  bsg_link_ddr_downstream.sv2v.v \
  ila.v \
  wrapper.v \
   absmem.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_3 {(~ __START__ )|| ({m1.core_data_o[47:32],m1.core_data_o[15:0]}  == __ILA_SO_core_data_out)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_6 {(~ __START__ )|| (m1.ch_0_iddr_data.data_p_r[7:0] == __ILA_SO_io_data)}
assume -name variable_map_assume_7 {(~ __START__ )|| ((~ ((__START__) ) || (__m3__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m4__)))}
assume -name variable_map_assume_8 {(~ __START__ )|| ((~ ((__START__) ) || (__m5__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m6__)))}
assume -name variable_map_assume_9 {(~ __START__ )|| ((~ ((__START__) ) || (__m7__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m8__)))}
assume -name variable_map_assume_10 {(~ __START__ )|| ((~ ((__START__) ) || (__m9__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m10__)))}
assume -name variable_map_assume_11 {(~ __START__ )|| ((~ ((__START__) ) || (__m11__) )&&( ~ (~(__START__)&&(__IEND__) ) || (`true)))}
assume -name additional_mapping_control_assume12 {__ILA_I_io_valid_in == m1.io_valid_i || io_valid }
assume -name additional_mapping_control_assume13 {~m1.core_yumi_i || __ILA_I_core_ready}
assume -name additional_mapping_control_assume14 {m1.ch_0_downstream.baf.r_ptr_binary_r ==  __MEM_buffer_0_raddr}
assume -name additional_mapping_control_assume15 {m1.ch_0_downstream.baf.w_ptr_binary_r ==  __MEM_buffer_0_waddr}
assume -name additional_mapping_control_assume16 {m1.ch_0_downstream.baf.w_data_i == __MEM_buffer_0_wdata}
assume -name additional_mapping_control_assume17 {m1.ch_0_downstream.baf.r_data_o == mi0.ila_rdata}
assume -name additional_mapping_control_assume18 {m1.core_clk_i == m1.io_clk_i}
assume -name rfassumptions19 {~io_valid || m1.io_clk_i}
assume -name rfassumptions20 {m1.ch_0_downstream.twofer.full_r == 0}
assume -name rfassumptions21 {~m1.core_yumi_i || m1.core_valid_o}
assume -name rfassumptions22 {~(__ILA_I_core_ready & m1.core_valid_o) || m1.core_yumi_i}
assume -name start_condition23 {(~ __START__) || __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN_SECOND__}
assume -name start_condition24 {(~ __START__) || m1.io_clk_i == 1}
assume -name post_value_holder25 {(~(__CYCLE_CNT__ == 1) || ((io_valid_commit) == (io_valid)))}
assume -name post_value_holder26 {(~(__CYCLE_CNT__ == 2) || ((rptr_commit) == (m1.ch_0_downstream.baf.r_ptr_binary_r)))}
assume -name post_value_holder27 {(~(__CYCLE_CNT__ == 2) || ((token_commit) == (core_token_out)))}
assume -name post_value_holder28 {(~(__CYCLE_CNT__ == 3) || ((wptr_decode) == (m1.ch_0_downstream.baf.w_ptr_binary_r)))}
assume -name absmem29 {mi0_read_assume_true==1'b1}
assert -name variable_map_assert0 {(~ __IEND__) || (buffer_EQ_)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m12__)}
assert -name variable_map_assert2 {(~ __IEND__) || ((~ ((__START__) ) || (__m13__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m14__)))}
assert -name variable_map_assert3 {(~ __IEND__) || ((~ ((__START__) ) || (__m15__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m16__)))}
assert -name variable_map_assert4 {(~ __IEND__) || ((~ ((__START__) ) || (__m17__) )&&( ~ (~(__START__)&&(__IEND__) ) || (`true)))}
