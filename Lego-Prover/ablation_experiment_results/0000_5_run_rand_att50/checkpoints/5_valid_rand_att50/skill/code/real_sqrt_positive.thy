lemma real_sqrt_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt (max 0 a)" 
    by (metis assms max.absorb_iff2)
  also have "... = sqrt a" 
    using assms by (simp add: max_def)
  finally show ?thesis 
    using assms by auto
qed