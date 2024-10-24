lemma simplify_sqrt:
  fixes k :: real
  assumes "k \<ge> 0"
  shows "sqrt(k) * sqrt(k) = k"
proof -
  have "sqrt(k) * sqrt(k) = (sqrt(k))^2" by (metis power2_eq_square)
  also have "... = k" using assms by (simp add: real_sqrt_mult_self)
  finally show ?thesis .
qed