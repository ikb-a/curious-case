lemma sqrt_positive_and_nonnegative:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "a > 0 \<Longrightarrow> sqrt a > 0" using assms by (simp)
  moreover have "a = 0 \<Longrightarrow> sqrt a = 0" by simp
  ultimately show "sqrt a \<ge> 0" by (metis assms real_sqrt_ge_zero)
qed