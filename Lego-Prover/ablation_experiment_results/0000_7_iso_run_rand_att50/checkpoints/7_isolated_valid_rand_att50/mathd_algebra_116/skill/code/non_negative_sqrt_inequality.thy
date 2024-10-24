lemma non_negative_sqrt_inequality:
  fixes x y :: real
  assumes "x \<ge> 0" and "y \<ge> 0"
  shows "sqrt (x + y) \<ge> 0"
proof -
  have "sqrt (x + y) = sqrt(0 + (x + y))" by (simp)
  moreover have "0 \<le> (x + y)" using assms by simp
  ultimately show "sqrt (x + y) \<ge> 0" 
    using real_sqrt_ge_zero by simp
qed