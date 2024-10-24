lemma sqrt_positive_extended:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a = sqrt (abs a)" using assms by auto
  moreover have "sqrt (abs a) > 0" using assms by auto
  ultimately show ?thesis by simp
qed