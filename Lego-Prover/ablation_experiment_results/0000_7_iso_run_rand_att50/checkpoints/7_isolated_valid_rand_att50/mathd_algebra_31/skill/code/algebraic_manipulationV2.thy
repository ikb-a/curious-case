lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a + b = c"
  shows "b = c - a"
proof -
  have "b = c - a" by (metis assms diff_diff_eq diff_eq_diff_eq eq_iff_diff_eq_0 neg_equal_iff_equal)
  thus ?thesis by simp
qed