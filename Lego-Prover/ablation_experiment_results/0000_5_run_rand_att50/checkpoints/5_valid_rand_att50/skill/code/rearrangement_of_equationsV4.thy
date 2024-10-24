lemma rearrangement_of_equations:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"
proof -
  have "c - b = a + b - b" using assms by simp
  have "c - b = a + (b - b)" by (metis add.commute add_cancel_right_right assms cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0 neg_equal_iff_equal)
  have "c - b = a + 0" by (metis add.commute add_cancel_left_right add_scale_eq_noteq assms cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0)
  thus "a = c - b" by simp
qed