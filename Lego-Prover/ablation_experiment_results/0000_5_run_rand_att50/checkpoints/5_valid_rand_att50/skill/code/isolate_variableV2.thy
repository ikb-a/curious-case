lemma isolate_variable:
  fixes x y :: real
  assumes "x + y = c"
  shows "y = c - x"
proof -
  have "y = c - x" by (metis assms diff_diff_eq diff_eq_diff_eq eq_iff_diff_eq_0 neg_equal_iff_equal)
  thus ?thesis by auto
qed