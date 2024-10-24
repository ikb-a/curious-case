lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    using assms by auto
  hence "sqrt x = sqrt x" 
    by auto
  thus ?thesis 
    using assms by auto
qed