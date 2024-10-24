lemma real_sqrt_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt (max a 0)" 
    using assms by (simp add: max_def)
  also have "... >= 0" 
    using assms by (simp add: sqrt_def)
  finally show ?thesis by simp
qed