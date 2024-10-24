lemma isolate_variable:
  fixes x :: real
  assumes "x + c = d"
  shows "x = d - c"
proof -
  have "x = d - c" by (metis assms diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0)
  thus ?thesis by simp
qed