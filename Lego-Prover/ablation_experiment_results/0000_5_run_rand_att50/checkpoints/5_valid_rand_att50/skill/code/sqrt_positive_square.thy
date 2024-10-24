lemma sqrt_positive_square:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a * sqrt a = a"
proof -
  have "sqrt a * sqrt a = sqrt (a * a)" by (simp add: power2_eq_square)
  also have "... = sqrt (a^2)" by simp
  also have "... = a" using assms by auto
  finally show ?thesis .
qed