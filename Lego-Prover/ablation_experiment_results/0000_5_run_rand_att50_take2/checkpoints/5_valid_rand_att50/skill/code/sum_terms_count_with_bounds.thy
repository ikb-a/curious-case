lemma sum_terms_count_with_bounds:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a::nat..<b} = length [x. x \<leftarrow> [a..b-1]]" by (metis One_nat_def Suc_pred' add_cancel_right_left assms cancel_ab_semigroup_add_class.diff_right_commute card_atLeastLessThan diff_Suc_eq_diff_pred int_Suc int_ops(6) length_upto map_ident nat_int not_gr_zero not_less_eq of_nat_0_less_iff of_nat_1 of_nat_1_eq_iff of_nat_add of_nat_less_0_iff of_nat_less_iff zero_less_diff zless_nat_eq_int_zless)
  also have "... = b - a" by (metis calculation card_atLeastLessThan map_ident)
  finally show ?thesis .
qed