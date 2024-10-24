lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    using assms by (simp add: max_def)
  also have "... \<ge> 0" 
    using assms by (simp add: sqrt_def)
  finally show ?thesis by simp
qed