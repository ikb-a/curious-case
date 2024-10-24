lemma sqrt_difference:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a - sqrt b = (a - b) / (sqrt a + sqrt b)"
proof -
  have "sqrt a - sqrt b = (sqrt a + sqrt b) * (sqrt a - sqrt b) / (sqrt a + sqrt b)"
    by (metis add.left_cancel add_cancel_right_right add_le_same_cancel2 assms(1) assms(2) cancel_comm_monoid_add_class.diff_cancel dual_order.eq_iff eq_divide_eq mult.commute nonzero_mult_div_cancel_right real_sqrt_eq_zero_cancel_iff real_sqrt_ge_0_iff real_sqrt_le_0_iff real_sqrt_zero)
  also have "... = (a - b) / (sqrt a + sqrt b)"
    by (smt (verit) assms(1) assms(2) divide_cancel_right real_sqrt_le_mono real_sqrt_less_mono real_sqrt_mult_self square_diff_square_factored)
  finally show ?thesis
    by (simp add: field_simps)
qed