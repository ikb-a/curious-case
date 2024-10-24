lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    using assms by auto
  also have "... \<ge> 0" 
    by (simp add: real_sqrt_ge_zero)
  finally show ?thesis by simp
qed