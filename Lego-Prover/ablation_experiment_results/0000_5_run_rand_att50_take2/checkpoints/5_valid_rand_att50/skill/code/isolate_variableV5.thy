lemma isolate_variable:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  from assms have "c - b + b = c" by (simp add: algebra_simps)
  then have "c - b = a + b - b" by (metis add.commute add_cancel_right_right assms cancel_ab_semigroup_add_class.diff_right_commute crossproduct_eq diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_diff_eq eq_iff_diff_eq_0 minus_diff_eq mult.commute mult_cancel_right1 mult_eq_0_iff mult_minus_right neg_0_equal_iff_equal zero_neq_neg_one)
  also have "... = a" by (simp add: algebra_simps)
  finally show "a = c - b" by simp
qed