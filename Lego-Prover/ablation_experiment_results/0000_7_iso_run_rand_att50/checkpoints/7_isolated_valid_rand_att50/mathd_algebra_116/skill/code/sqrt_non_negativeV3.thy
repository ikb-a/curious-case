lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt(0 + x)" by (simp add: assms)
  then have "sqrt x = sqrt x" by simp
  moreover have "0 \<le> x" using assms by simp
  ultimately show "sqrt x \<ge> 0" 
    using real_sqrt_ge_zero by simp
qed