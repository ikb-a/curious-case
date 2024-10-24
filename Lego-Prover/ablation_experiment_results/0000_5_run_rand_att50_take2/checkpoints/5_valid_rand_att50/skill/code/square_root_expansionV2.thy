lemma square_root_expansion:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(a - b)^2 = (a - b) * (a - b)" by (simp add: power2_eq_square)
  also have "... = a * a - 2 * a * b + b * b" by (simp add: algebra_simps)
  also have "... = a^2 - 2 * a * b + b^2" by (simp add: power2_eq_square)
  finally show ?thesis .
qed