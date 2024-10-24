lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt x" by simp
  moreover have "0 <= sqrt x" 
    by (metis assms real_sqrt_ge_zero)
  ultimately show ?thesis by simp
qed