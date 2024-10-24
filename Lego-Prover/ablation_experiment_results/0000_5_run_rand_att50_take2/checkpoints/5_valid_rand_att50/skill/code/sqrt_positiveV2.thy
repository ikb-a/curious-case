lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x ^ 2 = x" using assms by (simp add: sqrt_def)
  then have "sqrt x = sqrt x" by (simp add: power2_eq_square)
  moreover have "sqrt x >= 0" by (metis assms real_sqrt_ge_zero)
  ultimately show ?thesis by auto
qed