lemma sqrt_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) = sqrt ((sqrt a) ^ 2 * (sqrt b) ^ 2)"
    using assms by (simp add: power2_eq_square)
  also have "... = sqrt a * sqrt b"
    by (metis calculation real_sqrt_mult)
  finally show ?thesis .
qed