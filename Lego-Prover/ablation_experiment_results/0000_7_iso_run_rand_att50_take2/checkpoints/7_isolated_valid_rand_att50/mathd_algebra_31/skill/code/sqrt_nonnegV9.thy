lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0" if "a = 0" using that by simp
  moreover have "sqrt a > 0" if "a > 0" using that by simp
  ultimately show ?thesis by (metis assms real_sqrt_ge_zero)
qed