lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    using assms by (simp add: max_def)
  also have "max x 0 = x" 
    using assms by (simp add: max_def)
  finally have "sqrt x = sqrt x" by simp
  thus ?thesis 
    using assms real_sqrt_ge_zero by auto
qed