lemma real_sqrt_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt (max a 0)" 
    using assms by (simp add: max_def)
  also have "max a 0 = a" 
    using assms by (simp add: max_def)
  finally have "sqrt a = sqrt a" by simp
  thus ?thesis 
    by (metis assms real_sqrt_ge_zero)
qed