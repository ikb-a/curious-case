lemma common_terms:
  fixes a b :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  have "c - b + b = c" by (simp add: assms)
  then show ?thesis by (metis add.commute add_cancel_left_right assms cancel_ab_semigroup_add_class.diff_right_commute crossproduct_eq diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0 minus_diff_eq mult.commute mult_cancel_right2 mult_eq_0_iff mult_minus_right neg_0_equal_iff_equal zero_neq_neg_one)
qed