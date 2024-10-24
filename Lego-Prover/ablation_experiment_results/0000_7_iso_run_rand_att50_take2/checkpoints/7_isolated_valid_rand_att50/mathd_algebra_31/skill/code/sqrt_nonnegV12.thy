lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" using assms by auto 
  thus "sqrt a >= 0" by (metis assms real_sqrt_ge_zero)
qed