lemma sum_floor_bounds:
  fixes r :: real and n :: nat
  assumes "19 \<le> n" "n \<le> 91"
  shows "floor (r + n / 100) \<in> {floor r, floor r + 1}"
proof -
  have "floor r \<le> r" and "r < floor r + 1" by auto
  have "0 \<le> n / 100" by simp
  then have "floor (r + n / 100) \<le> floor r + 1" by (smt (verit) \<open>r < real_of_int (\<lfloor>r\<rfloor> + 1)\<close> add_increasing antisym_conv1 assms(2) dense_ge_bounded floor_eq2 floor_mono leD leI le_divide_eq_1_pos le_floor_iff less_le_not_le nless_le numeral_Bit0 numeral_Bit1 numeral_One numeral_less_real_of_nat_iff of_int_1 of_int_less_1_iff of_nat_1 of_nat_numeral)
  then show ?thesis using assms by (smt (verit) \<open>0 \<le> real n / 100\<close> \<open>real_of_int \<lfloor>r\<rfloor> \<le> r\<close> floor_eq2 insertI1 insertI2 insert_iff le_floor_iff of_int_add of_int_le_1_iff verit_la_disequality)
qed