lemma sqrt_square_positive:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a * sqrt a = a"
proof -
  have "sqrt a > 0" using assms by auto
  then show ?thesis using sqrt_square_nonneg assms by simp
qed