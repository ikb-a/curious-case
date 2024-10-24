lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a + b = c"
  shows "b = c - a"
proof -
  have "c - a = (a + b) - a" using assms by simp
  have "c - a = b" by (metis add.commute assms diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0 neg_equal_iff_equal)
  thus "b = c - a" by simp
qed