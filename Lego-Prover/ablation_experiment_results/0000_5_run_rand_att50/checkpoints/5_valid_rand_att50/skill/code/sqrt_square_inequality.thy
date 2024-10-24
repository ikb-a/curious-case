lemma sqrt_square_inequality:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt(x^2) = abs(x)"
proof -
  have "sqrt(x^2) = sqrt((abs(x))^2)" using assms by (simp add: power2_eq_square)
  then show ?thesis by (simp add: real_sqrt_abs)
qed