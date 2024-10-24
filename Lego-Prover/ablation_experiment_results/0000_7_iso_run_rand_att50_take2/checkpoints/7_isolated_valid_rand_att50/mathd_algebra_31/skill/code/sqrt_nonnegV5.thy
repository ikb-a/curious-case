lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt a" by simp
  thus ?thesis using assms by auto
qed