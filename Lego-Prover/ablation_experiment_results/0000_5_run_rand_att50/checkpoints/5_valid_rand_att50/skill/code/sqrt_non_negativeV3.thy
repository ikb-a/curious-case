lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt (max 0 x)" 
    by (metis assms max.absorb_iff2)
  also have "... = sqrt x" 
    using assms by (simp add: max_def)
  finally show ?thesis
    using assms by auto
qed