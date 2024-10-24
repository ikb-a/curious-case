lemma sqrt_nonneg_square:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt (a^2) = a"
proof -
  have "sqrt (a^2) = sqrt (a * a)" using assms by simp
  also have "... = sqrt a * sqrt a" by auto
  finally show ?thesis by (simp add: assms)
qed