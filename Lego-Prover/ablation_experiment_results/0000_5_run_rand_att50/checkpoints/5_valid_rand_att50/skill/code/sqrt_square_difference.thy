lemma sqrt_square_difference:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "(sqrt a - sqrt b) ^ 2 = a - 2 * sqrt a * sqrt b + b"
proof -
  have "(sqrt a - sqrt b) ^ 2 = (sqrt a)^2 - 2 * sqrt a * sqrt b + (sqrt b)^2"
    by (smt (verit) diff_add_eq power2_diff)
  also have "... = a - 2 * sqrt a * sqrt b + b" using assms by simp
  finally show ?thesis .
qed