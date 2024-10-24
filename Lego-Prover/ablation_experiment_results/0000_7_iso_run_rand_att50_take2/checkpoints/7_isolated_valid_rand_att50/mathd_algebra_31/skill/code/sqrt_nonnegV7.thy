lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt (max 0 a)" using assms by (simp)
  then show ?thesis by auto
qed