lemma square_expression_expanded:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(a - b) * (a - b) = a * a - 2 * a * b + b * b"
    by (simp add: algebra_simps)
  thus ?thesis by (simp add: power2_eq_square)
qed