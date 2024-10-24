lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    using assms by simp
  then show ?thesis 
    using assms(1) 
    by auto
qed