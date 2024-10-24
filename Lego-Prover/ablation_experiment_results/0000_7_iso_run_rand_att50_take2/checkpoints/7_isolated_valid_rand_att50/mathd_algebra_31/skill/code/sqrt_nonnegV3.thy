lemma sqrt_nonneg:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a = 0 \<longrightarrow> a = 0" by auto
  moreover have "sqrt a > 0 \<longrightarrow> a > 0" by auto
  ultimately show ?thesis using assms by auto
qed