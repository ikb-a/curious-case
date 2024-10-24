lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  have "a - c = (b + c) - c" using assms by (simp)
  have "a - c = b + (c - c)" by (metis add.commute add_cancel_right_right assms cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0 neg_equal_iff_equal)
  have "c - c = 0" by simp
  have "a - c = b + 0" by (metis add.commute add_cancel_right_right add_scale_eq_noteq assms cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0)
  thus "b = a - c" by simp
qed